import React from 'react';
import {Doughnut} from 'react-chartjs-2';

// Cost composition = Depreciation + Taxes & Fees + Financing + Fuel + (Insurance) + Maintenance + (Repairs)
// ****************************************************************
// Depreciation >> from database (newDepreciation on App.js)
// Taxes & Fees >> from calculator component (price * tax rate)
// Financing >> from calculator component ((price - down payment) * (1+interest rate)^period )
// Fuel >> build-in formula: (Fuel efficiency * mileage)
// Mainenance >> from database
// repairs >> from database

export default class PieChart extends React.Component {

  data = () =>{
    if(this.props.depi.length > 0){
      const fuelCost = Math.round(this.props.fuels[0].auto_combined * 15000 * 1.61 * 1.13 / 100 * 100) / 100
      return (
          {
          labels: [
            'Depreciation',
            'Maintenance',
            'Fuel'
          ],
          datasets: [{
            data: [this.props.depi[0].total, this.props.maintenances[0].total, fuelCost],
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
  render() {

    console.log(this.props)

    return (
      <div style={{width: 768, height: 768}}>
        <h2>Cost Composition</h2>
        <Doughnut data={this.data()} />
      </div>
    );
  }
}