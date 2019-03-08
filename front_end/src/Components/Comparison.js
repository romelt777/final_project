import React from 'react'
import axios from 'axios'
import Chart from './Chart'
import PieChart from './PieChart'
import {ButtonToolbar, ToggleButtonGroup, ToggleButton} from 'react-bootstrap'



export default class Comparison extends React.Component {
  constructor(){
    super()
    this.state = {
      comparisonId: [],
      // key: 1,
      toggle: "maintenances"
    }
  }

  componentDidMount(){
    //might have to do call in APP JS
    axios.get(`http://localhost:3001/api/v1/comparisons/${this.props.match.params.id}`)
      .then(res => {
        const carsNeed = this.state.comparisonId
        Array.prototype.push.apply(carsNeed, res.data.data2)
        this.setState({comparisonId: carsNeed})
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

  toggle = (event) => {
    console.log("im clicked")
    console.log(event.target.value)
    if(event.target.value == 1){
      this.setState({toggle: "maintenances"})
    } else if(event.target.value == 2){
      this.setState({toggle: "newDepreciations"})
    }
  }


  render(){

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
      <div >
        <h2 >{this.props.match.params.id}</h2>
        {carData}
        <ButtonToolbar>
          <ToggleButtonGroup type="radio" name="options" defaultValue={1} >
            <ToggleButton value={1} onChange={this.toggle}>Depreciation </ToggleButton>
            <ToggleButton value={2} onChange={this.toggle}>Maintenance</ToggleButton>
          </ToggleButtonGroup>
        </ButtonToolbar>
        { this.state.toggle === "maintenances" ? <Chart carName={carName} data={this.checkData(this.props.data.maintenances)}/>
          : this.state.toggle === "newDepreciations" ? <Chart carName={carName} data={this.checkData(this.props.data.newDepreciations)}/>
          : null
        }

        <PieChart carName={carName}
                  maintenances={this.checkData(this.props.data.maintenances)}
                  fuels={this.checkData(this.props.data.newFuels)}
                  depi={this.checkData(this.props.data.newDepreciations)}
        />
      </div>
    )
  }
}