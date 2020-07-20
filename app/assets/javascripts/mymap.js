// This should call in document.ready
function getBasemaps() {
  var basemaps = {
    "OpenStreetMaps": L.tileLayer(
      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
      {
        minZoom: 2,
        maxZoom: 19,
        id: "osm.streets"
      }
    ),
    "Google-Map": L.tileLayer(
      "https://mt1.google.com/vt/lyrs=r&x={x}&y={y}&z={z}",
      {
        minZoom: 2,
        maxZoom: 19,
        id: "google.street"
      }
    ),
    "Google-Satellite": L.tileLayer(
      "https://mt1.google.com/vt/lyrs=s&x={x}&y={y}&z={z}",
      {
        minZoom: 2,
        maxZoom: 19,
        id: "google.satellite"
      }
    ),
    "Google-Hybrid": L.tileLayer(
      "https://mt1.google.com/vt/lyrs=y&x={x}&y={y}&z={z}",
      {
        minZoom: 2,
        maxZoom: 19,
        id: "google.hybrid"
      }
    ),
    "Six-Aerial": L.tileLayer(
      "http://maps.six.nsw.gov.au/arcgis/rest/services/public/NSW_Imagery/MapServer/tile/{z}/{y}/{x}",
      {
        minZoom: 2,
        maxZoom: 20,
        id: 'six.aerial'
      }
    )
  };
  return basemaps;
}

function initMap(lat, long, edit = false, id = 'map') {
  //Init BaseMaps
  var basemaps = getBasemaps();
  // Init map
  map = L.map(id, {
    center: [lat, long],
    zoom: 13,
    editable: edit,
    layers: [basemaps.OpenStreetMaps]
  });
  return map;
}

function addSidebar(map){
  var sidebar = L.control.sidebar({
    autopan: false,
    container: "sidebar",
    position: "right"
  }).addTo(map);
  return sidebar;
}

function addLayerControl(map,overlays){
  var layerControl = L.control.layers(
    getBasemaps(), 
    overlays, 
    {
      position: "topright",
      collapsed: false
    }
  ).addTo(map);
  return layerControl;
}

function addDrawControl(map, editableLayers, color){
  var drawControl = new L.Control.Draw({
    position: "topleft",
    draw: {
      polygon: {
        showArea: true,
        showLength: true,
        allowIntersection: false, // Restricts shapes to simple polygons
        drawError: {
          color: '#e1e100', // Color the shape will turn when intersects
          message: '<strong>Oh snap!<strong> you can\'t draw that!' // Message that will show when intersect
        },
        shapeOptions: {
          color: color
        }
      },
      polyline: false,
      circle: false,
      rectangle: false,
      circlemarker: false, // Turns off this drawing tool
      marker: false
    },
    edit: {
      featureGroup: editableLayers, //REQUIRED!!
      remove: true
    }
  }).addTo(map);
}