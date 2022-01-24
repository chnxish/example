import React, { useState } from 'react';
import Counter from './counter';

function ControlPanel() {
  const style = {
    margin: '20px'
  };

  const initValues = [0, 10, 20];

  const [sum, setSum] = useState(initValues.reduce((a, b) => a+b, 0))

  const onCounterUpdate = (newValue, previousValue) => {
    const valueChange = newValue - previousValue;
    setSum(sum => sum + valueChange);
  }


  return (
    <div style={style}>
      <Counter onUpdate={onCounterUpdate} caption='First' />
      <Counter onUpdate={onCounterUpdate} caption='First' initValue={initValues[1]} />
      <Counter onUpdate={onCounterUpdate} caption='First' initValue={initValues[2]} />
      <hr/>
      <div>Total Count: {sum}</div>
    </div>
  );
}

export default ControlPanel;
