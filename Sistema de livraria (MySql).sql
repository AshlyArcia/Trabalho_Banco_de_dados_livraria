CREATE TABLE `Usuario` (
  `id_usuario` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255),
  `tipo` varchar(255) COMMENT 'Aluno ou Professor'
);

CREATE TABLE `Livro` (
  `id_livro` int PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(255),
  `ano_publicacao` int
);

CREATE TABLE `Autor` (
  `id_autor` int PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(255)
);

CREATE TABLE `Livro_Autor` (
  `id_livro` int,
  `id_autor` int
);

CREATE TABLE `Emprestimo` (
  `id_emprestimo` int PRIMARY KEY AUTO_INCREMENT,
  `id_usuario` int,
  `id_livro` int,
  `data_emprestimo` date,
  `data_devolucao` date
);

ALTER TABLE `Usuario` COMMENT = 'Tabela de usuários da biblioteca';

ALTER TABLE `Livro` COMMENT = 'Tabela de livros disponíveis ';

ALTER TABLE `Autor` COMMENT = 'Tabela de autores dos livros';

ALTER TABLE `Livro_Autor` COMMENT = 'Tabela entre livros e autores';

ALTER TABLE `Emprestimo` COMMENT = 'Tabela de empréstimos realizados';

ALTER TABLE `Livro_Autor` ADD FOREIGN KEY (`id_livro`) REFERENCES `Livro` (`id_livro`);

ALTER TABLE `Livro_Autor` ADD FOREIGN KEY (`id_autor`) REFERENCES `Autor` (`id_autor`);

ALTER TABLE `Emprestimo` ADD FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`);

ALTER TABLE `Emprestimo` ADD FOREIGN KEY (`id_livro`) REFERENCES `Livro` (`id_livro`);
