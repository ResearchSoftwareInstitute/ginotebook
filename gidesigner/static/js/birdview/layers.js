$('#landcoverLayer').click(function(){
	var onoff = $(this).is(':checked');
	landcover.setVisible(onoff);
});

$('#landcoverOpacity').change(function(){
	var opacity = $(this).val();
	landcover.setOpacity(opacity);
});

$('#imperviousLayer').click(function() {
	var onoff = $(this).is(':checked');
	impervious.setVisible(onoff);
});
$('#imperviousOpacity').change(function(){
	var opacity = $(this).val();
	impervious.setOpacity(opacity);
});


$('#saturatedLayer').click(function() {
	var onoff = $(this).is(':checked');
	saturated.setVisible(onoff);
});
$('#saturatedOpacity').change(function(){
	var opacity = $(this).val();
	saturated.setOpacity(opacity);
});
