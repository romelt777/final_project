import React from 'react'
import { Fade } from 'react-slideshow-image';
import Bmw from '../images/bmw.jpg';
import Mazda from '../images/mazda.jpg';
import Honda from '../images/honda.jpg';
import Toyota from '../images/toyota.jpg';

export default function CarSLide(){
  const fadeProperties = {
      duration: 4000,
      transitionDuration: 500,
      infinite: true,
      arrows: false,
      autoplay: true
  }

  return (
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
  )
}