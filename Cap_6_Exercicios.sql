# Livro: Learning SQL

# Exercícios do Capítulo 6 - Working With Sets

# Exercício 6-1

# A = {L M N O P} and set B = {P Q R S T}

# A UNION B

# {L M N O P Q R S T}

# A UNION ALL B

# {L M N O P p Q R S T}

# A INTERSECT B

# {P}


# A EXCEPT B

# {L M N O}

# Exercício 6-2

USE bank;
SELECT fname, lname
FROM individual
UNION
SELECT fname, lname
FROM employee;

# Exercício 6-3

SELECT fname, lname
FROM individual
UNION
SELECT fname, lname
FROM employee
ORDER BY lname;
