-- ============================================
-- Credit Card Risk Analysis
-- Table Creation Script
-- ============================================

CREATE TABLE IF NOT EXISTS stg_cc_raw (
    id TEXT,
    client_id TEXT,
    card_brand TEXT,
    card_type TEXT,
    card_number TEXT,
    expires TEXT,
    cvv TEXT,
    has_chip TEXT,
    num_cards_issued TEXT,
    credit_limit TEXT,
    acct_open_date TEXT,
    year_pin_last_changed TEXT,
    card_on_dark_web TEXT
);
