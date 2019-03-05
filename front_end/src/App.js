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

  componentDidMount(){
    axios.get(`http://localhost:3001/api/v1/cars/`)
      .then(res => {
        console.log(res)
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
          {newPrices: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/pictures/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newPrices: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/fuels/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newPrices: res.data.data}
        )
      });
    axios.get(`http://localhost:3001/api/v1/depreciations/`)
      .then(res => {
        console.log(res);
        this.setState(
          {newPrices: res.data.data}
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

  render() {
    return (
      <Router>
        <div className="App">
          <Route exact path="/currentCar/" render={() => <CurrentCar updateCurrent={this.updateCurrent}></CurrentCar>} />
          <Route exact path="/" component={CarSlide} />
          <Route path="/cars" component={this.Cars} />
          <Body />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
