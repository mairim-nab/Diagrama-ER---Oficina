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
