INSERT INTO User (id, first_name, last_name, email, password_hash, phone_number, created_at)
VALUES
    (1, 'Alice', 'Smith', 'alicesmith2@gmail.com', 'hashed_password_1', '0772259975', NOW()),
    (2, 'Bob', 'Johnson', 'bjja@gmail.com', 'hashed_password_2', '0772259976', NOW()),
    (3, 'Charlie', 'Brown', 'ccbreezy@gmail.com', 'hashed_password_3', '0772259977', NOW()),
    (4, 'David', 'Williams', 'dvdwilliams@gmail.com', 'hashed_password_4', '0772259978', NOW());

INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
    (1, 1, 'Cozy Cottage', 'A cozy cottage in the countryside.', 'Countryside', 100.00, NOW(), NOW()),
    (2, 2, 'Modern Apartment', 'A modern apartment in the city center.', 'City Center', 150.00, NOW(), NOW()),
    (3, 3, 'Beach House', 'A beautiful beach house with ocean views.', 'Beachfront', 200.00, NOW(), NOW()),
    (4, 4, 'Mountain Cabin', 'A rustic cabin in the mountains.', 'Mountains', 120.00, NOW(), NOW());

INSERT INTO Booking (booking_id, user_id, property_id, start_date, end_date, total_price, status, created_at)
VALUES
    (1, 1, 1, '2023-10-01', '2023-10-05', 400.00, 'confirmed', NOW()),
    (2, 2, 2, '2023-10-10', '2023-10-15', 750.00, 'pending', NOW()),
    (3, 3, 3, '2023-10-20', '2023-10-25', 1000.00, 'cancelled', NOW()),
    (4, 4, 4, '2023-11-01', '2023-11-05', 600.00, 'confirmed', NOW());

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    (1, 1, 400.00, NOW(), 'credit_card'),
    (2, 2, 750.00, NOW(), 'paypal'),
    (3, 3, 1000.00, NOW(), 'stripe'),
    (4, 4, 600.00, NOW(), 'credit_card');

INSERT INTO Review (review_id, user_id, property_id, rating, comment, created_at)
VALUES
    (1, 1, 1, 5, 'Absolutely loved this cozy cottage!', NOW()),
    (2, 2, 2, 4, 'Great location and modern amenities.', NOW()),
    (3, 3, 3, 3, 'The beach house was nice but could use some updates.', NOW()),
    (4, 4, 4, 5, 'Perfect mountain getaway!', NOW());

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    (1, 1, 2, 'Hi Bob, I loved your apartment! Can I book it for next weekend?', NOW()),
    (2, 2, 1, 'Hi Alice, thank you for your interest! Yes, it is available.', NOW()),
    (3, 3, 4, 'David, your cabin looks amazing! Can I get more details?', NOW()),
    (4, 4, 3, 'Charlie, I enjoyed my stay at your beach house!', NOW());