import React, { Component } from 'react';
import { Router, Route, Link} from "react-router-dom";
import createHistory from 'history/createBrowserHistory'
import axios from 'axios'
import './App.css';

//components
import Body from './Components/Body'
import Chart from './Components/Chart'
import PieChart from './Components/PieChart'
import CurrentCar from './Components/CurrentCar';
import CarSlide from './Components/CarSlide';
import CarList from './Components/CarList'
import Car from './Components/Car';
import Login from './Components/Login'
import Register from './Components/Register'
import Comparison from './Components/Comparison';



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
      comparisonRedirect: false
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

  componentDidMount(){
    console.log("MOUNTING...")
    axios.get(`http://localhost:3001/api/v1/cars/`)
      .then(res => {
        const cars = this.state.cars
        Array.prototype.push.apply(cars, res.data.data)
        this.setState({cars})
      });
    axios.get(`http://localhost:3001/api/v1/prices/`)
      .then(res => {
        const newPrices = this.state.newPrices
        Array.prototype.push.apply(newPrices, res.data.data)
        this.setState({newPrices})
      });
    axios.get(`http://localhost:3001/api/v1/warranties/`)
      .then(res => {
        const newWarranties = this.state.newWarranties
        Array.prototype.push.apply(newWarranties, res.data.data)
        this.setState({newWarranties})
      });
    axios.get(`http://localhost:3001/api/v1/pictures/`)
      .then(res => {
        const newPictures = this.state.newPictures
        Array.prototype.push.apply(newPictures, res.data.data)
        this.setState({newPictures})
      });
    axios.get(`http://localhost:3001/api/v1/fuels/`)
      .then(res => {
        const newFuels = this.state.newFuels
        Array.prototype.push.apply(newFuels, res.data.data)
        this.setState({newFuels})
      });
    axios.get(`http://localhost:3001/api/v1/depreciations/`)
      .then(res => {
        const newDepreciations = this.state.newDepreciations
        Array.prototype.push.apply(newDepreciations, res.data.data)
        this.setState({newDepreciations})
      });
    axios.get(`http://localhost:3001/api/v1/maintenances/`)
      .then(res => {
        const maintenances = this.state.maintenances
        Array.prototype.push.apply(maintenances, res.data.data)
        this.setState({maintenances})
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

  login = (account) => {
    axios.post(`http://localhost:3001/api/v1/login/`, account)
    .then((res) => {
      console.log(res)
    }

    ).catch((err) => {
      console.log(err)
    });
  }

  register = (account) => {
    console.log(account)
    axios.post(`http://localhost:3001//api/v1/register/`, account)
    .then((res) => {
      console.log(res)
    }

    ).catch((err) => {
      console.log(err)
    });
  }

  submitCars = (currentCar) => {
    console.log("111", currentCar)
    axios.post(`http://localhost:3001/api/v1/comparisons/`, currentCar)
      .then((res) => {
        this.history.push(`/comparisons/${res.data.data.id}`)
      })
      .catch((err) => {
        console.log(err)
      })

  }

  // unlisten = createHistory().listen((createHistory().location, action) => {
  //   // location is an object like window.location
  //   console.log(action, location.pathname, location.state)
  // })


  render() {

    // const history = createHistory()

    // const routes =(
    //   <div className="App">
    //     <Route exact path="/currentCar/" render={() => <CurrentCar updateCurrent={this.updateCurrent} data={this.state} submitCars={this.submitCars}></CurrentCar>} />
    //     <Route exact path="/" component={CarSlide} />
    //     <Route path="/cars" component={this.Cars} />
    //     <Route path="/comparisons" component={this.Comparisons} />
    //     <Body />
    //     <Route path="/login" render={() => <Login login={this.login}/>}/>
    //     <Route path="/register" render={() => <Register register={this.register}/>}/>
    //   </div>
    // )

    return (
      <Router history={this.history} >
        <div className="App">
          <Route exact path="/currentCar/" render={() => <CurrentCar updateCurrent={this.updateCurrent} data={this.state} submitCars={this.submitCars}></CurrentCar>} />
          <Route exact path="/" component={CarSlide} />
          <Route path="/cars" component={this.Cars} />
          <Route path="/comparisons" component={this.Comparisons} />
          <Body />
          <Route path="/login" render={() => <Login login={this.login}/>}/>
          <Route path="/register" render={() => <Register register={this.register}/>}/>
        </div>
      </Router>
    );
  }
}

export default AppRouter;
