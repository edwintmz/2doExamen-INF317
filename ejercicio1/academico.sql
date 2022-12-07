create table profesores(
	id_prof int primary key,
	nombre varchar(50),
	apellido varchar(50),
	email	varchar(50),
	telefono	int,
	especialidad	varchar(50)
);

create table alumnos(
	id_alm	int primary key,
	nombre	varchar(50),
	apellidos	varchar(50),
	fec_nac	varchar(50),
	email	varchar(50),
	ci	varchar(50)
);

create table usuarios(
	id_usuario int primary key,
	usuario	varchar(50),
	pasword	varchar(50)
);

create table periodo(
	id_per	int primary key,
	periodo	int
);

create table turno(
	id_tur int primary key,
	turno	varchar(50)
);

create table matricula(
	id_mat int primary key,
	tipo_mat	varchar(50),
	fec_mat	varchar(50),
	id_alm int,
	id_tur int,
	id_usuario int,
	CONSTRAINT fk_alumno FOREIGN KEY (id_alm)
    REFERENCES alumnos (id_alm),
	CONSTRAINT fk_turno FOREIGN KEY (id_tur)
    REFERENCES turno (id_tur),
	CONSTRAINT fk_usuario FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario),
);

create table materias(
	id_mate	int primary key,
	materia	varchar(50),
	id_prof	int,
	CONSTRAINT fk_profesores FOREIGN KEY (id_prof)
	REFERENCES profesores (id_prof)
);

create table notas(
	id_not	int primary key,
	nota	int,
	id_mate	int,
	id_per	int,
	id_alm	int,
	CONSTRAINT fk_materia FOREIGN KEY (id_mate)
    REFERENCES materias (id_mate),
	CONSTRAINT fk_periodo FOREIGN KEY (id_per)
    REFERENCES periodo (id_per),
	CONSTRAINT fk_alumno1 FOREIGN KEY (id_alm)
    REFERENCES alumnos (id_alm)
);




insert into alumnos values(1,'Ruben','Alanoca','10/12/1995','RubenAlanoca@gmail.com','1012452');
insert into alumnos values(2,'Veronica','Calle','15/06/1991','VeronicaCalle@gmail.com','1012455');
insert into alumnos values(3,'Abigail','Perez','30/12/1999','AbigailPerez@gmail.com','1012456');
insert into alumnos values(4,'Rosa','Quispe','25/11/1995','RosaQuispe@gmail.com','1012464');
insert into alumnos values(5,'Maria','Lopez','20/05/1998','MariaLopez@gmail.com','1012466');
insert into alumnos values(6,'Eugenia','Prada','10/02/1996','EugeniaPrada@gmail.com','1012474');
insert into alumnos values(7,'Casimira','Loza','11/03/1997','CasimiraLoza@gmail.com','1012483');
insert into alumnos values(8,'Pedro','Infante','15/08/1993','PedroInfante@gmail.com','1012486');
insert into alumnos values(9,'Federico','Mendez','16/01/1990','FedericoMendez@gmail.com','1012494');
insert into alumnos values(10,'Ruben','Aguirre','16/05/1995','RubenAguirre@gmail.com','1012501');
insert into alumnos values(11,'Cinthia','Bellido','19/12/1985','CinthiaBellido@gmail.com','1012503');

select * from alumnos;


insert into turno values(1,'Mañana');
insert into turno values(2,'Tarde');
insert into turno values(3,'Noche');

select * from turno;


insert into periodo values(1,'2011');
insert into periodo values(2,'2012');
insert into periodo values(3,'2013');
insert into periodo values(4,'2014');
insert into periodo values(5,'2015');
insert into periodo values(6,'2016');
insert into periodo values(7,'2017');
insert into periodo values(8,'2018');
insert into periodo values(9,'2019');
insert into periodo values(10,'2020');


select * from periodo;


insert into usuarios values(1,'RubenAlanoca','1012452');
insert into usuarios values(2,'VeronicaCalle','1012458');
insert into usuarios values(3,'AbigailPerez','1012465');
insert into usuarios values(4,'RosaQuispe','1012467');
insert into usuarios values(5,'MariaLopez','1012472');
insert into usuarios values(6,'EugeniaPrada','1012477');
insert into usuarios values(7,'CasimiraLoza','1012482');
insert into usuarios values(8,'PedroInfante','1012487');
insert into usuarios values(9,'FedericoMendez','1012491');
insert into usuarios values(10,'RubenAguirre','1012492');
insert into usuarios values(11,'CinthiaBellido','1012500');


select * from usuarios;


insert into profesores values(1,'Lorenzo','Carri','LorenzoCarri@gmail.com','73015482','Quimica');
insert into profesores values(2,'Maria','Carrillo','MariaCarrillo@gmail.com','73016343','Matematicas');
insert into profesores values(3,'Carolina','Lopez','CarolinaLopez@gmail.com','73016938','Fisica');
insert into profesores values(4,'Pedro','Quispe','PedroQuispe@gmail.com','73017528','Biologia');
insert into profesores values(5,'Javier','Zarate','JavierZarate@gmail.com','73017718','Historia');
insert into profesores values(6,'Basilio','Lovera','BasilioLovera@gmail.com','73018207','Quimica');
insert into profesores values(7,'Miriam','Paz','MiriamPaz@gmail.com','73019143','Fisica');
insert into profesores values(8,'Teresa','Perez','TeresaPerez@gmail.com','73019607','Matematicas');
insert into profesores values(9,'Angel','Iturri','AngelIturri@gmail.com','73020431','Historia');
insert into profesores values(10,'Vicente','Pereira','VicentePereira@gmail.com','73021170','Artes');

select * from profesores;


insert into materias values(1,'Quimica',1);
insert into materias values(2,'Matematicas',2);
insert into materias values(3,'Fisica',3);
insert into materias values(4,'Biologia',4);
insert into materias values(5,'Historia II',5);
insert into materias values(6,'Quimica II',6);
insert into materias values(7,'Fisica II',7);
insert into materias values(8,'Matematicas II',8);
insert into materias values(9,'Historia II',9);
insert into materias values(10,'Artes II',10);

select * from materias;


insert into notas values(1,65,1,1,1);
insert into notas values(2,78,2,2,2);
insert into notas values(3,68,3,3,3);
insert into notas values(4,58,4,4,4);
insert into notas values(5,70,5,5,5);
insert into notas values(6,74,6,6,6);
insert into notas values(7,94,7,7,7);
insert into notas values(8,54,8,8,8);
insert into notas values(9,58,9,9,9);
insert into notas values(10,77,10,10,10);


select * from notas;


insert into matricula values(1,'Regular','13/02/2011',1,2,1);
insert into matricula values(2,'Regular','13/02/2012',2,3,2);
insert into matricula values(3,'Regular','13/02/2013',3,2,3);
insert into matricula values(4,'Regular','13/02/2014',4,3,4);
insert into matricula values(5,'Regular','13/02/2015',5,1,5);
insert into matricula values(6,'Regular','13/02/2016',6,1,6);
insert into matricula values(7,'Regular','13/02/2017',7,1,7);
insert into matricula values(8,'Regular','13/02/2018',8,3,8);
insert into matricula values(9,'Regular','13/02/2019',9,2,9);
insert into matricula values(10,'Regular','13/02/2020',10,3,10);


select * from matricula;