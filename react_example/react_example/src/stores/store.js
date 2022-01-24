import React, { useReducer } from 'react';

const initialState = 0;
const CounterContext = React.createContext();

function reducer(state, action) {
  switch (action.type) {
    case 'reset':
      return { count: initialState };
    case 'increment':
      return { count: state.count + 1 };
    case 'decrement':
      return { count: state.count - 1 };
    default:
      return state;
  }
}

const ContextProvider = props => {
  const [state, dispatch] = useReducer(reducer, { count: 0 });
  return (
    <CounterContext.Provider value={{ state, dispatch }}>
      {props.children}
    </CounterContext.Provider>
  );
}

export { reducer, CounterContext, ContextProvider };
