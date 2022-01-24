import React, { useState } from 'react';
import PropTypes from 'prop-types';

function Counter(props) {
  const buttonStyle = {
    margin: '10px'
  };

  const caption = props.caption;

  const [count, setCount] = useState(props.initValue);

  const increment = () => {
    updateCount(true);
  }

  const decrement = () => {
    updateCount(false);
  }
  
  const updateCount = (isIncrease) => {
    const previousValue = count;
    const newValue = isIncrease ? count + 1 : count - 1;

    setCount(newValue);
    props.onUpdate(newValue, previousValue);
  };

  return (
    <div>
      <button style={buttonStyle} onClick={increment}>+</button>
      <button style={buttonStyle} onClick={decrement}>-</button>
      <span>{caption} count: {count}</span>
    </div>
  );
}

Counter.propTypes = {
  caption: PropTypes.string.isRequired,
  initValue: PropTypes.number,
  onUpdate: PropTypes.func
};

Counter.defaultProps = {
  initValue: 0,
  onUpdate: f => f // do nothing
};

export default Counter;
