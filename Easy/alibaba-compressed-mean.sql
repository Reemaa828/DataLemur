SELECT round(cast(sum(item_count*order_occurrences)/sum(order_occurrences) as DECIMAL),1) as mean
FROM items_per_order;
