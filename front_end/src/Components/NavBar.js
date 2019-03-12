import React  from 'react';
import '../NavBar.scss';
import Bird from '../images/bird.png';
import { Link } from 'react-router-dom'


export default class NavBar extends React.Component {

  render() {
    if (localStorage.length === 0) {
    return (
     <div className="container">
      <nav id="nav-bar">
        <img id="logo" src={Bird} alt=""></img>
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
            <img id="logo" src={Bird} alt=""></img>
            <div id="content">
              <ul id="nav-content">
                <Link id="nav-content-item" to="/">Home </Link>
                <Link id="nav-content-item" to="/about">About </Link>
                <Link id="nav-content-item" onClick={this.props.getProfile} to={`/users/${this.props.user.id}`}>909 {this.props.user.first_name} {this.props.user.last_name} </Link>
                <li id="nav-content-item"><a  onClick={this.props.logout} href="/">Logout</a></li>
              </ul>
            </div>
          </nav>
        </div>
      )
    }
  }
}


