// chart component to show the break even analysis on different cars

import React from 'react';
import {Line} from 'react-chartjs-2';

const data = {
  labels: ['1st year', '2nd year', '3rd year', '4th year', '5th year'],
  datasets: [
    {
      label: 'dataset 1',
      fill: false,
      lineTension: 0,
      backgroundColor: 'rgba(75,192,192,0)',
      borderColor: 'rgba(75,192,192,1)',
      data: [65, 59, 80, 81, 56]
    },
    {
      label: 'dataset 2',
      fill: false,
      lineTension: 0,
      backgroundColor: 'rgba(100,10,0,0)',
      borderColor: 'rgba(100,10,0,1)',
      data: [54, 99, 30, 40, 20]
    }
  ]
};


export default class Chart extends React.Component {
  displayName: 'LineExample'

  render() {
    return (
      <div style={{width: 768, height: 768}}>
        <h2>Break even analysis</h2>
        <Line data={data} />
      </div>
    );
  }
}