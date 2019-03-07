import React from 'react'
import axios from 'axios'
import Chart from './Chart'
import PieChart from './PieChart'


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

      });
  }



  render(){
    let carData = []
    this.props.data.cars.forEach((car) => {
      this.state.comparisonId.forEach((c) => {
        if(c.car_id == car.id){
          carData.push(<h3 key={car.id}> {car.year} {car.make} {car.model} </h3>)
        }
      })
    })
    console.log(carData)

    return (
      <div>
        <h2>{this.props.match.params.id}</h2>
        {carData}
          <Chart data={this.props.data}/>
          <PieChart data={this.props.data}/>
      </div>
    )
  }
}