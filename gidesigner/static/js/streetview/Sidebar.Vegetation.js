/**
 * @author Clinton Freeman <freeman@cs.unc.edu>
 * @author Steven Love <slove13@cs.unc.edu>
 * @author Jordan Reese <jsreese@cs.unc.edu>
 */

var gi_templates = {}; // to store gi templates information to allow access later

Sidebar.Vegetation = function ( editor ) {

	var signals = editor.signals;

	var container = new UI.Panel();

    var categoryContainer = new UI.Panel();
    var categoryContainerArray = {
        'vegetation': new UI.Panel(),
        'ground': new UI.Panel()
    };  
    // default to veg
    categoryContainer.add( categoryContainerArray[ 'vegetation' ] );
    // CATEGORY SELECTION
    var categorySelectRow = new UI.Panel();
    var categorySelect = new UI.Select().setOptions( {
        'vegetation': 'Native vegetation',
        'ground': 'Ground objects'
    } ).setWidth( '150px' ).setColor( '#444' ).setFontSize( '12px' );
    categorySelect.onChange( function () {
        var type = categorySelect.getValue();
        categoryContainer.clear();
        categoryContainer.add( categoryContainerArray[ type ] );
    } );
    categorySelectRow.add( new UI.Text( 'Category' ).setWidth( '90px' ) );
    categorySelectRow.add( categorySelect );

    // VEGETATION CONTAINER
    var vegContainer = categoryContainerArray[ 'vegetation' ];
    var vegParamContainer = new UI.Panel();
    var vegParamDiameter;
    var vegParamCrownHeight;
    var vegParamHeight;
    var vegSelect = new UI.FancySelect().setId( 'veglist' );

    var vegOptions = [];
    
	$.ajaxSetup({
		headers: { 'Authorization' :'Token 16a2133de2cc2a9c5d5b6c589262e0774f077bda' }
	});	
	
	// Create a new GI Templates collection
	var collection = new GITemplatesCollection();

	collection.fetch({
		success: function() {
			
			vegSelect.vegData = [];
			// Example iteration over each template
			var count = 0;
			collection.each( function (model) {
				$.get(model.get('model_3d'), function(data){
					var temp = new Object();
					temp.common = model.get('name');
					temp.gi_elements = {url: model.get('gi_elements')};
					temp.url = model.get('url');
					temp.model_3d_rep_file = data.rep_file;
					vegSelect.vegData.push(temp);
					gi_templates[temp.common] = temp;
					vegOptions.push('<div><img src="'+data.rep_thumbnail+'" id="thumbnail1" width="100%" /></div>');
                    count++;
                    if(count == collection.length)
                    {
						vegSelect.setOptions(vegOptions);
					}						
					});
                });
            }
        });
	
    vegSelect.onChange( function () {
        var vegInfo = this.vegData[ this.selectedIndex ];
        var vegAddButton = new UI.Button( 'Add to scene', 'addButton' );
        var callback = function( obj3d ) {
			var diffuseTex = THREE.ImageUtils.loadTexture( 'media/vegetation/' + vegInfo.file + '/diffuse.png' );
           /* diffuseTex.anisotropy = editor.config.getKey( 'maxAnisotropy' );
            diffuseTex.minFilter = THREE.LinearFilter;
            diffuseTex.magFilter = THREE.LinearFilter;
            var uniforms = {
                texture: {
                    type: "t",
                    value: diffuseTex
                }
            };
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
                '}';*/
            var mesh = obj3d.scene.children[0];
			mesh.castShadow = true;
            mesh.receiveShadow = false;
			/* mesh.material = new THREE.MeshLambertMaterial( {
                map: diffuseTex,
                transparent: true,
                side: THREE.DoubleSide
            } );
            mesh.customDepthMaterial = new THREE.ShaderMaterial( {
                uniforms: uniforms,
                vertexShader: vertexShader,
                fragmentShader: fragmentShader
            } );*/
            mesh.name = vegInfo.common;
            mesh.file = vegInfo.file;
			
			function callback(latLng_correctedXYZ, mesh){
				mesh.position.set(latLng_correctedXYZ.x_with_depth, latLng_correctedXYZ.y_with_depth, latLng_correctedXYZ.z_with_depth);
				editor.addObject( mesh );
				editor.select( mesh );
				// scaling
				// apply arbitrary scaling factors to the user provided/default values for size
				// need to find a way to use crown height in scaling the 3d model
				
				//var scaleX = mesh.geometry.boundingBox.max.x - mesh.geometry.boundingBox.min.x;
				//var scaleY = mesh.geometry.boundingBox.max.y - mesh.geometry.boundingBox.min.y;
				//var scaleZ = mesh.geometry.boundingBox.max.z - mesh.geometry.boundingBox.min.z;
				mesh.scale.set( 1,1,1 );
				editor.signals.sceneGraphChanged.dispatch();
			}
			
			return xyz_to_LatLng_correctedXYZ({x: -116, y: -40, z: 344}, callback, mesh);
			//get the depth map and set position to ground point correspond to 128, -64, 256
        }

        vegAddButton.onClick( function() {

            var mloader = new THREE.ColladaLoader();
            mloader.load( vegInfo.model_3d_rep_file, callback );

        } );

        vegParamContainer.clear();
        vegParamContainer.add( new UI.Text( 'VEGETATION PARAMETERS' ) );
        vegParamContainer.add( new UI.Break(), new UI.Break() );
        vegParamContainer.add( new UI.Text( 'Latin name' ).setWidth( '110px' ) );
        vegParamContainer.add( new UI.Text( vegInfo.latin ) );
        vegParamContainer.add( new UI.Break() );
        vegParamContainer.add( new UI.Text( 'Common name' ).setWidth( '110px' ) );
        vegParamContainer.add( new UI.Text( vegInfo.common ) );
        vegParamContainer.add( new UI.Break() );
        vegParamContainer.add( new UI.Text( 'Diameter' ).setWidth( '110px' ) );
        vegParamDiameter =  new UI.Number( vegInfo.diameter).onChange(function() {
            // todo
        });
        vegParamContainer.add(vegParamDiameter);
        vegParamContainer.add( new UI.Break() );
        vegParamContainer.add( new UI.Text( 'Crown Height' ).setWidth( '110px' ) );
        vegParamCrownHeight = new UI.Number( vegInfo.crownHeight).onChange(function() {
            // todo
        });
        vegParamContainer.add(vegParamCrownHeight);
        vegParamContainer.add( new UI.Break() );
        vegParamContainer.add( new UI.Text( 'Height' ).setWidth( '110px' ) );
        vegParamHeight = new UI.Number( vegInfo.height).onChange(function() {
           // todo
        });
        vegParamContainer.add( vegParamHeight );
        vegParamContainer.add( new UI.Break() );
        vegParamContainer.add( vegAddButton );
    } );


    vegContainer.add( vegSelect );
    vegContainer.add( new UI.Break() );
    vegContainer.add( vegParamContainer );

    // GROUND CONTAINER

    var gndContainer = categoryContainerArray[ 'ground' ];

    var gndParamContainer = new UI.Panel();
    var gndSelect = new UI.FancySelect().setId( 'gndlist' );

    gndSelect.onChange( function () {

        var gndInfo = this.gndData[ this.selectedIndex ];

        var gndAddButton = new UI.Button( 'Add to scene', 'addButton');
        gndAddButton.onClick( function() {

            var callback = function( obj3d ) {

                var diffuseTex = THREE.ImageUtils.loadTexture( 'media/ground/' + gndInfo.file + '/diffuse.png' );
                diffuseTex.anisotropy = editor.config.getKey( 'maxAnisotropy' );
                diffuseTex.minFilter = THREE.LinearFilter;
                diffuseTex.magFilter = THREE.LinearFilter;

                var uniforms = { 
                    texture: { 
                        type: "t", 
                        value: diffuseTex
                    } 
                };
        
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

                var mesh = obj3d.scene.children[0];
                mesh.position.set( 128, -64, 256 );
                mesh.castShadow = true;
                mesh.receiveShadow = true;

                mesh.material = new THREE.MeshLambertMaterial( {
                    map: diffuseTex,
                    transparent: true
                } );

                /*
                mesh.customDepthMaterial = new THREE.ShaderMaterial( { 
                    uniforms: uniforms, 
                    vertexShader: vertexShader, 
                    fragmentShader: fragmentShader 
                } );
                */
                mesh.name = gndInfo.common;
                mesh.file = gndInfo.file;
                editor.addObject( mesh );
                editor.select( mesh );
            }
    
            var mloader = new THREE.ColladaLoader();
            mloader.load( 'media/ground/' + gndInfo.file + '/mesh.DAE', callback );

        } );

        gndParamContainer.clear();
        gndParamContainer.add( new UI.Text( 'GROUND PARAMETERS' ) );
        gndParamContainer.add( new UI.Break(), new UI.Break() );
        gndParamContainer.add( gndAddButton );

    } );

    var gndOptions = [];

    var mulchBed = {
        file: 'mulchbed',
        common: 'Mulch Bed'
    };

    var mulchMound = {
        file: 'mulchmound',
        common: 'Mulch Mound'
    };

    var smallRock = {
        file: 'smallrock',
        common: 'Small Rock'
    };

    gndSelect.gndData = [
        mulchBed,
        mulchMound,
        smallRock
    ];

    gndSelect.gndData.forEach( function( gndObj ) {

        gndOptions.push( 
            '<div><img src="media/ground/' + gndObj.file + '/thumbnail.png" width="100%" /></div>' +
            gndObj.common
        );    

    } );
        
    gndSelect.setOptions( gndOptions );

    gndContainer.add( gndSelect );
    gndContainer.add( new UI.Break() );
    gndContainer.add( gndParamContainer );

    // add high level containers to this sidebar section
    container.add( new UI.Text( 'ADD OBJECTS' ) );
    container.add( new UI.Break(), new UI.Break() );
    container.add( categorySelectRow );
    container.add( new UI.Break() );
    container.add( categoryContainer );

	return container;
}
