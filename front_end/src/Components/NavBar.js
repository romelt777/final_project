import React, { Component } from 'react';

export default class NavBar extends React.Component {

  render(){
    return (
      <nav>
      <div className="navWide">
        <div className="wideDiv">
          <a href="#">Link 1</a>
          <a href="#">Link 2</a>
          <a href="#">Link 3</a>
        </div>
      </div>
      </nav>
    )
  }
}