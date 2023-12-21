// src/components/FootBar.js
import React from 'react';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faHome, faExchangeAlt, faBalanceScale, faHistory } from '@fortawesome/free-solid-svg-icons';
import './FootBar.css'; // You can style this file accordingly

const FootBar = () => {
    return (
        <div className="foot-bar">
            <Link to="/">
                <div className="foot-icon-container">
                    <FontAwesomeIcon icon={faHome} className="foot-icon"/>
                    <span className="foot-icon-text">Home</span>
                </div>
            </Link>
            <Link to="/transactions">
                <div className="foot-icon-container">
                    <FontAwesomeIcon icon={faExchangeAlt} className="foot-icon" />
                    <span className="foot-icon-text">Transactions</span>
                </div>
            </Link>
            <Link to="/balance">
                <div className="foot-icon-container">
                    <FontAwesomeIcon icon={faBalanceScale} className="foot-icon" />
                    <span className="foot-icon-text">Balance</span>
                </div>
            </Link>
            <Link to="/history">
                <div className="foot-icon-container">
                    <FontAwesomeIcon icon={faHistory} className="foot-icon" />
                    <span className="foot-icon-text">History</span>
                </div>
            </Link>
        </div>
    );
};

export default FootBar;
