import React, { Component } from 'react';
import { BrowserRouter as  Router, Route, Switch } from 'react-router-dom';
import NotFound from './containers/notfound';
import Home from './containers/home';

class App extends Component {
  render() {
    return (
      <Router>
        <Switch>
          <Route exact path='/' component={Home} />
          <Route component={NotFound} />
        </Switch>
      </Router>
    );
  }
}

export default App;
