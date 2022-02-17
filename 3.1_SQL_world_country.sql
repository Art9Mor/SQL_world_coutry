-- Выведите страны в порядке убывания длины названия. И пусть название страны будет в верхнем регистре, а название континента – в нижнем
SELECT 
	UPPER(name) AS countryName, 
    LOWER(continent) AS continent, 
    CHAR_LENGTH(name) AS nameLength
FROM country
ORDER BY nameLength DESC;

-- Для каждой страны найдите радиус окружности, у которой площадь круга такая же, как площадь этой страны. Отсортируйте результат по убыванию радиуса
SELECT 
	name AS countryName,
	surfaceArea,
	SQRT(SurfaceArea / PI()) AS radius
FROM country
ORDER BY radius DESC;