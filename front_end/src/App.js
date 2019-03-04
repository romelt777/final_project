import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import CarList from './Components/CarList'

function Index() {
  return <h2>Home</h2>;
}

function About() {
  return <h2>About</h2>
}

function Users() {
  return (
    <h2>Cars
    <CarList /> </h2>
  )
}


class AppRouter extends Component {
  render() {
    return (
      <Router>
        <div className="App">
          <header className="App-header">
            <img src={logo} className="App-logo" alt="logo" />
            <h1 className="App-title">Welcome to React</h1>
          </header>
          <Route path="/about/" component={About} />
          <Route path="/cars/" component={Users} />
        </div>
      </Router>
    );
  }
}

export default AppRouter;
