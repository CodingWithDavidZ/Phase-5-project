import './App.css';
import {
  BrowserRouter as Router,
  Route,
  Routes,
  Switch,
} from 'react-router-dom';
import React, { useState, useEffect } from 'react';

import OverallLayout from './components/OverallLayout.js';
import Login from './components/Login.js';

// URLs used in this project
const memberUrl = '/api/me';
const loginUrl = '/api/login';
const signUpUrl = '/api/signup';
const logOutUrl = '/api/logout';

function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch(`${memberUrl}`).then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  console.log('user', user);

  return (
    <div className='App'>
      {user ? (
        <OverallLayout user={user} />
      ) : (
        <Login loginUrl={loginUrl} setUser={setUser} user={user} />
      )}
    </div>
  );
}

export default App;
