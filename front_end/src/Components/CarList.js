import React from 'react'
import axios from 'axios'


export default class CarList extends React.Component {
  state = {
    newCars: []
  }

  componentDidMount(){
    console.log("hello", this.props.match)
    console.log(this.props.match.params.id)
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
    const newCars = this.state.newCars.map(car => (
      <h2>{car.year} {car.make} {car.model}</h2>
    ))
    console.log(newCars)


    console.log(this.state.newCars);
    return (
      <div>
        <ul>
          {newCars[this.props.match.params.id]}
        </ul>
      </div>
    )
  }
}