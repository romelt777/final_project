import React  from 'react';
import '../NavBar.scss';
import { Link } from 'react-router-dom'
import Logo from '../images/logo.png';

export default class NavBar extends React.Component {

  render() {
    if (localStorage.length === 0) {
    return (
     <div className="container">
      <nav id="nav-bar">
        <img id="logo" src={Logo}></img>
        <div id="content">
          <ul id="nav-content">
            <Link id="nav-content-item" to="/">Home </Link>
            <Link id="nav-content-item" to="/about">About </Link>
            <Link id="nav-content-item" to="/login">Login </Link>
            <Link id="nav-content-item" to="/register">Register </Link>
          </ul>
        </div>
      </nav>
    </div>

    );
    } else {
      return (
        <div className="container">
          <nav id="nav-bar">
            <img id="logo" src={Logo}></img>
            <div id="content">
              <ul id="nav-content">
                <Link id="nav-content-item" to="/">Home </Link>
                <Link id="nav-content-item" to="/about">About </Link>
                <Link id="nav-content-item" onClick={this.props.getProfile} to={`/users/${this.props.user.id}`}> {this.props.user.first_name} {this.props.user.last_name} </Link>
                <Link id="nav-content-item" onClick={this.props.logout} to="/">Logout </Link>
              </ul>
            </div>
          </nav>
        </div>
      )
    }
  }
}


