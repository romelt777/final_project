import React, { Component } from 'react';
import '../NavBar.scss';
import Bird from '../images/bird.png';

export default class NavBar extends React.Component {

  render() {
    return (
     <div className="container"> 
      <nav id="nav-bar">
        <img class="logo" src={Bird}></img>
        <div className="content">
          <ul className="nav-content">

          </ul>
        </div>
      
      
      </nav>
    </div>
    );
  }
}

