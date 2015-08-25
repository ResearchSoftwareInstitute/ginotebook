app.inspect_patch = function(opt_options) {
	var options = opt_options || {};

	var button1 = document.createElement('button');
	button1.innerHTML = "Select a patch to edit flow table";

	var div1 = document.createElement('div');
	var text1 = document.createElement('h4');
	text1.id = 'flow-table-header';
	text1.innerHTML = 'You need to select a patch'
	div1.appendChild(text1);

	var div2 = document.createElement('div');
	div2.id = 'flow-table-entry';

	var div3 = document.createElement('div');
	div3.id = "donor";

	var table1 = document.createElement('TABLE');
	//table1.class = 'table';
	var thead = document.createElement('thead');
	var tr = document.createElement('tr');
	var th1 = document.createElement('th');
	var th2 = document.createElement('th');
	th2.innerHTML = "Patch";
	var th3 = document.createElement('th');
	th3.innerHTML = "Zone";
	var th4 = document.createElement('th');
	th4.innerHTML = "Hill";
	var th5 = document.createElement('th');
	th5.innerHTML = "% Flow";
	tr.appendChild(th1);
	tr.appendChild(th2);
	tr.appendChild(th3);
	tr.appendChild(th4);
	tr.appendChild(th5);
	thead.appendChild(tr);

	var tbody = document.createElement('tbody');
	tbody.id = "sidebar";

	var tfoot = document.createElement('tfoot');
	var tr2 = document.createElement('tr');
	tr2.id="control-panel";
	tfoot.appendChild(tr2);

	table1.appendChild(thead);
	table1.appendChild(tbody);
	table1.appendChild(tfoot)

	div3.appendChild(table1);
	div2.appendChild(div3);

	var div4 = document.createElement('div');
	var button2 = document.createElement('button');
	button2.id = "download-flowtable";
	button2.innerHTML = "Download Flow table";
	div4.appendChild(button2);
	button1.addEventListener('click', inspectPatchClick,false);

	var element = document.createElement('div');
	element.className = 'ol-unselectable ol-control inspect-patch';

	element.appendChild(button1);
	element.appendChild(div1);
	element.appendChild(div2);
	element.appendChild(div4);
	ol.control.Control.call(this, {
	element: element,
	target: options.target
	});
}

ol.inherits(app.inspect_patch, ol.control.Control);

// adding a landcover wms layer
var wms = new ol.layer.Image({
	source: new ol.source.ImageWMS({
		url: "http://wssi.ncsa.illinois.edu:8080/geoserver/wms",
		serverType: 'geoserver',
		params: {'LAYERS': "landcover", 'transparancy': 'true'}
	}),
	opacity: 0.5
});
map.addLayer(wms);

$('#SelectPatches').click(function() {
	var wms = new ol.layer.Image({
		source: new ol.source.ImageWMS({
			url: "http://wssi.ncsa.illinois.edu:8080/geoserver/wms",
			serverType: 'geoserver',
			params: {'LAYERS': "out"}
		})
	});

	// Add StyleMap? 
	receivers = new ol.layer.Vector({ source: new ol.source.Vector({format: new ol.format.GeoJSON()})});
	map.addLayer(wms);
	map.addLayer(receivers);
	originalPatchCollection = new PatchCollection();
	patchCollection = new PatchCollection();
	donor = new Patch({});

	var ctrlPanelView = new ControlPanelView().render();
	var SidebarView = Backbone.Marionette.CollectionView.extend({
		childView: SidebarPatchView,
		collection: patchCollection
	});
	var sidebarView = new SidebarView({el: '#sidebar'});
	sidebarView.render();

	map.addControl(new app.inspect_patch({map: map}))


	patchCollection.on('remove', function(elt) {
		console.log('removed from patchcollection',elt);
		receivers.getSource().destroyFeatures([elt.attributes.feature]);
	});
	patchCollection.on('add', function(elt) {
		console.log('added to patchcollection',elt);
		receivers.getSource().addFeatures([elt.attributes.feature]);
	});

	isFlowTableActive = true;
});

function onClickGetPatch(e) {
	//var lonlat = map.
	var geojson = new ol.format.GeoJSON(prj);
	var lonlat = ol.proj.transform(e.coordinate, 'EPSG:900913', 'EPSG:4326');
	console.log("You clicked near " + lonlat[1] + ' N, ' + lonlat[0] + " E");
	$.get(restServer+'/grass/patch',{lat:lonlat[1], lng: lonlat[0], patchmap:"patch", zonemap:"hillslopes",hillmap:"hillslopes"})
	.done( function(data) {
		console.log("Patch: ", data);
		var fc = geojson.read(data);
		var f = fc[0];

		patchCollection.add({
			fid : f.fid,
			gamma : f.values_.gamma ? g.values_.gamma: null,
			patchId : f.values_.patchId,
			zoneId: f.values_.zoneId,
			hillId: f.values_.hillId,
			total_gamma: f.values_.total_gamma ? f.values_.total_gamma: null,
			feature: f
		});
		//getPatchControl.deactivate();
	})
	.fail(function(data) {
		console.log('fail to get a patch: ', data);
		//getPatchControl.deactivate();
	})

	console.log('on click get patch');
}

function onClickGetFlowTable(e) {
	var lonlat = ol.proj.transform(e.coordinate, 'EPSG:900913', 'EPSG:4326');
	console.log("You clicked near " + lonlat[1] + ' N, ' + lonlat[0] + " E");
	$.get(restServer+"/grass/flowentry",{lat: lonlat[1], lng: lonlat[0], patchmap: "patch", zonemap:"hillslopes", hillmap:"hillslopes"})
	.done(function(data){
		fc = {
			"type": "FeatureCollection",
			"features": data
		};
		var geojson = new ol.format.GeoJSON(prj);
		var features = geojson.readFeatures(fc);

		//receivers.getSource().clear();
		patchCollection.reset([]);
		originalPatchCollection.reset([]);

		donorPatch = _.find(features, function(f){ return f.values_.hasOwnProperty('total_gamma') && f.values_.total_gamma;});
		console.log('Donor patch: ', donorPatch);

		var rcv = _.filter(features, function(f) { return !f.values_.total_gamma;});
		_.each(rcv, function(f){
			patchCollection.add({
				fid: f.fid,
				gamma: f.values_.gamma ? f.values_.gamma: 0,
				patchId: f.values_.patchId,
				zoneId: f.values_.zoneId,
				hillId: f.values_.hilld,
				total_gamma: f.values_.total_gamma ? f.values_.total_gamma: null,
				feature: f
			});
			//bounds.extend(f.geometry())
		});

		patchCollection.each(function(model) {
			var originalModel = model.clone();
			originalModel.set('feature', model.get('feature').clone());
			originalPatchCollection.add(originalModel);

		});

		donor = new Patch({
			fid: donorPatch.fid,
			patchId: donorPatch.values_.patchId,
			zoneId: donorPatch.values_.zoneId,
			hillId: donorPatch.values_.hillId,
			total_gamma: donorPatch.values_.total_gamma,
			feature: donorPatch
		});
		$('#flow-table-header').html(" Flow table receivers for");
		$('#flow-table-entry').show();
		new DonorView({ model: donor, el: '#donor'}).render();
		receivers.getSource().addFeatures(donorPatch);

		//getFlowTableControl.deactivate()
		//map.zoomToExtent(bounds)
	})
	.fail(function(data) {
		console.log(' Failed to get flowtable entry', data);
		//getFlowtableControl.deactivate()
	})

	console.log('on click get flowtable');
}

function inspectPatchClick() {
	console.log('inspectPatch');
};

