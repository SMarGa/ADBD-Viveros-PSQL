-- Create Vivero table
CREATE TABLE Vivero (
    vivero_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);

-- Create Produt table
CREATE TABLE Product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    product_types VARCHAR(255) []
);

-- Create relation table between Vivero and Product
CREATE TABLE Product_Vivero (
    product_id INTEGER REFERENCES Product(product_id) ON DELETE CASCADE,
    vivero_id INTEGER REFERENCES Vivero(vivero_id) ON DELETE CASCADE,
    stock INT CHECK (stock >= 0),
    PRIMARY KEY (product_id, vivero_id)
);

-- Create Zone table
CREATE TABLE Zone (
    zone_id INT PRIMARY KEY,
    vivero_id INT,
    location VARCHAR(255) NOT NULL,
    FOREIGN KEY (vivero_id) REFERENCES Vivero(vivero_id)
);

-- Create Employee table
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    zone_id INT,
    name VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (zone_id) REFERENCES Zone(zone_id)
);

-- Create Client table
CREATE TABLE Client (
    client_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name_1 VARCHAR(255) NOT NULL,
    last_name_2 VARCHAR(255),
    email VARCHAR(255) CHECK (
        email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,4}$'
    )
);

-- Create TenerifePlus table
CREATE TABLE TenerifePlus (
    plus_client_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name_1 VARCHAR(255) NOT NULL,
    last_name_2 VARCHAR(255),
    email VARCHAR(255) CHECK (
        email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\\.[A-Z|a-z]{2,4}$'
    ),
    registration_date DATE NOT NULL
);

-- Create Order table
CREATE TABLE Orders (
    id_order INT PRIMARY KEY,
    employee_id INT,
    client_id INT,
    plus_client_id INT,
    product_id INT,
    quantity INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (client_id) REFERENCES Client(client_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (plus_client_id) REFERENCES TenerifePlus(plus_client_id)
);

-- Create Historical table
CREATE TABLE Historical (
    id_historical INT PRIMARY KEY,
    employee_id INT,
    zone_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (zone_id) REFERENCES Zone(zone_id)
);