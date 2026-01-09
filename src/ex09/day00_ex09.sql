SELECT
    (SELECT name FROM person WHERE person.id = person_visits.person_id) AS person_name,
    (SELECT name FROM pizzeria WHERE pizzeria.id = person_visits.pizzeria_id) AS pizzeria_name
FROM person_visits
WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09'
ORDER BY person_name ASC, pizzeria_name DESC;
-- В основном запросе 2 подзапроса
-- первый получает имя человека из таблицы person на основе person_id из таблицы person_visits
-- второй получает название пиццерии из таблицы пиццерия, на основе ид пиццерии из таблицы визиты персон
-- столбцам, которые будут выведены присваиваются соответствующие названия
-- далее работает основной запрос - из таблицы даты визита он извлекает данные и фильтрует их между указанными датами
-- и сортирует результата, сначала по возрастанию по имени человека, а затем по убыванию названий пиццерий
