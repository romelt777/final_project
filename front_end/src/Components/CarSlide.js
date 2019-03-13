import React from 'react'
import { Fade } from 'react-slideshow-image';
import Lexus from '../images/lexus.jpg';
import Mazda from '../images/mazda.jpg';
import Lincoln from '../images/lincoln.jpg';
import Toyota from '../images/toyota.jpg';
import '../image.css';

export default class CarSlide extends React.Component{

  redirect = (event) => {
    console.log("imclciked")
    this.props.getStarted()
  }

  render() {
    const fadeProperties = {
        duration: 5000,
        transitionDuration: 500,
        infinite: true,
        arrows: false,
        autoplay: true
    }


    return (
      <Fade {...fadeProperties}>
        <div className="each-fade">
          <div className="image-container">
            <img className="image" src={Lexus} alt="Logo" />
            <div className="centered">
              <h1 className="big">Need professional advice?</h1>
              <p className="para">Click on the button</p>
              <button type="button" onClick={this.redirect} className="button btn-transparent btn-lg text-uppercase">Get Started</button>
            </div>
          </div>
        </div>

        <div className="each-fade">
          <div className="image-container">
            <img className="image" src={Mazda} alt="Logo" />
            <div className="centered">
              <h1 className="big">Compare your current vehicle to your new!</h1>
              <p className="para">Click on the button</p>
              <button type="button" onClick={this.redirect} className="button btn-transparent btn-lg text-uppercase">Get Started</button>
            </div>
          </div>
        </div>

        <div className="each-fade">
          <div className="image-container">
            <img className="image" src={Lincoln} alt="Logo" />
            <div className="centered">
              <h1 className="big">We provide professional information right to you!</h1>
              <p className="para">Click on the button</p>
              <button type="button" onClick={this.redirect} className="button btn-transparent btn-lg text-uppercase">Get Started</button>
            </div>
          </div>
        </div>

        <div className="each-fade">
          <div className="image-container">
            <img className="image" src={Toyota} alt="Logo" />
            <div className="centered">
              <h1 className="big">We have the answers you're looking for!</h1>
              <p className="para">Click on the button</p>
              <button type="button" onClick={this.redirect} className="button btn-transparent btn-lg text-uppercase">Get Started</button>
            </div>
          </div>
        </div>
      </Fade>
    )
  }
}