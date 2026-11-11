CREATE SCHEMA IF NOT EXISTS hive.tpcds;

USE hive.tpcds;

DROP TABLE IF EXISTS call_center;

CREATE TABLE call_center AS
SELECT
    cc_call_center_sk,
    cast(cc_call_center_id as varchar) as cc_call_center_id,
    cc_rec_start_date,
    cc_rec_end_date,
    cc_closed_date_sk,
    cc_open_date_sk,
    cc_name,
    cc_class,
    cc_employees,
    cc_sq_ft,
    cast(cc_hours as varchar) as cc_hours,
    cc_manager,
    cc_mkt_id,
    cast(cc_mkt_class as varchar) as cc_mkt_class,
    cc_mkt_desc,
    cc_market_manager,
    cc_division,
    cc_division_name,
    cc_company,
    cast(cc_company_name as varchar) as cc_company_name,
    cast(cc_street_number as varchar) as cc_street_number,
    cc_street_name,
    cast(cc_street_type as varchar) as cc_street_type,
    cast(cc_suite_number as varchar) as cc_suite_number,
    cc_city,
    cc_county,
    cast(cc_state as varchar) as cc_state,
    cast(cc_zip as varchar) as cc_zip,
    cc_country,
    cc_gmt_offset,
    cc_tax_percentage
FROM
    tpcds.sf1.call_center;

DROP TABLE IF EXISTS catalog_page;

CREATE TABLE catalog_page AS
SELECT
    cp_catalog_page_sk,
    cast(cp_catalog_page_id as varchar) as cp_catalog_page_id,
    cp_start_date_sk,
    cp_end_date_sk,
    cp_department,
    cp_catalog_number,
    cp_catalog_page_number,
    cp_description,
    cp_type
FROM
    tpcds.sf1.catalog_page;

DROP TABLE IF EXISTS catalog_returns;

CREATE TABLE catalog_returns AS
SELECT
    *
FROM
    tpcds.sf1.catalog_returns;

DROP TABLE IF EXISTS catalog_sales;

CREATE TABLE catalog_sales AS
SELECT
    *
FROM
    tpcds.sf1.catalog_sales;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer AS
SELECT
    c_customer_sk,
    cast(c_customer_id as varchar) as c_customer_id,
    c_current_cdemo_sk,
    c_current_hdemo_sk,
    c_current_addr_sk,
    c_first_shipto_date_sk,
    c_first_sales_date_sk,
    cast(c_salutation as varchar) as c_salutation,
    cast(c_first_name as varchar) as c_first_name,
    cast(c_last_name as varchar) as c_last_name,
    cast(c_preferred_cust_flag as varchar) as c_preferred_cust_flag,
    c_birth_day,
    c_birth_month,
    c_birth_year,
    c_birth_country,
    cast(c_login as varchar) as c_login,
    cast(c_email_address as varchar) as c_email_address,
    c_last_review_date_sk
FROM
    tpcds.sf1.customer;

DROP TABLE IF EXISTS customer_address;

CREATE TABLE customer_address AS
SELECT
    ca_address_sk,
    cast(ca_address_id as varchar) as ca_address_id,
    cast(ca_street_number as varchar) as ca_street_number,
    ca_street_name,
    cast(ca_street_type as varchar) as ca_street_type,
    cast(ca_suite_number as varchar) as ca_suite_number,
    ca_city,
    ca_county,
    cast(ca_state as varchar) as ca_state,
    cast(ca_zip as varchar) as ca_zip,
    ca_country,
    ca_gmt_offset,
    cast(ca_location_type as varchar) as ca_location_type
FROM
    tpcds.sf1.customer_address;

DROP TABLE IF EXISTS customer_demographics;

CREATE TABLE customer_demographics AS
SELECT
    cd_demo_sk,
    cast(cd_gender as varchar) as cd_gender,
    cast(cd_marital_status as varchar) as cd_marital_status,
    cast(cd_education_status as varchar) as cd_education_status,
    cd_purchase_estimate,
    cast(cd_credit_rating as varchar) as cd_credit_rating,
    cd_dep_count,
    cd_dep_employed_count,
    cd_dep_college_count
FROM
    tpcds.sf1.customer_demographics;

DROP TABLE IF EXISTS date_dim;

CREATE TABLE date_dim AS
SELECT
    d_date_sk,
    cast(d_date_id as varchar) as d_date_id,
    d_date,
    d_month_seq,
    d_week_seq,
    d_quarter_seq,
    d_year,
    d_dow,
    d_moy,
    d_dom,
    d_qoy,
    d_fy_year,
    d_fy_quarter_seq,
    d_fy_week_seq,
    cast(d_day_name as varchar) as d_day_name,
    cast(d_quarter_name as varchar) as d_quarter_name,
    cast(d_holiday as varchar) as d_holiday,
    cast(d_weekend as varchar) as d_weekend,
    cast(d_following_holiday as varchar) as d_following_holiday,
    d_first_dom,
    d_last_dom,
    d_same_day_ly,
    d_same_day_lq,
    cast(d_current_day as varchar) as d_current_day,
    cast(d_current_week as varchar) as d_current_week,
    cast(d_current_month as varchar) as d_current_month,
    cast(d_current_quarter as varchar) as d_current_quarter,
    cast(d_current_year as varchar) as d_current_year
FROM
    tpcds.sf1.date_dim;

DROP TABLE IF EXISTS household_demographics;

CREATE TABLE household_demographics AS
SELECT
    hd_demo_sk,
    hd_income_band_sk,
    cast(hd_buy_potential as varchar) as hd_buy_potential,
    hd_dep_count,
    hd_vehicle_count
FROM
    tpcds.sf1.household_demographics;

DROP TABLE IF EXISTS income_band;

CREATE TABLE income_band AS
SELECT
    *
FROM
    tpcds.sf1.income_band;

DROP TABLE IF EXISTS inventory;

CREATE TABLE inventory AS
SELECT
    *
FROM
    tpcds.sf1.inventory;

DROP TABLE IF EXISTS item;

CREATE TABLE item AS
SELECT
    i_item_sk,
    cast(i_item_id as varchar) as i_item_id,
    i_rec_start_date,
    i_rec_end_date,
    i_item_desc,
    i_current_price,
    i_wholesale_cost,
    i_brand_id,
    cast(i_brand as varchar) as i_brand,
    i_class_id,
    cast(i_class as varchar) as i_class,
    i_category_id,
    cast(i_category as varchar) as i_category,
    i_manufact_id,
    cast(i_manufact as varchar) as i_manufact,
    cast(i_size as varchar) as i_size,
    cast(i_formulation as varchar) as i_formulation,
    cast(i_color as varchar) as i_color,
    cast(i_units as varchar) as i_units,
    cast(i_container as varchar) as i_container,
    i_manager_id,
    cast(i_product_name as varchar) as i_product_name
FROM
    tpcds.sf1.item;

DROP TABLE IF EXISTS promotion;

CREATE TABLE promotion AS
SELECT
    p_promo_sk,
    cast(p_promo_id as varchar) as p_promo_id,
    p_start_date_sk,
    p_end_date_sk,
    p_item_sk,
    p_cost,
    p_response_targe,
    cast(p_promo_name as varchar) as p_promo_name,
    cast(p_channel_dmail as varchar) as p_channel_dmail,
    cast(p_channel_email as varchar) as p_channel_email,
    cast(p_channel_catalog as varchar) as p_channel_catalog,
    cast(p_channel_tv as varchar) as p_channel_tv,
    cast(p_channel_radio as varchar) as p_channel_radio,
    cast(p_channel_press as varchar) as p_channel_press,
    cast(p_channel_event as varchar) as p_channel_event,
    cast(p_channel_demo as varchar) as p_channel_demo,
    p_channel_details,
    cast(p_purpose as varchar) as p_purpose,
    cast(p_discount_active as varchar) as p_discount_active
FROM
    tpcds.sf1.promotion;

DROP TABLE IF EXISTS reason;

CREATE TABLE reason AS
SELECT
    r_reason_sk,
    cast(r_reason_id as varchar) as r_reason_id,
    cast(r_reason_desc as varchar) as r_reason_desc
FROM
    tpcds.sf1.reason;

DROP TABLE IF EXISTS ship_mode;

CREATE TABLE ship_mode AS
SELECT
    sm_ship_mode_sk,
    cast(sm_ship_mode_id as varchar) as sm_ship_mode_id,
    cast(sm_type as varchar) as sm_type,
    cast(sm_code as varchar) as sm_code,
    cast(sm_carrier as varchar) as sm_carrier,
    cast(sm_contract as varchar) as sm_contract
FROM
    tpcds.sf1.ship_mode;

DROP TABLE IF EXISTS store;

CREATE TABLE store AS
SELECT
    s_store_sk,
    cast(s_store_id as varchar) as s_store_id,
    s_rec_start_date,
    s_rec_end_date,
    s_closed_date_sk,
    s_store_name,
    s_number_employees,
    s_floor_space,
    cast(s_hours as varchar) as s_hours,
    s_manager,
    s_market_id,
    s_geography_class,
    s_market_desc,
    s_market_manager,
    s_division_id,
    s_division_name,
    s_company_id,
    s_company_name,
    s_street_number,
    s_street_name,
    cast(s_street_type as varchar) as s_street_type,
    cast(s_suite_number as varchar) as s_suite_number,
    s_city,
    s_county,
    cast(s_state as varchar) as s_state,
    cast(s_zip as varchar) as s_zip,
    s_country,
    s_gmt_offset,
    s_tax_precentage
FROM
    tpcds.sf1.store;

DROP TABLE IF EXISTS store_returns;

CREATE TABLE store_returns AS
SELECT
    *
FROM
    tpcds.sf1.store_returns;

DROP TABLE IF EXISTS store_sales;

CREATE TABLE store_sales AS
SELECT
    *
FROM
    tpcds.sf1.store_sales;

DROP TABLE IF EXISTS time_dim;

CREATE TABLE time_dim AS
SELECT
    t_time_sk,
    cast(t_time_id as varchar) as t_time_id,
    t_time,
    t_hour,
    t_minute,
    t_second,
    cast(t_am_pm as varchar) as t_am_pm,
    cast(t_shift as varchar) as t_shift,
    cast(t_sub_shift as varchar) as t_sub_shift,
    cast(t_meal_time as varchar) as t_meal_time
FROM
    tpcds.sf1.time_dim;

DROP TABLE IF EXISTS warehouse;

CREATE TABLE warehouse AS
SELECT
    w_warehouse_sk,
    cast(w_warehouse_id as varchar) as w_warehouse_id,
    w_warehouse_name,
    w_warehouse_sq_ft,
    cast(w_street_number as varchar) as w_street_number,
    w_street_name,
    cast(w_street_type as varchar) as w_street_type,
    cast(w_suite_number as varchar) as w_suite_number,
    w_city,
    w_county,
    cast(w_state as varchar) as w_state,
    cast(w_zip as varchar) as w_zip,
    w_country,
    w_gmt_offset
FROM
    tpcds.sf1.warehouse;

DROP TABLE IF EXISTS web_page;

CREATE TABLE web_page AS
SELECT
    wp_web_page_sk,
    cast(wp_web_page_id as varchar) as wp_web_page_id,
    wp_rec_start_date,
    wp_rec_end_date,
    wp_creation_date_sk,
    wp_access_date_sk,
    cast(wp_autogen_flag as varchar) as wp_autogen_flag,
    wp_customer_sk,
    wp_url,
    cast(wp_type as varchar) as wp_type,
    wp_char_count,
    wp_link_count,
    wp_image_count,
    wp_max_ad_count
FROM
    tpcds.sf1.web_page;

DROP TABLE IF EXISTS web_returns;

CREATE TABLE web_returns AS
SELECT
    *
FROM
    tpcds.sf1.web_returns;

DROP TABLE IF EXISTS web_sales;

CREATE TABLE web_sales AS
SELECT
    *
FROM
    tpcds.sf1.web_sales;

DROP TABLE IF EXISTS web_site;

CREATE TABLE web_site AS
SELECT
    web_site_sk,
    cast(web_site_id as varchar) as web_site_id,
    web_rec_start_date,
    web_rec_end_date,
    web_name,
    web_open_date_sk,
    web_close_date_sk,
    web_class,
    web_manager,
    web_mkt_id,
    web_mkt_class,
    web_mkt_desc,
    web_market_manager,
    web_company_id,
    cast(web_company_name as varchar) as web_company_name,
    cast(web_street_number as varchar) as web_street_number,
    web_street_name,
    cast(web_street_type as varchar) as web_street_type,
    cast(web_suite_number as varchar) as web_suite_number,
    web_city,
    web_county,
    cast(web_state as varchar) as web_state,
    cast(web_zip as varchar) as web_zip,
    web_country,
    web_gmt_offset,
    web_tax_percentage
FROM
    tpcds.sf1.web_site;