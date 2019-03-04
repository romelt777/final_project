import React, { Component } from 'react';

import './App.css';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import axios from 'axios'
import CarList from './Components/CarList'
import Body from './Components/Body'

// for image slide show display effect
import Bmw from './images/bmw.jpg';
import Mazda from './images/mazda.jpg';
import Honda from './images/honda.jpg';
import Toyota from './images/toyota.jpg';
import { Fade } from 'react-slideshow-image';
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
    const fadeProperties = {
      duration: 4000,
      transitionDuration: 500,
      infinite: true,
      arrows: false,
      autoplay: true
    }

    return (
      <Router>
        <div className="App">
          <CurrentCar updateCurrent={this.updateCurrent}></CurrentCar>
          <Route path="/about/" component={About} />
          <Route path="/cars" component={Cars} />
          <Fade {...fadeProperties}>
            <div className="each-fade">
              <div className="image-container">
                <img src={Bmw} alt="Logo" />
              </div>
            </div>
            <div className="each-fade">
              <div className="image-container">
                <img src={Mazda} alt="Logo" />
              </div>
            </div>
            <div className="each-fade">
              <div className="image-container">
                <img src={Honda} alt="Logo" />
              </div>
            </div>
            <div className="each-fade">
              <div className="image-container">
                <img src={Toyota} alt="Logo" />
              </div>
            </div>
          </Fade>
          <Body />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
