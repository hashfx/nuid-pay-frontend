// src/components/FrequentContacts.js
import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faUserCircle } from '@fortawesome/free-solid-svg-icons';
import './FrequentContacts.css';

const FrequentContacts = ({ contacts }) => {
    // Assuming contacts is an array of contact objects with properties id, name, and image
    const visibleContacts = contacts.slice(0, 8);
    const renderContacts = () => {
        // Use the first 8 contacts or less if contacts array is smaller

        return visibleContacts.map(contact => (
            <div key={contact.id} className="contact-item">
                <div className="contact-image">
                    {contact.image ? (
                        <img src={contact.image} alt={contact.name} />
                    ) : (
                        <FontAwesomeIcon icon={faUserCircle} className="default-image" />
                    )}
                </div>
                <div className="contact-name">{contact.name}</div>
            </div>
        ));
    };

    return (
        // <div className="frequent-contacts-container">
        //     <div className="title">Frequent Contacts</div>
        //     <div className="contacts">{renderContacts()}</div>
        // </div>
        <div className="frequent-contacts-container">
            <div className="title">Frequent Contacts</div>
            <div className="contacts">
                {visibleContacts.map((contact, index) => (
                    <div key={contact.id} className="contact-item">
                        <div className="contact-image">
                            {contact.image ? (
                                <img src={contact.image} alt={contact.name} />
                            ) : (
                                <FontAwesomeIcon icon={faUserCircle} className="default-image" />
                            )}
                        </div>
                        <div className="contact-name">{contact.name}</div>
                    </div>
                ))}
            </div>
        </div>
        // );
    );
};

export default FrequentContacts;
