import React, { Component } from 'react';
import Body from './Components/Body'
import CarList from './Components/CarList';

class App extends Component {
  render() {
    return (
      <div className="App">
        <Body />
        <CarList />
      </div>
    );
  }
}

export default App;
