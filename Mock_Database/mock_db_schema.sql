-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Week 1 mock database schema using weather data from Kaggle (https://www.kaggle.com/muhammadmaaz2594/minute-weather-dataset-from-weather-station)
-- "Real" project data from California IOS OASIS API not available as of 3/13/22

-- Table for entire desired dataset; use 2021 dataset from OASIS API
CREATE TABLE "Minute_Weather" (
    "hpwren_timestamp" date,
    "air_pressure" float,
    "air_temp" float,
    "avg_wind_direction" int,
    "avg_wind_speed" float,
    "max_wind_direction" int,
    "max_wind_speed" float,
    "min_wind_direction" int,
    "min_wind_speed" float,
    "rain_accumulation" float,
    "rain_duration" float,
    "relative_humidity" float
);

-- Create table for natural gas type only from OASIS API
CREATE TABLE "Temperature" (
    "hpwren_timestamp" date,
    "air_temp" float
);

-- Create summary table with natural gas and renewable energy types
CREATE TABLE "Weather_Summary" (
    "hpwren_timestamp" date,
    "air_temp" float,
    "avg_wind_direction" int,
    "avg_wind_speed" float,
    "rain_accumulation" float,
    "relative_humidity" float   
);

-- Create table for fossil fuel types
CREATE TABLE "Air" (
    "hpwren_timestamp" date,
    "air_pressure" float,
    "air_temp" float,
    "relative_humidity" float
);

-- Create table for renewable energy types
CREATE TABLE "Wind" (
    "hpwren_timestamp" date,
    "avg_wind_direction" int,
    "avg_wind_speed" float,
    "max_wind_direction" int,
    "max_wind_speed" float,
    "min_wind_direction" int,
    "min_wind_speed" float 
);

-- Create table for low-carbon energy types
CREATE TABLE "Precipitation" (
    "hpwren_timestamp" date,
    "rain_accumulation" float,
    "rain_duration" float  
);

-- Query database to check successful upload (run line by line)
SELECT * FROM "Minute_Weather";
SELECT * FROM "Air";
SELECT * FROM "Weather_Summary";
SELECT * FROM "Wind";
SELECT * FROM "Temperature";
SELECT * FROM "Precipitation";
