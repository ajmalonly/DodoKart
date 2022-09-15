import { Controller } from "@hotwired/stimulus"

import MapboxDirections from "@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    coordinates: Array,
    origin: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    const directions = new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      unit: "metric",
      profile: "mapbox/walking",
      controls: { instructions: false }
      })

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })


    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.map.addControl(directions, "top-left");
    this.#getCoords(directions)
    this.map.addControl(new mapboxgl.NavigationControl());
    this.map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: {
      enableHighAccuracy: true
      },
      trackUserLocation: true,
      showUserLocation: true,
      showUserHeading: true
      }));

    this.map.on('load', () => {
      this.map.addSource('route', {
        'type': 'geojson',
        'data': {
          'type': 'Feature',
          'properties': {},
          'geometry': {
            'type': 'LineString',
            'coordinates': this.coordinatesValue
          }
        }
      })

      this.map.addLayer({
        'id': 'route',
        'type': 'line',
        'source': 'route',
        'layout': {
          'line-join': 'round',
          'line-cap': 'round'
        },
        'paint': {
          'line-color': '#5BB318',
          'line-width': 8
        }
      })
    })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "25px"
      customMarker.style.height = "25px"
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #getCoords(directions) {
    navigator.geolocation.getCurrentPosition(position => {
      const { latitude, longitude } = position.coords
      if (this.map.loaded()) {
        directions.setOrigin([longitude, latitude])
        directions.setDestination(this.originValue)
      }
      else (this.map.on("load", () => {
        directions.setOrigin([longitude, latitude])
        directions.setDestination(this.originValue)
      }))
    })
  }

}
