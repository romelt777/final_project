import React from 'react'
import axios from 'axios'


export default class CarList extends React.Component {
  state = {
    newCars: []
  }

  componentDidMount(){
    console.log("hello", this.props.match)
    console.log(this.props.match.params.id)
    axios.get(`http://localhost:3001/api/v1/cars/${this.props.match.params.id}`)
      .then(res => {
        console.log(res);
        console.log(res.data.data)
        this.setState(
        {newCars: res.data.data}
        )
      });
  }

  render(){
    console.log(this.state.newCars);
    return (
      <div>
        <ul>
          <li>{this.state.newCars.model}</li>
        </ul>
      </div>
    )
  }
}