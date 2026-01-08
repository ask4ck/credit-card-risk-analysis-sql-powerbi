-- ============================================
-- Analytical Views for Power BI
-- ============================================

CREATE OR REPLACE VIEW clean_vw_cards_summary AS
SELECT
    card_brand,
    card_type,
    COUNT(*) AS total_cards,
    AVG(credit_limit) AS avg_credit_limit,
    SUM(CASE WHEN card_on_dark_web THEN 1 ELSE 0 END) AS dark_web_flagged
FROM clean_cc_detail
GROUP BY card_brand, card_type;
