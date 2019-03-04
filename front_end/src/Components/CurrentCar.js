import React from 'react'
import axios from 'axios'

export default class CurrentCar extends React.Component {

  submitCurrent = event => {
    event.preventDefault();
    console.log("make:", this.refs.make.value)
    console.log("model:", this.refs.model.value)
    console.log("year:", this.refs.year.value)
  }

  render(){
    return (
      <div>
        <form onSubmit={this.submitCurrent}>
          <label>Make: <input type="text" name="make" ref="make" /> </label> <br></br>
          <label> Model: <input type="text" name="model" ref="model" /> </label> <br></br>
          <label> Year: <input type="text" name="year" ref="year" /> </label> <br></br>
          <input type="submit" value="Submit"/>
        </form>
      </div>
    )
  }
}