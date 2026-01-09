SELECT DISTINCT person_id FROM person_visits
WHERE (visit_date BETWEEN '2022-01-06' AND '2022-01-09') OR pizzeria_id = 2
ORDER BY person_id DESC;
-- ВЫБИРАЕМ уникальный идентификаторы людей, distinct (чтобы избежать дублирования id) ИЗ таблицы person_visits
-- фильтруем даты визитов ГДЕ они между указанны диапазоном дат ИЛИ визиты, которые были в пиццерию с идентификатором 2
-- сортируем результаты по идентификатору человека в порядке убывания DESC - descending (по возрастанию - по умолчанию или ASC - ascendings)