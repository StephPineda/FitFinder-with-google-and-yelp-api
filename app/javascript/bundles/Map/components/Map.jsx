// import React, {Component, Fragment} from 'react'
// import Loader from 'react-loader-spinner'

// class Map extends Component{

//   state = {
//     positionCoords: [],
//     pins: [],
//   }

//   drawMap = () => {
//     let { positionCoords } = this.state
//     mapboxgl.accessToken = 'pk.eyJ1IjoiZ3ltZmluZGVyIiwiYSI6ImNqdnp1Znh3bzA0YXIzeW9kNzhqMXJqZnQifQ.UyRzS7V1X-1vRSfMWwMJ6Q';
//     let mapbox = new mapboxgl.Map({
//       container: this.mapContainer,
//       style: 'mapbox://styles/mapbox/streets-v11',
//       zoom: 13,
//       center: positionCoords,
//     })

//     mapbox.addControl(new mapboxgl.GeolocateControl({
//       positionOptions: { enableHighAccuracy: true },
//       trackUserLocation: true,
//       showUserLocation: true
//     }))

//     return mapbox
//   }

//   // fitToBounds = (markers, mapbox) => {
//   //   let bounds = new mapboxgl.LngLatBounds();
//   //
//   //   markers.features.forEach(function(feature) {
//   //       bounds.extend(feature.geometry.coordinates);
//   //   });
//   //
//   //   mapbox.fitBounds(bounds);
//   // }

//   fetchPins = mapbox => {
//     let url = `gyms_pins?${ this.props.searchTerm ? `search_term=${this.props.searchTerm}&` : ''}${this.props.zipcode ? `zipcode=${this.props.zipcode}` : '' }`
//     console.log("the pins url::", url)
//     fetch(url)
//       .then( res => res.json() )
//       .then( pins =>  this.setState({ pins },
//                         () => {
//                           let bounds = new mapboxgl.LngLatBounds()
//                           pins.forEach( gym => {
//                             if( gym === null ){ return false }
//                             let marker = new mapboxgl.Marker()
//                             marker.setLngLat( gym.coords )
//                             marker.setPopup(
//                               new mapboxgl.Popup().setHTML(`<div><a href="${gym.url}"> ${gym.name}</a></div><br/><p>${gym.address}</p>`)
//                             )
//                             marker.addTo( mapbox )
//                             bounds = bounds.extend( new mapboxgl.LngLat(gym.coords[0], gym.coords[1]) )
//                             mapbox.fitBounds( bounds )
//                             return marker
//                           })
//                         }
//                       ))
//   }

//   componentDidMount(){
//     if( this.state)
//     navigator.geolocation.getCurrentPosition( position => {
//       this.setState({
//                       positionCoords: [ position.coords.longitude, position.coords.latitude ]
//                     },
//                     () => {
//                       console.log(this.state.positionCoords)
//                       let mapbox = this.drawMap()
//                       this.fetchPins( mapbox )
//                     })
//     })
//   }

//   render(){
//     return (
//       <React.Fragment>
//         {
//           this.state.positionCoords.length ?
//             <div style={{height: "500px", width: "100%"}} ref={el => this.mapContainer = el} ></div>
//             :
//             <div style={{height: "500px", width: "100%", display: "flex", justifyContent: "center", alignItems: "center"}}>
//               <Loader
//                 type="Puff"
//                 color="#00BFFF"
//                 height="200"
//                 width="200"
//                 />
//             </div>
//         }
//       </React.Fragment>
//     )
//   }
// }

// export default Map
