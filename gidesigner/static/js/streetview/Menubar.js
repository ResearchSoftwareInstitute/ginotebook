var Menubar = function ( editor, css_root ) {

	var container = new UI.Panel();

	container.add( new Menubar.File( editor ) );
	container.add( new Menubar.Edit( editor ) );
	//container.add( new Menubar.Add( editor ) );
	container.add( new Menubar.View( editor, css_root ) );
	container.add( new Menubar.Help( editor ) );

	return container;

}
