import React from 'react';

import UsersTickets from './UsersTickets';

function TopSection({ user }) {
  return (
    <div className='overflow'>
      <UsersTickets user={user} />
    </div>
  );
}

export default TopSection;
