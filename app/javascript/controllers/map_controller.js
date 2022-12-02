import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/chosuke/clb2cktqf000t14sb5l605sr1"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))

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

    // this.map.addControl(
    //   new MapboxDirections({
    //       accessToken: mapboxgl.accessToken
    //   }),
    //   'bot-left'
  // );

  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('https://res.cloudinary.com/dxx5x9kzp/image/upload/v1669905490/Groupmarker_eai2sh.png')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "34px"
      customMarker.style.height = "45px"

      // Pass the element as an argument to the new marker
      const addedMarker = new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)

        customMarker.markerInstance = addedMarker
        customMarker.addEventListener('click', e =>  {
        let coords = e.target.markerInstance.getLngLat();
          this.map.flyTo({
            center: coords,
            zoom: 16,
            speed: 0.5
          });
      });
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 13, duration: 0 })
  }
}
