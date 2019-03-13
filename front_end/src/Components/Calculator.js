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

    const calculator = {
      position: 'relative',
      'border-radius': 20,
      'background-color': 'white',
<<<<<<< HEAD
      'padding': 20,
      'margin-bottom': 20,
      'width': 400
=======
      'width': 400,
      'height': 350,
      'clear': 'both'
>>>>>>> feature/carslidepics
    }

    const wrapperStyle = {
      width: 300, margin: 20
    }

    const calWrap = {
      'justify-content': 'center'
    }
    const calHead = {
      'font-style': 'italic',
      'font-weight': 'bold',
      'margin-top': 30
    }

    const disclaimer = {
      position: 'relative',
      float: 'left'
    }

    return (
      <div style={{clear:"both"}}>
        <ButtonToolbar>
          <ToggleButtonGroup type="radio" name="options" defaultValue={1} >
            {pieButtons}
          </ToggleButtonGroup>
        </ButtonToolbar>
        <div ClassName='calculatorContainer' style={{...calculator, 'height': 400}}>
          <h4 style={calHead}>Payment Calculator</h4>
          <div ClassName='calWrapper' style={calWrap}>
            <table ClassName='priceCalculator'>
              <tbody>

                  <tr ClassName='price'>Vehicle Price: ${vehiclePrice.toFixed(2)}</tr>

                <div style={wrapperStyle}>
                  <tr ClassName='priceTax'>Freight & Delivery: ${priceFAD.toFixed(2)}</tr>
                </div>
                <div style={wrapperStyle}>
                  <tr ClassName='priceTax'>Subtotal: ${subtotal.toFixed(2)}</tr>
                </div>
                <div style={wrapperStyle}>
                  <tr ClassName='priceTax'>HST (13%): ${hst.toFixed(2)}</tr>
                </div>
                <div style={wrapperStyle}>
                  <tr ClassName='priceTotal'>Total Price:* ${priceTotal.toFixed(2)}</tr>
                </div>
              </tbody>
            </table>
          </div>
            <small ClassName='calDisclaimer' style={disclaimer}>
              * This price excludes promotions and may vary depending on taxes and applicable fees.
            </small>
        </div>

        <div ClassName='leaseCalculator' style={{...calculator, 'height': 400}}>
          <h4 style={calHead}>Loan Payment Calculator</h4>
          <div ClassName='calWrapper' style={calWrap}>
            <div style={wrapperStyle}>
              <h4>Interest Rate (%): {this.state.interestChanged}</h4>
              <SliderWithTooltip min={0} max={20} defaultValue={this.state.interestChanged} tipFormatter={this.tipChangerInterest}  onChange={this.changeInterest}/>
            </div>
            <div style={wrapperStyle}>
              <h4>Term (Months): {this.state.termChanged} </h4>
              <SliderWithTooltip min={24} max={96} defaultValue={60} handle={this.handleChange} tipFormatter={this.tipChangerTerm} onChange={this.changeTerm} />
            </div>
            <div style={wrapperStyle}>
              <h4>Down Payment ($): {this.state.downPayChanged} </h4>
              <SliderWithTooltip min={0} max={vehiclePrice/2} defaultValue={0} handle={this.handleChange} tipFormatter={this.tipChanger}  onChange={this.changeDown}/>
            </div>
            <div style={wrapperStyle}>
              <h4>Monthly Payment: {((priceTotal - this.state.downPayChanged) * (this.state.interestChanged / 1200)/(1 - Math.pow((1 + (this.state.interestChanged / 1200)),(this.state.termChanged * -1)) )).toFixed(2)}</h4>
            </div>
          </div>
        </div>
      </div>
    );
  }
}