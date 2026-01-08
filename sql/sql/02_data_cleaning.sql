-- ============================================
-- Data Cleaning & Transformation
-- ============================================

CREATE TABLE clean_cc_detail AS
SELECT
    id::INT,
    client_id::INT,
    card_brand,
    card_type,
    card_number,
    credit_limit::NUMERIC,
    has_chip::BOOLEAN,
    card_on_dark_web::BOOLEAN,
    num_cards_issued::INT,
    year_pin_last_changed::INT,
    TO_DATE(acct_open_date, 'Mon-YY') AS acct_open_date
FROM stg_cc_raw
WHERE card_number IS NOT NULL;
