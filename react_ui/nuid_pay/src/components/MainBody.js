// src/components/MainBody.js
import React from 'react';
import './MainBody.css'; // You can style this file accordingly
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faWallet, faAddressBook, faQrcode, faBuildingColumns, faArrowRight } from '@fortawesome/free-solid-svg-icons';
import FrequentContacts from './FrequentContacts';

const MainBody = () => {
    const contacts = [
        { id: 1, name: 'Kenichi', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        { id: 2, name: 'Nobita', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        { id: 3, name: 'Hattori', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        { id: 4, name: 'Indumati', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        // { id: 5, name: 'Nobita', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        // { id: 7, name: 'Nobita', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        // { id: 7, name: 'Nobita', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        // { id: 8, name: 'Nobita', image: 'https://as2.ftcdn.net/v2/jpg/02/29/75/83/1000_F_229758328_7x8jwCwjtBMmC6rgFzLFhZoEpLobB6L8.jpg' },
        // Add more contact objects as needed
    ];
    return (
        <div className="main-body">
            {/* Containers */}
            <div className='main-transfer'>
                <div className="transfer-container">
                    {/* <img src="image1.jpg" alt="image1" /> */}
                    <FontAwesomeIcon icon={faAddressBook} className="icon" />
                    <p>To Contact</p>
                </div>
                <div className="transfer-container">
                    <FontAwesomeIcon icon={faBuildingColumns} className="icon" />
                    <p>To Hawala</p>
                </div>
                <div className="transfer-container">
                    <FontAwesomeIcon icon={faQrcode} className="icon" />
                    <p>Scan QR</p>
                </div>
                <div className="transfer-container">
                    <FontAwesomeIcon icon={faWallet} className="icon" />
                    <p>To Wallet</p>
                </div>
            </div>

            <div className="clickable-container">
                <div className="container-part">
                    <strong>My NuID: </strong>
                </div>
                <div className="container-part dynamic-string">
                    {/* Assuming you have a dynamic string, replace 'dynamicString' with your actual data */}
                    6942069420@apt
                </div>
                <div className="container-part-arrow">
                    <FontAwesomeIcon icon={faArrowRight} className="icon" />
                </div>
            </div>


            {/* Frequent Contacts */}
            <div className="frequent-contacts">
                <FrequentContacts contacts={contacts} />
            </div>

            {/* Horizontal Slider */}
            <div className="slider">
                {/* Slick Slider implementation */}
            </div>
        </div>
    );
};

export default MainBody;
