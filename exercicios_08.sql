-- 1.1
DO $$
DECLARE
    valor INT;
BEGIN
    valor := valor_aleatorio_entre(1, 100);
    RAISE NOTICE 'O valor gerado é: %', valor;
END;
$$;

--1.2
DO $$
DECLARE
    valor REAL;
BEGIN
    valor := RANDOM() * 9 + 1;
    RAISE NOTICE 'O valor real gerado é: %', valor;
END;
$$;

--1.3
DO $$
DECLARE
    celsius REAL;
    fahrenheit REAL;
BEGIN
    celsius := RANDOM() * 10 + 20; 
    fahrenheit := (celsius * 9/5) + 32;
    RAISE NOTICE 'Temperatura: %°C = %°F', celsius, fahrenheit;
END;
$$;


--1.4
DO $$
DECLARE
    a INT := valor_aleatorio_entre(1, 10);
    b INT := valor_aleatorio_entre(1, 10);
    c INT := valor_aleatorio_entre(1, 10);
    delta NUMERIC;
BEGIN
    delta := b ^ 2 - 4 * a * c;
    RAISE NOTICE 'a: %, b: %, c: %, Delta: %', a, b, c, delta;
END;
$$;


--1.5
DO $$
DECLARE
    valor INT := valor_aleatorio_entre(1, 100);
    antecessor REAL;
    sucessor REAL;
BEGIN
    antecessor := (valor - 1) ^ (1.0/3.0);
    sucessor := SQRT(valor + 1);
    RAISE NOTICE 'Número gerado: %', valor;
    RAISE NOTICE 'Raiz cúbica do antecessor: %', antecessor;
    RAISE NOTICE 'Raiz quadrada do sucessor: %', sucessor;
END;
$$;


--1.6
DO $$
DECLARE
    largura REAL := RANDOM() * 9 + 1;
    comprimento REAL := RANDOM() * 9 + 1;
    preco_m2 REAL := RANDOM() * 10 + 60;
    area REAL;
    valor_total REAL;
BEGIN
    area := largura * comprimento;
    valor_total := area * preco_m2;
    RAISE NOTICE 'Largura: %, Comprimento: %', largura, comprimento;
    RAISE NOTICE 'Área do terreno: % m²', area;
    RAISE NOTICE 'Valor total: R$ %', valor_total;
END;
$$;


--1.7
DO $$
DECLARE
    ano_nascimento INT := valor_aleatorio_entre(1980, 2000);
    ano_atual INT := valor_aleatorio_entre(2010, 2020);
    idade INT;
BEGIN
    idade := ano_atual - ano_nascimento;
    RAISE NOTICE 'Ano de nascimento: %, Ano atual: %', ano_nascimento, ano_atual;
    RAISE NOTICE 'Idade calculada: % anos', idade;
END;
$$;



