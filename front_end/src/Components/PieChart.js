import React from 'react';
import {Doughnut} from 'react-chartjs-2';
import {ButtonToolbar, ToggleButtonGroup, ToggleButton} from 'react-bootstrap'

// Cost composition = Depreciation + Taxes & Fees + Financing + Fuel + (Insurance) + Maintenance + (Repairs)
// ****************************************************************
// Depreciation >> from database (newDepreciation on App.js)
// Taxes & Fees >> from calculator component (price * tax rate)
// Financing >> from calculator component ((price - down payment) * (1+interest rate)^period )
// Fuel >> build-in formula: (Fuel efficiency * mileage)
// Mainenance >> from database
// repairs >> from database

export default class PieChart extends React.Component {

  constructor(){
    super()
    this.state = {
      togglePie: 0
    }
  }

  data = () =>{
    if(this.props.depi.length > 0){
      const which = this.state.togglePie
      const fuelCost = Math.round(this.props.fuels[which].auto_combined * 15000 * 1.61 * 1.13 / 100 * 100) / 100
      return (
          {
          labels: [
            'Depreciation',
            'Maintenance',
            'Fuel'
          ],
          datasets: [{
            data: [this.props.depi[which].total, this.props.maintenances[which].total, fuelCost],
            backgroundColor: [
            '#FF6384',
            '#36A2EB',
            '#FFCE56'
            ],
            hoverBackgroundColor: [
            '#FF6384',
            '#36A2EB',
            '#FFCE56'
            ]
          }]
        }
      )
    }
  }


  togglePie = (event) => {
    this.setState({togglePie: event.target.value - 1})
  }

  render() {

    const pieButtons = [];
    this.props.carName.forEach((c, i) => {
      pieButtons.push(<ToggleButton variant="outline-light" key={c.id} value={i + 1} onChange={this.togglePie}>{c.model}</ToggleButton>)
    })

    return (
      <div className="pie-container" style={{width: 650, height: 450}}>

        <h2 className="pie-chart-h2">Cost Composition</h2>
        <ButtonToolbar style={{'justify-content': 'center'}}>
          <ToggleButtonGroup name="options" defaultValue={1} >
            {pieButtons}
          </ToggleButtonGroup>
        </ButtonToolbar>
        <Doughnut data={this.data()} />
      </div>
    );
  }
}