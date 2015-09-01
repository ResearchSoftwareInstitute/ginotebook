

// var typeMap = new Object();
var dataMap = new Object();
// dataMap Id: Id in database: dataMap[0]: Type, dataMap[1]: Name, dataMap[2]: GeometryPolygon, dataMap[3]: FeaturePolygon, dataMap[4]: FeaturePoint
var charsMap = new Object();
var isEditActive = false;
var isAddActive = false;
var isLabelActive = false;
var isFlowTableActive = false;
var sizeSelect = 0;
var overlay2;
var featureOverlay2;
var modify;
var addInfrastructureControl;
var editInfrastructureControl;
var draw;
var receivers = null;
var restServer="http://127.0.0.1:5000";
var restServer2="http://ginotebook.renci.org/api";
var getFlowTableControl = null;
var donor = null;
var infrTypes = null;
var gitemplates;
var girepresentations;
var representationMap = {};
var infrUrlMap = {};
var polygonToPointMap = {};
var prj = {
    internalProjection: new ol.proj.Projection('EPSG:900913'),
    externalProjection: new ol.proj.Projection("EPSG:4326")
};
var raster = new ol.layer.Tile({
	source: new ol.source.OSM()
});
$.ajaxSetup({
    headers: { 'Authorization' :'Token 16a2133de2cc2a9c5d5b6c589262e0774f077bda' }
});

window.app = {};
var app = window.app;

app.add_infrastructureControl = function(opt_options) {
	var options = opt_options || {};

	var button1 = document.createElement('a');
	button1.innerHTML= 'Cancel';
	button1.className= "btn btn-danger";

	button1.addEventListener('click', closeFunction, false);
	var button2 = document.createElement('a');

	if(opt_options.type == 'new') 
	{
		
		button2.innerHTML = 'Place Green Infrastructure';
		button2.id = "infrastructure_add";
		button2.className= "btn btn-primary break-word";

		button2.addEventListener('click', addInteraction, false);
	} 
	else if(opt_options.type == 'edit') 
	{	
		button2.innerHTML = 'Save';
		button2.id = 'save_infrastructure';
		button2.className= "btn btn-primary break-word";
		button2.addEventListener('click', function() {saveInfrastructure(opt_options.id)}, false);
	}

	var field1 = document.createElement('select');
	field1.id = "infrastructure_type";
	field1.name = "infrastructure_type";

	getInfrastructureTypes();
	for (var i = 0; i < gitemplates.length; i ++) {
		var option1 = document.createElement('option');
		option1.text = gitemplates.models[i].attributes.name;
		option1.value = gitemplates.models[i].attributes.name;
		option1.name = gitemplates.models[i].attributes.url;
		option1.setAttribute('data-imagesrc', girepresentations.get(gitemplates.models[i].attributes.model_planview).attributes.rep_thumbnail);
		field1.options.add(option1);
		representationMap[option1.value] = girepresentations.get(gitemplates.models[i].attributes.model_planview).attributes.rep_thumbnail;
		infrUrlMap[option1.value] = gitemplates.models[i].attributes.url;
	}

	var text0 = document.createElement('h4');
	text0.innerHTML = " Green Infrastructure Properties";

	var text1 = document.createElement('label');
	text1.innerHTML = 'Name: ';
	text1.class = "infr-label";
	var input1 = document.createElement('input');
	input1.id = "infr_name";
	input1.name ="infr_name";
	

	var text2 = document.createElement('label');
	text2.innerHTML = "Age (years): ";
	text2.class="infr-label";

	var input2 = document.createElement('input');
	input2.type = "number";
	input2.id = "age";
	input2.name="age";

	var text3 = document.createElement('label');
	text3.innerHTML = "Vegetation Density (left area index): ";
	text3.class = "infr-label";
	var input3 = document.createElement('input');
	input3.type = "number";
	input3.id="veg_density";
	input3.name="veg_density";
	

	var text4 = document.createElement('label');
	text4.innerHTML = "Vegetation height (feet): ";
	text4.class = "infr-label";
	var input4 = document.createElement('input');
	input4.type = "number";
	input4.id = "veg_height";
	input4.name="veg_height";
	

	var element = document.createElement('div');
	element.className = 'ol-unselectable ol-control add-infrastructure';
	
	element.appendChild(field1);
	element.appendChild(document.createElement('br'));
	// element.appendChild(document.createElement('hr'));
	// element.appendChild(text0);
	// element.appendChild(document.createElement('br'));
	// element.appendChild(text1);
	// element.appendChild(input1);
	// element.appendChild(document.createElement('br'))
	// element.appendChild(text2);
	// element.appendChild(input2);
	// element.appendChild(document.createElement('br'))
	// element.appendChild(text3);
	// element.appendChild(input3);
	// element.appendChild(document.createElement('br'))
	// element.appendChild(text4);
	// element.appendChild(input4);
	// element.appendChild(document.createElement('br'));
	element.appendChild(button1);
	element.innerHTML += '&nbsp;';
	element.appendChild(button2);

	ol.control.Control.call(this, {
		element: element,
		target: options.target
	});
};
ol.inherits(app.add_infrastructureControl, ol.control.Control);


app.edit_infrastructure = function(opt_options) {
	var options = opt_options || {};

	var ed_text0 = document.createElement('h4');
	ed_text0.innerHTML = "Green Infrastructure edits";

	var de_button = document.createElement('a');
	de_button.innerHTML = " Delete Green Infrastructure";
	de_button.className = "btn btn-danger";
	de_button.addEventListener('click', delete_infr, false);

	var ed_select = document.createElement('select');
	ed_select.multiple = "yes";
	ed_select.addEventListener('dblclick', onEditSelect);
	var button1 = document.createElement('a');
	button1.innerHTML= 'Cancel'
	button1.className = 'btn btn-default';

	button1.addEventListener('click', closeEditFunction, false);

 	var element = document.createElement('div');
	element.className = 'ol-unselectable ol-control edit-infrastructure';

	element.appendChild(ed_text0);
	var sizeSelect = 0;
	for(obj in dataMap) {
		var ed_option = document.createElement('option');
		ed_option.text = dataMap[obj][1];
		ed_option.value = obj;
		ed_option.id = obj;
		ed_select.options.add(ed_option);
		sizeSelect +=1
	};
	if(sizeSelect > 0) {
		ed_select.size = sizeSelect;
		ed_select.id = "ed_select";
		
		element.appendChild(ed_select);

		$('#ed_select').on('dblclick', 'option', function() {
			map.addControl(addInfrastructureControl);
			$('#infrastructure_type').ddslick();
		});


	}
	else {
		var no_items = document.createElement('p');
		no_items.innerHTML = "Sorry, There are no infrastructures in this Map";
		element.appendChild(no_items);
	}
	
	element.appendChild(document.createElement('br'));
	element.appendChild(button1);
	element.innerHTML += '&nbsp;';
	element.appendChild(de_button);
	ol.control.Control.call(this, {
	element:element,
	target: options.target
	});

};

ol.inherits(app.edit_infrastructure, ol.control.Control);


app.add_labelControl = function(opt_options) {
	var options = opt_options || {};

	var element = document.createElement('div');
	element.className = 'ol-unselectable ol-control label-infrastructure';


	$('#infrastructure_type li a label').each(function(i, selected) {
		var value = $(selected).text();
		var sq1 = document.createElement('canvas');
		sq1.width = 50;
		sq1.height = 50;
		sq1.id = value;
		var ctx = sq1.getContext("2d");
		var background = new Image();
		background.src = representationMap[value];
		background.onload = function() {
			ctx.drawImage(background, 0, 0, 50, 50)
			//		ctx.scale(0.05, 0.05)
		}
		// sq1.style.background = "rgba(139,0,139,0.2)";//charsMap[value][1];
		// //charsMap[value][2]+'sq';
		element.appendChild(sq1);
		//document.getElementById(sq1.id).style.background = charsMap[value][1];
		var label = document.createElement('label');
		label.innerText = value; //charsMap[value][2];
		element.appendChild(label)
		element.appendChild(document.createElement('br'));
	});

	ol.control.Control.call(this, {
		element: element,
		target: options.target
	});
};
ol.inherits(app.add_labelControl, ol.control.Control);

var map = new ol.Map({
	layers: [raster],
	target: 'map',
	view: new ol.View({
		center:  [-8543072, 4763868],
		zoom:18

	})
});

// add wms layers
var landcover = new ol.layer.Tile({
    source: new ol.source.TileWMS({
      url: 'http://wssi.ncsa.illinois.edu:8080/geoserver/wms',
      params: {'LAYERS': 'wssi:landcover', 'TILED': true},
      serverType: 'geoserver'
    }),
    opacity: 0.5
  });
landcover.setVisible(false);
map.addLayer(landcover);

var impervious = new ol.layer.Tile({
    source: new ol.source.TileWMS({
      url: 'http://wssi.ncsa.illinois.edu:8080/geoserver/wms',
      params: {'LAYERS': 'wssi:impervious', 'TILED': true},
      serverType: 'geoserver'
    }),
    opacity: 0.5
  });
impervious.setVisible(false);
map.addLayer(impervious);

var saturated = new ol.layer.Tile({
    source: new ol.source.TileWMS({
      url: 'http://wssi.ncsa.illinois.edu:8080/geoserver/wms',
      params: {'LAYERS': 'wssi:saturated', 'TILED': true},
      serverType: 'geoserver'
    }),
    opacity: 0.5
  });
map.addLayer(saturated);

// ading snapping point layer
var vectorSource = new ol.source.Vector({
  loader: function(extent, resolution, projection) {
    var url = 'http://wssi.ncsa.illinois.edu:8080/geoserver/wfs?service=WFS&' +
        'version=1.1.0&request=GetFeature&typename=wssi:grid_center&' +
        'outputFormat=text/javascript&format_options=callback:loadFeatures' +
        '&srsname=EPSG:3857&bbox=' + extent.join(',') + ',EPSG:3857';
    //console.log(url);
    $.ajax({url: url, dataType: 'jsonp', jsonp: false});
  },
  strategy: ol.loadingstrategy.tile(new ol.tilegrid.XYZ({
    maxZoom: 19
  }))
});

// format used to parse WFS GetFeature responses
var geojsonFormat = new ol.format.GeoJSON();

/**
 * JSONP WFS callback function.
 * @param {Object} response The response object.
 */
window.loadFeatures = function(response) {
  vectorSource.addFeatures(geojsonFormat.readFeatures(response));
};

var snapping = new ol.layer.Vector({
  source: vectorSource,
  style: new ol.style.Style({
	image: new ol.style.Circle({
		radius: 1,
		fill: new ol.style.Fill({
			color: 'rgba(0, 0, 255, 1.0)'
		})
	})
  }),
  opacity: 0.1
});

map.addLayer(snapping);

var pointOverlay = new ol.FeatureOverlay({
	style: function(feature,resolution) {
		var scale = fixResolution(resolution);
		feature.setScale(scale);
		//return styles;
	}
});

pointOverlay.setMap(map);

function fixResolution(resolution) {
	return resolution/100;
}
// adding feature layer for polygon of GI
var featureOverlay = new ol.FeatureOverlay({
	style: new ol.style.Style({
	})
});
featureOverlay.setMap(map);


function createModify(feature, type) { 
	if (overlay2 != undefined ){
		overlay2.getFeatures().clear();
	}
	
	overlay2 = new ol.FeatureOverlay({
	});
	overlay2.addFeature(feature);
	overlay2.setMap(map);

	modify = new ol.interaction.Modify({
		features: overlay2.getFeatures()

	});
}



$('#NewInfrastructure').click(function () {
	if(isAddActive) {
		map.removeControl(addInfrastructureControl);
	}
	app.add_infrastructureControl.prototype.setMap = function(map) {
		ol.control.Control.prototype.setMap.call(this, map);
	}
	addInfrastructureControl = new app.add_infrastructureControl({
		map: map,
		type: 'new'
	});

	map.addControl(addInfrastructureControl);
	$('#infrastructure_type').ddslick();
	isAddActive = true;	
	if(!isLabelActive){
		map.addControl(new app.add_labelControl({
			map: map
		}));
		isLabelActive = true;
	}
});

$('#EditInfrastructure').click(function() {
	app.edit_infrastructure.prototype.setMap = function(map){
		ol.control.Control.prototype.setMap.call(this, map);

	}
	map.removeControl(editInfrastructureControl);
	editInfrastructureControl = new app.edit_infrastructure({
		map: map
	});
	$('#infrastructure_type').ddslick();
	map.addControl(editInfrastructureControl);
	isEditActive = true;
});


function addInteraction() {
	draw = new ol.interaction.Draw({
		features: featureOverlay.getFeatures(),
		type: 'Polygon', //(typeSelect.value)
	});

	map.addInteraction(draw);
	draw.on('drawend', function(evt) {
		finishPolygon(evt);
	});

	var snap = new ol.interaction.Snap({
  		source: snapping.getSource(),
  		pixelTolerance: 30
	});
	map.addInteraction(snap);
}

function closeFunction() {
	map.removeInteraction(modify);
	map.removeControl(addInfrastructureControl);
}

function closeEditFunction() {
	map.removeControl(editInfrastructureControl);
}

function finishPolygon(evt)
{

	var geometry = evt.feature.getGeometry();
	console.log(geometry);
	var type = $('#infrastructure_type .dd-selected-value').val();

	// creating point feature
	var pointFeature = new ol.Feature({'name': type});
	pointFeature.setGeometry(geometry.getInteriorPoint());

	// setting style for the point
	var imgsrc = representationMap[type];
	var pointStyle = new ol.style.Style({
        image: new ol.style.Icon({
        	src: imgsrc,
        	scale: Math.sqrt(geometry.getArea())/50
        })
    });
	pointFeature.setStyle(pointStyle);
	//Adding the point to the feature layer
	pointOverlay.addFeature(pointFeature);

	var feature = evt.feature;
	var template = infrUrlMap[type];
	var name  = $('#infr_name').val();
	var type_style = new ol.style.Style({
			fill: new ol.style.Fill({
				color: "rgba(139,0,139,0.2)"
			}),
			stroke: new ol.style.Stroke({
				color: '#8B008B',
				width: 2
			})
		});
	evt.feature.setStyle(type_style);
	var coordinates = [];
	coordinates[0] = [];
	for(i = 0; i < geometry.getCoordinates()[0].length; i++)
	{
		coordinates[0][i] = ol.proj.transform(geometry.getCoordinates()[0][i], 'EPSG:3857', 'EPSG:4326');
	}
	
	var watershed = "https://ginotebook.renci.org/api/watersheds/1/";
	var placement_poly = JSON.stringify({"type": "Polygon", "coordinates": coordinates});
	var jsonData = JSON.stringify({"watershed":watershed, "template": template, "placement_poly": placement_poly})

	$.ajax({
		url: restServer2 + "/gi_instances/",	
		type: "POST",
		data: jsonData,
		async: false,
		contentType: "application/json",
		success: function(data) {
		 console.log(data)
		 name = type + " " + data.id;
		 evt.feature.setId(data.id);
		 pointFeature.setId(data.id);
		 dataMap[data.id] = [type, name, geometry, feature, pointFeature];
		},
		error: function(data) {
		console.log("Failed to post infrastructure")
		}
	})

	
	//featureOverlay.addFeature(feature);
	map.removeControl(addInfrastructureControl);
	map.removeInteraction(draw);
	//featureOverlay2.removeFeature(feature);
	if(isEditActive) {
		map.removeControl(editInfrastructureControl);
		$('#EditInfrastructure').click();
	}
}

function onClickFeature(id) {
	createModify(dataMap[id][4], dataMap[id][0])
	map.addInteraction(modify);
	addInfrastructureControl = new app.add_infrastructureControl({
		map: map, 
		type: 'edit',
		id: id
	});
	map.addControl(addInfrastructureControl);
	$('#infrastructure_type').ddslick();
	var obj = typeMap[id];
	isAddActive = true;

}


function delete_infr(evt) {
	if(overlay2 != undefined)
	{
		overlay2.getFeatures().clear();
	}	
	$('#ed_select option:selected').each(function(i, selected) {
		var id = $(selected).val();
		$.ajax({
			url: restServer2 + '/gi_instances/' + id + '/',
			type: "DELETE",
			async: false,
			contentType: "application/json",
			success: function() {
				featureOverlay.removeFeature(dataMap[id][3]);
				pointOverlay.removeFeature(dataMap[id][4]);
				map.removeControl(editInfrastructureControl);
				delete dataMap[id];
				$('#EditInfrastructure').click();
			},
			error: function(result) {
				console.log('Failed to delete infrastructure: ' + id + result.statusText);
			}
		})
		
	})
	

}

function onEditSelect() {
	map.removeInteraction(modify);
	if(isAddActive) {
		map.removeControl(addInfrastructureControl);
	}
	geom_id = $('#ed_select option')[this.selectedIndex].id;
	createModify(dataMap[geom_id][3], dataMap[geom_id][0]);
	map.addInteraction(modify);
	addInfrastructureControl = new app.add_infrastructureControl({
		map: map,
		type: 'edit', 
		id: geom_id
	});
	map.addControl(addInfrastructureControl);
	$('#infrastructure_type').ddslick();
	$('#ed_select').val([]);
	$('#ed_select #'+geom_id).prop('selected', true);
};

function saveInfrastructure(geom_id) {
	map.removeInteraction(modify);
	var id = geom_id;
	var obj = dataMap[id];
	var type = $('#infrastructure_type .dd-selected-value').val();
	if(dataMap[id][0] != $('#infrastructure_type .dd-selected-value').val())
	{
		dataMap[id][0] = type;
		dataMap[id][1] = type + " " + geom_id;
		var imgsrc = representationMap[type];
		var pointStyle = new ol.style.Style({
	        image: new ol.style.Icon({
	        	src: imgsrc
	        })
	    });
		dataMap[id][4].setStyle(pointStyle)
	}
	var coordinates = [];
	coordinates[0] = [];
	for(i = 0; i < dataMap[id][2].getCoordinates()[0].length; i++)
	{
		coordinates[0][i] = ol.proj.transform(dataMap[id][2].getCoordinates()[0][i], 'EPSG:3857', 'EPSG:4326');
	}
	var template = infrUrlMap[type];
	var watershed = "https://ginotebook.renci.org/api/watersheds/1/";
	var placement_poly = JSON.stringify({"type": "Polygon", "coordinates": coordinates});
	var jsonData = JSON.stringify({"watershed":watershed, "template": template, "placement_poly": placement_poly});

	$.ajax({
		url: restServer2 + '/gi_instances/' + id + '/',
		type: "PUT",
		dataType: 'json',
		data: jsonData,
		async: false,
		contentType: "application/json",
		success: function(result) {
			console.log("Edit GI Successful. New GI: " + result)
		},
		error: function(result) {
			console.log("Failed to edit GI instance " + id + result.statusText)
		}
	})
	map.removeControl(addInfrastructureControl);
	if(isEditActive) {
		map.removeControl(editInfrastructureControl);
		$('#EditInfrastructure').click();
	}
}

map.on("dblclick", function(e) {
	// if(isFlowTableActive) {
	// 	onClickGetFlowTable(e);
	// } else 
	// {
		map.forEachFeatureAtPixel(e.pixel, function(feature, layer) {
			map.removeInteraction(modify);
			if(isAddActive) {
				map.removeControl(addInfrastructureControl);
			}
			geom_id = feature.getId();
			createModify(dataMap[geom_id][3], dataMap[geom_id][0]);
			map.addInteraction(modify);
			addInfrastructureControl = new app.add_infrastructureControl({
				map: map,
				type: 'edit', 
				id: geom_id
			});

			map.addControl(addInfrastructureControl);
			$('#infrastructure_type').ddslick();
			var obj = dataMap[geom_id];
			$('#infrastructure_type').val(obj[0]);
			$('#ed_select').val([]);
			$('#ed_select #'+geom_id).prop('selected', true);
	})
	// }
	
});

function getInfrastructureTypes() {
	$.ajax({
		url: restServer2 + "/gi_templates/",
		type: "GET",
		async: false,
		success: function(result) {
			var data = result.results;
			infrTypes = data['templates'];
			var reps_2d = data['representation2d'];
			gitemplates = new GiTemplateCollection();
			girepresentations = new representation2dCollections();

			_.each(data, function(f) {
				$.ajax({
					url: f.model_planview, 
					type: "GET",
					async: false,
					success: function(f2) {
					var mp = f.model_planview.split('/')[f.model_planview.split('/').length-2];
					gitemplates.add({
						_id: f.id,
						url: f.url,
						name: f.name,
						model_3d: f.model_3d,
						model_planview: f.model_planview.split('/')[f.model_planview.split('/').length-2],
						gi_elements: f.gi_elements
					});
					girepresentations.add({
						_id: f2.id,
						rep_file: f2.rep_file,
						rep_thumbnail: f2.rep_thumbnail
					});	
					var option1 = new Option();
					option1.text = f.name;
					option1.value = f.name;
					option1.setAttribute('data-image', girepresentations.get(mp).attributes.rep_thumbnail)	;
					$('#infrastructure_type').append(option1);
					representationMap[f.name] = girepresentations.get(mp).attributes.rep_thumbnail;
					infrUrlMap[option1.value] = f.url;
				}
				})
			})
		},
		error: function(data) {
			console.log("Failed to get Infrastructure Types from Server.")
		}
	})
}
var ginstancesss;
function getAllGIInstances() {
	getInfrastructureTypes();
	$.ajax({
		url: restServer2 + "/gi_instances/",
		type: "GET",
		async: false,
		success: function(result) {
			var data = result.results;
			ginstancesss = data;
			for(var i =0; i < data.length; i++)
			{
				if(dataMap[data[i].id] == undefined) {
					var typeId = data[i].template.split('/')[data[i].template.split('/').length-2]
					var type = gitemplates.get(typeId).get('name');
					var type_style = new ol.style.Style({
						fill: new ol.style.Fill({
							color: "rgba(139,0,139,0.2)"
						}),
						stroke: new ol.style.Stroke({
							color: '#8B008B',
							width: 2
						}),
					});
					var feature = new ol.Feature({'name': type});
					feature.setStyle(type_style);
					var coordinates = [];
					coordinates[0] = [];
					for(var j = 0; j < data[i].placement_poly.coordinates[0].length; j++){
						coordinates[0][j] = ol.proj.transform(data[i].placement_poly.coordinates[0][j], 'EPSG:4326', 'EPSG:3857');
					}
					feature.setGeometry(new ol.geom.Polygon(coordinates));
					feature.setId(data[i].id);
					featureOverlay.addFeature(feature);
					
					// creating point feature
					var pointFeature = new ol.Feature({'name': type});
					pointFeature.setGeometry(feature.getGeometry().getInteriorPoint());

					// setting style for the point
					var imgsrc = representationMap[type];
					var pointStyle = new ol.style.Style({
				        image: new ol.style.Icon({
				        	src: imgsrc,
				        	scale: Math.sqrt(feature.getGeometry().getArea())/50
				        })
				    });
					pointFeature.setStyle(pointStyle);
					pointFeature.setId(data[i].id);
					//Adding the point to the feature layer
					pointOverlay.addFeature(pointFeature);

					dataMap[data[i].id] = [type, type + " " + data[i].id, feature.getGeometry(), feature, pointFeature];
				}
			}
			$('#ShowAllInfrastructures').hide();
			if(isEditActive) {
				map.removeControl(editInfrastructureControl);
				$('#EditInfrastructure').click();
			}
		},
		error: function(data) {
			console.log("Failed to get Green Infrastructure Instances from server")
		}

	})
}


