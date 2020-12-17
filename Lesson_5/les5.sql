-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

INSERT INTO users (created_at, updated_at) VALUES (NOW(), NOW())

-- Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.

ALTER TABLE users ADD created_at_dt DATETIME, updated_at_dt DATETIME;
UPDATE users
SET created_at_dt = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'),
    updated_at_dt = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
ALTER TABLE users 
    DROP created_at, DROP updated_at, 
    RENAME COLUMN created_at_dt TO created_at, RENAME COLUMN updated_at_dt TO updated_at;


-- В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения 

SELECT * FROM storehouses_products ORDER BY value = 0 ASC, value ASC

-- Подсчитайте средний возраст пользователей в таблице users.

select avg(age) from users

-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.

select dayofweek(birthday), count(dayofweek(birthday)) as day_week from users where year(birthday)=year(now()) group by day_week