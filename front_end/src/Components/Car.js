import React from 'react'

export default class Car extends React.Component {

  render(){
    let newCar;
    this.props.data.cars.forEach((car) => {
      if(car.id == this.props.match.params.id){
        newCar = <h2>{car.year} {car.make} {car.model}</h2>
      }
    })

    let newPic;
    this.props.data.newPictures.forEach((pic) => {
      if(pic.id == this.props.match.params.id){
        newPic = <img className='image' src={pic.url} style={{width:'100%', height: 'auto'}} />
      }
    })


    console.log(this.props.data.cars)
    console.log(this.props.match.params.id)

    return (
      <div>
        <ul>
          {newCar}
          {newPic}
        </ul>
      </div>
    )
  }
}


// <Car match={params:t}/>