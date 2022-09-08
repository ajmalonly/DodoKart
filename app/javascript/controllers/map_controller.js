import { Controller } from "@hotwired/stimulus"

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
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.on('load', () => {
      this.map.addSource('route', {
        'type': 'geojson',
        'data': {
          'type': 'Feature',
          'properties': {},
          'geometry': {
            'type': 'LineString',
            'coordinates': [
              [57.4984168,-20.1624375],
              [57.47680, -20.18092247],
              [57.4696472,-20.1836331],
              [57.4584738, -20.2208957],
              [57.4674423, -20.2267401],
              [57.4731347, -20.2354432],
              [57.4759577, -20.2418811],
              [57.4777101, -20.2535275],
              [57.4784026, -20.2653165],
              [57.4824836, -20.2617493],
              [57.489833, -20.2610855],
              [57.489833, -20.2610855],
              [57.4965487, -20.2610855],
              [57.489833, -20.2610855],
              [57.4965487, -20.2610855],
              [57.4971339, -20.2797464],
              [57.4973445, -20.2850436],
              [57.4933938, -20.2950453],
              [57.4958665, -20.3018021],
              [57.5072335, -20.3073556],
              [57.5254854, -20.3163468]
            ]
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
          'line-color': '#888',
          'line-width': 8
        }
      })
    })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  // add to map

}
