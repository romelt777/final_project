import React from 'react'
import {Container, Row, Col, Table} from 'react-bootstrap'



export default class Datatable extends React.Component {


  render() {

    console.log(this.props.data)
    // console.log(this.props.comparison)

    // store car id in comparison
    let comparison = []
    if(this.props.comparison.length > 0) {
      this.props.comparison.map((comp) => {
        comparison.push((comp.car_id))
      })
    }

    // store car name in cars
    let cars = []
    if(this.props.data.cars.length > 0) {
      this.props.data.cars.reverse().map((car) => {
        if(comparison.includes(car.id)){
          let carname = car.year + ' ' + car.make + ' ' + car.model
          cars.push(carname)
        }
      })
    }

    // store car price
    // store car fuel economy
    // store car warranty

    // generateTh = (array) => {
    //   return (
    //     <th>
    //     </th>
    //   )
    // }

    return (
      <Col sm={12}>
        <Table striped bordered hover>
           <thead>
            <tr>
              <th>First car Name</th>
              <th>Last car Name</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Mark</td>
              <td>Otto</td>
            </tr>
            <tr>
              <td>Jacob</td>
              <td>Thornton</td>
            </tr>
            <tr>
              <td>3</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </Table>
      </Col>
    )
  }
}