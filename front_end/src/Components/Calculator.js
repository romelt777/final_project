import React, { Component } from 'react';
import Tooltip from 'rc-tooltip';
import Slider from 'rc-slider';
import 'rc-slider/assets/index.css';
import 'rc-tooltip/assets/bootstrap.css';

const Handle = Slider.Handle;

const handle = (props) => {
  const { value, dragging, index, ...restProps } = props;
  return (
    <Tooltip
      prefixCls="rc-slider-tooltip"
      overlay={value}
      visible={dragging}
      placement="top"
      key={index}
    >
      <Handle value={value} {...restProps} />
    </Tooltip>
  );
};

const wrapperStyle = { width: 300, margin: 50 };

export default class Calculator extends Component {
  constructor(props) {
    super(props);
    this.state = {
      depiFee: 0,
      finFee: 0,
      downPayment: 20000,
      resValue: 0
    };
    // methods for leasing calculator, reflecting the following respectively:
    // depreciationFee = (price - resdiual value - down payment) / months;
    // financeFee = (price + resdiual value + down payment) * (interest / 2400);
    // result = depreciationFee + financeFee;

    this.getDepiFee = this.getDepiFee.bind(this);
    this.getFinFee = this.getFinFee.bind(this);
    this.getResValue = this.getResValue.bind(this);
  }

  getDepiFee = () => {
    this.setState({depiFee: this.props.price[1].vehicle_price});
  }

  getFinFee = () => {
    // should be imported from the sliders
    const intRate = 0.13
    const resValue = this.state.resValue
    const downPayment = this.state.downPayment
    this.setState({finFee: (this.props.price[1] - resValue - downPayment) / (intRate / 2400)});
  }

  getResValue = () => {
    // should be imported from the leasing calculator form
    const resValue = 10000
    this.setState({resValue: resValue})
  }

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
      <div ClassName='calculatorContainer'>
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
              <div ClassName='leaseCalculator'>
                <div style={wrapperStyle}>
                  <span>Interest Rate (%): </span>
                  <Slider min={0} max={20} defaultValue={0} handle={handle} />
                </div>
                <div style={wrapperStyle}>
                  <span>Term (Months): </span>
                  <Slider min={0} max={96} defaultValue={0} handle={handle} />
                </div>
                <div style={wrapperStyle}>
                  <span>Down Payment ($): </span>
                  <Slider min={0} max={vehiclePrice} defaultValue={0} handle={handle} />
                </div>
                <div style={wrapperStyle}>
                  <span>Monthly Payment: </span>
                  <Slider min={0} max={vehiclePrice / 2} defaultValue={0} handle={handle} />
                </div>
              </div>
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
        </div>
      </div>
    );
  }
}