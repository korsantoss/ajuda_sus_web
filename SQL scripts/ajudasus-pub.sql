-- insert de publicaçao  --
insert into publicacao
values
(null,'?','?',curdate(),'?',?);

-- editar publicaçao  --
update publicacao
set titulo = 'Teste',
conteudo = 'Teste',
autor = 'Teste'
where  idpublicacao = 11;

-- deletar publicaçao --
delete from publicacao
where idpublicacao = 10;

select * from publicacao
where idpublicacao = 1;

-- selecionar publicaçao --
select DISTINCT publicacao.titulo, publicacao.conteudo, publicacao.data, publicacao.autor
from publicacao,agenda,posto
where publicacao.FK_idposto = posto.idposto
and `data` between 20200423 and 99991230
and posto.idposto = 1
order by `data` desc

-- where`data` between YYYYMMDD  and YYYYMMDD;