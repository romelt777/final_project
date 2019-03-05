import React from 'react';
import {Doughnut} from 'react-chartjs-2';

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
  displayName: 'DynamicDoughnutExample'

  componentWillMount() {
    setInterval(() => {
      this.setState(getState());
    }, 3000);
  }

  render() {
    return (
      <div style={{width: 768, height: 768}}>
        <h2>Dynamicly refreshed Doughnut Example</h2>
        <Doughnut data={this.state} />
      </div>
    );
  }
}