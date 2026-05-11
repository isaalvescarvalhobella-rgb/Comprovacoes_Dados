-- ==========================================
-- SCRIPT DE CRIAÇÃO E POPULAÇÃO DE DADOS
-- Projeto: Análise de Vendas Empresa
-- ==========================================

-- 1. Criação da Tabela
CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE,
    id_cliente INT,
    nome_cliente VARCHAR(100),
    estado CHAR(2),
    categoria VARCHAR(50),
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    total_venda DECIMAL(10,2),
    ano INT,
    mes INT,
    dia INT,
    dia_semana INT,
    lucro DECIMAL(10,2),
    gastos DECIMAL(10,2),
    ano_mes VARCHAR(10),
    vip VARCHAR(10)
);

-- 2. Índices para Performance
CREATE INDEX idx_estado ON vendas(estado);
CREATE INDEX idx_categoria ON vendas(categoria);

-- 3. Inserção de Dados Exemplo (Amostra)
INSERT INTO vendas (data_venda, id_cliente, nome_cliente, estado, categoria, produto, quantidade, preco_unitario, total_venda, lucro, gastos, vip) 
VALUES 
('2025-02-14', 5627, 'Brenda Monteiro', 'RS', 'Eletrônicos', 'Tablet', 3, 390.42, 1171.26, 468.50, 117.13, 'vip'),
('2025-03-10', 1234, 'Isabella Alves', 'SP', 'Eletrônicos', 'Smartphone', 1, 1500.00, 1500.00, 600.00, 150.00, 'vip'),
('2025-01-20', 8892, 'Lucas Silva', 'RJ', 'Móveis', 'Cadeira Office', 2, 450.00, 900.00, 360.00, 90.00, 'naovip');

-- 4. Consultas de Análise (Exemplos)

-- Faturamento total por estado
SELECT estado, SUM(total_venda) AS faturamento_total 
FROM vendas 
GROUP BY estado 
ORDER BY faturamento_total DESC;

-- Produtos mais vendidos por categoria
SELECT categoria, produto, SUM(quantidade) AS total_qtd 
FROM vendas 
GROUP BY categoria, produto 
ORDER BY total_qtd DESC;
