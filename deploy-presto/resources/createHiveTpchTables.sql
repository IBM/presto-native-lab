CREATE SCHEMA IF NOT EXISTS hive.tpch;

USE hive.tpch;

DROP TABLE IF EXISTS lineitem;

CREATE TABLE lineitem AS
SELECT
    orderkey,
    partkey,
    suppkey,
    linenumber,
    quantity,
    extendedprice,
    discount,
    tax,
    returnflag,
    linestatus,
    shipdate,
    commitdate,
    receiptdate,
    shipinstruct,
    shipmode,
    comment
FROM
    tpch.sf1.lineitem;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders AS
SELECT
    orderkey,
    custkey,
    orderstatus,
    totalprice,
    orderdate,
    orderpriority,
    clerk,
    shippriority,
    comment
FROM
    tpch.sf1.orders;

DROP TABLE IF EXISTS nation;

CREATE TABLE nation AS
SELECT
    *
FROM
    tpch.sf1.nation;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer AS
SELECT
    custkey,
    name,
    address,
    nationkey,
    phone,
    acctbal,
    comment,
    mktsegment
FROM
    tpch.sf1.customer;

DROP TABLE IF EXISTS part;

CREATE TABLE part AS
SELECT
    *
FROM
    tpch.sf1.part;

DROP TABLE IF EXISTS partsupp;

CREATE TABLE partsupp AS
SELECT
    *
FROM
    tpch.sf1.partsupp;

DROP TABLE IF EXISTS region;

CREATE TABLE region AS
SELECT
    *
FROM
    tpch.sf1.region;

DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier AS
SELECT
    *
FROM
    tpch.sf1.supplier;