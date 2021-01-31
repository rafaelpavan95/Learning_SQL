# Livro: Learning SQL

# Exercícios do Capítulo 7 - Data Generation, Conversion, and Manipulation

USE bank;

# Exercício 7.1

SELECT SUBSTRING('Please find the substring in this string',17,9);

# Exercício 7.2

SELECT ABS(-25.76823), SIGN(-25.76823), ROUND(-25.76823,2);


# Exercício 7.3

SELECT EXTRACT(MONTH FROM CURRENT_DATE());