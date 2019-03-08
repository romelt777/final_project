import React from 'react';
import {Doughnut} from 'react-chartjs-2';

// Cost composition = Depreciation + Taxes & Fees + Financing + Fuel + Insurance + Maintenance + Repairs
// ****************************************************************
// Depreciation >> from database (newDepreciation on App.js)
// Taxes & Fees >> from calculator component (price * tax rate)
// Financing >> from calculator component ((price - down payment) * (1+interest rate)^period )
// Fuel >> build-in formula: (Fuel efficiency * mileage)
// Mainenance >> from database
// repairs >> from database


function getRandomInt (min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

const getState = () => ({
  labels: [
    'Red',
    'Green',
    'Yellow'
  ],
  datasets: [{
    data: [getRandomInt(50, 200), getRandomInt(100, 150), getRandomInt(150, 250)],
    backgroundColor: [
    '#CCC',
    '#36A2EB',
    '#FFCE56'
    ],
    hoverBackgroundColor: [
    '#FF6384',
    '#36A2EB',
    '#FFCE56'
    ]
  }]
});

export default class PieChart extends React.Component {

  componentWillMount() {
    // setInterval(() => {
      this.setState(getState());
    // }, 5000);
  }

  render() {
    return (
      <div style={{width: 768, height: 768}}>
        <h2>Cost Composition</h2>
        <Doughnut data={this.state} redraw/>
      </div>
    );
  }
}