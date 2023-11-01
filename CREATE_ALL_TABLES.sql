-- Create Vivero table
CREATE TABLE Vivero (
    vivero_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location POINT NOT NULL
);

-- Create Produt table
CREATE TABLE Product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    product_types VARCHAR(255) [] NOT NULL
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
    zone_id SERIAL PRIMARY KEY,
    vivero_id INT REFERENCES Vivero(vivero_id) ON DELETE CASCADE,
    location POINT NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    employee_id SERIAL PRIMARY KEY,
    zone_id INT REFERENCES Zone(zone_id) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create Client table
CREATE TABLE Client (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name_1 VARCHAR(255) NOT NULL,
    last_name_2 VARCHAR(255),
    email VARCHAR(255) CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    )
);

-- Create TenerifePlus table
CREATE TABLE TenerifePlus (
    plus_client_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name_1 VARCHAR(255) NOT NULL,
    last_name_2 VARCHAR(255),
    email VARCHAR(255) CHECK (
        email ~* '^[A-Za-z0-9._+%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'
    ),
    registration_date DATE NOT NULL CHECK (
        registration_date <= CURRENT_DATE
    )
);

-- Create Order table
CREATE TABLE Orders (
    id_order SERIAL PRIMARY KEY,
    employee_id INT REFERENCES Employee(employee_id) ON DELETE CASCADE,
    client_id INT REFERENCES Client(client_id) ON DELETE CASCADE,
    plus_client_id INT REFERENCES TenerifePlus(plus_client_id) ON DELETE CASCADE,
    product_id INT REFERENCES Product(product_id) ON DELETE CASCADE,
    quantity INT CHECK (quantity > 0),
    order_date DATE NOT NULL,
    CHECK (
        (
            client_id IS NOT NULL
            AND plus_client_id IS NULL
        )
        OR (
            client_id IS NULL
            AND plus_client_id IS NOT NULL
        )
    )
);

-- Create Historical table
CREATE TABLE Historical (
    id_historical SERIAL PRIMARY KEY,
    employee_id INT REFERENCES Employee(employee_id) ON DELETE CASCADE,
    zone_id INT REFERENCES Zone(zone_id) ON DELETE CASCADE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CHECK (start_date <= end_date)
);