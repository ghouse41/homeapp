CREATE TABLE category (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE herb (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE leaf (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE cucumber_capsicum (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE cabbiage_califlower (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE potato_onion_tomato (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE root_vegitables (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE beans_brinjal (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE orders (
  "id" SERIAL PRIMARY KEY,
  "vegitable_name" varchar(50),
  "price" INT,
  "vegitable_id" INT,
  "vegitable_type" varchar(50),
  "vegitable_category" varchar(50),
  "status" INT,
  "created_at" timestamp,
  UNIQUE(id)
);

CREATE TABLE orders_cancelled (
  "id" SERIAL PRIMARY KEY,
  "vegitable_name" varchar(50),
  "price" INT,
  "vegitable_id" INT,
  "vegitable_type" varchar(50),
  "vegitable_category" varchar(50),
  "status" INT,
  "created_at" timestamp,
  UNIQUE(id)
);
