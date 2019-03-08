import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import axios from 'axios'
import './App.css';

import Body from './Components/Body'
import Chart from './Components/Chart'
import PieChart from './Components/PieChart'

// for image slide show display effect
import CurrentCar from './Components/CurrentCar';
import CarSlide from './Components/CarSlide';
import CarList from './Components/CarList'
import Car from './Components/Car';
import Login from './Components/Login'
import Register from './Components/Register'
import NavBar from './Components/NavBar'



class AppRouter extends Component {
  constructor(props){
    super(props)
    this.state = {
      newCars: [],
      newPrices: [],
      newWarranties: [],
      newPictures: [],
      newFuels: [],
      newDepreciations: [],
      currentUser: '',
      jwt: '',
      loggedIn: false
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
    if(localStorage.getItem('jwt')) {
      this.setState(
        {loggedIn: true}
      )
    }
    axios.get(`http://localhost:3001/api/v1/cars/`, {
      'headers': {'Authorization': `Bearer ${localStorage.getItem('jwt')}`}
    })
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


  logout = () => {
      localStorage.clear(); 
  }
  

//storage.removeItem('jwt')

  login = (account) => {
    axios.post(`http://localhost:3001/api/v1/login/`, account)
    .then((res) => {
     localStorage.setItem('jwt', res.data.jwt)
     this.setState(
       {currentUser: res.data.data.first_name,
        jwt: res.data.jwt
       }
     )
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



  render() {
    return (
      <Router>
        <div className="App">
          <NavBar name={this.state.currentUser} logout={this.logout} loggedIn={this.state.loggedIn}/>
          <Route exact path="/currentCar/" render={() => <CurrentCar updateCurrent={this.updateCurrent}></CurrentCar>} />
          <Route exact path="/" component={CarSlide} />
          
          <Chart depi={this.state.newDepreciations}/>
          <PieChart />
          <Route path="/cars" component={this.Cars} />
          <Body />
          <Route path="/login" render={() => <Login login={this.login}/>}/>
          <Route path="/register" render={() => <Register register={this.register}/>}/>
          

        </div>
      </Router>
    );
  }
}

export default AppRouter;
