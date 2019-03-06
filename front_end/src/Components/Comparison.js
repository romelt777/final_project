import React from 'react'
import axios from 'axios'

export default class Comparison extends React.Component {
  constructor(){
    super()

  }

  componentDidMount(){
    console.log(this.props.match.params.id)
    axios.get(`http://localhost:3001/api/v1/comparisons/${this.props.match.params.id}`)
      .then(res => {
        const newCars = this.state.newCars
        Array.prototype.push.apply(newCars, res.data.data)
        this.setState({newCars})
      });
  }

  render(){

    return (
      <div>
        <h2>Romel</h2>
      </div>
    )
  }
}