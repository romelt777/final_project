import React, { Component } from 'react';
import axios from 'axios'

export default  class Login extends React.Component {
    submitCurrent = event => {
        event.preventDefault();
        console.log(this.refs.email.value)
        console.log(this.refs.password.value)
        }

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

