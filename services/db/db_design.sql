CREATE TABLE herb (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE leaf (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE cucumber_capsicum (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE cabbiage_califlower (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE potato_onion_tomato (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE root_vegitables (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE beans_brinjal (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "created_at" timestamp
);

CREATE TABLE activity (
  "id" SERIAL PRIMARY KEY,
  "full_name" varchar(50),
  "price" INT,
  "created_at" timestamp
);

CREATE TABLE vegitables (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "full_name" varchar(50),
  "herbs_id" INTEGER REFERENCES herb(id),
  "leafs_id" INTEGER REFERENCES leaf(id),
  "Cucumber_Capsicums_id" INTEGER REFERENCES cucumber_capsicum(id),
  "Cabbiage_Califlowers_id" INTEGER REFERENCES cabbiage_califlower(id),
  "Potato_Onion_Tomatos_id" INTEGER REFERENCES potato_onion_tomato(id),
  "Root_Vegitables_id" INTEGER REFERENCES root_vegitables(id),
  "Beans_Brinjals_id" INTEGER REFERENCES beans_brinjal(id),
  "created_at" timestamp
);
