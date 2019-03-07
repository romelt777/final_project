// chart component to show the break even analysis on different cars

import React from 'react';
import {Line} from 'react-chartjs-2';

// set plot color
const colorScheme = [
  'rgba(75,192,192,1)', 'rgba(100,10,0,1)', 'rgba(255,0,0,1)', 'rgba(0,255,0,1)', 'rgba(0,0,255,1)',
  'rgba(255,255,0,1)', 'rgba(255,0,255,1)', 'rgba(0,255,255,1)', 'rgba(128,128,0,1)', 'rgba(0,128,0,1)',
];

// set plot label name
// ****** should obtain from the car forms *********
// modify later
const label = [
  'dataset 1', 'dataset 2', 'dataset 3', 'dataset 4', 'dataset 5',
  'dataset 6', 'dataset 7', 'dataset 8', 'dataset 9', 'dataset 10',
];

// define default values for every single plot
let plotSettings = {
  fill: false,
  lineTension: 0,
}

let dataSet = [];
let getConfig = (data) => {
  for(let i = 0; i < 10; i ++) {
    dataSet.push({
      ...plotSettings,
      label: label[i],
      data: data[i],
      backgroundColor: colorScheme[i],
      borderColor: colorScheme[i]
    });
  }
  return dataSet;
}

const chartData = (dataset) => {
  return (
    {
      labels: ['1st year', '2nd year', '3rd year', '4th year', '5th year'],
      datasets: getConfig(dataset)
    }
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
        <h2>5 years cost to own</h2>
        <Line data={chartData(depiData)} redraw/>
      </div>
    );
  }
}