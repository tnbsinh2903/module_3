CREATE DATABASE QUANLIBANHANG;
USE quanlibanhang;
CREATE TABLE Customer (
    cID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(50) NOT NULL,
    cAge INT
);
CREATE TABLE Orders (
    oID INT NOT NULL PRIMARY KEY,
    oDate DATE NOT NULL,
    oTotalPrice DOUBLE,
    cID INT,
    FOREIGN KEY (cID)
        REFERENCES Customer (cID)
);
CREATE TABLE Product (
    pID INT NOT NULL PRIMARY KEY,
    pName VARCHAR(50),
    pPrice DOUBLE
);
CREATE TABLE OrderDetail (
    oID INT NOT NULL,
    pID INT NOT NULL,
    odQTY VARCHAR(50),
    FOREIGN KEY (oID) REFERENCES Orders (oID),
    FOREIGN KEY (pID) REFERENCES Product (pID)
);
alter table orderdetail
add primary key (oID,pID);