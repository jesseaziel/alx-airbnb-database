# ALX Airbnb Database

This project contains the database schema for the ALX Airbnb clone. The schema is defined in `schema.sql` and implements the core features required for the application.

## Features

- **Users Table**: Stores user information such as unique ID, email, password, first and last names.
- **Property Table**: Lists available listings of properties.
- **Booking Table**: Stores booking data such as starting date and end date.
- **Payment Table**: Stores payment data.
- **Reviews Table**: Allows users to leave reviews for places, including text and rating.
- **Message Table**: Stores messaging data in the database.
- **Foreign Keys & Constraints**: Ensures data integrity between related tables (e.g., cities reference states).

## Usage

- Run `schema.sql` in your MySQL database to create all tables and relationships.
- The schema supports all basic operations needed for an Airbnb-like platform, including user management, listing places, and reviews.

## Notes

- All tables use appropriate data types and constraints.
- Indexes and primary keys are defined for efficient querying.

For more details, see the `schema.sql` file.