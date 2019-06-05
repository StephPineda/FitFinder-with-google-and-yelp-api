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

    let markers = this.props.gyms.map( gym => {
      let marker = new mapboxgl.Marker()
        marker.setPopup(
          new mapboxgl.Popup().setHTML(`<p>${gym.name}</p><br/><p>${gym.address}</p>`).addTo(map)
        )
      marker.setLngLat( gym.coords ).addTo( map )
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
