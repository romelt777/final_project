import React from 'react'
import axios from 'axios'


export default class CarList extends React.Component {
  state = {
    newCars: []
  }

  componentDidMount(){


    axios.get(`http://localhost:3001/api/v1/cars/`)
      .then(res => {
        console.log(res);
        console.log(res.data.data)
        this.setState(
          {newCars: res.data.data}
        )
      });

  }

  render(){
    let newCar;
    this.state.newCars.forEach((car) => {
      if(car.id == this.props.match.params.id){
        newCar = <h2>{car.year} {car.make} {car.model}</h2>
        console.log("hello", newCar)
      }
    })

    const newCars = this.state.newCars.reverse().map(car => (
      <h2 key={car.id}>{car.year} {car.make} {car.model}</h2>
    ))

    return (
      <div>
        <ul>
          {this.props.match.params === undefined ? newCars : newCar}
        </ul>
      </div>
    )
  }
}