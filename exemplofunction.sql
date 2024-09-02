use cadastro;
delimiter $$
create function preferem_o_curso(curso varchar(30)) returns int
begin
    declare quantidade int;
    set quantidade = (select count(*) from estudante join curso on
    estudante.cursopreferido = curso.idcurso and curso.nome like curso);
    return quantidade;
 end $$   
 delimiter ;

 select prefere_o_curso("Python") as "Preferem o Java"