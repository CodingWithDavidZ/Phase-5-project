import React from 'react';

function Greeting({ user }) {
  return (
    <div>
      You are logged in:
      <br />
      {user.first_name} {user.last_name}
    </div>
  );
}

export default Greeting;
