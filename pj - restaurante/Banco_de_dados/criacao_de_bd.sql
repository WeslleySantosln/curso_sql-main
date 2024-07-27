CREATE DATABASE tv_restaurante;

USE tv_restaurante;

CREATE TABLE bordas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(50)
    
);


CREATE TABLE massas (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(50)
);

CREATE TABLE sabores(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100)
);

CREATE TABLE pizzas(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    borda_id INT NOT NULL,
    massa_id INT NOT NULL,
    FOREIGN KEY (borda_id) REFERENCES bordas(id),
    FOREIGN KEY (massa_id) REFERENCES massas(id)
);


CREATE TABLE pizza_sabores(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
	sabor_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY (sabor_id) REFERENCES sabores(id)
);  

  CREATE TABLE statusP(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    tipo VARCHAR(50)
  );
  
  CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    pizza_id INT NOT NULL,
    statusP_id INT NOT NULL,
    FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
    FOREIGN KEY (statusP_id) REFERENCES statusP(id)
 
  );
   




















