import React, { Component } from 'react';

export default class Profile extends React.Component {

  render(){
    return (
      <div>
        <form onSubmit={this.submitCurrent}>
          <label>Email: <input type="email" name="email" ref="email" /> </label> <br></br>
          <label>Password: <input type="password" name="password" ref="password" /> </label> <br></br>
          <input type="submit" value="Submit"/>
        </form>
      </div>
    )
  }
}