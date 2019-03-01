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
        this.setState(
        {newCars: res.data.data}
        )
      });
  }

  render(){
    return (
      <ul>
        {this.state.newCars.map(car => <li>{car.title}</li>)}
      </ul>
    )
  }

}