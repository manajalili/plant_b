import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 20, duration: 4000});
  };  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });   // add markers
   const markers = JSON.parse(mapElement.dataset.markers);
   markers.forEach((marker) => {
     const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);     // Create a HTML element for your custom marker
     const element = document.createElement('div');
     element.className = 'marker';
     element.style.backgroundImage = `url('${marker.image_url}')`;
     element.style.backgroundSize = 'contain';
     element.style.width = '30px';
     element.style.height = '30px';     new mapboxgl.Marker(element)
       .setLngLat([ marker.lng, marker.lat ])
       .setPopup(popup)
       .addTo(map);
   });     map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                         mapboxgl: mapboxgl }));
      fitMapToMarkers(map, markers);
     }
   };

   export { initMapbox };









// import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

// const mapElement = document.getElementById('map');

// const buildMap = () => {
//   mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//   return new mapboxgl.Map({
//     container: 'map',
//     style: 'mapbox://styles/mapbox/streets-v10'
//   });
// };

// const addMarkersToMap = (map, markers) => {
//   markers.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//   });
// };

// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, maxZoom: 20, duration: 3000});
// };

// const initMapbox = () => {
//   if (mapElement) {
//     const map = buildMap();
//     const markers = JSON.parse(mapElement.dataset.markers);
//     addMarkersToMap(map, markers);
//     fitMapToMarkers(map, markers);
//   }
// };

// export { initMapbox };
