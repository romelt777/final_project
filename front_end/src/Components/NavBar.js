import React, { Component } from 'react';
import '../NavBar.scss';
import Bird from '../images/bird.png';

export default class NavBar extends React.Component {

  render() {
    if (this.props.name) {
    return (
     <div className="container"> 
      <nav id="nav-bar">
        <img id="logo" src={Bird}></img>
        <div id="content">
          <ul id="nav-content">
            <li id="nav-content-item"><a id="nav-link" href="#">Home</a></li>
            <li id="nav-content-item"><a id="nav-link" href="#">About</a></li>
            <li id="nav-content-item"><a id="nav-link" href="#">Login</a></li>
            <li id="nav-content-item"><a id="nav-link" href="#">Register</a></li>
          </ul>
        </div>
      
      
      </nav>
    </div>
    
    );
    } else {
      return (
        <div className="container"> 
      <nav id="nav-bar">
        <img id="logo" src={Bird}></img>
        <div id="content">
          <ul id="nav-content">
            <li id="nav-content-item"><a id="nav-link" href="#">Home</a></li>
            <li id="nav-content-item"><a id="nav-link" href="#">About</a></li>
            <li id="nav-content-item"><a id="nav-link" href="#">Logout</a></li>
          </ul>
        </div>
      
      
      </nav>
    </div>
      )
    }
  }
}



function name ({name}) {
  if (!name) {
    return (
      <div className="container"> 
        <nav id="nav-bar">
          <img id="logo" src={Bird}></img>
          <div id="content">
            <ul id="nav-content">
              <li id="nav-content-item"><a id="nav-link" href="#">Home</a></li>
              <li id="nav-content-item"><a id="nav-link" href="#">About</a></li>
              <li id="nav-content-item"><a id="nav-link" href="#">Login</a></li>
              <li id="nav-content-item"><a id="nav-link" href="#">Register</a></li>
            </ul>
          </div>
        </nav>
      </div>
    );
  }
}