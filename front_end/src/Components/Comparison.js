import React from 'react'
import axios from 'axios'
import Chart from './Chart'
import PieChart from './PieChart'


export default class Comparison extends React.Component {
  constructor(){
    super()
    this.state = {
      comparisonId: [],
      key: false
    }
  }

  componentDidMount(){
    //might have to do call in APP JS
    axios.get(`http://localhost:3001/api/v1/comparisons/${this.props.match.params.id}`)
      .then(res => {
        const carsNeed = this.state.comparisonId
        Array.prototype.push.apply(carsNeed, res.data.data2)
        this.setState({comparisonId: carsNeed})
        // this.forceUpdate()
        // this.setState({ key: Math.random() });
      });
  }

  checkData = (data) => {
    let result = [];
    data.forEach((d) => {
      this.state.comparisonId.forEach((car) => {
        if(car.car_id === d.id){
          result.push(d)
        }
      })
    })
    return result;
  }

  render(){
    console.log(this.props)

    let carData = []
    let carName = []
    this.props.data.cars.forEach((car) => {
      this.state.comparisonId.forEach((c) => {
        if(c.car_id === car.id){
          carData.push(<h3 key={car.id}> {car.year} {car.make} {car.model} </h3>)
          carName.push(car)
        }
      })
    })

    return (
      <div>
        <h2 key={this.state.key}>{this.props.match.params.id}</h2>
        {carData}
        <Chart  carName={carName} data={this.checkData(this.props.data.maintenances)}/>
        <PieChart carName={carName}
                  maintenances={this.checkData(this.props.data.maintenances)}
                  fuels={this.checkData(this.props.data.newFuels)}
                  depi={this.checkData(this.props.data.newDepreciations)}
        />
      </div>
    )
  }
}