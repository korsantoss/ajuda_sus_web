-- selecionar posto consulta --

select * from ajudasus.posto
where idposto = 3;



-- SELECIONAR TODOS OS POSTOS COM A ESPECIALIDADE ESPECIFICADA. --

select * from ajudasus.posto,agenda,especialidade
where agenda.FK_idposto = posto.idposto
and agenda.FK_idespeci = especialidade.idespeci
and especialidade.idespeci = 5;

-- Selecionar especialidade e posto --

select distinct posto.idposto, posto.nome, posto.cep, posto.cidade, posto.UF, posto.bairro, posto.rua, posto.numero,
posto.telefone, posto.h_abre, posto.h_fecha
from ajudasus.posto,agenda,especialidade
where agenda.FK_idposto = posto.idposto
and agenda.FK_idespeci = especialidade.idespeci
and especialidade.idespeci = 1 and posto.idposto = 3;

-- Selecionar agendas do posto --

select distinct agenda.idagenda, agenda.dia, agenda.hora, agenda.FK_idespeci, agenda.FK_idposto, especialidade.idespeci,especialidade.especi 
from ajudasus.posto,agenda,especialidade
where agenda.FK_idposto = posto.idposto
and agenda.FK_idespeci = especialidade.idespeci
and posto.idposto = 3
order by idagenda;

select * from ajudasus.posto where idposto = 1;

select distinct posto.idposto, posto.nome, posto.cep, posto.cidade, posto.UF, posto.bairro, posto.rua, posto.numero,
posto.telefone, posto.h_abre, posto.h_fecha, especialidade.especi
from posto, agenda, especialidade 
where especialidade.idespeci = agenda.FK_idespeci and posto.idposto = agenda.fk_idposto and FK_idespeci = 1;

select * from posto;