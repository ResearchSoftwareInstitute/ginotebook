/**
 * @author Steven Love <slove13@cs.unc.edu>
 */

 var GI_Instance = Backbone.Model.extend({
	 
 });
 // GI Template collection
 var GIInstanceCollection = Backbone.Collection.extend({
	 model: GI_Instance,
	 url: "http://ginotebook.renci.org/api/gi_instances/",
	 parse: function(response) {
		 // GI-DB API returns the models under results
		 return response.results;
		}
 });
 
 // GI Template model
 var GITemplates = Backbone.Model.extend({
	 
 });
 
 // GI Template collection
 var GITemplatesCollection = Backbone.Collection.extend({
	 model: GITemplates,
	 url: "http://ginotebook.renci.org/api/gi_templates/",
	 
	 parse: function(response) {
		 // GI-DB API returns the models under results
		 return response.results;
	}
 });
 
function createGround() {

    var ground = new THREE.Mesh(
        new THREE.PlaneGeometry( 2048, 2048 ),
        new THREE.MeshLambertMaterial( {
            emissive: 'white', 
            transparent: true, 
            opacity: 0.0
        } )
    );
    //ground.overdraw = true;
    ground.receiveShadow = true;
    ground.rotation.set( 1.5 * Math.PI, 0, 0 );
    ground.position.set( 0, -64, 0 );
    ground.name = 'ground';
    editor.addObject( ground ); 

}

function latlngToThree(latLng, camLatLng) {

    var lngScale = 1./Math.cos(latLng.lat() * Math.PI / 180.);
    var tmp = 4.12808625e-06 / (1.05564965e-08*lngScale);
    var latDiff = latLng.lat() - camLatLng.lat();
    var lngDiff = latLng.lng() - camLatLng.lng();
    var x = -(latDiff - tmp*lngDiff) / (tmp*-4.12021846e-06*lngScale - 5.75741801e-08);
    var z = (latDiff + 5.75741801e-08*x) / 4.12808625e-06;
    return new THREE.Vector3(x, 0, z);
}

/** 
 * notes on problems with spotlight in the editor: 
 * instantiating a spotlight creates an Object3d that is the target. that 
 * target's parent is the scene, but we can make it a child of the spotlight 
 * when saved to json, the spotlight
 *
 * if shadowcameravisible = true, instantiating a spotlight creates a
 * PerspectiveCamera that is the shadow frustum.  this stops being linked
 * to the location of the light and its target after refresh
 * instantiating a spotlight creates a perspectiveCamera that has a
 * rotation decided by the position of the light and its target. upon
 * refreshing, the perspective camera can rotate on its own and looks
 * like a shadow frustum, but won't generate shadows.  
 */ 
function createLightAtPos( x, y, z ) {

    // some problem with directional light creating empty objects visible in 
    // the editor list of objects...
    var dlight = new THREE.DirectionalLight( 0xffffff );
    dlight.position.set( x, y, z );        
    
    dlight.castShadow = true;
    dlight.shadowDarkness = 0.5;
    dlight.shadowMapWidth = 2048;
    dlight.shadowMapHeight = 2048;

    var d = 512;

    dlight.shadowCameraLeft = -d;
    dlight.shadowCameraRight = d;
    dlight.shadowCameraTop = d;
    dlight.shadowCameraBottom = -d;

    dlight.shadowCameraFar = 1000;
    //dlight.shadowCameraVisible = true;
    
    dlight.target.name = "lightTarget";
    dlight.target.position.set( 0, 0, 0 );

    dlight.name = "light";
    dlight.intensity = 1;
    editor.addObject( dlight );

    dlight = new THREE.DirectionalLight( 0xc4df9b, 0.25 );
    dlight.position.set( 0, -32, 0 );

    editor.addObject( dlight );

    editor.addObject( new THREE.AmbientLight( 0x222222 ) );

}

function loadTreeAtPos( x, y, z ) {
    
    var callback = function( obj3d ) {

        var treeTexture = THREE.ImageUtils.loadTexture( 'media/garden.png' );
        treeTexture.anisotropy = editor.config.getKey( 'maxAnisotropy' );
        //treeTexture.minFilter = THREE.NearestMipMapLinearFilter;
        treeTexture.minFilter = treeTexture.magFilter = THREE.LinearFilter;
        var uniforms = { texture:  { type: "t", value: treeTexture } };

        var fragmentShader = '' +
            'uniform sampler2D texture;' +
            'varying vec2 vUV;' +
            'vec4 pack_depth( const in float depth ) {' +
                'const vec4 bit_shift = vec4( 256.0 * 256.0 * 256.0, 256.0 * 256.0, 256.0, 1.0 );' +
                'const vec4 bit_mask  = vec4( 0.0, 1.0 / 256.0, 1.0 / 256.0, 1.0 / 256.0 );' +
                'vec4 res = fract( depth * bit_shift );' +
                'res -= res.xxyz * bit_mask;' +
                'return res;' +
            '}' +
            'void main() {' +
                'vec4 pixel = texture2D( texture, vUV );' +
                'if ( pixel.a < 0.5 ) discard;' +
                'gl_FragData[ 0 ] = pack_depth( gl_FragCoord.z );' +
            '}';

        var vertexShader = '' +
            'varying vec2 vUV;' +
            'void main() {' +
                'vUV = 0.75 * uv;' +
                'vec4 mvPosition = modelViewMatrix * vec4( position, 1.0 );' +
                'gl_Position = projectionMatrix * mvPosition;' +
            '}';

        var tree = obj3d.scene.children[0];
        //tree.name = "tree";
        tree.position.set( 128, -64, 256 );
        tree.scale.set( 1.5, 1.5, 1.5 );
        tree.castShadow = true;
        tree.receiveShadow = true;
        tree.material = new THREE.MeshLambertMaterial( {
            map: treeTexture,
            transparent: true
            //side: THREE.DoubleSide
        } );
        /*
        tree.customDepthMaterial = new THREE.ShaderMaterial( { 
            uniforms: uniforms, 
            vertexShader: vertexShader, 
            fragmentShader: fragmentShader 
        } );
*/

        editor.addObject( tree );
        editor.select( tree );

    }
    
    var mloader = new THREE.ColladaLoader();
    mloader.load( 'media/garden.DAE', callback ); // FIXME
}

function loadPanorama() {

    var mesh = new THREE.Mesh(
        new THREE.SphereGeometry( 512, 32, 32 ), 
        new THREE.MeshBasicMaterial( {
            map: new THREE.Texture()
        } )
    );
    var loader = new GSVPANO.PanoLoader();

    // create the spherical background mesh before we attach the panorama to it 
    mesh.position.set( 0, 0, 0 );
    mesh.name = "panorama";
    editor.sceneBackground.add( mesh );

    loader.onProgress = function( p ) {
        //setProgress( p );
    };
            
    loader.onPanoramaData = function( result ) {
        //showProgress( true );
        //showMessage( 'Panorama OK. Loading and composing tiles...' );
    }
            
    loader.onNoPanoramaData = function( status ) {
        //showError("Could not retrieve panorama for the following reason: " + status);
    }
            
    loader.onPanoramaLoad = function() {
    
        console.log( 'onPanoramaLoad' );
        //activeLocation = this.location;
        mesh.material.map = new THREE.Texture( this.canvas ); 
        mesh.material.side = THREE.DoubleSide;
        mesh.material.map.needsUpdate = true;
        onWindowResize();

    };
    
    // 1 is very fuzzy, 2 is fuzzy, 3 is the highest resolution available.  
    // 4 errors occur, possibly because 4 panels don't have resolution 3 available
    loader.setZoom( 3 );
    loader.load( new google.maps.LatLng( 39.292891, -76.743471 ) );

}

function setFloorHeight( floorh ) {
    
    var cam = {
        position: [ 0, floorh, 0 ],
        target: [ 1, floorh, 0 ]
    };
    editor.config.setKey( "camera", cam ); 
    editor.config.setKey( "floorh", floorh );

}

function logThings() {

    editor.scene.traverse( function( child ) {
        if ( child.parent != undefined ) {
            console.log( child.name+ "\'s parent is " + child.parent.name );
        }
    } );

}

function raiseThings( amt ) {

    editor.scene.traverse( function( child ) {
        if ( child.parent != undefined &&   //don't raise the scene
             child.name != "ground" ) {     //don't raise the ground
            child.translateY(amt);
        }
    } );

}

function writeObjs(instance, mode){
	var GI_Inst_collection = new GIInstanceCollection();
	
	GI_Inst_collection.fetch({
		success: function() {
			var attr_hash = new Object();
			attr_hash['watershed'] = "http://ginotebook.renci.org/api/watersheds/1/";
			attr_hash['template'] = instance.template;
			attr_hash['placement_poly'] = new Object();
			attr_hash['placement_poly'].type = "Polygon";
			attr_hash['placement_poly'].coordinates = [];
			if(mode == "polygon")
			{
				//attr_hash['placement_poly'].coordinates.push(coordinates);
				//TO DO: polygon scenario
			}
			else if(mode == "point")
			{
				attr_hash['placement_poly'].coordinates = [];
				instance.polygon.forEach(function(obj){
					var left = obj.lng - obj.major_axis;
					var upper = obj.lat + obj.minor_axis;
					var right = obj.lng + obj.major_axis;
					var bottom = obj.lat - obj.minor_axis;
					var upper_left = [left, upper];
					var upper_right = [right, upper];
					var bottom_left = [left, bottom];
					var bottom_right = [right, bottom];
					attr_hash['placement_poly'].coordinates.push([upper_left, upper_right, bottom_right, bottom_left, upper_left]);
				});
			}
			
			GI_Inst_collection.create(attr_hash);
		}
	})
} 

function xyz_to_LatLng_correctedXYZ_from_dpthmp(DepthMapParsedResult, THREE_xyz) {
	var indices = DepthMapParsedResult.data.indices;
	var planes = DepthMapParsedResult.data.planes;
	var depthMap = null, v = [0, 0, 0],
	    planeIdx, phi, theta, lat, lng, plane, depth;
	
	phi = getPhi(THREE_xyz);
	theta = getTheta(THREE_xyz);
	if(phi==-9999||theta==-9999)
	{
		return {lat:cur_available_streetview_lat, lng:cur_available_streetview_lng, real_x: 0, real_y: 0, real_z: 0};
	}
	else
	{
		var pixelNr = angle2PixelNr(phi, theta);
		planeIdx = indices[pixelNr];
		v[0] = Math.sin(phi) * Math.cos(theta);
		v[1] = Math.sin(phi) * Math.sin(theta);
		v[2] = Math.cos(phi);
		//vector v is from original point to the exact point
		
		if(planeIdx > 0) {
			plane = planes[planeIdx]; //plane is the one corresponding to the center of a pixel.
			depth = Math.abs( plane.d / (v[0]*plane.n[0] + v[1]*plane.n[1] + v[2]*plane.n[2]) ); 
			// take the negative because the normal of plane and tracing ray have a angle more than 90 degree 
			var real_x = depth * v[0];
			var real_y = depth * v[1];
			var real_z = depth * v[2];
			// x,y,z in real world (distinguish from xyz in THREE.js)
			//compute the x,y,z coordinate of the tree in a right-hand coordinate system.
			lat = cur_available_streetview_lat + real_y /6356908.8/Math.PI*180;
			lng = cur_available_streetview_lng + real_x /(6377830*Math.cos(cur_available_streetview_lat/180*Math.PI))/Math.PI*180;
			return {lat:lat, lng:lng, x_with_depth: -real_x * THREE_real_ratio, y_with_depth: real_z * THREE_real_ratio, z_with_depth: real_y * THREE_real_ratio};
		} 
		else {
			//alert("please make sure all trees are on the ground");
			return ;
		}
	}
}

function xyz_to_LatLng_correctedXYZ(THREE_xyz, callback, args_of_callback){
	var args = Array.prototype.slice.call(arguments, 2);
	function outer_callback(DepthMapParsedResult){
		var latLng_correctedXYZ = xyz_to_LatLng_correctedXYZ_from_dpthmp(DepthMapParsedResult, THREE_xyz);
		if(callback == undefined)
		{
			return latLng_correctedXYZ;
		}
		else
		{
			args.unshift(latLng_correctedXYZ);
			return callback.apply(this, args);  //callback's parameters include: latLng_correctedXYZ + args_of_callback
		}
	}
	return (new get_latlng()).req_decode_use_depthmap(outer_callback);
}


function getPhi(vec){
	var phi = -9999;
	if (vec.x == 0 && vec.z == 0)
	{
		if (vec.y == 0)
		{
			//	LatLng = camLatLng;
		}
		//the tree is in the camera position in this case!
		if (vec.y > 0)
		{
			phi = 0;
		}
		//the tree is in a point above the camera
		if (vec.y < 0)
		{
			phi = Math.PI;
		}
		//the tree is in a position below the camera
	}
	// the case in which the tree is in the "z"-axis (the y-axis, actually)
	else{
		var tan_phi1 = vec.y/ Math.sqrt(vec.x*vec.x+vec.z*vec.z);
		var phi1 = Math.atan(tan_phi1);
		phi = Math.PI / 2 - phi1;
	}
	return phi;
		//till there, we could the phi angle. 
		//the phi angle is the angle from the +axis. that is, it is the angle from the top of the texture image to the bottom of it.
}

function getTheta(vec){
	var theta = -9999;
	if (vec.x == 0)
	{
		if (vec.z < 0){
			theta = 1.5 * Math.PI; 
		}
		//the tree is in a point behind the camera
		if (vec.z > 0)
		{
			theta = 0.5 * Math.PI; 
		}
		//the tree is in a point before the camera
		if (vec.z == 0)
		{
			if (vec.y  == 0)
			{
				//	LatLng = camLatLng;
			}
			//the tree is in the camera position in this case!
			else
				theta = Math.PI;
			//the tree is in the position above or below the camera.
		}			
	}
	else{
		var tan_theta1 = vec.z/vec.x;
		var theta1 = Math.atan(tan_theta1);
		if (vec.x < 0){
			theta = - theta1;
		}			
		if (vec.x > 0)
		{
			theta = Math.PI - theta1;
		}
	}
	return theta;
}
//thata is between -.5 *pi to 1.5*pi

function angle2PixelNr(phi, theta){
	var n_pixelx, n_pixely, w = 512;
	n_pixelx = Math.floor((Math.PI*1.5 - theta) / (2 * Math.PI) * 512);
	if (n_pixelx == 512)
		n_pixelx --;  //make sure that the col doesn't exceed the limit.
	n_pixely = Math.floor( phi / Math.PI * 256);
	if (n_pixely == 256)
		n_pixely --;  //make sure that the col doesn't exceed the limit.
	return (n_pixely*w + n_pixelx);
}

function write_objs_to_2d(pnt_features) {
	var callback = function(DepthMapParsedResult, pnt_features){
		pnt_features.forEach(function(point_feature){
			var instance = {};
			instance.template = point_feature.template;
			var position = point_feature.object.position;
			var latLng_correctedXYZ = xyz_to_LatLng_correctedXYZ_from_dpthmp(DepthMapParsedResult, position);
			point_feature.object.position.set(latLng_correctedXYZ.x_with_depth, latLng_correctedXYZ.y_with_depth, latLng_correctedXYZ.z_with_depth);
			//to control the distance, so that the size of the tree is proportional to the depth
			instance.polygon = [];
			instance.polygon.push({
				lat: latLng_correctedXYZ.lat,
				lng: latLng_correctedXYZ.lng,
				major_axis: point_feature.major_axis,
				minor_axis: point_feature.minor_axis,
			});
			writeObjs(instance, "point");
		});		
	}
	var get_latlng_obj = new get_latlng();
	get_latlng_obj.req_decode_use_depthmap(callback, pnt_features);
}

function latLng2xyz(DepthMapParsedResult, latLng){
	var indices = DepthMapParsedResult.data.indices;
	var planes = DepthMapParsedResult.data.planes;
	if(latLng.lat == cur_available_streetview_lat && latLng.lng == cur_available_streetview_lng)
	{
		return [0,0,0];
	}
	else
	{
		var phi, theta, planeIdx;
		var real_y = (latLng.lat - cur_available_streetview_lat)*Math.PI*6356908.8/180;
		var real_x = (latLng.lng - cur_available_streetview_lng)*Math.PI*(6377830*Math.cos(cur_available_streetview_lat/180*Math.PI))/180;
		for(var i = 0; i < planes.length; i++)
		{
			var plane = planes[i];
			var center_x = plane.n[0] * plane.d;
			var center_y = plane.n[1] * plane.d;
			var center_z = plane.n[2] * plane.d;
			if(plane.n[2] !== 0)
				var z_in_test = ((real_x - center_x) * plane.n[0] + (real_y - center_y) * plane.n[1])/(-plane.n[2]) + center_z;
			else
				continue;// in this case, the plane is vertical
			//the z value correspondent to x,y in the unlimited plane where the current plane resides in
			var THREExyz_in_test = {x: -real_x * THREE_real_ratio, y: z_in_test*THREE_real_ratio, z:real_y * THREE_real_ratio};
			phi = getPhi(THREExyz_in_test);
			theta = getTheta(THREExyz_in_test);
			var pixelNr = angle2PixelNr(phi, theta);
			planeIdx = indices[pixelNr];
			if(planeIdx == i)
			{
				return THREExyz_in_test;
			}
		};
	}
}

function load_from_latLng(DepthMapParsedResult, THREE_obj)
{
	var XYZ = latLng2xyz(DepthMapParsedResult, THREE_obj.LatLng);
	createTreeAtPos(THREE_obj.template, XYZ);
}

function createTreeAtPos(template, position)
{
	var mloader = new THREE.ColladaLoader();
    mloader.load(template.model_3d_rep_file, callback);
	function callback(obj3d)
	{
		var mesh = obj3d.scene.children[0];
		mesh.position.set(position.x, position.y, position.z);
		mesh.castShadow = true;
		mesh.receiveShadow = false;
		mesh.name = template.common;
		editor.addObject( mesh );
		editor.select( mesh );
		mesh.scale.set( 1,1,1 );
		editor.signals.sceneGraphChanged.dispatch();
	}
}
