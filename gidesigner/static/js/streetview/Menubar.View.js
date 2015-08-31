Menubar.View = function ( editor, css_root ) {

	var container = new UI.Panel();
	container.setClass( 'menu' );

	var title = new UI.Panel();
	title.setTextContent( 'View' );
	title.setMargin( '0px' );
	title.setPadding( '8px' );
	container.add( title );

	//

	var options = new UI.Panel();
	options.setClass( 'options' );
	container.add( options );

	// themes

	var option = new UI.Panel();
	option.setClass( 'option' );
	option.setTextContent( 'Light theme' );
	option.onClick( function () {
		var cssPath = css_root + 'light.css'
		editor.setTheme( cssPath );
		editor.config.setKey( 'theme', cssPath );

	} );
	options.add( option );

	// about

	var option = new UI.Panel();
	option.setClass( 'option' );
	option.setTextContent( 'Dark theme' );
	option.onClick( function () {
		var cssPath = css_root + 'dark.css'
		editor.setTheme( cssPath );
		editor.config.setKey( 'theme', cssPath );

	} );
	options.add( option );

	//

	return container;

}
