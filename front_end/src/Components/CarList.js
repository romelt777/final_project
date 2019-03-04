import React from 'react'
import axios from 'axios'




export default class CarList extends React.Component {
  state = {
    newCars: []
  }

  componentDidMount(){
    axios.get('http://localhost:3001/api/v1/cars')
      .then(res => {
        console.log(res);
        console.log(res.data.data[0])
        this.setState(
        {newCars: res.data.data}
        )
      });
  }

  render(){
    return (
      <ul>
        {this.state.newCars.map(car =>
          <li>{car.make}<li>{car.model}<li>{car.year}<li>{car.price}</li></li></li></li>
          )}
      </ul>
    )
  }

}