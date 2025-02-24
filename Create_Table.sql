CREATE TABLE production.trainer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(25),
    poke_id INT NOT NULL,
    FOREIGN KEY (poke_id)
        REFERENCES production.pokemon (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
