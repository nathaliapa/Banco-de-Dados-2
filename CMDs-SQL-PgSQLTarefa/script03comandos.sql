
--nome:nathalia da cunha paulino
--comandos

--seleção

select * from autores where dtnascimento < '1980-01-01';

--projeção

select pkautor,txnomeautor,autores.dtnascimento from autores; 
--melhorando o comando

select pkautor,txnomeautor,autores.dtnascimento from autores where dtnascimento < '1980-01-01';

--produto cartesiano

select * from autores,seguros;

--junção natural
select * from consultas inner join medicos on consultas.fkmedico=medicos.pkmedico;

--união

( SELECT * FROM consultas WHERE consultas.dtcadconsulta >= '2013-01-01' )
           UNION (SELECT * FROM consultas WHERE consultas.dtcadconsulta <  '2013-01-01') ORDER BY dtcadconsulta;

--Junção Aberta pela Direita

SELECT * FROM
            clientes RIGHT JOIN clientestels
         ON
			   clientes.pkcliente =
				clientestels.fkcliente;
				
--junção aberta pela esquerda

SELECT * FROM
            clientes LEFT JOIN clientestels
         ON
			   clientes.pkcliente =
				clientestels.fkcliente;
				
-- Subtração

select * from cidades EXCEPT (select * from clientes);

-- Intersecção

select * from cidades INTERSECT (select * from clientes);

-- Junção Completa (aberta pelos dois lados)

SELECT * FROM
            clientes FULL OUTER JOIN clientestels
         ON
			  clientes.pkcliente =
				clientestels.fkcliente;

-- inserção
INSERT INTO cores (pkcor,txnomecor, nupantone, dtcadcor)
       VALUES (18,'ciano','15151515','2020-03-10');

--exclusão
DELETE FROM cores WHERE pkcor IN (18);
													  
--alteração

UPDATE cores SET txnomecor="Amarelo" WHERE pkcor=6
