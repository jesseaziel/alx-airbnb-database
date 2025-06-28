CREATE TABLE User (
    user_id PRIMARY KEY,
    first_name VARCHAR(128) NOT NULL,
    last_name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    password_hash VARCHAR(128) NOT NULL,
    phone_number VARCHAR(15) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property (
    property_id PRIMARY KEY UUID INDEX,
    host_id FOREIGN KEY REFERENCES User(user_id),
    name VARCHAR(128) NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR(128) NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Booking (
    booking_id PRIMARY KEY UUID INDEX,
    user_id FOREIGN KEY REFERENCES User(user_id),
    property_id FOREIGN KEY REFERENCES Property(property_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'cancelled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Payment (
    payment_id PRIMARY KEY UUID INDEX,
    booking_id FOREIGN KEY REFERENCES Booking(booking_id),
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL
);

CREATE TABLE Review (
    review_id PRIMARY KEY UUID INDEX,
    user_id FOREIGN KEY REFERENCES User(user_id),
    property_id FOREIGN KEY REFERENCES Property(property_id),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Message (
    message_id PRIMARY KEY UUID INDEX,
    sender_id FOREIGN KEY REFERENCES User(user_id),
    recipient_id FOREIGN KEY REFERENCES User(user_id),
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);