import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"



// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    console.log(this.markersValue)


    mapboxgl.accessToken = this.apiKeyValue


    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/matteo16/clnmy3xj2001501pa131kf6yx"
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

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))

    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.longitude, marker.latitude ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })

  }
}
