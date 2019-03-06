import React from 'react'

export default class CurrentCar extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      comparisonCars: []
    }
  }
  addNewCar = event => {
    console.log(event.target.checked)
    console.log(event.target.value)
    if(event.target.checked){
      console.log(event.target.value)
      console.log("im checked")
    }
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
    console.log("909")
  }

  render(){

    const newCars = this.props.data.newCars.reverse().map(car => (
        <tr key={car.id}>
          <th><input type="checkbox" value={car.id} onChange={this.addNewCar}></input></th><th key={car.id}>{car.year} {car.make} {car.model} </th>
        </tr>
    ))

    return (
      <div>
        <form onSubmit={this.submitCurrent}>
          <label>Make: <input type="text" name="make" ref="make" /> </label> <br></br>
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