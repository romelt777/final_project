import React from 'react';
import {Button} from 'react-bootstrap'


export default class Login extends React.Component {
  submitCurrent = event => {
    event.preventDefault();
    let account = {
      "email": this.refs.email.value,
      "password": this.refs.password.value
    }
    // console.log(account)
    this.props.login(account)
  }

  render(){

    const container = {
      'justify-content': 'center',
      margin: 'auto'
    }

    const loginForm = {
      'margin-top': 100,
      'background-color': 'white',
      padding: 50,
      width: 350,
      height: 300,
      'border-radius': 20
    }

    return (
      <div style={container}>
        <form style={loginForm} onSubmit={this.submitCurrent}>
          <label>Email: <input type="email" name="email" ref="email" /> </label> <br></br>
          <label>Password: <input type="password" name="password" ref="password" /> </label> <br></br>
          <Button variant="success" type="submit">Login</Button>
        </form>
      </div>
    )
  }
}

