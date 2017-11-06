import React, { Component } from 'react'

class App extends Component {
  render() {
    return (
      <div className="app">
        <div className="app-header">
          <img src="img/food.svg" className="app-logo" alt="logo" />
          <h2>Welcome to Kai Deals</h2>
        </div>
        <p className="app-intro">
          This is the Docker-less edition. To get started, edit <code>src/components/Intro.jsx</code> and watch the magic happen here.
        </p>
      </div>
    );
  }
}

export default App;
