// src/components/AppBar.js
import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faQrcode, faBell } from '@fortawesome/free-solid-svg-icons';
import './AppBar.css'; // You can style this file accordingly

const AppBar = () => {
  return (
    <div className="app-bar">
      <div className="left-icons">
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/MetaMask_Fox.svg/2048px-MetaMask_Fox.svg.png"
          alt="user-profile"
        />
      </div>
      <div className="right-icons">
        <FontAwesomeIcon icon={faQrcode} className="icon" />
        <FontAwesomeIcon icon={faBell} className="icon" />
      </div>
    </div>
  );
};

export default AppBar;
