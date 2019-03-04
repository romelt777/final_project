import React, { Component } from 'react';
import Body from './Components/Body'

// for image slide show display effect
import Bmw from './images/bmw.jpg';
import Mazda from './images/mazda.jpg';
import Honda from './images/honda.jpg';
import Toyota from './images/toyota.jpg';
import { Fade } from 'react-slideshow-image';

class App extends Component {
  render() {
    const fadeProperties = {
      duration: 4000,
      transitionDuration: 500,
      infinite: true,
      arrows: false,
      autoplay: true
    }

    return (
      <div className="App">
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
    );
  }
}

export default App;
