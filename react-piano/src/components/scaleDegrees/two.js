import React from 'react';
import Blackkey from '../../images/blackkey.js';

const Two = (props) => {
  return(
    <span onClick={props.click}>
      <Blackkey/>
    </span>
  )
}

export default Two;
