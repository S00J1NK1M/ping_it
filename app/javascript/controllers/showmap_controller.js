import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl";

// Connects to data-controller="showmap"
export default class extends Controller {
  static targets = [ "time" ]

  static values = {
    markers: Array,
    avatar: String
  }

  connect() {
    mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGVvMTYiLCJhIjoiY2xranJsYjk5MDJyNTNxcG9pdnRqOTdkaSJ9.2cJ7dSToSSfRIDE_-BJkAg';

    console.log(this.markersValue)

    this.map = new mapboxgl.Map({
    container: 'map', // container ID
    // Choose from Mapbox's core styles, or make your own style with Mapbox Studio
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: [13.3871678,  52.5125277], // starting center in [lng, lat]
    zoom: 9 // starting zoom
    });

    const geolocate = new mapboxgl.GeolocateControl({
      positionOptions: {
        enableHighAccuracy: true
      },
      // When active the map will receive updates to the device's location as it changes.
      trackUserLocation: true,
      // Draw an arrow next to the location dot to indicate which direction the device is heading.
      showUserHeading: true
    })

    // Add geolocate control to the map.
    this.map.addControl(geolocate);

    geolocate.on('geolocate', (event) => {
      const dot = this.element.querySelector(".mapboxgl-user-location-dot")
      dot.style.background = `url('${this.avatarValue}') no-repeat center center / 100% 100%`
      dot.style.width = "30px"
      dot.style.height = "30px"


      const userLongitude = event.coords.longitude;
      const userLatitude = event.coords.latitude;
      const markerLongitude = this.markersValue[0].longitude;
      const markerLatitude = this.markersValue[0].latitude;
      const url = `https://api.mapbox.com/directions/v5/mapbox/walking/${userLongitude},${userLatitude};${markerLongitude},${markerLatitude}?geometries=geojson&access_token=${mapboxgl.accessToken}`;
      fetch(url)
        .then(response => response.json())
        .then((data) => {
          const duration = (data.routes[0].duration / 60).toFixed(0);

          this.timeTarget.innerText = `It takes approximately ${duration} ${duration < 2 ? "minute" : "minutes"} by walk.`;

          const geometry = data.routes[0].geometry;
          if (this.map.getLayer('route')) {
            // remove the old line if there is one left on the  map from before
            this.map.removeLayer('route');
            this.map.removeSource('route');
          }
          this.map.addLayer({
            id: 'route',
            type: 'line',
            source: {
              type: 'geojson',
              data: {
                type: 'Feature',
                geometry: geometry
              }
            },
            paint: {
              'line-width': 5,
              'line-color': '#FF00F5'
            }
          });
        })
    })
    geolocate.on("trackuserlocationend", () => {
      if (this.map.getLayer('route')) {
        // remove the old line if there is one left on the  map from before
        this.map.removeLayer('route');
        this.map.removeSource('route');
      }
    })


    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)

      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.longitude, marker.latitude ])
        .setPopup(popup)
        .addTo(this.map)

    })

    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //   mapboxgl: mapboxgl }))

    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.longitude, marker.latitude ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })

    const lat = navigator.geolocation.getCurrentPosition(position => { return position.coords.latitude});
    const lng = navigator.geolocation.getCurrentPosition(position => { return position.coords.longitude})

    console.log(lat);
    console.log(lng);
    // Add the Directions control
    // const directions = new MapboxDirections({
    //   accessToken: mapboxgl.accessToken,
    //   unit: 'metric', // Use 'imperial' for miles
    // });
    // this.map.addControl(directions, 'top-left');

    // // Listen for the 'route' event to get the directions
    // directions.on('route', (e) => {
    //   // You can access the route information here, including steps and geometry
    //   const route = e.route[0];
    //   console.log(route);
    // });

    // // Use the geocoding and directions functionality
    // // You can call this function when you want to get directions
    // const pingDirections = this.markersValue[0];
    // const userDirections = [lat, lng]
    // console.log(userDirections.longitude);
    // console.log(pingDirections);
    // function getDirections(pingDirections, userDirections) {
    //   directions.setOrigin(userDirections); // Use your current location coordinates
    //   directions.setDestination(pingDirections);
    // }

    // // Example: Call getDirections with a specific address
    // getDirections('Address of the table');


  }
}
