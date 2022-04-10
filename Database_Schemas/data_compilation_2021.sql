
SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_jan"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_feb"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_march"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_april"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_may"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_june"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_july"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_aug"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_sept"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_oct"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_nov"

UNION ALL

SELECT "INTERVALSTARTTIME_GMT", "INTERVALENDTIME_GMT", "MW"
FROM "2021_dec"



CREATE TABLE "2021_jan" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_feb" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_march" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_april" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_may" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_june" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_july" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_aug" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_sept" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_oct" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_nov" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);

CREATE TABLE "2021_dec" (
    "INTERVALSTARTTIME_GMT" timestamp,
    "INTERVALENDTIME_GMT" timestamp,
    "LOAD_TYPE" int,
    "OPR_DT" date,
	"OPR_HR" int,
    "OPR_INTERVAL" int,
    "MARKET_RUN_ID" VARCHAR,
    "TAC_AREA_NAME" VARCHAR,
    "LABEL" VARCHAR,
    "XML_DATA_ITEM" VARCHAR,
    "POS" decimal,
    "MW" int,
    "EXECUTION_TYPE" VARCHAR,
	"GROUP" int
);