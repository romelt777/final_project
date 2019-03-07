import React from 'react'
import axios from 'axios'

export default class Comparison extends React.Component {
  constructor(){
    super()
    this.state = {
      comparisonId: []
    }
  }

  componentDidMount(){
    console.log(this.props.match.params.id)
    axios.get(`http://localhost:3001/api/v1/comparisons/${this.props.match.params.id}`)
      .then(res => {
        console.log(res)
        console.log(res.data.data2)
        const carsNeed = this.state.comparisonId
        Array.prototype.push.apply(carsNeed, res.data.data2)
        this.setState({comparisonId: carsNeed})
        console.log(this.state)
        // res.data.data2.forEach((c) => {
        //   this.props.data.cars.forEach((car) => {
        //     if(c.id === car.id){
        //       carsNeed.push(c.id)
        //     }
        //   })
        // })
      });
  }



  render(){
    let carData
    this.props.data.cars.forEach((car) => {
      this.state.comparisonId.forEach((c) => {
        console.log(c.id)
        if(c.car_id == car.id){
          carData += `${car.year} ${car.make} ${car.model}`
        }
      })
    })
    console.log(carData)


    return (
      <div>
        <h2>{this.props.match.params.id}</h2>
        <h3>{carData}</h3>
      </div>
    )
  }
}