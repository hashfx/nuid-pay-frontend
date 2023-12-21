// src/components/MainBody.js
import React from 'react';
import './MainBody.css'; // You can style this file accordingly

const MainBody = () => {
    return (
        <div className="main-body">
            {/* Containers */}
            <div className="container">
                <img src="image1.jpg" alt="image1" />
                <p>Text 1</p>
            </div>
            <div className="container">
                <img src="image1.jpg" alt="image1" />
                <p>Text 1</p>
            </div>
            <div className="container">
                <img src="image1.jpg" alt="image1" />
                <p>Text 1</p>
            </div>
            <div className="container">
                <img src="image1.jpg" alt="image1" />
                <p>Text 1</p>
            </div>
            {/* Repeat for 3 more containers */}

            {/* Horizontal Slider */}
            <div className="slider">
                {/* Slick Slider implementation */}
            </div>
        </div>
    );
};

export default MainBody;
