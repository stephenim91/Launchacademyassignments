import React from 'react';

import One from './scaleDegrees/one.js'
import Two from './scaleDegrees/two.js'
import Three from './scaleDegrees/three.js'
import Four from './scaleDegrees/four.js'
import Five from './scaleDegrees/five.js'
import Six from './scaleDegrees/six.js'
import Seven from './scaleDegrees/seven.js'
import Eight from './scaleDegrees/eight.js'
import Nine from './scaleDegrees/nine.js'
import Ten from './scaleDegrees/ten.js'
import Eleven from './scaleDegrees/eleven.js'
import Twelve from './scaleDegrees/twelve.js'


const Scale = props => {
  let testgreen = () => {alert('green')}
  let testblue = () => {alert('blue')}
  let testred = () => {alert('red')}
  let testblack = () => {alert('black')}

  return(
    <span>
        <One
          click={testgreen}/>
        <Two
          click={testblue}/>
        <Three
          click={testred}/>
        <Four />
        <Five />
        <Six />
        <Seven />
        <Eight/>
        <Nine />
        <Ten/>
        <Eleven />
        <Twelve/>
      </span>

  );
};

export default Scale;
