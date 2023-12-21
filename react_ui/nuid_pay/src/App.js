// src/App.js
import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import AppBar from './components/AppBar';
import MainBody from './components/MainBody';
import FootBar from './components/FootBar';

const App = () => {
  return (
    <Router>
      <div className="app">
        <AppBar />
        <Routes>
          <Route path="/" element={<MainBody />} />
          {/* Add more routes as needed */}
        </Routes>
        <FootBar />
      </div>
    </Router>
  );
};

export default App;
