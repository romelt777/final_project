import React, { Component } from 'react';
import { Router, Route } from "react-router-dom";
import createHistory from 'history/createBrowserHistory'
import axios from 'axios'
import './App.css';
//components

import CurrentCar from './Components/CurrentCar';
import CarSlide from './Components/CarSlide';
import CarList from './Components/CarList'
import Car from './Components/Car';
import Login from './Components/Login'
import Register from './Components/Register'

import Comparison from './Components/Comparison';
import NavBar from './Components/NavBar'

import Calculator from './Components/Calculator'


class AppRouter extends Component {
  constructor(props){
    super(props)
    this.state = {
      cars: [],
      newPrices: [],
      newWarranties: [],
      newPictures: [],
      newFuels: [],
      newDepreciations: [],
      maintenances: [],
      currentUser: '',
      jwt: '',
    }
    this.history = createHistory()
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
  Comparisons = ({match}) => {
    return (
      <div>
        <h2>Comparisons</h2>
        <Route exact path = {`${match.path}/:id`} render={(props) => <Comparison data={this.state} {...props}/> }></Route>
      </div>
    )
  }

  getAllCars = () => {
    axios.get(`http://localhost:3001/api/v1/cars/`)
      .then(res => {
        const cars = this.state.cars
        Array.prototype.push.apply(cars, res.data.data)
        this.setState({cars})
      });
  }

  getAllPrices = () => {
    axios.get(`http://localhost:3001/api/v1/prices/`)
      .then(res => {
        const newPrices = this.state.newPrices
        Array.prototype.push.apply(newPrices, res.data.data)
        this.setState({newPrices})
      });
  }

  getAllWarranties = () => {
    axios.get(`http://localhost:3001/api/v1/warranties/`)
      .then(res => {
        const newWarranties = this.state.newWarranties
        Array.prototype.push.apply(newWarranties, res.data.data)
        this.setState({newWarranties})
      });
  }

  getAllPictures = () => {
    axios.get(`http://localhost:3001/api/v1/pictures/`)
      .then(res => {
        const newPictures = this.state.newPictures
        Array.prototype.push.apply(newPictures, res.data.data)
        this.setState({newPictures})
      });
  }

  getAllFuels = () => {
    axios.get(`http://localhost:3001/api/v1/fuels/`)
      .then(res => {
        const newFuels = this.state.newFuels
        Array.prototype.push.apply(newFuels, res.data.data)
        this.setState({newFuels})
      });
  }

  getAllDepreciations = () => {
    axios.get(`http://localhost:3001/api/v1/depreciations/`)
      .then(res => {
        const newDepreciations = this.state.newDepreciations
        Array.prototype.push.apply(newDepreciations, res.data.data)
        this.setState({newDepreciations})
      });
  }

  getAllMaintenances = () => {
    axios.get(`http://localhost:3001/api/v1/maintenances/`)
      .then(res => {
        const maintenances = this.state.maintenances
        Array.prototype.push.apply(maintenances, res.data.data)
        this.setState({maintenances})
      });
  }


  getAllInformation = () => {
    axios.all([
      this.getAllMaintenances(),
      this.getAllDepreciations(),
      this.getAllFuels(),
      this.getAllPictures(),
      this.getAllWarranties(),
      this.getAllPrices(),
      this.getAllCars()
    ])
    .then(axios.spread( (m,d,f,p,w,pr,c) => {
    }))
  }

  componentDidMount(){
    console.log("MOUNTING...")
    this.getAllInformation()
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

  logout = () => {
    localStorage.clear();
  }

  login = (account) => {
    axios.post(`http://localhost:3001/api/v1/login/`, account)
    .then((res) => {
      localStorage.setItem('jwt', res.data.jwt)
      this.setState(
        {currentUser: res.data.data,
        jwt: res.data.jwt
        }
      )
      if(localStorage.getItem('jwt')) {
        this.setState(
          {loggedIn: true}
        )
      }
      this.resetState()
      this.getAllInformation()
      this.history.push(`/`)
      this.forceUpdate()
    }
    ).catch((err) => {
      console.log(err)
    });
  }

  register = (account) => {
    console.log(account)
    axios.post(`http://localhost:3001/api/v1/register/`, account)
    .then((res) => {
      console.log(res)
      localStorage.setItem('jwt', res.data.jwt)
      this.setState(
        {currentUser: res.data.data,
        jwt: res.data.jwt
        }
      )
      if(localStorage.getItem('jwt')) {
        this.setState(
          {loggedIn: true}
        )
      }
      this.resetState()
      this.getAllInformation()
      this.history.push(`/`)
      this.forceUpdate()
    }
    ).catch((err) => {
      console.log(err)
    });
  }

  submitCars = (currentCar) => {
    console.log("111", currentCar)
    currentCar["currentUserId"] = this.state.currentUser.id
    axios.post(`http://localhost:3001/api/v1/comparisons/`, currentCar)
      .then((res) => {
        this.resetState()
        this.getAllInformation()
        this.history.push(`/comparisons/${res.data.data.id}`)
      })
      .catch((err) => {
        console.log(err)
      })
  }

  resetState = () => {
    this.setState({
      cars: [],
      newPrices: [],
      newWarranties: [],
      newPictures: [],
      newFuels: [],
      newDepreciations: [],
      maintenances: []
    })
  }

  getStarted = () => {
    this.history.push(`/currentCar`)
  }

  render() {
    console.log(this.state.currentUser);
    return (
      <Router history={this.history} >
        <div className="App">
          <NavBar user={this.state.currentUser} logout={this.logout}/>
          <Route exact path="/currentCar/" render={() => <CurrentCar updateCurrent={this.updateCurrent} data={this.state} submitCars={this.submitCars}></CurrentCar>} />
          <Route exact path="/" render={() => <CarSlide getStarted={this.getStarted}/>}/>
          <Route path="/cars" component={this.Cars} />
          <Route path="/comparisons" component={this.Comparisons} />
          <Route path="/login" render={() => <Login login={this.login}/>}/>
          <Route path="/register" render={() => <Register register={this.register}/>}/>
        </div>
      </Router>
    );
  }
}
export default AppRouter;