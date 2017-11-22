import React, { Component } from 'react'

import Header from './Header.jsx';
import DealsContainer from './deals/deal_container.jsx';
import Footer from './Footer.jsx';
import Register from './deals/Register';

class App extends Component {
  render() {
    return (
      <div className="app">
        <Header />
        <DealsContainer />
        <Footer />

      </div>
    );
  }
}

export default App;
