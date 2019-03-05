import React, { Component } from 'react';

import './App.css';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import axios from 'axios'
import CarList from './Components/CarList'
import Body from './Components/Body'
import Chart from './Components/Chart'
import PieChart from './Components/PieChart'

// for image slide show display effect
import CurrentCar from './Components/CurrentCar';
import CarSlide from './Components/CarSlide';
import Car from './Components/Car';


function Cars({match}) {
  console.log(match)
  return (
    <div>
      <h2>Cars</h2>
      <Route exact path = {`${match.path}/:id`} component={Car}></Route>
      <Route exact path = {`${match.path}`} component={CarList}></Route>

    </div>
  )
}

class AppRouter extends Component {
  constructor(props){
    super(props)
    this.state = {

    }
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
          <Route path="/cars" component={Cars} />
          <Chart />
          <PieChart />
          <Body />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
