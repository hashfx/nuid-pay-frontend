// src/components/FootBar.js
import React from 'react';
import { Link } from 'react-router-dom';
import './FootBar.css'; // You can style this file accordingly

const FootBar = () => {
    return (
        <div className="foot-bar">
            <Link to="/">
                <div className="icon">Home</div>
            </Link>
            <Link to="/transactions">
                <div className="icon">Transactions</div>
            </Link>
            <Link to="/balance">
                <div className="icon">Balance</div>
            </Link>
            <Link to="/history">
                <div className="icon">History</div>
            </Link>
        </div>
    );
};

export default FootBar;
