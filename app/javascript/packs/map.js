import mapboxgl from 'mapbox-gl';

mapboxgl.accessToken = 'pk.eyJ1IjoibWFyaWVqampqaiIsImEiOiJjanZpMmZwazMwMWlqM3pwajRyZjM1YnVuIn0.IyXk4GZaA2d1NcGxUyjsbQ';

let map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v9',
  center: [-0.077, 51.533],
  zoom: 12
});

const address = document.getElementById("address");
const form = document.querySelector("form");
const resultBox = document.querySelector("p");

const addCoordToMap = (longitude, latitude) => {
  map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [longitude, latitude],
    zoom: 12
  });
  new mapboxgl.Marker()
    .setLngLat([`${longitude}`, `${latitude}`])
    .addTo(map);
};

const getCoord = () => {
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${address.value}.json?access_token=pk.eyJ1IjoibWFyaWVqampqaiIsImEiOiJjanZpMmZwazMwMWlqM3pwajRyZjM1YnVuIn0.IyXk4GZaA2d1NcGxUyjsbQ`)
    .then(response => response.json())
    .then((data) => {
      const lat = data.features[0].center[1];
      const long = data.features[0].center[0];
      addCoordToMap(long, lat);
      resultBox.innerText = `longitude : ${long} - latitude : ${lat}`;
    });
};

form.addEventListener('submit', (event) => {
  event.preventDefault();
  getCoord();
});
