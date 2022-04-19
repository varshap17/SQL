SELECT DISTINCT S.product_id, P.product_name
FROM Sales S
LEFT JOIN Product P
on S.product_id = P.product_id
WHERE sale_date BETWEEN "2019-01-01" AND "2019-03-31"
      AND NOT EXISTS (SELECT product_id
                      FROM Sales
                      WHERE (sale_date NOT BETWEEN "2019-01-01" AND "2019-03-31")
                                       AND product_id = S.product_id);
