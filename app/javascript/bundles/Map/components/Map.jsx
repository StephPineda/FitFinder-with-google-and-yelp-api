import React, {Component, Fragment} from 'react'
import Loader from 'react-loader-spinner'

class Map extends Component{

  state = {
    positionCoords: [],
    pins: []
  }

  drawMap = () => {
    let { positionCoords } = this.state
    mapboxgl.accessToken = 'pk.eyJ1IjoiZ3ltZmluZGVyIiwiYSI6ImNqdnp1Znh3bzA0YXIzeW9kNzhqMXJqZnQifQ.UyRzS7V1X-1vRSfMWwMJ6Q';
    var map = new mapboxgl.Map({
      container: this.mapContainer,
      style: 'mapbox://styles/mapbox/streets-v11',
      zoom: 13,
      center: positionCoords,
    });

    map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: { enableHighAccuracy: true },
      trackUserLocation: true,
      showUserLocation: true
    }))

    this.state.pins.map( gym => {
      let marker = new mapboxgl.Marker()
        marker.setPopup(
          new mapboxgl.Popup().setHTML(`<p>${gym.name}</p><br/><p>${gym.address}</p>`).addTo(map)
        )
      marker.setLngLat( gym.coords ).addTo( map )
    })
  }

  fetchPins = () => {
    fetch(`/gyms_pins?search_term=${this.props.searchTerm}&zipcode=${this.props.zipcode}`)
      .then( res => res.json() )
      .then( pins => this.setState({ pins }))
  }

  componentDidMount(){
    if( this.state)
    navigator.geolocation.getCurrentPosition( position => {
      this.setState({
                      positionCoords: [ position.coords.longitude, position.coords.latitude ]
                    },
                    () => {
                      console.log(this.state.positionCoords)
                      this.drawMap()
                      this.fetchPins()
                    })
    })
  }

  render(){
    return (
      <React.Fragment>
        {
          this.state.positionCoords.length ?
            <div style={{height: "500px", width: "100%"}} ref={el => this.mapContainer = el} ></div>
            :
            <div style={{height: "500px", width: "100%", display: "flex", justifyContent: "center", alignItems: "center"}}>
              <Loader
                type="Puff"
                color="#00BFFF"
                height="200"
                width="200"
                />
            </div>
        }
      </React.Fragment>
    )
  }
  componentWillUnmount() {
   this.map.remove()
 }
}

export default Map
