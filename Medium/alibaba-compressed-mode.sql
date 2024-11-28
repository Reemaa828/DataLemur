SELECT item_count as mode 
from items_per_order 
WHERE order_occurrences=(SELECT max(order_occurrences) from items_per_order)
;
