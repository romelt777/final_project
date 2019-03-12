import React from 'react';
import { Link } from 'react-router-dom'
import axios from 'axios'
import '../assets/bootstrap.min.css'
import "../assets/now-ui-dashboard.css"

export default class Profile extends React.Component {

  constructor(){
    super()
    this.state = {
      profile: ""
    }
  }

  // componentDidMount(){
  //   axios.get(`http://localhost:3001/api/v1/users/${this.props.currentUser.id}`, this.props.currentUser)
  //     .then(res => {
  //       this.setState({profile: res.data})
  //     });
  // }

  componentDidMount(){
    axios.get(`http://localhost:3001/api/v1/users/1`)
      .then(res => {
        this.setState({profile: res.data})
      });
  }

  render(){
    let carId = 0;
    const comparisons = [];

    if(this.state.profile && this.props.cars){
      this.state.profile.data1.forEach((c, index) => {
        carId = this.props.cars.length - 1 - this.state.profile.data2[index][0].car_id
        comparisons.push(
        <div
          style={{
            'border-radius': 20,
            'background-color': '#ffffff',
            height: 60,
            margin: 20,
            '-webkit-box-shadow': '0 3px 20px 0px rgba(0, 0, 0, 0.1)',
          }}
          key={c.id}
        >
            <Link to={`/comparisons/${c.id}`}>
              {this.props.cars[carId].year} {this.props.cars[carId].make} {this.props.cars[carId].model}
               <span> VS </span>

            </Link>
        </div>)
      })
    }

    console.log(this.state.profile)
    console.log(this.state.profile.data3)
    let name;
    if(this.state.profile.data3){
      name = `${this.state.profile.data3.first_name} ${this.state.profile.data3.last_name}`
    }


    const compareDiv = {
      width: '75%',
      padding: 0,
      margin: 'auto'
    }

    return (
<div>
<body className="user-profile">
      <div className="panel-header panel-header-sm">
      </div>
      <div className="content">
        <div className="row">
          <div className="col-md-8">
            <div className="card">
              <div className="card-header">
                <h5 className="title">Edit Profile</h5>
              </div>
              <div className="card-body">
                <form>
                  <div className="row">
                    <div className="col-md-5 pr-1">
                      <div className="form-group">
                        <label>Company (disabled)</label>
                        <input type="text" className="form-control" disabled="" placeholder="Company" value="Creative Code Inc." />
                      </div>
                    </div>
                    <div className="col-md-3 px-1">
                      <div className="form-group">
                        <label>Username</label>
                        <input type="text" className="form-control" placeholder="Username" value="michael23" />
                      </div>
                    </div>
                    <div className="col-md-4 pl-1">
                      <div className="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" className="form-control" placeholder="Email" />
                      </div>
                    </div>
                  </div>
                  <div className="row">
                    <div className="col-md-6 pr-1">
                      <div className="form-group">
                        <label>First Name</label>
                        <input type="text" className="form-control" placeholder="Company" value="Mike" />
                      </div>
                    </div>
                    <div className="col-md-6 pl-1">
                      <div className="form-group">
                        <label>Last Name</label>
                        <input type="text" className="form-control" placeholder="Last Name" value="Andrew" />
                      </div>
                    </div>
                  </div>
                  <div className="row">
                    <div className="col-md-12">
                      <div className="form-group">
                        <label>Address</label>
                        <input type="text" className="form-control" placeholder="Home Address" value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09" />
                      </div>
                    </div>
                  </div>
                  <div className="row">
                    <div className="col-md-4 pr-1">
                      <div className="form-group">
                        <label>City</label>
                        <input type="text" className="form-control" placeholder="City" value="Mike" />
                      </div>
                    </div>
                    <div className="col-md-4 px-1">
                      <div className="form-group">
                        <label>Country</label>
                        <input type="text" className="form-control" placeholder="Country" value="Andrew" />
                      </div>
                    </div>
                    <div className="col-md-4 pl-1">
                      <div className="form-group">
                        <label>Postal Code</label>
                        <input type="number" className="form-control" placeholder="ZIP Code" />
                      </div>
                    </div>
                  </div>
                  <div className="row">
                    <div className="col-md-12">
                      <div className="form-group">
                        <label>About Me</label>
                        <textarea rows="4" cols="80" className="form-control" placeholder="Here can be your description" value="Mike">Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</textarea>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div className="col-md-4">
            <div className="card card-user">
              <div className="image">
              </div>
              <div className="card-body">
                <div className="author">
                  <a href="#" >
                    <h5 className="title">{name}</h5>
                  </a>
                  <p className="description" >
                    michael24
                  </p>
                </div>
                <p className="description text-center">
                  "Lamborghini Mercy <br></br>
                   Your chick she so thirsty <br></br>
                   I'm in that two seat Lambo" <br></br>
                </p>
              </div>
              <hr></hr>
              <div className="button-container">
                <button href="#" className="btn btn-neutral btn-icon btn-round btn-lg">
                  <i className="fab fa-facebook-f"></i>
                </button>
                <button href="#" className="btn btn-neutral btn-icon btn-round btn-lg">
                  <i className="fab fa-twitter"></i>
                </button>
                <button href="#" className="btn btn-neutral btn-icon btn-round btn-lg">
                  <i className="fab fa-google-plus-g"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
  </body>
</div>
    )
  }
}