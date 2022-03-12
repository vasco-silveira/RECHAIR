import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
console.log(mapElement)
console.log(mapElement.dataset.mapboxApiKey)
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    console.log(map)
    console.log(mapElement)
    new mapboxgl.Marker()
    .setLngLat([marker.lon, marker.lat])
    .addTo(map);
  });
  }
}

export { initMapbox };
