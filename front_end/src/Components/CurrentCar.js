import React from 'react'
import axios from 'axios'

export default class CurrentCar extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      comparisonCars: {}
    }
  }

  addNewCar = event => {
    console.log(event.target.value)
    console.log(event.target.checked)
    const newComparisonCars = {
      ...this.state.comparisonCars,
      [event.target.value]: event.target.checked
    };
    this.setState({ comparisonCars: newComparisonCars })
  }

  submitCurrent = event => {
    event.preventDefault();
    let car = [{
      "make": this.refs.make.value,
      "model": this.refs.model.value,
      "year": this.refs.year.value,
      "condition": "current"
    }]

    this.props.updateCurrent(car)
  }

  submitComparison = event => {
    event.preventDefault();
    let car = {
      "make": this.refs.make.value,
      "model": this.refs.model.value,
      "year": this.refs.year.value,
      "condition": "current"
    }
    console.log(car)

    axios.post(`http://localhost:3001/api/v1/cars/`, car)
      .then((res) => {
        console.log(res)
        let compareCars = [];
        for(const id of Object.keys(this.state.comparisonCars)) {
          console.log("999", id, this.state.comparisonCars[id])
          compareCars.push(id)
        }
        compareCars.push(String(res.data.data))
        car["newCars"] = compareCars
        console.log("ppp", car)
        this.props.submitCars(car)
      })
      .catch((err) => {
        console.log(err)
      })

  }

  render(){

    const newCars = this.props.data.newCars.map(car => (
        <tr key={car.id}>
          <th>
            <input type="checkbox" value={car.id} onChange={this.addNewCar}></input>
          </th>
          <th key={car.id}>
            {car.year} {car.make} {car.model}
          </th>
        </tr>
    ))

    return (
      <div>
        <form onSubmit={this.submitCurrent}>
          <label>Make: <input type="text" name="make" ref="make"/> </label> <br></br>
          <label> Model: <input type="text" name="model" ref="model" /> </label> <br></br>
          <label> Year: <input type="text" name="year" ref="year" /> </label> <br></br>
          <input type="submit" value="Submit"/>
        </form>
        <table>
          <tbody>
            {newCars}
            <tr>
              <th>
                <input type="submit" value="Submit" onClick={this.submitComparison}/>
              </th>
            </tr>
          </tbody>
        </table>
      </div>
    )
  }
}