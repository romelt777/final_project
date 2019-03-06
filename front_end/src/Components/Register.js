import React, { Component } from 'react';


export default  class Register extends React.Component {
  submitCurrent = event => {
    event.preventDefault();
    console.log(this.refs.password.value)
    let account = {
      "first_name": this.refs.first_name.value,
      "last_name": this.refs.last_name.value,
      "email": this.refs.email.value,
      "password_digest": this.refs.password.value
    }
    console.log(account)
    this.props.register(account)
  }
      
  render(){
    return (
      <div>
        <form onSubmit={this.submitCurrent}>
          <label>First Name: <input type="first_name" name="first_name" ref="first_name" /> </label> <br></br>
          <label>Last Name: <input type="last_name" name="last_name" ref="last_name" /> </label> <br></br>
          <label>Email: <input type="email" name="email" ref="email" /> </label> <br></br>
          <label>Password: <input type="password" name="password" ref="password" /> </label> <br></br>
          <input type="submit" value="Submit"/>
        </form>
      </div>
    )
  }
}
