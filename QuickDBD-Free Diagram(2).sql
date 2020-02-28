-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/D49ehI
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Wine_Info" (
    "winery" varchar(30)   NOT NULL,
    "title" varchar(30)   NOT NULL,
    "price" varchar(10)   NOT NULL,
    "points" int   NOT NULL,
    "variety" varchar(30)   NOT NULL,
    "description" varchar(500)   NOT NULL,
    CONSTRAINT "pk_Wine_Info" PRIMARY KEY (
        "winery"
     )
);

CREATE TABLE "Wine_Tourism" (
    "winery" varchar(30)   NOT NULL,
    "province" varchar(30)   NOT NULL,
    "variety" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Wine_Tourism" PRIMARY KEY (
        "winery"
     )
);

CREATE TABLE "Winery_Location" (
    "Winery" varchar(30)   NOT NULL,
    "Address" varchar(30)   NOT NULL,
    "City" varchar(30)   NOT NULL,
    "Website" varchar(30)   NOT NULL,
    "Phone" varchar(15)   NOT NULL,
    CONSTRAINT "pk_Winery_Location" PRIMARY KEY (
        "Winery"
     )
);

ALTER TABLE "Wine_Info" ADD CONSTRAINT "fk_Wine_Info_winery" FOREIGN KEY("winery")
REFERENCES "Wine_Tourism" ("winery");

ALTER TABLE "Wine_Tourism" ADD CONSTRAINT "fk_Wine_Tourism_winery" FOREIGN KEY("winery")
REFERENCES "Winery_Location" ("Winery");

ALTER TABLE "Wine_Tourism" ADD CONSTRAINT "fk_Wine_Tourism_variety" FOREIGN KEY("variety")
REFERENCES "Wine_Info" ("variety");

