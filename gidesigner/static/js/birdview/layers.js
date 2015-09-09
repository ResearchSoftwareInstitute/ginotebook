$('#contourLayer').click(function() {
  var onoff = $(this).is(':checked');
  contour.setVisible(onoff);
});
$('#contourOpacity').change(function() {
  var opacity = $(this).val();
  contour.setOpacity(opacity);
});

$('#rankLayer').click(function() {
  var onoff = $(this).is(':checked');
  rank.setVisible(onoff);
});
$('#rankOpacity').change(function() {
  var opacity = $(this).val();
  rank.setOpacity(opacity);
});


$('#vulLayer').click(function() {
  var onoff = $(this).is(':checked');
  vul.setVisible(onoff);
});

$('#vulOpacity').change(function() {
  var opacity = $(this).val();
  vul.setOpacity(opacity);
});

$('#landcoverLayer').click(function() {
  var onoff = $(this).is(':checked');
  landcover.setVisible(onoff);
});

$('#landcoverOpacity').change(function() {
  var opacity = $(this).val();
  landcover.setOpacity(opacity);
});

$('#imperviousLayer').click(function() {
  var onoff = $(this).is(':checked');
  impervious.setVisible(onoff);
});
$('#imperviousOpacity').change(function() {
  var opacity = $(this).val();
  impervious.setOpacity(opacity);
});


$('#saturatedLayer-base').click(function() {
  var onoff = $(this).is(':checked');
  saturated.setVisible(onoff);
});
$('#saturatedOpacity-base').change(function() {
  var opacity = $(this).val();
  saturated.setOpacity(opacity);
});

$('#saturatedLayer-rg').click(function() {
  var onoff = $(this).is(':checked');
  saturated2.setVisible(onoff);
});
$('#saturatedOpacity-rg').change(function() {
  var opacity = $(this).val();
  saturated2.setOpacity(opacity);
});



function addWMSLayer(wmsName, title, isTile, legendImgSrc) {
  var layer;
  if (isTitle) {
    layer = new ol.layer.Tile({
      source: new ol.source.TileWMS({
        title: title,
        url: 'http://wssi.ncsa.illinois.edu:8080/geoserver/wms',
        params: {
          'LAYERS': wmsName,
          'TILED': true
        },
        serverType: 'geoserver'
      }),
      opacity: 0.5
    });
  } else { // single image
    layer = new ol.layer.Image({
      source: new ol.source.ImageWMS({
        title: title,
        url: 'http://wssi.ncsa.illinois.edu:8080/geoserver/wms',
        params: {
          'LAYERS': wmsName
        },
        serverType: 'geoserver'
      }),
      opacity: 0.5
    });
  }
  map.addLayer(layer);
  return layer;
}

function findLayerByTitle(layerTitle) {
	var layer = null;
	var layers = map.getLayers();
	layers.forEach(function (l) { if (l.get('title') == layerName) layer = l; });
	return layer;
}
