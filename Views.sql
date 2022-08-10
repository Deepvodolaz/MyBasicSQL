# Создано представление vw_goods и vw_goods_categories

CREATE VIEW vw_goods_and_goods_categories AS
  SELECT a.id_goods, 
    a.goods, 
    a.price, 
    a.id_categories, 
    s.categories_name
  FROM goods AS a 
    INNER JOIN goods_categories AS s 
      ON s.id_categories = 
        a.id_categories;

# Проведена проверка работы представления vw_goods_and_goods_categories

SELECT * FROM `vw_goods_and_goods_categories`

# Создан запрос по categories_name 

SELECT a.id_goods, 
    a.goods, 
    b.id_categories, 
    b.categories_name
  FROM vw_goods_and_goods_categories AS a
    LEFT JOIN vw_goods_categories AS b
      ON a.id_categories = 
        b.id_categories
GROUP BY categories_name        