import React from 'react'

export default class CarList extends React.Component {
  render(){
    console.log(this.props)

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