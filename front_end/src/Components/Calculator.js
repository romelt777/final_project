import React, { Component } from 'react';

export default class Calculator extends Component {
  constructor() {
    super();
    this.state = {
      provincesTaxes: {
          "AB": [["GST", 5]],
          "BC": [["PST", 7], ["GST", 5]],
          "YT": [["GST", 5]],
          "ON": [["HST", 13]],
          "MB": [["PST", 7], ["GST", 5]],
          "NB": [["HST", 13]],
          "NF": [["HST", 13]],
          "SK": [["PST", 5], ["GST", 5]],
          "QC": [["QST", 9.975], ["GST", 5]],
          "PE": [["HST", 14]],
          "NS": [["HST", 15]],
          "NT": [["GST", 5]],
          "NU": [["GST", 5]]
      }
    }

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (evt) => {
    this.setState({provincesTaxes: evt.target.value})
    evt.preventDefault();

  }
  render() {
    return (
    <div ClassName='priceCalculator'>
      <h3>Payment Calculator</h3>
      <div ClassName='provinceSelectorWrapper'>
        <select id='provinceSelector' onChange={this.handleChange}>
          <option value='AB'>AB</option>
          <option value='BC'>BC</option>
          <option value='MB'>MB</option>
          <option value='NB'>NB</option>
          <option value='NS'>NS</option>
          <option value='ON'>ON</option>
          <option value='PE'>PE</option>
          <option value='QC'>QC</option>
          <option value='NT'>NT</option>
          <option value='NU'>NU</option>
          <option value='SK'>SK</option>
          <option value='YT'>YT</option>
        </select>
      </div>
      <table ClassName='priceCalculator'>
        <tbody>
          <tr ClassName='price'>Vehicle Price: </tr>
          <tr ClassName='priceTax'>Freight & Delivery: </tr>
          <tr ClassName='priceTax'>Subtotal: </tr>
          <tr ClassName='priceTax'>HST(13%): </tr>
          <tr ClassName='priceTotal'>Total Price:* </tr>
          <tr ClassName='calDisclaimer'>* This price excludes promotions and may vary depending on taxes and applicable fees.</tr>
        </tbody>
      </table>
    </div>
  );
  }
}