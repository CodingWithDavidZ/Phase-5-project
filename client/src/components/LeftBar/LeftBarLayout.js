import React from 'react';
import Greeting from './Greeting';

function LeftBar({ user }) {
  console.log('Greeting user', user);
  console.log("User's first name", user.first_name);
  return (
    <div>
      <Greeting user={user} />
    </div>
  );
}

export default LeftBar;
