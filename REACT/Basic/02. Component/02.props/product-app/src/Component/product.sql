-- Active: 1717746144890@@127.0.0.1@3306@study
DROP TABLE IF EXISTS product;
CREATE TABLE product (
    no              INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id              CHAR(36) NOT NULL DEFAULT (UUID()),
    name            VARCHAR(100) NOT NULL,
    price           INT NOT NULL DEFAULT 0,
    img             TEXT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);