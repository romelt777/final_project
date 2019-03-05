import React, { Component } from 'react';


export default  class Login extends React.Component {
    submitCurrent = event => {
        event.preventDefault();
        let account = [{
            "username": this.refs.username.value,
            "email": this.refs.email.value,
            "password": this.refs.password.value
          }]
          console.log(account)
          this.props.updateAccount(account)
        }
        

   render(){
    return (
      <div>
        <form onSubmit={this.submitCurrent}>
        <label>Username: <input type="username" name="username" ref="username" /> </label> <br></br>
          <label>Email: <input type="email" name="email" ref="email" /> </label> <br></br>
          <label>Password: <input type="password" name="password" ref="password" /> </label> <br></br>
          <input type="submit" value="Submit"/>
        </form>
      </div>
    )
  }
} 

