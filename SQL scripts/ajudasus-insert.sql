insert into posto 
values 
										-- upa 24hrs//Nossa Sra. de Fatima--
(null,'Upa 24HRS','45600200','Itabuna','BA','Nossa Sra. de Fatima','rua o','S/N',null,'7332153677','000000','000000'),
										-- SAO CAETANO--
(null,'UBS Jose Edites','45607090','Itabuna','BA','São Caetano','Rua Floresta','64',null,'7336177550','070000','170000'),
										-- NOVA ITABUNA--
(null,'UBS Dr Calixto Midlej','45611122','Itabuna','BA','Nova Itabuna','Rua E','2',null,'7336161882','070000','170000'),
										-- MANGABINHA--
(null,'UBS Dr Nilton Ramos','45600185','Itabuna','BA','Mangabinha','Rua Ubaldino Brandão','S/N',null,'7332119562','070000','170000'),
										-- Sarinha Alcantara--
(null,'Posto de Saude','45608100','Itabuna','BA','Sarinha Alcantara','Rua Bom Jesus da Lapa','323',null,null,'070000','170000'),
										-- Califórnia--
(null,'UBS Alberto Teixeira Barreto','45604252','Itabuna','BA','Califórnia','Rua Santa Rita','442',null,'7332156963','070000','170000'),
										-- Lomanto Júnior--
(null,'UBS Moise Hage','45601105','Itabuna','BA','Lomanto Júnior','Praça Rua Lomanto Júnior','S/N',null,'7336126152','070000','210000'),
										-- Maria Pinheiro--
(null,'USF Dr. Candido Pereira','45606730','Itabuna','BA','Maria Pinheiro','Rua Nossa Sra. de Fátima','336-384',null,null,'070000','170000'),
										-- Santo Antônio--
(null,'UBS Dr Roberto Santos','45602275','Itabuna','BA','Santo Antônio','Rua Santos Dumont','11',null,'7336134157','070000','170000'),
										-- Sival Palmeira//ubis IV--
(null,'USF Dr Elson Duarte','45603175','Itabuna','BA','Sival Palmeira','Baxia A','S/N',null,'7336162878','070000','170000'),
										-- Centro//Alto dos Canecos--
(null,'USF Dr João José Soares','45600970','Itabuna','BA','Centro','Travessa Vila Das Dores','617',null,'7332156436','070000','170000'),
										-- Vila Anália--
(null,'Posto De Saude','45608485','Itabuna','BA','Vila Anália','Rua São Francisco','70',null,null,'070000','170000'),
										-- Alto Maron--
(null,'Posto Universal','45603415','Itabuna','BA','Alto Maron','Rua Maria Olívia Rebouças','S/N',null,'7332148325','000000','000000');


												-- insert especialidades --
insert into especialidade
values
(1,'Clínico geral'),
(2,'Pediatria'),
(3,'Gastroenterologista'),
(4,'Endoscopista'),
(5,'Ginecologista'),
(6,'Otorrinolaringologista ');



												-- insert medico --
insert into medico
values
(null,'Ricardo Pires Ribas','21715','BA','dr.ricardoPiresRibas@EMAILFICTICIO.com.br'),
(null,'Jan Johann Reinel de Castro','19181','BA','dr.JanJohannReinel@EMAILFICTICIO.com.br'),
(null,'Joel Almeida Filho','5875','BA','dr.JoelAlmeidaFilho@EMAILFICTICIO.com.br'),
(null,'Lorena Pithon Lins','21520','BA','dra.LorenaPithonLins@EMAILFICTICIO.com.br'),
(null,'Najla Godoy Doueidar','19176','BA','dra.NajlaGodoyDoueidar@EMAILFICTICIO.com.br'),
(null,'Iago Reinel de Castro','19','BA','dr.IagoReineldeCastro@EMAILFICTICIO.com.br'),
(null,'Filemon Jovita Soares','4457','BA','dr.FilemonJovitaSoares@EMAILFICTICIO.com.br'),
(null,'Pedro Roberto Bezerra Pereira','5082','BA','dr.PedroRobertoBezerraPereira@EMAILFICTICIO.com.br'),
(null,'Tarcísio Alves','27526','BA','dr.TarcísioAlves@EMAILFICTICIO.com.br'),
(null,'Danilo Caires Costa','24124','BA','dr.DaniloCairesCosta@EMAILFICTICIO.com.br'),
(null,'Laurindo Lopes da Silva Neto','7034','BA','dr.LaurindoLopesdaSilvaNeto@EMAILFICTICIO.com.br'),
(null,'Ruy Oliveira de Sousa','8892','BA','dr.RuyOliveiradeSousa@EMAILFICTICIO.com.br'),
(null,'Rafael Brandalize Brotto','39451','BA','dr.RafaelBrandalizeBrotto@EMAILFICTICIO.com.br'),
(null,'Antonio Edson Lopes','6731','BA','dr.AntonioEdsonLopes@EMAILFICTICIO.com.br'),
(null,'Alberto Henrique Palma Andrade','8732','BA','dr.AlbertoHenriquePalmaAndrade@EMAILFICTICIO.com.br'),
(null,'Pedro Schaer de Codes','17987','BA','dr.PedroSchaerdeCodes@EMAILFICTICIO.com.br'),
(null,'Victor Marques','27489','BA','dr.VictorMarques@EMAILFICTICIO.com.br'),
(null,'Silvane Francisco Chaves','3741','BA','dr.SilvaneFranciscoChaves@EMAILFICTICIO.com.br');

												-- publicaçoes --                                            

insert into publicacao
values
						-- UPA 24HRS --
(1,'Campanha de vacinação para crianças e adolescentes será encerrada no próximo dia 30',
'Crianças com idade entre 01 e 05 anos e também adolescentes que ainda não foram vacinadas devem ser levadas pelos pais ou responsáveis a uma
unidade de saúde próxima de sua residência para que possam ser imunizadas contra a poliomielite ou atualizar a caderneta de vacina.O público-alvo
da vacina contra a pólio são crianças com idade entre 1 e 5 anos. Já a campanha de multivacinação é destinada as crianças e adolescentes com até 15 anos. A campanha prossegue até o próximo dia 30.
No momento da vacina é imprescindível apresentar caderneta de vacina e cartão do SUS. Importante lembrar que os pais ou responsáveis também devem
levar cópia da primeira página da caderneta de vacina, e da página do controle de imunização, para que sejam atualizados os dados das crianças no 
sistema da Secretaria Municipal de Saúde.',20201023,'Assessoria de Comunicação',1),

										-- UPA 24HRS --
(2,'UPA 24h recebe adequações para realizar triagem de pacientes com suspeita do Covid',
'Para ser utilizada como um Centro de Triagem para pacientes com suspeita do Covid-19 (Coronavírus), a Unidade de Pronto Atendimento 24 horas
(UPA 24 Horas), no bairro Monte Cristo, em Itabuna, passou uma série de adequações em sua estrutura física, de modo a atender os padrões 
sanitários exigidos pelos órgãos de saúde. Nos últimos dias, a Prefeitura de Itabuna, através da Secretaria Municipal de Saúde realizou 
intervenções que vão garantir a segurança, tanto dos pacientes, quanto dos profissionais de saúde que trabalham no local.
A UPA 24h dispõe de 13 (treze) leitos, sendo 10 (dez) leitos clínicos e 3 (três) leitos de terapia invasiva para estabilização do paciente,
 com ventilador mecânico, monitor e bombas de infusão. Dentre as modificações realizadas na Unidade, destacam-se a instalação de guichês,
 que estarão garantindo maior isolamento da equipe profissional, e a modificação da garagem da ambulância, que mudou o fluxo de entrada de
 pacientes. De acordo com a Secretaria Municipal de Saúde, todas essas intervenções visaram a garantia dos padrões sanitários e de segurança
 para os servidores.Em paralelo as intervenções na UPA 24h, a Prefeitura de Itabuna segue trabalhando para ampliar a capacidade de atendimento
 no Hospital de Base Luís Eduardo Magalhães. Na última terça-feira, o Governo do Estado da Bahia anunciou que estará viabilizando a implantação
 de 21 leitos de UTI e 38 clínicos no Hospital de Base Luís Eduardo Magalhães. Em reunião com o Governador Rui Costa, o prefeito Fernando Gomes
 anunciou ainda o que o município irá disponibilizar R$ 4 milhões para a compra de 30 respiradores, que equiparão UTIs no Hospital de Base.',
 '20200424','Assessoria de Comunicação',1),
 
										-- UPA 24HRS --
 (3,'UPA 24 horas recebe mais 5 respiradores e passa a contar com oito leitos de estabilização','A Unidade de Pronto Atendimento 24 horas
 (UPA 24 horas), em Itabuna, teve sua capacidade ampliada para o atendimento de pacientes com suspeita da COVID-19. A unidade que está sendo
 usada como um Centro de Triagem para pacientes com suspeita da doença, além de ter passado por uma série de adequações em sua estrutura física
 para atender os padrões sanitários e de segurança exigidos pelos órgãos de saúde, agora recebeu novos respiradores pulmonares.De acordo com 
 Diretora do Departamento de Média e Alta Complexidade, Fabrícia Moura, o Governo do Estado doou cinco respiradores para a Média e Alta Complexidade,
 e os mesmos foram direcionados para UPA 24 horas, visando a ampliação dos leitos de estabilização, que tem a mesma finalidade de um leito de 
 UTI, só que na UPA, por se tratar de um centro de triagem o paciente só pode permanecer por um período de 24 horas. “Estávamos com três leitos
 de estabilização, e agora com mais cinco, a UPA 24 horas passa a contar com oito leitos de estabilização”, informou.',
 '20200622','Assessoria de Comunicação',1),
 
										-- LOMANTO JUNIOR --
 (4,'Posto de Saúde do Lomanto será contemplado nesta quarta com o Mutirão Fila Zero',
 'O Posto de Saúde Moisés Hage, do bairro Lomanto, será contemplado nesta quarta-feira (04) com o Mutirão Fila Zero, uma iniciativa do 
 Departamento de Regulação, Controle e Avaliação do SUS da Secretaria Municipal de Saúde. O objetivo é atender as demandas de exames e 
 consultas de média complexidade que estão inseridas no Sistema de Regulação, de acordo com a ordem de entrada no referido sistema.Vale 
 ressaltar que este Mutirão que visa à humanização do atendimento aos itabunenses chegará a todas as Unidades de Saúde (UBS/USF) do município
 – um total de 30 -, seguindo um cronograma de datas. Esta ação que tem início nesta quarta-feira (04) seguirá até o dia 15 de dezembro. Vale
 ressaltar que no Fila Zero serão oferecidos todos os procedimentos de Média Complexidade (Consultas e exames) que já são disponibilizados nas
 Unidades de Saúde (Postos de Saúde), procedimentos de média complexidade executados pela Policlínica Regional, além dos procedimentos que já
 são disponibilizados mensalmente para a Unidade.Atendimento Para o atendimento, o paciente deverá apresentar comprovante de residência no seu
 Nome ou declaração do Agente comunitário de Saúde que acompanha a família, CPF, RG, Cartão do SUS e Pedido do Médico (solicitação de exame ou
 consulta). Se o paciente não puder comparecer, seu representante poderá apresentar os documentos solicitados para agendar a consulta ou exame.',
 '2020-03-03','Assessoria de Comunicação',7),
							
														-- Sao caetano --
 (5,'Itabuna intensifica ações durante a Semana Nacional de Combate às Arboviroses ',
 'A Prefeitura Municipal de Itabuna, através da Secretaria Municipal de Saúde/Coordenação de Endemias, tem intensificado as ações de combate
 as arboviroses, e no período de 30 de novembro a 04 de dezembro, este trabalho ganhará um reforço em razão da Semana Nacional de Combate às
 Arboviroses. De acordo com Roberto Góes, Coordenador de Endemias, esta é uma ação desenvolvida pelo Ministério da Saúde em parceria com a 
 Secretaria Estadual de Saúde/Núcleo Regional Sul e Prefeitura Municipal de Itabuna.“Esta será uma mobilização nacional focada nos cuidados
 contra o Aedes Aegypti – mosquito transmissor da dengue, zika e chikungunya. Faremos uma ação direta com a comunidade abordando a importância
 dos cuidados, estaremos também nas praças, avenidas, distribuindo informativos, expondo com cartazes e faixas com o intuito de chamar a 
 atenção da população para a necessidade de evitar a proliferação do mosquito Aedes Aegypti, principalmente conta do início do verão, quando
 há uma maior incidência”, explicou Roberto Góes.',
 '20201118','Assessoria de Comunicação','2'),
 
 -- Bairro Santo antonio --
(6,'Prefeitura de Itabuna convoca pais e responsáveis para vacinação de crianças contra a poliomielite ',
'A Prefeitura Municipal de Itabuna, através da Secretaria Municipal de Saúde, convoca os pais e responsáveis de crianças com idade entre 01
 e 05 anos, para vacinação contra a poliomielite. É preciso comparecer ao posto de saúde mais próximo de sua residência, munido de caderneta 
 de vacina e cartão do SUS da criança. Importante lembrar que também devem levar cópia da primeira página da caderneta e da página do controle
 de vacinas, para que sejam atualizados os dados das crianças no sistema da Secretaria Municipal de Saúde.Infelizmente, por conta da pandemia
 da COVID-19, muitos pais têm deixado de ir ao posto de saúde para vacinar suas crianças, o que levou até o momento, a menos de 50% de 
 cobertura vacinal. Vale ressaltar, que estão sendo adotadas todas as medidas de segurança. A imunização ocorre em todas as unidades de saúde
 da cidade. Vale ressaltar que no bairro Santo Antônio, onde o posto de saúde está em reforma, a vacinação ocorre no Grupo Escolar Luiz Viana
 Filho, situado na avenida José Monstans.',
'20201110','Assessoria de Comunicação',9);
 
insert into medico_has_especialidade
values
(1,1),
(2,2),
(3,5),
(4,3),
(5,5),
(6,2),
(7,2),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,5),
(15,6),
(16,6),
(17,1),
(18,1);

insert into agenda
values 
(null,'SEGUNDA',070000,1,1),
(null,'SEGUNDA',093000,5,1),
(null,'TERÇA',070000,3,1),
(null,'TERÇA',100000,2,1),
(null,'QUARTA',070000,2,1),
(null,'QUARTA',084000,1,1),
(null,'QUINTA',070000,4,1),
(null,'QUINTA',090000,6,1),
(null,'SEXTA',070000,5,1),
(null,'SEXTA',110000,1,1),
/*1 ok*/
(null,'SEGUNDA',070000,2,2),
(null,'SEGUNDA',093000,3,2),
(null,'TERÇA',070000,2,2),
(null,'TERÇA',100000,5,2),
(null,'QUARTA',070000,1,2),
(null,'QUARTA',084000,1,2),
(null,'QUINTA',070000,4,2),
(null,'QUINTA',090000,5,2),
(null,'SEXTA',070000,1,2),
(null,'SEXTA',110000,2,2),
/*2 ok*/
(null,'SEGUNDA',070000,1,3),
(null,'SEGUNDA',093000,2,3),
(null,'TERÇA',070000,1,3),
(null,'TERÇA',100000,2,3),
(null,'QUARTA',070000,1,3),
(null,'QUARTA',084000,2,3),
(null,'QUINTA',070000,1,3),
(null,'QUINTA',090000,2,3),
(null,'SEXTA',070000,1,3),
(null,'SEXTA',110000,2,3),
/*3 ok*/
(null,'SEGUNDA',070000,1,4),
(null,'SEGUNDA',093000,5,4),
(null,'TERÇA',070000,3,4),
(null,'TERÇA',100000,2,4),
(null,'QUARTA',070000,2,4),
(null,'QUARTA',084000,1,4),
(null,'QUINTA',070000,4,4),
(null,'QUINTA',090000,6,4),
(null,'SEXTA',070000,5,4),
(null,'SEXTA',110000,1,4),
/*4 ok*/
(null,'SEGUNDA',073000,1,5),
(null,'SEGUNDA',100000,5,5),
(null,'TERÇA',073000,5,5),
(null,'TERÇA',100000,2,5),
(null,'QUARTA',073000,2,5),
(null,'QUARTA',100000,1,5),
(null,'QUINTA',073000,1,5),
(null,'QUINTA',100000,5,5),
(null,'SEXTA',073000,5,5),
(null,'SEXTA',100000,2,5),
/*5 ok*/
(null,'SEGUNDA',070000,1,6),
(null,'SEGUNDA',093000,5,6),
(null,'TERÇA',070000,3,6),
(null,'TERÇA',100000,2,6),
(null,'QUARTA',070000,2,6),
(null,'QUARTA',084000,1,6),
(null,'QUINTA',070000,4,6),
(null,'QUINTA',090000,6,6),
(null,'SEXTA',070000,5,6),
(null,'SEXTA',110000,1,6),
/*6 */
(null,'SEGUNDA',070000,1,7),
(null,'SEGUNDA',093000,5,7),
(null,'TERÇA',070000,3,7),
(null,'TERÇA',100000,2,7),
(null,'QUARTA',070000,2,7),
(null,'QUARTA',084000,1,7),
(null,'QUINTA',070000,4,7),
(null,'QUINTA',090000,6,7),
(null,'SEXTA',070000,5,7),
(null,'SEXTA',110000,1,7),
/*7 */
(null,'SEGUNDA',070000,1,8),
(null,'SEGUNDA',093000,5,8),
(null,'TERÇA',070000,3,8),
(null,'TERÇA',100000,2,8),
(null,'QUARTA',070000,2,8),
(null,'QUARTA',084000,1,8),
(null,'QUINTA',070000,4,8),
(null,'QUINTA',090000,6,8),
(null,'SEXTA',070000,5,8),
(null,'SEXTA',110000,1,8),
/*8*/
(null,'SEGUNDA',070000,1,9),
(null,'SEGUNDA',093000,5,9),
(null,'TERÇA',070000,3,9),
(null,'TERÇA',100000,2,9),
(null,'QUARTA',070000,2,9),
(null,'QUARTA',084000,1,9),
(null,'QUINTA',070000,4,9),
(null,'QUINTA',090000,6,9),
(null,'SEXTA',070000,5,9),
(null,'SEXTA',110000,1,9),
/*9 */
(null,'SEGUNDA',070000,1,10),
(null,'SEGUNDA',093000,5,10),
(null,'TERÇA',070000,3,10),
(null,'TERÇA',100000,2,10),
(null,'QUARTA',070000,2,10),
(null,'QUARTA',084000,1,10),
(null,'QUINTA',070000,4,10),
(null,'QUINTA',090000,6,10),
(null,'SEXTA',070000,5,10),
(null,'SEXTA',110000,1,10),
/*10 */
(null,'SEGUNDA',070000,1,11),
(null,'SEGUNDA',093000,5,11),
(null,'TERÇA',070000,3,11),
(null,'TERÇA',100000,2,11),
(null,'QUARTA',070000,2,11),
(null,'QUARTA',084000,1,11),
(null,'QUINTA',070000,4,11),
(null,'QUINTA',090000,6,11),
(null,'SEXTA',070000,5,11),
(null,'SEXTA',110000,1,11),
/*11 */
(null,'SEGUNDA',070000,1,12),
(null,'SEGUNDA',093000,5,12),
(null,'TERÇA',070000,3,12),
(null,'TERÇA',100000,2,12),
(null,'QUARTA',070000,2,12),
(null,'QUARTA',084000,1,12),
(null,'QUINTA',070000,4,12),
(null,'QUINTA',090000,6,12),
(null,'SEXTA',070000,5,12),
(null,'SEXTA',110000,1,12),
/*12 */
(null,'SEGUNDA',070000,1,13),
(null,'SEGUNDA',093000,5,13),
(null,'TERÇA',070000,3,13),
(null,'TERÇA',100000,2,13),
(null,'QUARTA',070000,2,13),
(null,'QUARTA',084000,1,13),
(null,'QUINTA',070000,4,13),
(null,'QUINTA',090000,6,13),
(null,'SEXTA',070000,5,13),
(null,'SEXTA',110000,1,13);
/*13 */


/*delete from medico_has_especialidade
where FK_idmedico = 3;*/

select * from medico_has_especialidade;

select * from medico_has_especialidade, especialidade, medico
where medico.idmedico = medico_has_especialidade.FK_idmedico 
and especialidade.idespeci = medico_has_especialidade.FK_idespeci; 