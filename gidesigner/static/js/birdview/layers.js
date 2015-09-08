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


$('#saturatedLayer-base').click(function() {
	var onoff = $(this).is(':checked');
	saturated.setVisible(onoff);
});
$('#saturatedOpacity-base').change(function(){
	var opacity = $(this).val();
	saturated.setOpacity(opacity);
});

$('#saturatedLayer-rg').click(function() {
	var onoff = $(this).is(':checked');
	saturated2.setVisible(onoff);
});
$('#saturatedOpacity-rg').change(function(){
	var opacity = $(this).val();
	saturated2.setOpacity(opacity);
});