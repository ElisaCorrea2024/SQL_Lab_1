
CREATE DATABASE CarDealership;

USE CarDealership;

-- Table 1: Cars
CREATE TABLE Cars (
    VIN VARCHAR(50) PRIMARY KEY,
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(20)
);

-- Table 2: Customers
CREATE TABLE Customers (
    CustomerID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    ZipCode VARCHAR(20)
);

-- Table 3: Salespersons
CREATE TABLE Salespersons (
    StaffID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Store VARCHAR(50)
);

-- Table 4: Invoices
CREATE TABLE Invoices (
    InvoiceNumber VARCHAR(50) PRIMARY KEY,
    Date DATE,
    Car VARCHAR(50),
    Customer VARCHAR(50),
    Salesperson VARCHAR(50),
    FOREIGN KEY (Car) REFERENCES Cars(VIN),
    FOREIGN KEY (Customer) REFERENCES Customers(CustomerID),
    FOREIGN KEY (Salesperson) REFERENCES Salespersons(StaffID)
);

-- Insert data into Cars
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color) VALUES
('VIN64028', 'Ford', 'Model X', 2000, 'Gray'),
('VIN99607', 'BMW', 'Model X', 2016, 'White'),
('VIN76344', 'Toyota', 'Focus', 2015, 'White'),
('VIN18557', 'BMW', 'Focus', 2005, 'Black'),
('VIN44620', 'Toyota', 'Camry', 2009, 'Green'),
('VIN81872', 'Chevrolet', 'Accord', 2021, 'Red'),
('VIN71202', 'Ford', 'Model X', 2020, 'Blue'),
('VIN79784', 'Ford', 'Camry', 2005, 'Black'),
('VIN91068', 'Chevrolet', 'Corolla', 2008, 'Black'),
('VIN21102', 'Chevrolet', 'Model X', 2020, 'Black');

-- Insert data into Customers
INSERT INTO Customers (CustomerID, Name, PhoneNumber, Email, Address, City, State, Country, ZipCode) VALUES
('CUST5301', 'Robert Brown', '555-394-4110', 'emilydavis@example.com', '769 Main St', 'Chicago', 'AZ', 'Mexico', '60601'),
('CUST9076', 'John Doe', '555-463-4868', 'robertbrown@example.com', '586 Main St', 'Phoenix', 'CA', 'Mexico', '10001'),
('CUST1994', 'Chris Wilson', '555-904-9654', 'janesmith@example.com', '669 Main St', 'Los Angeles', 'AZ', 'Canada', '10001'),
('CUST2905', 'John Doe', '555-320-4804', 'chriswilson@example.com', '996 Main St', 'Los Angeles', 'AZ', 'Mexico', '10001'),
('CUST2441', 'Jane Smith', '555-300-1579', 'emilydavis@example.com', '529 Main St', 'New York', 'AZ', 'Canada', '10001'),
('CUST6851', 'Robert Brown', '555-261-2928', 'robertbrown@example.com', '640 Main St', 'Chicago', 'NY', 'USA', '90001'),
('CUST5658', 'Robert Brown', '555-440-5457', 'robertbrown@example.com', '322 Main St', 'New York', 'NY', 'Canada', '85001'),
('CUST9993', 'Emily Davis', '555-536-7319', 'janesmith@example.com', '513 Main St', 'Houston', 'CA', 'Mexico', '77001'),
('CUST2078', 'Robert Brown', '555-158-6500', 'emilydavis@example.com', '46 Main St', 'Phoenix', 'NY', 'Mexico', '77001'),
('CUST4267', 'Jane Smith', '555-111-1656', 'johndoe@example.com', '466 Main St', 'New York', 'CA', 'Canada', '77001');

-- Insert data into Salespersons
INSERT INTO Salespersons (StaffID, Name, Store) VALUES
('STAFF343', 'Emily Davis', 'Store A'),
('STAFF915', 'Emily Davis', 'Store C'),
('STAFF209', 'Jane Smith', 'Store C'),
('STAFF431', 'Emily Davis', 'Store C'),
('STAFF956', 'Emily Davis', 'Store A');

-- Insert data into Invoices
INSERT INTO Invoices (InvoiceNumber, Date, Car, Customer, Salesperson) VALUES
('INV3761', '2023-02-28', 'VIN91068', 'CUST5658', 'STAFF431'),
('INV4788', '2023-10-02', 'VIN21102', 'CUST9076', 'STAFF915'),
('INV1221', '2023-10-19', 'VIN79784', 'CUST9076', 'STAFF343'),
('INV3794', '2023-03-18', 'VIN21102', 'CUST2905', 'STAFF915'),
('INV6528', '2023-07-19', 'VIN79784', 'CUST1994', 'STAFF915'),
('INV1148', '2023-11-13', 'VIN71202', 'CUST6851', 'STAFF956'),
('INV4846', '2023-02-08', 'VIN44620', 'CUST1994', 'STAFF915'),
('INV4938', '2023-03-17', 'VIN64028', 'CUST1994', 'STAFF431'),
('INV8387', '2023-06-15', 'VIN79784', 'CUST9076', 'STAFF431'),
('INV7094', '2023-07-11', 'VIN18557', 'CUST9993', 'STAFF915'),
('INV1890', '2023-04-02', 'VIN21102', 'CUST2905', 'STAFF343'),
('INV1535', '2023-07-18', 'VIN91068', 'CUST5658', 'STAFF956'),
('INV9959', '2023-01-03', 'VIN79784', 'CUST5658', 'STAFF431'),
('INV1025', '2023-07-22', 'VIN91068', 'CUST2078', 'STAFF209'),
('INV4782', '2023-07-20', 'VIN81872', 'CUST4267', 'STAFF343');

