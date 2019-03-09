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
      toggle: "maintenances",
      togglePie: 0
    }
  }

  componentDidMount(){
    axios.get(`http://localhost:3001/api/v1/comparisons/${this.props.match.params.id}`)
      .then(res => {
        const carsNeed = this.state.comparisonId
        Array.prototype.push.apply(carsNeed, res.data.data2)
        this.setState({comparisonId: carsNeed})
      });
  }

  //sorts data from state which matches comparison cars.
  checkData = (data) => {
    let result = [];
    data.forEach((d) => {
      this.state.comparisonId.forEach((car) => {
        if(car.car_id === d.id){
          result.push(d)
        }
      })
    })
    console.log(result)
    return result;
  }

  toggle = (event) => {
    if(event.target.value == 1){
      this.setState({toggle: "maintenances"})
    } else if(event.target.value == 2){
      this.setState({toggle: "newDepreciations"})
    }
  }

  togglePie = (event => {
    this.setState({togglePie: event.target.value})
  })


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

    const pieButtons = [];
    carName.forEach((c, i) => {
      pieButtons.push(<ToggleButton key={c.id} value={i} onChange={this.togglePie}>{c.model}</ToggleButton>)
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

        <ButtonToolbar>
          <ToggleButtonGroup type="radio" name="options" defaultValue={1} >
            {pieButtons}
          </ToggleButtonGroup>
        </ButtonToolbar>

        <PieChart carName={carName}
                  maintenances={this.checkData(this.props.data.maintenances)}
                  fuels={this.checkData(this.props.data.newFuels)}
                  depi={this.checkData(this.props.data.newDepreciations)}
                  which={this.state.togglePie}
        />

      </div>
    )
  }
}