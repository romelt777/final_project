import React from 'react';

export default class Profile extends React.Component {

  render(){
    console.log("profilepage")
    console.log(this.props)
    return (
      <h2 >{this.props.match.params.id}</h2>
    )
  }
}