-- Create Users Table
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT,
    lastname TEXT,
    email TEXT,
    birthdate TEXT
);

-- Create Addresses Table
CREATE TABLE addresses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    street_address TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create Telephones Table
CREATE TABLE telephones (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    phone_number TEXT,
    type TEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Create Institutions Table (Banks)
CREATE TABLE institutions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    city TEXT,
    state TEXT,
    domain TEXT
);

-- Create User-Institution Relationship Table
CREATE TABLE user_institutions (
    user_id INTEGER,
    institution_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (institution_id) REFERENCES institutions(id),
    PRIMARY KEY (user_id, institution_id)
);

-- Insert Data into Institutions (Banks)
INSERT INTO institutions (name, city, state, domain) VALUES
('Springfield National Bank', 'Springfield', 'IL', 'springfieldbank.example'),
('Chicago Central Bank', 'Chicago', 'IL', 'chicagocentralbank.example'),
('Illinois State Bank', 'Normal', 'IL', 'ilstatebank.example');

-- Insert Data into Users Table (with invalid emails)
INSERT INTO users (firstname, lastname, email, birthdate) VALUES
('John', 'Doe', 'john.doe@springfieldbank.example', '1980-05-15'),
('Jane', 'Smith', 'jane.smith@chicagocentralbank.example', '1990-07-22'),
('Alice', 'Johnson', 'alice.johnson@springfieldbank.example', '1985-02-10'),
('Bob', 'Brown', 'bob.brown@springfieldbank.example', '1995-11-01'),
('Charlie', 'Davis', 'charlie.davis@chicagocentralbank.example', '1988-09-30'),
('David', 'Martin', 'david.martin@ilstatebank.example', '1992-04-18'),
('Eve', 'Wilson', 'eve.wilson@springfieldbank.example', '1987-12-07'),
('Frank', 'Lee', 'frank.lee@ilstatebank.example', '1991-01-25'),
('Grace', 'Young', 'grace.young@chicagocentralbank.example', '1983-08-12'),
('Hannah', 'Walker', 'hannah.walker@springfieldbank.example', '1994-10-09'),
('Ian', 'Allen', 'ian.allen@chicagocentralbank.example', '1986-02-14'),
('Jack', 'Hernandez', 'jack.hernandez@ilstatebank.example', '1993-06-30'),
('Kathy', 'Lopez', 'kathy.lopez@chicagocentralbank.example', '1990-12-01'),
('Larry', 'Gonzalez', 'larry.gonzalez@springfieldbank.example', '1989-05-17'),
('Mike', 'Perez', 'mike.perez@springfieldbank.example', '1991-08-03');

-- Insert Data into Addresses Table
INSERT INTO addresses (user_id, street_address, city, state, postal_code) VALUES
(1, '123 Main St', 'Springfield', 'IL', '62701'),
(2, '456 Oak St', 'Chicago', 'IL', '60601'),
(3, '789 Pine St', 'Springfield', 'IL', '62702'),
(4, '101 Maple St', 'Springfield', 'IL', '62703'),
(5, '202 Birch St', 'Chicago', 'IL', '60602'),
(6, '303 Cedar St', 'Normal', 'IL', '61761'),
(7, '404 Elm St', 'Springfield', 'IL', '62704'),
(8, '505 Redwood St', 'Normal', 'IL', '61762'),
(9, '606 Cedar St', 'Chicago', 'IL', '60603'),
(10, '707 Pine St', 'Springfield', 'IL', '62705'),
(11, '808 Maple St', 'Chicago', 'IL', '60604'),
(12, '909 Birch St', 'Normal', 'IL', '61763'),
(13, '1010 Oak St', 'Chicago', 'IL', '60605'),
(14, '1111 Elm St', 'Springfield', 'IL', '62706'),
(15, '1212 Redwood St', 'Springfield', 'IL', '62707');

-- Insert Data into Telephones Table
INSERT INTO telephones (user_id, phone_number, type) VALUES
(1, '555-123-4567', 'mobile'),
(2, '555-234-5678', 'home'),
(3, '555-345-6789', 'work'),
(4, '555-456-7890', 'mobile'),
(5, '555-567-8901', 'home'),
(6, '555-678-9012', 'work'),
(7, '555-789-0123', 'mobile'),
(8, '555-890-1234', 'home'),
(9, '555-901-2345', 'work'),
(10, '555-012-3456', 'mobile'),
(11, '555-123-4567', 'home'),
(12, '555-234-5678', 'work'),
(13, '555-345-6789', 'mobile'),
(14, '555-456-7890', 'work'),
(15, '555-567-8901', 'mobile');

-- Insert Data into User-Institution Relationship Table
INSERT INTO user_institutions (user_id, institution_id) VALUES
(1, 1), (1, 2),
(2, 2),
(3, 1), (3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 3),
(9, 2),
(10, 1),
(11, 2),
(12, 3);