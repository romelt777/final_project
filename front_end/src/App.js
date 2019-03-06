import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import axios from 'axios'
import './App.css';

import Body from './Components/Body'

// for image slide show display effect
import CurrentCar from './Components/CurrentCar';
import CarSlide from './Components/CarSlide';
import CarList from './Components/CarList'
import Car from './Components/Car';


class AppRouter extends Component {
  constructor(props){
    super(props)
    this.state = {
      newCars: [],
      newPrices: [],
      newWarranties: [],
      newPictures: [],
      newFuels: [],
      newDepreciations: []
    }
  }

  Cars = ({match}) => {
    return (
      <div>
        <h2>Cars</h2>
        <Route exact path = {`${match.path}/:id`} render={(props) => <Car data={this.state} {...props}/> }></Route>
        <Route exact path = {`${match.path}`} render={() => <CarList data={this.state}/> }></Route>
      </div>
    )
  }

  async componentDidMount(){
    axios.get(`http://localhost:3001/api/v1/cars/`)
      .then(res => {
        console.log(res)
        const newCars = {
          ...this.state.newCars,
          newCars: res.data.data
        }
        this.setState(
          {newCars: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/prices/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newPrices: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/warranties/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newWarranties: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/pictures/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newPictures: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/fuels/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newFuels: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/depreciations/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newDepreciations: res.data.data}
        )
      });
  }

  //uses form to send users current car to database.
  updateCurrent = (currentCar) => {
    console.log(currentCar)
    axios.post(`http://localhost:3001/api/v1/cars/`, currentCar)
      .then(function (res) {
        console.log(res)
      })
      .catch(function (err) {
        console.log(err)
      })
  }

  submitCars = (currentCar, newCars) => {
    console.log("111", currentCar, newCars)
  }

  render() {
    if(this.state.newDepreciations.length > 0){
      console.log(this.state.newDepreciations[0].first)
    }
    return (
      <Router>
        <div className="App">
          <Route exact path="/currentCar/" render={() => <CurrentCar updateCurrent={this.updateCurrent} data={this.state} submitCars={this.submitCars}></CurrentCar>} />
          <Route exact path="/" component={CarSlide} />
          <Route path="/cars" component={this.Cars} />
          <Body />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
