import React from 'react';
import Scale from './Scale'

const App = props => {
  return(
    <div className='manual'>
      <Scale />
      <Scale />
      <Scale />
      <Scale />
      <Scale />
      <Scale />
      <div id='authorship'>Made by Stephen Im</div>
    </div>
  );
};

export default App;
