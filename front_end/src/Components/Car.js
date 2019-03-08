import React from 'react'

export default class Car extends React.Component {

  render(){
    let newCar;
    this.props.data.cars.forEach((car) => {
      if(car.id == this.props.match.params.id){
        newCar = <h2>{car.year} {car.make} {car.model}</h2>
      }
    })

    return (
      <div>
        <ul>
          {newCar}
        </ul>
      </div>
    )
  }
}