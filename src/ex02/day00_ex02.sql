SELECT name, rating FROM pizzeria WHERE rating >= 3.5 AND rating <= 5 ORDER BY rating;
SELECT name, rating FROM pizzeria WHERE rating BETWEEN 3.5 AND 5 ORDER BY rating;
-- Сначала ВЫБИРАЕМ стобцы "имя" и "рейтинг" ИЗ таблицы "пиццерия"
-- Фильтруем записи, ГДЕ оставим только те, у которых рейтинг от 3.5 до 5 включительно
-- Сделать это можно или с помощью знаков сравнения, или c помощью оператора МЕЖДУ
-- сортируем результат по столбцу рейтинг - по умолчанию - в порядке возрастания