import React from 'react'
import {Container, Row, Col, Table} from 'react-bootstrap'



export default class Datatable extends React.Component {


  render() {

    // store car id in comparison
    let comparison = []
    if(this.props.comparison.length > 0) {
      this.props.comparison.map((comp) => {
        comparison.push((comp.car_id))
      })
    }

    // store car img in img
    let imgs = []
    if(this.props.data.newPictures.length > 0) {
      this.props.data.newPictures.reverse().map((pic) => {
        if(comparison.includes(pic.id)) {
          imgs.push(pic.url)
        }
      })
    }

    // store car name in cars
    let cars = []
    if(this.props.data.cars.length > 0) {
      this.props.data.cars.reverse().map((car) => {
        if(comparison.includes(car.id)) {
          let carname = car.year + ' ' + car.make + ' ' + car.model
          cars.push(carname)
        }
      })
    }

    // store car price
    let prices = []
    if(this.props.data.newPrices.length > 0) {
      this.props.data.newPrices.map((price) => {
        if(comparison.includes(price.id)) {
          let formatPrice = '$' + price.vehicle_price.toFixed(2)
          prices.push(formatPrice)
        }
      })
    }

    // store car fuel economy
    let fuels = []
    if(this.props.data.newFuels.length > 0) {
      this.props.data.newFuels.map((fuel) => {
        if(comparison.includes(fuel.id)) {
          fuels.push(fuel)
        }
      })
    }

    // store car warranty
    let warranties = []
    if(this.props.data.newWarranties.length > 0) {
      this.props.data.newWarranties.map((warranty) => {
        if(comparison.includes(warranty.id)) {
          warranties.push(warranty)
        }
      })
    }

    return (
      <Col sm={12}>
        <Table striped bordered hover>
           <thead>
            <tr>
              <th>1</th>
              <th>2</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Price</td>
              <td>Mark</td>
              <td>Otto</td>
            </tr>
            <tr>
              <td>Fuel Economy</td>
              <td>Jacob</td>
              <td>Thornton</td>
            </tr>
            <tr>
              <td>Warranty</td>
              <td>3</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </Table>
      </Col>
    )
  }
}