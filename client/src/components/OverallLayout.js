import React from 'react';

import LeftBar from './LeftBar/LeftBarLayout';
import TopSection from './TopSection/TopSectionLayout';
import BottomSection from './BottomSection/BottomSectionLayout';

function Layout({ user }) {
  return (
    <div className='container'>
      <div className='left-bar'>
        <LeftBar user={user} />
      </div>
      <div className='top-section'>
        <TopSection user={user} />
      </div>
      <div className='bottom-section'>
        <BottomSection />
      </div>
    </div>
  );
}

export default Layout;
