USE projetobddw;

-------------------------------------------------
-- Tabela gender (pai)
-------------------------------------------------
CREATE TABLE gender (
    Gender_ID INT PRIMARY KEY,
    Gender VARCHAR(50) NOT NULL
);

-------------------------------------------------
-- Tabela faixaetaria (pai)
-------------------------------------------------
CREATE TABLE faixaetaria (
    AgeRange_ID INT PRIMARY KEY,
    AgeRange VARCHAR(50) NOT NULL
);

-------------------------------------------------
-- Tabela customer (filha de gender e faixaetaria)
-- RELACIONAMENTO IDENTIFYING (linha contínua!)
-------------------------------------------------
CREATE TABLE customer (
    Customer_ID INT PRIMARY KEY,

    gender_Gender_ID INT NOT NULL,
    faixaetaria_AgeRange_ID INT NOT NULL,

    FOREIGN KEY (gender_Gender_ID)
        REFERENCES gender(Gender_ID),

    FOREIGN KEY (faixaetaria_AgeRange_ID)
        REFERENCES faixaetaria(AgeRange_ID)
);

-------------------------------------------------
-- Tabela productcategory (pai)
-------------------------------------------------
CREATE TABLE productcategory (
    ProductCategory_ID INT PRIMARY KEY,
    ProductCategory VARCHAR(100) NOT NULL
);

-------------------------------------------------
-- Tabela transaction (filha de customer)
-- RELACIONAMENTO IDENTIFYING
-------------------------------------------------
CREATE TABLE transaction (
    Transaction_ID INT PRIMARY KEY,
    customer_Customer_ID INT NOT NULL,
    Date DATE NOT NULL,
    Quantity INT NOT NULL,
    Price_per_unit DECIMAL(10,2) NOT NULL,
    Total_amount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (customer_Customer_ID)
        REFERENCES customer(Customer_ID)
);

-------------------------------------------------
-- Tabela transaction_product_category (filha de transaction e productcategory)
-- RELACIONAMENTO IDENTIFYING + PK COMPOSTA
-------------------------------------------------
CREATE TABLE transaction_product_category (
    productcategory_ProductCategory_ID INT NOT NULL,
    transaction_Transaction_ID INT NOT NULL,

    Quantity INT NOT NULL,
    Total_amount DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (productcategory_ProductCategory_ID, transaction_Transaction_ID),

    FOREIGN KEY (productcategory_ProductCategory_ID)
        REFERENCES productcategory(ProductCategory_ID),

    FOREIGN KEY (transaction_Transaction_ID)
        REFERENCES transaction(Transaction_ID)
);