import React, { Component } from 'react';

export default class Calculator extends Component {


  render() {

    let vehiclePrice = 0;
    let priceFAD = 0;
    let subtotal = 0;
    let hst = 0;
    let priceTotal = 0;

    if(this.props.price.length > 0) {
      vehiclePrice = this.props.price[1].vehicle_price;
      priceFAD = this.props.price[1].freight_delivery;
      subtotal = vehiclePrice + priceFAD;
      hst = vehiclePrice * 0.13;
      priceTotal = hst + subtotal;

    }

    return (
      <div ClassName='priceCalculator'>
        <h3>Payment Calculator</h3>
        <table ClassName='priceCalculator'>
          <tbody>
            <tr ClassName='price'>Vehicle Price: ${vehiclePrice.toFixed(2)}</tr>
            <tr ClassName='priceTax'>Freight & Delivery: ${priceFAD.toFixed(2)}</tr>
            <tr ClassName='priceTax'>Subtotal: ${subtotal.toFixed(2)}</tr>
            <tr ClassName='priceTax'>HST (13%): ${hst.toFixed(2)}</tr>
            <tr ClassName='priceTotal'>Total Price:* ${priceTotal.toFixed(2)}</tr>
            <tr ClassName='calDisclaimer'>* This price excludes promotions and may vary depending on taxes and applicable fees.</tr>
          </tbody>
        </table>

        <div ClassName='optTabs'>
          <ul ClassName='contentItems'>
            <li ClassName='leaseItem'>
              <table ClassName='leaseCalculator'>
                <tbody>
                  <tr>Interest Rate (%):</tr>
                  <tr>Term (Months):</tr>
                  <tr>Down Payment ($):</tr>
                  <tr>Monthly Payment:</tr>
                </tbody>
              </table>
            </li>
            <li ClassName='finItem'>
              <table ClassName='finCalculator'>
                <tbody>
                  <tr>Interest Rate (%):</tr>
                  <tr>Term (Months):</tr>
                  <tr>Down Payment ($):</tr>
                  <tr>Monthly Payment:</tr>
                </tbody>
              </table>
            </li>
          </ul>
        <table>
        </table>
        </div>
      </div>
    );
  }
}