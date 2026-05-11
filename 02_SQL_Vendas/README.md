# 🗄️ Comprovação de Dados: Estruturação de Banco de Dados (SQL)

Nesta etapa do projeto, os dados de vendas foram migrados para um ambiente de banco de dados relacional (**SQLite/PopSQL**) para permitir consultas mais rápidas, seguras e escaláveis.

---

## 🛠️ Tecnologias Utilizadas
* **Banco de Dados:** SQLite
* **Ferramenta de Query:** PopSQL
* **Linguagem:** SQL (DML e DDL)

---

## 📂 Conteúdo desta Pasta
* **vendas_analise.sql:** Script contendo a criação da tabela, definição de tipos de dados e os registros de amostra.
* **script_vendas.sql:** Consultas (Queries) para análise de faturamento, performance regional e segmentação de clientes.

---

## 📑 Estrutura Técnica (Dicionário SQL)

O banco de dados foi estruturado com os seguintes constrangimentos técnicos:
* **Chave Primária:** `id` com auto-incremento para garantir a integridade de cada venda.
* **Tipos de Dados:** Uso de `DATE` para datas, `DECIMAL` para valores financeiros (precisão) e `INTEGER` para quantidades.
* **Índices:** Criação de índices em colunas de data e cliente para otimizar a velocidade de busca.

---

## 🔍 Exemplos de Consultas Realizadas

Dentro dos scripts, realizamos análises como:
1. **Faturamento por Estado:** Identificação dos mercados mais lucrativos.
2. **Ticket Médio por Categoria:** Análise de valor gasto por transação.
3. **Análise Temporal:** Evolução das vendas entre Dezembro de 2024 e Junho de 2025.

---

## 🛡️ Segurança e DCL (Data Control Language)
Como parte da boa prática de engenharia de dados, foram simulados comandos de gestão de acessos:
* `GRANT`: Para permitir que analistas visualizem os dados.
* `REVOKE`: Para restringir acessos a informações sensíveis.
