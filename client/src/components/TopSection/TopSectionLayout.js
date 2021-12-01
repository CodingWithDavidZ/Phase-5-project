import React from 'react';

import Tickets from './Tickets';

function TopSection({ user }) {
  return (
    <div className='overflow'>
      <Tickets user={user} />
    </div>
  );
}

export default TopSection;
