import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import CarList from './Components/CarList'
import Login from './Components/Login'
import Register from './Components/Register'
import axios from 'axios'

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
  }

  

  
  login = (account) => {
    console.log(account)
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


  
  render() {
    return (
      <Router>
        <div className="App">
          <header className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <h1 className="App-title">Welcome to React</h1>
          </header>

          <Route path="/about/" component={About} />
          <Route path="/cars" component={Cars} />
          <Route path="/login" render={() => <Login login={this.login}/>}/>
          <Route path="/register" render={() => <Register register={this.register}/>}/>
          
        </div>
      </Router>
    );
  }
}

export default AppRouter;
