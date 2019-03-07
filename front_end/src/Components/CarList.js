import React from 'react'
import axios from 'axios'

export default class CarList extends React.Component {
  render(){

    const cars = this.props.data.cars.reverse().map(car => (
      <h2 key={car.id}>{car.year} {car.make} {car.model}</h2>
    ))

    return (
      <div>
        <ul>
          {cars}
        </ul>
      </div>
    )
  }
}