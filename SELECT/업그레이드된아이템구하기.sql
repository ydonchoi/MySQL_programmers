select info1.item_id as item_id
, info1.item_name
, info1.rarity
from item_info info1
join item_tree tree on info1.item_id = tree.item_id
join item_info info2 on tree.parent_item_id = info2.item_id
where info2.rarity = 'rare'
order by info1.item_id DESC;
