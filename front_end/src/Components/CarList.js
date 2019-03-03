import React from 'react'
import axios from 'axios'




export default class CarList extends React.Component {
  state = {
    newCars: []
  }

  componentDidMount(){
    axios.get('https://jsonplaceholder.typicode.com/users')
      .then(res => {
        console.log(res);
        this.setState(
        {newCars: res.data}
        )
      });
  }

  render(){
    return (
      <ul>
        {this.state.newCars.map(car => <li>{car.name}</li>)}
      </ul>
    )
  }

}