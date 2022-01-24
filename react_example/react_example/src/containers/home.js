import React from 'react';
// import { BrowserRouter as  Router, Route, Switch, Link } from 'react-router-dom';
// import ClickCounter from '../components/click_counter';
// import ControlPanel from '../components/control_panel';
// import ClickMe from '../components/click_me';
import BasicTabs from '../components/basic_tabs';
import { ContextProvider } from '../stores/store';

export default function Home() {
  return (
    // <Router>
    //   <div>
    //     <nav>
    //       <ul>
    //         <li>
    //           <Link to='/click_counter'>1</Link>
    //         </li>
    //         <li>
    //           <Link to='/control_panel'>2</Link>
    //         </li>
    //         <li>
    //           <Link to='/click_me'>3</Link>
    //         </li>
    //       </ul>
    //     </nav>

    //     {/* A <Switch> looks through its children <Route>s and
    //         renders the first one that matches the current URL. */}
    //     <Switch>
    //       <Route excat path='/click_counter' component={ClickCounter} />
    //       <Route excat path='/control_panel' component={ControlPanel} />
    //       <Route excat path='/click_me' component={ClickMe} />
    //     </Switch>
    //   </div>
    // </Router>
    <ContextProvider>
      <BasicTabs />
    </ContextProvider>
  );
}
