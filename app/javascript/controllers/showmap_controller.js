import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="showmap"
export default class extends Controller {
  connect() {
    mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGVvMTYiLCJhIjoiY2xranJsYjk5MDJyNTNxcG9pdnRqOTdkaSJ9.2cJ7dSToSSfRIDE_-BJkAg';
   
    this.map = new mapboxgl.Map({
    container: 'map', // container ID
    // Choose from Mapbox's core styles, or make your own style with Mapbox Studio
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: [13.3871678,  52.5125277], // starting center in [lng, lat]
    zoom: 9 // starting zoom
    });

    // Add geolocate control to the map.
    this.map.addControl(
    new mapboxgl.GeolocateControl({
    positionOptions: {
    enableHighAccuracy: true
    },
    // When active the map will receive updates to the device's location as it changes.
    trackUserLocation: true,
    // Draw an arrow next to the location dot to indicate which direction the device is heading.
    showUserHeading: true
    })
    );
  }
}
