import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import axios from 'axios'
import CarList from './Components/CarList'
import CurrentCar from './Components/CurrentCar'

function Index() {
  return <h2>Home</h2>;
}

function About() {
  return <h2>About</h2>
}


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

    this.updateCurrent = this.updateCurrent.bind(this);
  }

  updateCurrent(currentCar) {
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
          <header className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <h1 className="App-title">Welcome to React</h1>
          </header>
          <CurrentCar updateCurrent={this.updateCurrent}></CurrentCar>
          <Route path="/about/" component={About} />
          <Route path="/cars" component={Cars} />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
