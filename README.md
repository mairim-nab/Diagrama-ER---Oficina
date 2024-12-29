# Esquema Conceitual: Sistema de Gerenciamento de Oficina Mecânica

## Contexto
Este projeto foi desenvolvido como parte de um desafio prático para criar um esquema conceitual de um sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica. A partir da narrativa fornecida, o esquema busca modelar o fluxo de dados e os principais relacionamentos entre clientes, veículos, ordens de serviço, equipes, mecânicos, serviços e peças.

## Objetivo
O objetivo deste projeto é apresentar uma solução conceitual que represente os processos realizados em uma oficina mecânica, incluindo:

- Gerenciamento de clientes e veículos.
- Criação e execução de ordens de serviço (OS).
- Controle de serviços realizados e utilização de peças.
- Organização de equipes e mecânicos envolvidos.

## Narrativa do Desafio
- Clientes levam seus veículos à oficina para consertos ou revisões periódicas.
- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma Ordem de Serviço (OS) com a data de entrega.
- O valor de cada serviço é calculado com base em uma tabela de referência de mão de obra.
- O custo das peças também é incluído na OS.
- O cliente autoriza a execução dos serviços.
- A mesma equipe avalia e executa os serviços.
- Cada mecânico possui código, nome, endereço e especialidade.
- Cada OS possui: número, data de emissão, valor total, status e uma data prevista para conclusão dos trabalhos.

![Diagrama ER Oficina Mecanica](https://github.com/user-attachments/assets/1616cf6b-1663-4673-8590-5fe4ceccccc4)

## Script SQL

O projeto inclui um script SQL que define a estrutura do banco de dados para o sistema de gerenciamento de oficina mecânica. Este script cria as tabelas essenciais para a persistência de dados, como **Clientes**, **Veículos**, **Funcionários**, **Serviços**, **Ordens de Serviço**, **Itens da Ordem de Serviço** e **Pagamentos**.

### Funcionalidades do Script:

- **Cadastro de Clientes**: O script permite a criação de uma tabela de clientes, onde são armazenadas informações como nome, CPF, telefone, email e endereço.
- **Cadastro de Veículos**: A tabela de veículos armazena dados sobre os veículos dos clientes, como placa, modelo, marca e ano de fabricação.
- **Cadastro de Funcionários**: A tabela de funcionários registra dados como nome, CPF, cargo, salário e data de contratação.
- **Cadastro de Serviços**: Os serviços realizados pela oficina são registrados, com nome, descrição e preço.
- **Ordens de Serviço**: Cada ordem de serviço está vinculada a um veículo e um funcionário (mecânico), com informações sobre a data de abertura, data de conclusão e status da ordem.
- **Itens da Ordem de Serviço**: A tabela de itens de ordem de serviço relaciona os serviços realizados em cada ordem, com a quantidade e o preço total de cada serviço.
- **Pagamentos**: A tabela de pagamentos registra as transações feitas para cada ordem de serviço, com o valor pago, data de pagamento e meio de pagamento utilizado.

### Exemplos de Consultas:

Com o banco de dados estruturado, é possível realizar consultas para obter informações relevantes, como:

- **Recuperar todos os clientes e seus respectivos veículos**.
- **Filtrar ordens de serviço com status específico ou que ultrapassaram um valor total**.
- **Calcular o total pago por ordem de serviço**.
- **Ordenar serviços por preço ou por data de conclusão**.
- **Unir dados de diferentes tabelas para mostrar, por exemplo, os serviços realizados por cada mecânico em um período específico**.

Este script proporciona a base para o gerenciamento de uma oficina mecânica, permitindo o armazenamento e a consulta de dados de forma eficiente. Além disso, ele serve como ponto de partida para criar queries mais avançadas que respondam a perguntas complexas sobre as operações da oficina.
