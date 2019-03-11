import React from 'react';
import { Link } from 'react-router-dom'
import axios from 'axios'

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
  //       console.log(res.data)
  //       this.setState({profile: res.data})
  //       console.log(this.state.profile)
  //     });
  // }


  componentDidMount(){
    axios.get(`http://localhost:3001/api/v1/users/1`)
      .then(res => {
        console.log(res.data)
        this.setState({profile: res.data})
        console.log(this.state.profile)
      });
  }

  render(){
    console.log("profilepage")
    console.log(this.state.profile)
    const comparisons = [];
    if(this.state.profile){
      this.state.profile.data1.forEach((c) => {
        comparisons.push(<div key={c.id} ><Link to={`/comparisons/${c.id}`}>Comparison{c.id}</Link><br></br></div>)
      })
    }

    return (
      <div>
        <h2 >{this.props.match.params.id}</h2>
        <h2 >{this.props.currentUser.first_name} {this.props.currentUser.last_name}</h2>
        {comparisons}
      </div>
    )
  }
}