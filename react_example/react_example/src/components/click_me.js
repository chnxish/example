import React, { useState, useEffect } from 'react';

export default function ClickMe() {
  const [count, setCount] = useState(0);

  // side effect function
  useEffect(() => {
    document.title = `You clicked ${count} times`;
    // clean up
    return () => {
      document.title = 'React App';
    };
  })

  return (
    <div>
      <p>You clicked {count} times</p>
      <button onClick={() => setCount(count+ 1 )}>
        Click me
      </button>
    </div>
  );
}
