// chart component to show the break even analysis on different cars

import React from 'react';
import {Line} from 'react-chartjs-2';


const amountOfPlot = (amount) => {

}

const chartData = (dataset) => {
  return (
    {labels: ['1st year', '2nd year', '3rd year', '4th year', '5th year'],
    datasets: [
      {
        label: 'dataset 1',
        fill: false,
        lineTension: 0,
        backgroundColor: 'rgba(75,192,192,0)',
        borderColor: 'rgba(75,192,192,1)',
        data: dataset[0]
      },
      {
        label: 'dataset 2',
        fill: false,
        lineTension: 0,
        backgroundColor: 'rgba(100,10,0,0)',
        borderColor: 'rgba(100,10,0,1)',
        data: dataset[2]
      }
    ]}
  );
}


export default class Chart extends React.Component {
  render() {
    // fetch prop depi passed down from App.js
    // outputting arrays of data array
    let depiData = [];
    if(this.props.depi.length > 0) {
      depiData = this.props.depi.map((data) =>
        [data.first, data.second, data.third, data.fourth, data.fifth]);
    }

    return (
      <div style={{width: 768, height: 768}}>
        <h2>Break even analysis</h2>
        <Line data={chartData(depiData)} redraw/>
      </div>
    );
  }
}