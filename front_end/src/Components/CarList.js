// modify to display information of cars

import React from 'react'

export default class CarList extends React.Component {
  render(){

    const cars = this.props.data.cars.reverse().map(car => (
      <h3 key={car.id}>{car.year} {car.make} {car.model}</h3>
    ))

    const pics = this.props.data.newPictures.map(pic => (
      <img className='image' src={pic.url} style={{width:'100%', height: 'auto'}} key={cars.id} alt={cars.id}/>
    ))

    const fuels = this.props.data.newFuels.map(fuel => (
      <table>
      <p>Fuel economy:</p>
      <tbody>
        <tr>auto(city): {fuel.auto_city}</tr>
        <tr>auto(highway): {fuel.auto_highway}</tr>
        <tr>manual(city): {fuel.manual_city}</tr>
        <tr>manual(highway): {fuel.manual_highway}</tr>
      </tbody>
      </table>
    ))

    // const warranties = this.props.data.newWaranties.map(warranty => (
    //   <table>
    //   <p>Warranties:</p>
    //   </table>
    // ))

    // console.log(this.props.data)

    // will remove once the styling is completed
    const style = {
      'margin-top': 50
    }

    const imgSize = {
      'width': 320,
      'height': 240
    }

    return (
      <div className='form-container'>
        <form style={style}>
          {cars}
          <div className='imgContainer' style={imgSize}>
            {pics}
            {fuels}
          </div>
        </form>
      </div>
    )
  }
}