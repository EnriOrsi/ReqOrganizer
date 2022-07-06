drop database if exists reqs;
create database reqs;
use reqs;

create table reqs (
	id_req int not null auto_increment primary key,
	empresa varchar(255),
	dt_req datetime,
	status_req int /* 0 = não feito, 1 = ok, 2 = em andamento */
);

create table info_req (
	id_info int not null auto_increment primary key,
	descricao varchar(666),
	nr_item varchar(255),
	desc_categoria varchar(255),
	local_dest varchar(255),
	fornecedor varchar(255),
	local_forn varchar(255),
	conta_deb varchar(666),
	link_acesso varchar(666),
    id_req int
);

create table acessos (
	id_acesso int not null auto_increment primary key,
    login varchar(666),
    senha varchar(666),
    id_req int
);

insert into reqs set empresa = 'locaweb', dt_req = CURRENT_TIMESTAMP(), status_req = 0;
insert into info_req set descricao = 'LOCAWEB SMTP CONTRACT - JUL/2022', nr_item = 'SER036', desc_categoria = 'SERVICO.CONSULTORIA INFORMATICA PJ', local_dest= 'KMB_AD_SP_002', fornecedor='LOCAWEB SERVICOS DE INTERNET S.A.', local_forn='0001-52', conta_deb='01.9023.61410028.02.00.00.000000.000000', link_acesso= 'https://locaweb.com.br', id_req=1;
insert into acessos set login='kmb', senha='_932u8#!@@%(*', id_req=1;

select * from reqs ORDER BY dt_req DESC LIMIT 3;

select * from reqs as r inner join info_req as i on r.id_req = i.id_req inner join acessos as a on r.id_req = a.id_req; 

DELETE FROM reqs, info_req, acessos USING reqs, info_req, acessos WHERE reqs.id_req = info_req.id_req AND reqs.id_req = acessos.id_req AND reqs.id_req = 1;