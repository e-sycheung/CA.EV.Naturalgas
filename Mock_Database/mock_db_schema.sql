-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Week 1 mock database schema using weather data from Kaggle (https://www.kaggle.com/muhammadmaaz2594/minute-weather-dataset-from-weather-station)
-- "Real" project data from California IOS OASIS API not available as of 3/13/22

-- Table for entire desired dataset; use 2021 dataset from OASIS API
-- Use timestamp column in date format as primary/foreign keys with one-to-many relationship for all tables
CREATE TABLE "Minute_Weather" (
    "hpwren_timestamp" date   NOT NULL,
    "air_pressure" float   NOT NULL,
    "air_temp" float   NOT NULL,
    "avg_wind_direction" int   NOT NULL,
    "avg_wind_speed" float   NOT NULL,
    "max_wind_direction" int   NOT NULL,
    "max_wind_speed" float   NOT NULL,
    "min_wind_direction" int   NOT NULL,
    "min_wind_speed" float   NOT NULL,
    "rain_accumulation" int   NOT NULL,
    "rain_duration" int   NOT NULL,
    "relative_humidity" float   NOT NULL,
    CONSTRAINT "pk_Minute_Weather" PRIMARY KEY (
        "hpwren_timestamp"
     )
);

-- Create table for natural gas type only from OASIS API
CREATE TABLE "Temperature" (
    "hpwren_timestamp" date   NOT NULL,
    "air_temp" float   NOT NULL,
    CONSTRAINT "pk_Temperature" PRIMARY KEY (
        "hpwren_timestamp"
     )
);

-- Create summary table with natural gas and renewable energy types
CREATE TABLE "Weather_Summary" (
    "hpwren_timestamp" date   NOT NULL,
    "air_temp" float   NOT NULL,
    "avg_wind_direction" int   NOT NULL,
    "avg_wind_speed" float   NOT NULL,
    "rain_accumulation" int   NOT NULL,
    "relative_humidity" float   NOT NULL,
    CONSTRAINT "pk_Weather_Summary" PRIMARY KEY (
        "hpwren_timestamp"
     )
);

-- Create table for fossil fuel types
CREATE TABLE "Air" (
    "hpwren_timestamp" date   NOT NULL,
    "air_pressure" float   NOT NULL,
    "air_temp" float   NOT NULL,
    "relative_humidity" float   NOT NULL,
    CONSTRAINT "pk_Air" PRIMARY KEY (
        "hpwren_timestamp"
     )
);

-- Create table for renewable energy types
CREATE TABLE "Wind" (
    "hpwren_timestamp" date   NOT NULL,
    "avg_wind_direction" int   NOT NULL,
    "avg_wind_speed" float   NOT NULL,
    "max_wind_direction" int   NOT NULL,
    "max_wind_speed" float   NOT NULL,
    "min_wind_direction" int   NOT NULL,
    "min_wind_speed" float   NOT NULL,
    CONSTRAINT "pk_Wind" PRIMARY KEY (
        "hpwren_timestamp"
     )
);

-- Create table for low-carbon energy types
CREATE TABLE "Precipitation" (
    "hpwren_timestamp" date   NOT NULL,
    "rain_accumulation" int   NOT NULL,
    "rain_duration" int   NOT NULL,
    CONSTRAINT "pk_Precipitation" PRIMARY KEY (
        "hpwren_timestamp"
     )
);

ALTER TABLE "Temperature" ADD CONSTRAINT "fk_Temperature_hpwren_timestamp" FOREIGN KEY("hpwren_timestamp")
REFERENCES "Minute_Weather" ("hpwren_timestamp");

ALTER TABLE "Weather_Summary" ADD CONSTRAINT "fk_Weather_Summary_hpwren_timestamp" FOREIGN KEY("hpwren_timestamp")
REFERENCES "Minute_Weather" ("hpwren_timestamp");

ALTER TABLE "Air" ADD CONSTRAINT "fk_Air_hpwren_timestamp" FOREIGN KEY("hpwren_timestamp")
REFERENCES "Minute_Weather" ("hpwren_timestamp");

ALTER TABLE "Wind" ADD CONSTRAINT "fk_Wind_hpwren_timestamp" FOREIGN KEY("hpwren_timestamp")
REFERENCES "Minute_Weather" ("hpwren_timestamp");

ALTER TABLE "Precipitation" ADD CONSTRAINT "fk_Precipitation_hpwren_timestamp" FOREIGN KEY("hpwren_timestamp")
REFERENCES "Minute_Weather" ("hpwren_timestamp");

