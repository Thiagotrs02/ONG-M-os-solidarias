
# ONG-Mãos-solidarias
# 🫶 Mãos Solidárias — Sistema de Gestão de ONG

📍 *Projeto acadêmico de Modelagem e Desenvolvimento de Banco de Dados*  
📅 2025
👤 Autor: Thiago.R 

---

## 📖 Sobre o Projeto

O **Mãos Solidárias** é um sistema de banco de dados desenvolvido para auxiliar a gestão de uma ONG que realiza projetos sociais com apoio de voluntários, doadores e beneficiários.

O projeto tem como objetivo:

- Organizar os dados de doadores, doações e beneficiários
- Registrar participação de voluntários em projetos
- Manter controle sobre as ações sociais da ONG
- Garantir integridade e rastreabilidade das informações

Este repositório contém todos os scripts necessários para criação, povoamento e manipulação de dados no banco da ONG.

---

## 🗂️ Estrutura do Banco de Dados

Entidades principais:

| Tabela | Descrição |
|--------|-----------|
| voluntario | Dados do voluntário que ajuda na ONG |
| projeto | Projetos sociais realizados |
| doador | Pessoas físicas ou jurídicas que doam |
| doacao | Registra doações recebidas e origem |
| beneficiario | Pessoas atendidas pelos projetos |
| participacao | Relação entre voluntários e projetos |

✔ Banco normalizado até a **3ª Forma Normal (3FN)**  
✔ Implementado em **SQLite**  
✔ Integridade garantida por **chaves estrangeiras**

---

---

## 📌 Scripts incluídos no repositório

📁 **/scripts**

| Arquivo | Função |
|--------|--------|
| `create_tables.sql` | Criação das tabelas e relacionamentos |
| `inserts.sql` | Povoamento inicial do banco |
| `selects.sql` | Consultas SELECT com JOIN, WHERE e ORDER BY |
| `updates_deletes.sql` | Comandos UPDATE e DELETE com condições |

---

## ▶️ Como Executar

Requisitos:
- SQLiteStudio ou outro cliente SQLite instalado

Passos:

```bash
1️⃣ Abra o SQLiteStudio
2️⃣ Crie um novo banco de dados: maos_solidarias.db
3️⃣ Execute o script: create_tables.sql
4️⃣ Execute o script: inserts.sql
5️⃣ Teste com selects.sql e updates_deletes.sql
