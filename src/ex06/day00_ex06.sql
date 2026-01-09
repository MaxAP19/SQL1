SELECT (SELECT name FROM person WHERE person.id = person_order.person_id) AS NAME,
CASE 
    WHEN (SELECT name FROM person WHERE person.id = person_order.person_id) = 'Denis' THEN 'true'
    ELSE 'false'
END AS check_name
FROM person_order
WHERE (menu_id = 13 OR menu_id = 14 OR menu_id = 18)
AND order_date = '2022-01-07';
-- создаем подзапрос для получения имени человека по индентификатору и присваиваем имя результату подзапроса
-- оператором кейс проверяем имя, просто копируем предыдущий подзапрос
-- если нужно имя - правда, иначе - ложь
-- далее работает основной запрос - выбирает данные из таблицы заказы персоны
-- фильтрует их по идентификатору меню и по записи