WITH investor_data AS (
    SELECT 
        i.investor_id, 
        i.investor_risk_label, 
        p.age_group, 
        p.net_worth_bracket, 
        p.investment_experience
    FROM {{ ref('int_investor_metrics') }} i
    JOIN {{ ref('stg_investor_profiles') }} p
    ON i.investor_id = p.investor_id
)
SELECT *
FROM investor_data;
