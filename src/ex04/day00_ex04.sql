SELECT name || ' (age:' || age || ',gender:''' || gender || ''', address:''' || address || ''')' AS person_information
FROM person ORDER BY person_information ASC;
-- создаем строку объединяем поля имя, возраст, пол и адрес со строками и кавычками AS - присваивает имя созданной строке
-- из таблицы person и сортируем полученный результат по возрастанию