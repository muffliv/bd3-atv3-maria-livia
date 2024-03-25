delimiter $ 
create trigger trg_backup_aluno
before delete on tbl_aluno
for each row
begin insert into tbl_aluno_backup
set
cod_aluno = old.cod_aluno,
cod_turma = old.cod_turma,
nome = old.nome,
cpf = old.cpf,
rg = old.rg,
telefone_aluno = old.telefone_aluno,
telefone_responsavel = old.telefone_responsavel,
email = old.email,
data_nasc = old.data_nasc,
date_delete = NOW();

end
$

delete from tbl_aluno where 
cod_aluno = 4;

select * from tbl_aluno;
select * from tbl_aluno_backup;