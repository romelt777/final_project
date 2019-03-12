import React, { Component } from 'react';

export default class CarSelector extends Component {





  render() {


  let selectors = [];
  if(this.props.more > 0){
    for(let i = 0; i < this.props.more; i++)
      selectors.push(
        <select onChange={this.props.addNewCar}>
          <option value="select">Select</option>
          {this.props.cars}
        </select>
      )
    }

    return(
      <div>
        {selectors}
      </div>
    );
  }
}

