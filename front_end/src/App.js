import React, { Component } from 'react';

import './App.css';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import axios from 'axios'
import CarList from './Components/CarList'
import Body from './Components/Body'

// for image slide show display effect
import CurrentCar from './Components/CurrentCar';
import CarSlide from './Components/CarSlide';



function Car({match}) {
  return <h3>Requested Param: {match.params.id}</h3>
}

function Cars({match}) {
  console.log(match)
  return (
    <div>
      <h2>Cars</h2>
      <Route path={`${match.path}/:id`} component={Car}></Route>
      <Route
        exact
        path={match.path}
        render={() => <h3>Please select a car</h3>}>
      </Route>
      <Route path={`${match.path}/:id`} component={CarList}></Route>
    </div>
  )
}


class AppRouter extends Component {
  constructor(props){
    super(props)
    this.state = {

    }

  }

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
          <CurrentCar updateCurrent={this.updateCurrent}></CurrentCar>
          <Route exact path="/" component={CarSlide} />
          <Route path="/cars" component={Cars} />
          <Body />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
