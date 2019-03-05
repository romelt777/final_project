import React from 'react'

export default class CurrentCar extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      comparisonCars: []
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
    console.log("909")
  }

  render(){

    const newCars = this.props.data.newCars.reverse().map(car => (
        <tr key={car.id}>
          <th><input type="checkbox" ref={car.id}></input></th><th key={car.id}>{car.year} {car.make} {car.model} </th>
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