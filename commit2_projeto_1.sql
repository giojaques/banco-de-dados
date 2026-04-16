USE projeto_1;

ALTER TABLE tbAluno 
ADD email_aluno varchar(100);

ALTER TABLE tbProfessor
ADD email_professor varchar(100);

ALTER TABLE tbProfessor
DROP COLUMN telefone_professor;

CREATE TABLE tbTurma (
    codigo_turma int auto_increment primary key,
    codigo_disciplina_FK int,
    periodo_letivo varchar(10),
    foreign key (codigo_disciplina_FK) references tbDisciplina(codigo_disciplina)
);

CREATE TABLE tbAvaliacao (
    codigo_avaliacao int auto_increment primary key,
    matricula_aluno_FK int,
    codigo_turma_FK int,
    nota decimal(5, 2),
    foreign key (matricula_aluno_FK) references tbAluno(matricula_aluno),
    foreign key (codigo_turma_FK) references tbTurma(codigo_turma)
);

CREATE TABLE tbHorario (
    codigo_horario int auto_increment primary key,
    codigo_turma_FK int,
    dia_semana varchar(10),
    horario_inicio time,
    horario_fim time,
    foreign key (codigo_turma_FK) references tbTurma(codigo_turma)
);
