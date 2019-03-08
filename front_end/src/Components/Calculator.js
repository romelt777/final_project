import React, { Component } from 'react';
import Tooltip from 'rc-tooltip';
import Slider from 'rc-slider';
import 'rc-slider/assets/index.css';
import 'rc-tooltip/assets/bootstrap.css';

const createSliderWithTooltip = Slider.createSliderWithTooltip;
const Range = createSliderWithTooltip(Slider.Range);
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

const wrapperStyle = { width: 400, margin: 50 };

export default class Calculator extends Component {
  // leasing price = price - down payment
  // money factor = 1/ (1+int rate)^period
  // residual value = price - depreciation

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
              <table ClassName='leaseCalculator'>
                 <tbody>
                    <div style={wrapperStyle}>
                      <span>Interest Rate (%): </span>
                      <Slider min={0} max={10} defaultValue={0} handle={handle} />
                    </div>
                    <div style={wrapperStyle}>
                      <span>Term (Months): </span>
                      <Slider min={0} defaultValue={0} marks={{ 12: 12, 24: 24, 36: 36, 48: 48, 60: 60, 72: 72, 84: 84, 96: 96 }} step={null} />
                    </div>
                    <div style={wrapperStyle}>
                      <span>Down Payment ($): </span>
                      <Slider min={0} max={200000} defaultValue={0} handle={handle} />
                    </div>
                    <div style={wrapperStyle}>
                      <span>Monthly Payment: </span>
                      <Slider min={0} max={200000} defaultValue={0} handle={handle} />
                    </div>
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