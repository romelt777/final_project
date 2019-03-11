import React from 'react'

export default class Car extends React.Component {

  render(){
    let newCar;
    this.props.data.cars.forEach((car) => {
      if(car.id == this.props.match.params.id) {
        newCar = <h3>{car.year} {car.make} {car.model}</h3>
      }
    })

    let newPic;
    this.props.data.newPictures.forEach((pic) => {
      if(pic.id == this.props.match.params.id) {
        newPic = <img className='image' style={{width:'100%', height: 'auto'}} src={pic.url} alt={pic.id}/>
      }
    })

    let newFuel;
    this.props.data.newFuels.forEach((fuel) => {
      if(fuel.id == this.props.match.params.id) {
        newFuel = <form>
            <p>Fuel economy:</p>
            <p>auto(city): {fuel.auto_city}</p>
            <p>auto(highway): {fuel.auto_highway}</p>
            <p>manual(city): {fuel.manual_city}</p>
            <p>manual(highway): {fuel.manual_highway}</p>
        </form>
      }
    })

    let newWarranty;
    this.props.data.newWarranties.forEach((warranty) => {
      if(warranty.id == this.props.match.params.id) {
        newWarranty = <form>
          <p>Warranties:</p>
          <p>Bumper: {warranty.bumper}</p>
          <p>Powertrain: {warranty.powertrain}</p>
          <p>Roadside: {warranty.roadside}</p>
          <p>Rust: {warranty.rust}</p>
        </form>
      }
    })

    let newPrice;
    this.props.data.newPrices.forEach((price) => {
      if(price.id == this.props.match.params.id) {
        newPrice = <p>Price: {price.vehicle_price}</p>
      }
    })

    const containerStyle = {
      position: 'relative',
      'margin-top': '50%',
    }

    const imgSize = {
      'width': 320,
      'height': 240
    }

    const display = {
      display: 'inline-block',
      'line-height': 0.5
    }

    return (
      <div style={containerStyle}>
        <form>
        <div>{newCar}</div>
        <div>{newPrice}</div>
        <div style={display}>{newFuel}</div>
        <div style={display}>{newWarranty}</div>
        <div className='imgContainer' style={imgSize}>
          <div style={display}>{newPic}</div>
        </div>
        </form>
      </div>
    )
  }
}


// <Car match={params:t}/>