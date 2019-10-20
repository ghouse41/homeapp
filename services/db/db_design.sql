CREATE TABLE herb (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE leaf (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE cucumber_capsicum (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE cabbiage_califlower (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE potato_onion_tomato (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE root_vegitables (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE beans_brinjal (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "category_id" INTEGER REFERENCES category(id),
  "created_at" timestamp
);

CREATE TABLE activity (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "price" INT,
  "created_at" timestamp
);

CREATE TABLE category (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);