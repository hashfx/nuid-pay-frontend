// src/components/MainBody.js
import React from 'react';
import './MainBody.css'; // You can style this file accordingly
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faWallet, faAddressBook, faQrcode, faBuildingColumns } from '@fortawesome/free-solid-svg-icons';

const MainBody = () => {
    return (
        <div className="main-body">
            {/* Containers */}
            <div className="container">
                {/* <img src="image1.jpg" alt="image1" /> */}
                <FontAwesomeIcon icon={faAddressBook} className="icon" />
                <p>To Contact</p>
            </div>
            <div className="container">
            <FontAwesomeIcon icon={faBuildingColumns} className="icon" />
                <p>To Hawala</p>
            </div>
            <div className="container">
            <FontAwesomeIcon icon={faQrcode} className="icon" />
                <p>Scan QR</p>
            </div>
            <div className="container">
            <FontAwesomeIcon icon={faWallet} className="icon" />
                <p>To Wallet</p>
            </div>

            {/* Horizontal Slider */}
            <div className="slider">
                {/* Slick Slider implementation */}
            </div>
        </div>
    );
};

export default MainBody;
