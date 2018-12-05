import 'mapbox-gl/dist/mapbox-gl.css'
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
const MapboxCircle = require('mapbox-gl-circle');
const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/reapersf/cjp10clji0qzg2rpdqw12sjzt'
  });

  const markers = JSON.parse(mapElement.dataset.markers);
    let editableOpts = {
        editable: false,
        strokeColor: '#333333',
        strokeWeight: 1,
        strokeOpacity: 0.85,
        fillColor: '#568cdd',
        fillOpacity: 0.2,
        minRadius: 100,
        maxRadius: 500000,
        // debugEl: document.body.appendChild(document.createElement('div'))
    };

    let nonEditableOpts = {
        strokeWeight: 0,
        fillColor: '#000000',
        fillOpacity: 0.2
    };
  markers.forEach((marker) => {
    // let extraPrettyEditableOpts = _.extend({refineStroke: true}, editableOpts);

    // new mapboxgl.Marker()
    //   .setLngLat([marker.lng, marker.lat])
    //   .addTo(map);


    // const extraPrettyEditableOpts = _.extend({refineStroke: true}, editableOpts);

    window.editableCircle0 = new MapboxCircle({lat: marker.lat, lng: marker.lng}, 320, editableOpts).addTo(map);

  });
    // window.editableCircle0 = new MapboxCircle({lat: 39.986, lng: -75.341}, 350, editableOpts).addTo(map);

  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(13);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 4000, padding: 75 })
  }
}

// auto-complete for location
const addressInput = document.getElementById('input-4');

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });
}
