CREATE OR REPLACE VIEW public.v_orders AS
SELECT
    order_id,
    order_date,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    ship_date,
    region,
    category,
    sub_category,
    sales,
    profit,
    discount,
    quantity,
    CASE
        WHEN sales <> 0 THEN profit / sales
        ELSE NULL
    END AS profit_margin,
    segment
FROM orders_clean;
