<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://openlayers.org/en/v3.14.2/css/ol.css" type="text/css">
    <style>
      .map {
        height: 400px;
        width: 100%;
      }
    </style>
    <script src="http://openlayers.org/en/v3.14.2/build/ol.js" type="text/javascript"></script>
    
<title>Insert title here</title>
</head>
<body>
	<h1>This is index.JSP.with.OpenLayers</h1>
	<div id="map" class="map"></div>
    <script>
      var openCycleMapLayer = new ol.layer.Tile({
        source: new ol.source.OSM({
          attributions: [
            new ol.Attribution({
              html: 'All maps &copy; ' +
                  '<a href="http://www.opencyclemap.org/">OpenCycleMap</a>'
            }),
            ol.source.OSM.ATTRIBUTION
          ],
          url: 'http://{a-c}.tile.opencyclemap.org/cycle/{z}/{x}/{y}.png'
        })
      });
      var openSeaMapLayer = new ol.layer.Tile({
        source: new ol.source.OSM({
          attributions: [
            new ol.Attribution({
              html: 'All maps &copy; ' +
                  '<a href="http://www.openseamap.org/">OpenSeaMap</a>'
            }),
            ol.source.OSM.ATTRIBUTION
          ],
          opaque: false,
          url: 'http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png'
        })
      });
      var map = new ol.Map({
        layers: [
          openCycleMapLayer,
          openSeaMapLayer
        ],
        target: 'map',
        controls: ol.control.defaults({
          attributionOptions: /** @type {olx.control.AttributionOptions} */ ({
            collapsible: false
          })
        }),
        view: new ol.View({
          maxZoom: 18,
          center: [-244780.24508882355, 5986452.183179816],
          zoom: 15
        })
      });
    </script>
    
	<h3>by Teasun</h3>
</body>
</html>