-- INSERT INTO sales (
--         customer_name,
--         product_name,
--         volume,
--         is_recurring
--     )
-- VALUES ('Gayatri', 'Lipstick', 399.23, TRUE);
INSERT INTO sales (
        date_fulfilled,
        customer_name,
        product_name,
        volume,
        is_recurring,
        is_disputed
    )
VALUES (NULL, 'Abhishek', 'Shoes', 5849.89, FALSE, FALSE),
    (
        '2022-07-27',
        'Snehal',
        'Purse',
        4689,
        FALSE,
        TRUE
    );