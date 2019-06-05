import React, {Component} from 'react'


class Map extends Component{

  drawMap = (position) => {
    mapboxgl.accessToken = 'pk.eyJ1IjoiZ3ltZmluZGVyIiwiYSI6ImNqdnp1Znh3bzA0YXIzeW9kNzhqMXJqZnQifQ.UyRzS7V1X-1vRSfMWwMJ6Q';
    var map = new mapboxgl.Map({
      container: this.mapContainer,
      style: 'mapbox://styles/mapbox/streets-v11',
      zoom: 13,
      center: [position.coords.longitude, position.coords.latitude],
    });
    map.addControl(new mapboxgl.GeolocateControl({
      positionOptions: { enableHighAccuracy: true },
      trackUserLocation: true,
      showUserLocation: true
    }))
    console.log( "---------", this.props.coords );

    let markers = this.props.coords.map( coord => {
      let marker = new mapboxgl.Marker()
      marker.setPopup(
        new Popup()
      )
      marker.setLngLat( coord ).addTo( map )
    })
  }

  componentDidMount(){
    console.log( "---------", this.props.position );
    this.props.position ? this.drawMap( this.props.position ) : navigator.geolocation.getCurrentPosition( this.drawMap )
  }

  render(){
    return (
      <div style={{height: "500px", width: "100%"}} ref={el => this.mapContainer = el} ></div>
    )
  }
  componentWillUnmount() {
   this.map.remove()
 }
}

export default Map
