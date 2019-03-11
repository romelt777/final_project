import React, { Component } from 'react';
import Slider, {createSliderWithTooltip} from 'rc-slider';
import 'rc-slider/assets/index.css';
import 'rc-tooltip/assets/bootstrap.css';
import {ButtonToolbar, ToggleButtonGroup, ToggleButton} from 'react-bootstrap'

const SliderWithTooltip = createSliderWithTooltip(Slider);

export default class Calculator extends Component {
  constructor(props) {
    super(props);
    this.state = {
      depiFee: 0,
      finFee: 0,
      downPayment: 20000,
      resValue: 0,
      interestChanged: 5,
      termChanged: 60,
      downPayChanged: 0,
      monthlyPayChanged: 0,
      togglePie: 0
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
    this.setState({depiFee: this.props.price[this.state.togglePie].vehicle_price});
  }

  getFinFee = () => {
    // should be imported from the sliders
    const intRate = 0.13
    const resValue = this.state.resValue
    const downPayment = this.state.downPayment
    this.setState({finFee: (this.props.price[this.state.togglePie] - resValue - downPayment) / (intRate / 2400)});
  }

  getResValue = () => {
    // should be imported from the leasing calculator form
    const resValue = 10000
    this.setState({resValue: resValue})
  }

  tipChangerInterest = (v) => {
    return `${v} %`
  }

  tipChangerMonth = (v) => {
    return `${v}`
  }

  tipChanger = (v) => {
    return `$${v}`
  }

  changeInterest = (v) => {
    this.setState({interestChanged: v})
  }

  changeTerm = (v) => {
    this.setState({termChanged: v})
  }

  changeDown = (v) => {
    this.setState({downPayChanged: v})
  }

  changeMonthPay = (v) => {
    this.setState({monthlyPayChanged: v})
  }

  togglePie = (event) => {
    this.setState({togglePie: event.target.value - 1})
  }


  render() {

    let vehiclePrice = 0;
    let priceFAD = 0;
    let subtotal = 0;
    let hst = 0;
    let priceTotal = 0;

    if(this.props.price.length > 0) {
      vehiclePrice = this.props.price[this.state.togglePie].vehicle_price;
      priceFAD = this.props.price[this.state.togglePie].freight_delivery;
      subtotal = vehiclePrice + priceFAD;
      hst = vehiclePrice * 0.13;
      priceTotal = hst + subtotal;

    }

    const pieButtons = [];
    this.props.carName.forEach((c, i) => {
      pieButtons.push(<ToggleButton key={c.id} value={i + 1} onChange={this.togglePie}>{c.model}</ToggleButton>)
    })

    const wrapperStyle = { width: 300, margin: 50 };
    return (
      <div>
        <ButtonToolbar>
          <ToggleButtonGroup type="radio" name="options" defaultValue={1} >
            {pieButtons}
          </ToggleButtonGroup>
        </ButtonToolbar>
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
                    <span>Interest Rate (%): {this.state.interestChanged}</span>
                    <SliderWithTooltip min={0} max={20} defaultValue={this.state.interestChanged} tipFormatter={this.tipChangerInterest}  onChange={this.changeInterest}/>
                  </div>
                  <div style={wrapperStyle}>
                    <span>Term (Months): </span>
                    <SliderWithTooltip min={24} max={96} defaultValue={60} handle={this.handleChange} tipFormatter={this.tipChangerTerm} onChange={this.changeTerm} />
                  </div>
                  <div style={wrapperStyle}>
                    <span>Down Payment ($): </span>
                    <SliderWithTooltip min={0} max={vehiclePrice} defaultValue={0} handle={this.handleChange} tipFormatter={this.tipChanger}  onChange={this.changeDown}/>
                  </div>
                </div>
              </li>
              <li ClassName='finItem'>
                <table ClassName='finCalculator'>
                  <tbody>
                    <tr>Interest Rate (%): {this.state.interestChanged}</tr>
                    <tr>Term (Months): {this.state.termChanged}</tr>
                    <tr>Down Payment ($): {this.state.downPayChanged}</tr>
                    <tr>Monthly Payment: {((priceTotal - this.state.downPayChanged) * (this.state.interestChanged / 1200)/(1 - Math.pow((1 + (this.state.interestChanged / 1200)),(this.state.termChanged * -1)) )).toFixed(2)}</tr>
                  </tbody>
                </table>
              </li>
            </ul>
          </div>
        </div>
      </div>
    );
  }
}