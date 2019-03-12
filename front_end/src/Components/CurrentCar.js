import React from 'react'
import axios from 'axios'
import Car from './Car'
import CarSelector from './CarSelector'

export default class CurrentCar extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      comparisonCars: {},
      compare: false,
      rerender: 1,
      more: 0,
      moreCars: 0
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
    // this.setState({})
    console.log(this.state)

    let prev = this.state.more
    prev += 1;
    this.setState({more: prev})

    let prevCars = this.state.moreCars
    prevCars += 1;
    this.setState({moreCars: prevCars})

    this.setState({compare: true })
    console.log(this.state.more)
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

  renderCar = () => {
    let compareKeys = []
    if (this.state.compare){
      compareKeys = Object.keys(this.state.comparisonCars)
    }
    console.log(compareKeys)
    let result = {
      params: {
        id: compareKeys
      }
    }
    // this.setState({compare: true })
    return result
    // this.forceUpdate()
  }


  render(){

    const containerStyle = {
      'padding-top': 20,
      'padding-bottom': 20,
      'margin-top': 100,
      'height': '50%',
    }

    const style = {
      display: 'inline-block',
      'background-color': '#ffffff',
      position: 'relative',
      float: 'left',
      width: '20%',
      padding: 0,
      height: 550,
    }

    const shadow = {
      overflow: 'hidden',
      'border-radius': 20,
      'z-index': 2
    }

    const barStyle = {
      'position': 'relative',
      'padding' :0,
      'width': '100%',
      'height': '5%',
      'border-radius': -10,
      'background-color': '#008080'
    }

    const formStyle = {
      'padding': 40,
      'border-top': '1px solid #eee',
      'border-radius': 10,
      'height': '90%'
    }

    const cars = this.props.data.cars.map(car => {
      if(car.condition === "new"){
        return (
          <option key={car.id} value={car.id}>
            {car.year} {car.make} {car.model}
          </option>
        )
      }
    })

    // let compareKeys = []
    // const moreSelects = []

    // if (this.state.compare){
    //   compareKeys = Object.keys(this.state.comparisonCars)
    //   moreSelects = this.state.compareKeys.map((k) => {
    //     return (
    //       <select onChange={this.addNewCar}>
    //         <option value="select">Select</option>
    //         {cars}
    //       </select>
    //     )
    //   })
    // }

    // const romel =  <Car data={this.props.data} match={this.renderCar()} />

    return (
      <div className="forms-container" style={containerStyle}>
        <div className="current-car-container" style={{...style, ...shadow, 'margin-left': 50}}>
          <div className="left-bar" style={barStyle}></div>
            <form style={formStyle}>
              <h5>Instruction: </h5>
              <p>1. Choose only one car if you want to know more info of that car</p>
              <p>2. Choose more than one car if you want to compare them</p>
              <select onChange={this.addNewCar}>
                <option value="select">Select</option>
                {cars}
              </select> <br></br>
              { this.state.more > 0 ?
                <CarSelector cars={cars} more={this.state.more} addNewCar={this.addNewCar}/>
                : null
              }
              <br></br>
              <input type="submit" value="Submit" onClick={this.submitComparison}/>
            </form>
        </div>

        <div className="new-car-container" style={{...style, ...shadow, 'width': '70%'}}>
          <div className="right-bar" style={{...barStyle, 'background-color': 'orange'}}></div>
          <form style={formStyle}>
            { this.state.moreCars > 0 ? <Car data={this.props.data}  moreCars={this.state.moreCars} match={this.renderCar()}/>
              : null
            }
          </form>
        </div>

      </div>
    )
  }
}