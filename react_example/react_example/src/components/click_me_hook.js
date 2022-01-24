import React, { useContext } from 'react';
import { CounterContext } from '../stores/store';

export default function ClickMeHook() {
  const { state, dispatch } = useContext(CounterContext);
  return (
    <div>
      Counter Count: {state.count}
      <button onClick={() => dispatch({ type: 'reset' })}>Reset</button>
      <button onClick={() => dispatch({ type: 'increment' })}>+</button>
      <button onClick={() => dispatch({ type: 'decrement' })}>-</button>
    </div>
  );
}
