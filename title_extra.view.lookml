- view: title_extra
  fields:
  - measure: revenue_over_budget
    type: number
    sql: ${movie_revenue.total_revenue} / ${movie_budget.total_budget}
    decimals: 4

#   - dimension: opening_weekend_amount_tiered
#     type: tier
#     tiers: [1,5,10,20,50,100,250,500]
#     sql: ${movie_weekend_revenue.weekend_amount}
# 