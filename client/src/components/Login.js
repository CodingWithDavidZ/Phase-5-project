import React, { useState } from 'react';
import { Link } from 'react-router-dom';

function Login({ loginUrl, setUser, user }) {
  const [input, setInput] = useState({
    username: '',
    password: '',
  });

  const handleLogin = (e) => {
    let attr = e.target.name;
    setInput({ ...input, [attr]: e.target.value });
  };

  async function handleSubmit(e) {
    e.preventDefault();
    const res = await fetch(`${loginUrl}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        username: input.username,
        password: input.password,
      }),
    });
    if (res.ok) {
      const user = await res.json();
      setUser(user);
    } else {
      setInput({
        username: '',
        password: '',
      });
    }
    console.log('res', res);
  }

  console.log('user', user);

  return (
    <div className='login-box'>
      <h1>Login</h1>
      <form id='user-login' autoComplete='off' onSubmit={handleSubmit}>
        <h4 className='login-descriptor'>Username</h4>
        <input
          required
          value={input.username}
          type='text'
          className='login-input-fields'
          id='username-field'
          name='username'
          placeholder='Username'
          onChange={handleLogin}
        />
        <br />
        <h4 className='login-descriptor'>Password</h4>
        <input
          required
          value={input.password}
          type='password'
          className='login-input-fields'
          id='password-field'
          name='password'
          placeholder='Password'
          onChange={handleLogin}
        />
        <br />
        <span className='login-buttons'>
          <button id='sign-in-button' onClick={handleSubmit}>
            Sign In
          </button>
          <button id='sign-up' to='/signup'>
            Sign Up
          </button>
        </span>
      </form>
    </div>
  );
}

export default Login;
