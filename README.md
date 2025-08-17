# Gestão de Biblioteca Universitária

## Tema
Sistema de gerenciamento de empréstimos de livros, cadastro de usuários e controle de emprestimo.

---

##  Descrição do Problema Modelado

Este projeto visa atender às necessidades de uma biblioteca universitária, permitindo o controle eficiente de empréstimos de livros, cadastro de usuários (alunos e professores), e gerenciamento do emprestimo. O sistema facilita:

- Registro de usuários
- Cadastro de livros e seus autores
- Associação entre livros e autores
- Registro de empréstimos e devoluções
- Consultas sobre histórico de empréstimos.

---

##  Entidades e Relacionamentos

### 🔹 `Usuario`
- `id_usuario`: Identificador único
- `nome`: Nome do usuário
- `tipo`: Aluno ou Professor  
**Relacionamento:** 1:N com `Emprestimo`

### 🔹 `Livro`
- `id_livro`: Identificador único
- `titulo`: Título do livro
- `ano_publicacao`: Ano de publicação  
**Relacionamento:** N:N com `Autor` via `Livro_Autor`, 1:N com `Emprestimo`

### 🔹 `Autor`
- `id_autor`: Identificador único
- `nome`: Nome do autor  
**Relacionamento:** N:N com `Livro` via `Livro_Autor`

### 🔹 `Livro_Autor`
- Tabela associativa entre `Livro` e `Autor`  
**Relacionamento:** N:N

### 🔹 `Emprestimo`
- `id_emprestimo`: Identificador único
- `id_usuario`: FK para `Usuario`
- `id_livro`: FK para `Livro`
- `data_emprestimo`: Data do empréstimo
- `data_devolucao`: Data da devolução  
**Relacionamento:** N:1 com `Usuario` e `Livro`


## Como Rodar o Projeto
# 1. Criar o banco de dados
CREATE DATABASE biblioteca;

# 2. Selecionar o banco
USE biblioteca;

# 3. Rodar o script de criação das tabelas
SOURCE create_tables.sql;

# 4. Inserir dados de exemplo
SOURCE insert_data.sql;

# 5. Executar consultas de teste
SOURCE queries.sql;

### Normalização

As tabelas foram organizadas até a 3ª Forma Normal (3FN):

Cada entidade tem sua própria tabela.

Não há atributos repetidos ou dados redundantes.

Garantindo integridade e evita inconsistências.





