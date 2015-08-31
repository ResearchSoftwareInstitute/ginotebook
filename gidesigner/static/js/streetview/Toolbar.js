var Toolbar = function ( editor ) {

	var signals = editor.signals;

	var container = new UI.Panel();

	var location = new UI.Panel().setId( 'location' ).setClass( 'locdiv' );
	var locationInput = new UI.Input().setWidth( '248px' ).setColor( '#444' );
	var autocomplete = new google.maps.places.Autocomplete( locationInput.dom );
	var goButton = new UI.Button( 'Go' ).onClick( function() {
		var geocoder = new google.maps.Geocoder();
		geocoder.geocode( { 'address': locationInput.getValue() }, function( results, status ) {
            if (status == google.maps.GeocoderStatus.OK) {
                var coords = {
            		lat: results[0].geometry.location.lat(),
            		lng: results[0].geometry.location.lng()
            	};

				cur_lat = coords.lat;
				cur_lng = coords.lng;
				//get the longitude and latitude of the current location
				
            	editor.setLocation( coords );

            } else {
            	console.log( "Geocoding error. Status: " + status );
            }
        } );
	} );

	location.add( locationInput );
	location.add( goButton );
	container.add( location );

	var buttons = new UI.Panel();
	container.add( buttons );

	// translate / rotate / scale

	var translate = new UI.Button( 'translate' ).onClick( function () {

		signals.transformModeChanged.dispatch( 'translate' );

	} );
	buttons.add( translate );

	var rotate = new UI.Button( 'rotate' ).onClick( function () {

		signals.transformModeChanged.dispatch( 'rotate' );

	} );
	buttons.add( rotate );

	var scale = new UI.Button( 'scale' ).onClick( function () {

		signals.transformModeChanged.dispatch( 'scale' );

	} );
	buttons.add( scale );


	var wirteToGIDB_bttn = new UI.Button( 'Write To GIDB' ).onClick( 
	Write2GIDB //convert the x,y,z coordinates to longitutd and latitude. Then, give an alert
	 );
	buttons.add( wirteToGIDB_bttn );

	var LoadGIDBInstances_bttn = new UI.Button('Load GIDB Instances').onClick(loadGIDBInstances);
	buttons.add(LoadGIDBInstances_bttn);

	// grid
	var grid = new UI.Number( 25 ).onChange( update );
	grid.dom.style.width = '42px';
	//buttons.add( new UI.Text( 'Grid: ' ) );
	//buttons.add( grid );

	var snap = new UI.Checkbox( false ).onChange( update );
	//buttons.add( snap );
	//buttons.add( new UI.Text( 'snap' ) );

	var local = new UI.Checkbox( false ).onChange( update );
	//buttons.add( local );
	//buttons.add( new UI.Text( 'local' ) );


	container.init = function( addr ) {
		locationInput.setValue( addr );
		var geocoder = new google.maps.Geocoder();
		geocoder.geocode( { 'address': locationInput.getValue() }, function( results, status ) {
            if (status == google.maps.GeocoderStatus.OK) {
                var coords = {
            		lat: results[0].geometry.location.lat(),
            		lng: results[0].geometry.location.lng()
            	};

            	// hack for demo...
            	coords.lat = 39.29533;
            	coords.lng = -76.74360;

            	editor.setLocation( coords );

            } else {
            	console.log( "Geocoding error. Status: " + status );
            }
        } );
	}

	function update() {

		signals.snapChanged.dispatch( snap.getValue() === true ? grid.getValue() : null );
		signals.spaceChanged.dispatch( local.getValue() === true ? "local" : "world" );

	}
	
	function Write2GIDB()
	{
		function callback()
		{
			var pnt_features= [];
			var scene_objs = editor.scene.children;
			for(var i = 7; i < scene_objs.length; i++) 
			// the scene already include 7 objects automatically, need to check later
			{
				if(scene_objs[i] instanceof THREE.Mesh)
				{
					var t_template = gi_templates[scene_objs[i].name];
					var curr_pnt_feature ={
						object: scene_objs[i],
						major_axis: t_template.gi_elements.major_axis,
						minor_axis: t_template.gi_elements.minor_axis,
						template: t_template.url
					};
					pnt_features.push(curr_pnt_feature);
				}
			}
			write_objs_to_2d(pnt_features);
		}
		//get objs in the scene as well as their major and minor axis
		
		var count = 0;
		var template_props = Object.keys(gi_templates);
		template_props.forEach(function(cur_template_prop){
			var cur_template = gi_templates[cur_template_prop];
			$.get(cur_template.gi_elements.url, function(data){
				cur_template.gi_elements.major_axis = data.major_axis;
				cur_template.gi_elements.minor_axis = data.minor_axis;
				count++;
				if(count == Object.keys(gi_templates).length)
					callback();
			})
		});
		//get the the major and minor axis for model of each name	
	}
	
	function loadGIDBInstances(){
		var collection = new GIInstanceCollection();
		collection.fetch({
			success: function(){
				collection.each(function(model){
					$.get(model.get("template"), function(data){
						var  get_lat_lng_obj;
						var polygons = model.get('placement_poly');
						var THREE_obj = {};
						THREE_obj.template = gi_templates[data.name];
						//TO DO: get GI model information here
						polygons.coordinates.forEach(function(polygon){
							var lng_sum = 0, lat_sum = 0, count = 0;
							for(var i = 0; i < polygon.length - 1; i++) // not include the last vertx which is the same as first one
							{
								var vertex = polygon[i];
								lng_sum += vertex[0];
								lat_sum += vertex[1];
								count++;
							}
							THREE_obj.LatLng  = {lat: lat_sum / count, lng: lng_sum / count};//get the centre of polygon
							get_lat_lng_obj = new get_latlng();
							get_lat_lng_obj.req_decode_use_depthmap(load_from_latLng, THREE_obj);					
						});
					});
				})		
			}
		});
	}

	update();

	return container;

}
