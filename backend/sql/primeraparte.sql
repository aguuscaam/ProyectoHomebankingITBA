/*Tipo De Cliente*/
CREATE TABLE tipo_cliente(
				tipo_id INTEGER PRIMARY KEY,
				tipo_name TEXT NOT NULL
				);

INSERT INTO tipo_cliente (tipo_name)
VALUES ('Classic'), ('Gold'), ('Black');

SELECT *
FROM tipo_cliente;				

/*Tipo De Cuenta*/
CREATE TABLE tipo_cuenta(
				cuenta_id INTEGER PRIMARY KEY,
				cuenta_name TEXT NOT NULL
				);

INSERT INTO tipo_cuenta (cuenta_name)
VALUES ('Caja de ahorro en pesos'), ('Caja de ahorro en dolares'), ('Cuenta corriente');

SELECT *
FROM tipo_cuenta;			

/*Marcas de tarjetas*/
CREATE TABLE marca_tarjeta(
				tarjeta_id INTEGER PRIMARY KEY,
				tarjeta_name TEXT NOT NULL
				);

INSERT INTO marca_tarjeta (tarjeta_name)
VALUES ('VISA'), ('MASTERCARD'), ('AMEX'), ('CABAL');

SELECT *
FROM marca_tarjeta	

/*Agregado entidad tarjeta*/ /*Relacionado de tarjetas con la tabla donde se guardan las marcas de tarjeta y con el cliente al que pertenecen*/
CREATE TABLE tarjeta( 
				numero INTEGER PRIMARY KEY UNIQUE CHECK(length(numero) <= 20),
				cvv INTEGER UNIQUE,
				fecha_de_otorgamiento INTEGER DEFAULT '02/22',
				fecha_de_expiracion INTEGER DEFAULT '08/27',
				tipo_tarjeta INTEGER DEFAULT 'Credito',
				tarjeta_id INTEGER,
				customer_id INTEGER UNIQUE,
				FOREIGN KEY (customer_id)
				REFERENCES cliente (customer_id)
				FOREIGN KEY (tarjeta_id)
				REFERENCES marca_tarjeta (tarjeta_id)
				);
				
/*Agregar 500 tarjetas de credito*/ /*Primera parte*/
INSERT INTO tarjeta (numero, cvv, tarjeta_id, customer_id)
VALUES ('6545123547895245', 214, 1, 1); /*Aca agregamos 500 numeros aleatorios de tarjeta y asi con el resto*/

/*Agregar 500 tarjetas de credito*/ /*Segunda parte*/
INSERT INTO tarjeta (cvv, tarjeta_id, customer_id)
VALUES (215 ,4 ,2), (216 ,2 ,3), (217 ,3 ,4), (218 ,2 ,5), (219 ,4 ,6), (220 ,4 ,7), (221 ,2 ,8), (222 ,1 ,9), (223 ,3 ,10), (224 ,3 ,11), (225 ,1 ,12), (226 ,4 ,13), (227 ,1 ,14), (228 ,3 ,15), (229 ,2 ,16), (230 ,2 ,17), (231 ,2 ,18), (232 ,3 ,19), (233 ,4 ,20), (234 ,4 ,21), (235 ,1 ,22), (236 ,2 ,23), (237 ,4 ,24), (238 ,3 ,25), (239 ,4 ,26), (240 ,2 ,27), (241 ,4 ,28), (242 ,4 ,29), (243 ,1 ,30), (244 ,1 ,31), (245 ,2 ,32), (246 ,3 ,33), (247 ,3 ,34), (248 ,3 ,35), (249 ,3 ,36),
(250 ,4 ,37), (251 ,4 ,38), (252 ,4 ,39), (253 ,4 ,40), (254 ,4 ,41), (255 ,2 ,42), (256 ,1 ,43), (257 ,4 ,44), (258 ,1 ,45), (259 ,2 ,46), (260 ,3 ,47), (261 ,4 ,48), (262 ,3 ,49), (263 ,4 ,50), (264 ,1 ,51), (265 ,1 ,52), (266 ,1 ,53), (267 ,4 ,54), (268 ,3 ,55), (269 ,3 ,56), (270 ,3 ,57), (271 ,2 ,58), (272 ,1 ,59), (273 ,4 ,60), (274 ,1 ,61), (275 ,3 ,62), (276 ,4 ,63), (277 ,4 ,64), (278 ,4 ,65), (279 ,2 ,66), (280 ,1 ,67), (281 ,3 ,68), (282 ,4 ,69), (283 ,2 ,70), (284 ,4 ,71), (285 ,2 ,72),
(286 ,1 ,73), (287 ,1 ,74), (288 ,3 ,75), (289 ,3 ,76), (290 ,2 ,77), (291 ,3 ,78), (292 ,2 ,79), (293 ,3 ,80), (294 ,1 ,81), (295 ,2 ,82), (296 ,2 ,83), (297 ,1 ,84), (298 ,3 ,85), (299 ,3 ,86), (300 ,3 ,87), (301 ,3 ,88), (302 ,1 ,89), (303 ,2 ,90), (304 ,3 ,91), (305 ,4 ,92), (306 ,1 ,93), (307 ,3 ,94), (308 ,4 ,95), (309 ,4 ,96),
(310 ,3 ,97), (311 ,3 ,98), (312 ,3 ,99), (313 ,3 ,100), (314 ,2 ,101), (315 ,2 ,102), (316 ,2 ,103), (317 ,1 ,104), (318 ,1 ,105), (319 ,2 ,106), (320 ,4 ,107), (321 ,1 ,108), (322 ,2 ,109),(323 ,1 ,110), (324 ,1 ,111), (325 ,3 ,112), (326 ,3 ,113), (327 ,3 ,114), (328 ,3 ,115), (329 ,3 ,116), (330 ,2 ,117), (331 ,2 ,118), (332 ,1 ,119), (333 ,4 ,120), (334 ,1 ,121), (335 ,4 ,122),
(336 ,4 ,123), (337 ,2 ,124), (338 ,1 ,125), (339 ,3 ,126),(340 ,1 ,127), (341 ,1 ,128),(342 ,2 ,129), (343 ,2 ,130), (344 ,3 ,131), (345 ,1 ,132), (346 ,1 ,133), (347 ,4 ,134), (348 ,3 ,135), (349 ,1 ,136), (350 ,1 ,137), (351 ,1 ,138), (352 ,1 ,139), (353 ,4 ,140), (354 ,3 ,141), (355 ,1 ,142), (356 ,3 ,143), (357 ,2 ,144), (358 ,2 ,145), (359 ,1 ,146),(360 ,4 ,147), (361 ,2 ,148), (362 ,4 ,149), (363 ,2 ,150), (364 ,4 ,151), (365 ,4 ,152), (366 ,4 ,153), (367 ,2 ,154), (368 ,4 ,155), (369 ,1 ,156), (370 ,2 ,157), (371 ,1 ,158),(372 ,1 ,159),
(373 ,4 ,160), (374 ,4 ,161), (375 ,4 ,162), (376 ,4 ,163), (377 ,3 ,164), (378 ,3 ,165), (379 ,1 ,166), (380 ,2 ,167), (381 ,1 ,168), (382 ,3 ,169), (383 ,3 ,170), (384 ,2 ,171),
(385 ,1 ,172), (386 ,3 ,173), (387 ,3 ,174), (388 ,1 ,175), (389 ,3 ,176), (390 ,3 ,177), (391 ,4 ,178), (392 ,3 ,179), (393 ,1 ,180), (394 ,3 ,181), (395 ,3 ,182), (396 ,3 ,183),
(397 ,2 ,184), (398 ,1 ,185), (399 ,1 ,186), (400 ,4 ,187), (401 ,1 ,188), (402 ,1 ,189), (403 ,3 ,190), (404 ,1 ,191), (405 ,4 ,192), (406 ,1 ,193), (407 ,1 ,194), (408 ,4 ,195),
(409 ,4 ,196), (410 ,3 ,197), (411 ,1 ,198), (412 ,1 ,199), (413 ,2 ,200), (414 ,1 ,201), (415 ,1 ,202), (416 ,3 ,203), (417 ,3 ,204), (418 ,1 ,205), (419 ,3 ,206), (420 ,3 ,207),
(421 ,2 ,208), (422 ,2 ,209), (423 ,1 ,210), (424 ,1 ,211), (425 ,4 ,212), (426 ,2 ,213), (427 ,1 ,214), (428 ,3 ,215), (429 ,1 ,216), (430 ,2 ,217), (431 ,4 ,218), (432 ,3 ,219),
(433 ,1 ,220), (434 ,1 ,221), (435 ,3 ,222), (436 ,4 ,223), (437 ,3 ,224), (438 ,3 ,225), (439 ,2 ,226), (440 ,4 ,227), (441 ,1 ,228), (442 ,2 ,229), (443 ,1 ,230), (444 ,3 ,231), (445 ,1 ,232),
(446 ,2 ,233), (447 ,1 ,234), (448 ,3 ,235), (449 ,1 ,236), (450 ,1 ,237), (451 ,3 ,238), (452 ,1 ,239), (453 ,4 ,240), (454 ,1 ,241), (455 ,3 ,242), (456 ,4 ,243), (457 ,1 ,244),
(458 ,3 ,245), (459 ,4 ,246), (460 ,2 ,247), (461 ,3 ,248), (462 ,4 ,249), (463 ,4 ,250), (464 ,1 ,251), (465 ,4 ,252), (466 ,1 ,253), (467 ,1 ,254), (468 ,2 ,255), (469 ,3 ,256), (470 ,3 ,257),
(471 ,4 ,258), (472 ,1 ,259), (473 ,4 ,260), (474 ,1 ,261), (475 ,2 ,262), (476 ,2 ,263), (477 ,1 ,264), (478 ,4 ,265), (479 ,1 ,266), (480 ,2 ,267), (481 ,1 ,268), (482 ,4 ,269), (483 ,2 ,270),
(484 ,1 ,271), (485 ,2 ,272), (486 ,4 ,273), (487 ,2 ,274), (488 ,4 ,275), (489 ,1 ,276), (490 ,2 ,277), (491 ,2 ,278), (492 ,1 ,279), (493 ,4 ,280), (494 ,4 ,281), (495 ,4 ,282), (496 ,1 ,283),
(497 ,4 ,284), (498 ,3 ,285), (499 ,4 ,286), (500 ,4 ,287), (501 ,3 ,288), (502 ,4 ,289), (503 ,2 ,290), (504 ,3 ,291), (505 ,2 ,292), (506 ,1 ,293), (507 ,3 ,294), (508 ,3 ,295),
(509 ,3 ,296), (510 ,2 ,297), (511 ,3 ,298), (512 ,4 ,299), (513 ,3 ,300), (514 ,2 ,301), (515 ,1 ,302), (516 ,1 ,303), (517 ,2 ,304), (518 ,1 ,305), (519 ,3 ,306), (520 ,2 ,307),(521 ,2 ,308),
(522 ,1 ,309), (523 ,1 ,310), (524 ,2 ,311), (525 ,3 ,312), (526 ,4 ,313), (527 ,2 ,314), (528 ,2 ,315), (529 ,1 ,316), (530 ,2 ,317), (531 ,4 ,318), (532 ,4 ,319), (533 ,3 ,320),
(534 ,4 ,321), (535 ,4 ,322), (536 ,1 ,323), (537 ,4 ,324), (538 ,3 ,325), (539 ,3 ,326), (540 ,2 ,327), (541 ,1 ,328), (542 ,4 ,329), (543 ,1 ,330), (544 ,3 ,331), (545 ,1 ,332), (546 ,4 ,333),
(547 ,1 ,334), (548 ,4 ,335), (549 ,2 ,336), (550 ,1 ,337), (551 ,3 ,338), (552 ,3 ,339), (553 ,1 ,340), (554 ,4 ,341), (555 ,2 ,342), (556 ,1 ,343), (557 ,4 ,344), (558 ,1 ,345), (559 ,2 ,346),
(560 ,2 ,347), (561 ,3 ,348), (562 ,1 ,349), (563 ,2 ,350), (564 ,2 ,351), (565 ,1 ,352), (566 ,3 ,353), (567 ,1 ,354), (568 ,1 ,355), (569 ,4 ,356), (570 ,3 ,357), (571 ,1 ,358),
(572 ,4 ,359), (573 ,3 ,360), (574 ,3 ,361), (575 ,2 ,362), (576 ,4 ,363), (577 ,4 ,364), (578 ,1 ,365), (579 ,4 ,366), (580 ,4 ,367), (581 ,1 ,368), (582 ,1 ,369), (583 ,3 ,370),
(584 ,2 ,371), (585 ,3 ,372), (586 ,4 ,373), (587 ,3 ,374), (588 ,1 ,375), (589 ,2 ,376), (590 ,2 ,377), (591 ,4 ,378), (592 ,2 ,379), (593 ,2 ,380), (594 ,4 ,381), (595 ,1 ,382), (596 ,2 ,383),
(597 ,1 ,384), (598 ,3 ,385), (599 ,4 ,386), (600 ,4 ,387), (601 ,3 ,388), (602 ,1 ,389), (603 ,1 ,390), (604 ,3 ,391), (605 ,1 ,392), (606 ,2 ,393), (607 ,4 ,394), (608 ,4 ,395),(609 ,1 ,396),
(610 ,1 ,397), (611 ,1 ,398), (612 ,1 ,399), (613 ,2 ,400), (614 ,4 ,401), (615 ,1 ,402), (616 ,4 ,403), (617 ,2 ,404), (618 ,2 ,405), (619 ,4 ,406), (620 ,3 ,407), (621 ,4 ,408), (622 ,4 ,409),
(623 ,4 ,410), (624 ,1 ,411), (625 ,1 ,412), (626 ,4 ,413), (627 ,2 ,414), (628 ,4 ,415), (629 ,1 ,416), (630 ,1 ,417), (631 ,2 ,418), (632 ,4 ,419), (633 ,1 ,420), (634 ,4 ,421), (635 ,4 ,422),
(636 ,4 ,423), (637 ,2 ,424), (638 ,4 ,425), (639 ,2 ,426), (640 ,4 ,427), (641 ,1 ,428), (642 ,1 ,429), (643 ,2 ,430), (644 ,2 ,431), (645 ,4 ,432),(646 ,1 ,433), (647 ,2 ,434),
(648 ,4 ,435), (649 ,3 ,436), (650 ,2 ,437), (651 ,4 ,438), (652 ,4 ,439), (653 ,1 ,440), (654 ,3 ,441), (655 ,3 ,442),(656 ,3 ,443), (657 ,4 ,444), (658 ,4 ,445), (659 ,1 ,446), (660 ,4 ,447),
(661 ,2 ,448), (662 ,2 ,449), (663 ,3 ,450), (664 ,4 ,451), (665 ,4 ,452), (666 ,3 ,453), (667 ,4 ,454), (668 ,2 ,455), (669 ,2 ,456), (670 ,3 ,457), (671 ,4 ,458), (672 ,1 ,459), (673 ,3 ,460),
(674 ,2 ,461), (675 ,4 ,462), (676 ,1 ,463), (677 ,3 ,464), (678 ,1 ,465), (679 ,3 ,466), (680 ,2 ,467), (681 ,2 ,468), (682 ,2 ,469), (683 ,3 ,470), (684 ,4 ,471), (685 ,2 ,472),
(686 ,3 ,473), (687 ,2 ,474), (688 ,3 ,475), (689 ,2 ,476), (690 ,4 ,477), (691 ,3 ,478), (692 ,3 ,479), (693 ,1 ,480), (694 ,3 ,481), (695 ,2 ,482), (696 ,2 ,483), (697 ,3 ,484), (698 ,1 ,485),
(699 ,3 ,486), (700 ,2 ,487), (701 ,3 ,488), (702 ,2 ,489), (703 ,2 ,490), (704 ,1 ,491), (705 ,1 ,492), (706 ,1 ,493), (707 ,4 ,494), (708 ,2 ,495), (709 ,1 ,496), (710 ,4 ,497),
(711 ,1 ,498), (712 ,2 ,499)
; /*Aca agregamos 500 numeros aleatorios de tarjeta y asi con el resto*/

/*Consulta tabla tarjeta*/ 
SELECT * 
FROM tarjeta;
				
/*Agregado entidad direcciones*/ /*Puede ser usada por los clientes, empleados y sucursales con los campos utilizados en el SPRINT 5*/
CREATE TABLE direcciones( 
				direccion_id INTEGER NOT NULL PRIMARY KEY,
				calle TEXT NOT NULL,
				numero INTEGER NOT NULL,
				ciudad TEXT NOT NULL,
				provincia TEXT NOT NULL,
				pais TEXT NOT NULL DEFAULT 'Argentina'
				);

/*Agregar 500 direcciones*/
INSERT INTO direcciones (calle, numero, ciudad, provincia)
VALUES ('Av Corrientes',1538,'Capital Federal','Buenos Aires'),
('Av Corrientes',1933,'Capital Federal','Buenos Aires'),
('Av Corrientes',2012,'Capital Federal','Buenos Aires'),
('Av Corrientes',1332,'Capital Federal','Buenos Aires'),
('Av Corrientes',2799,'Capital Federal','Buenos Aires'),
('Av Corrientes',1749,'Capital Federal','Buenos Aires'),
('Av Corrientes',1503,'Capital Federal','Buenos Aires'),
('Av Corrientes',3649,'Capital Federal','Buenos Aires'),
('Av Corrientes',3363,'Capital Federal','Buenos Aires'),
('Av Corrientes',1752,'Capital Federal','Buenos Aires'),
('Av Corrientes',1569,'Capital Federal','Buenos Aires'),
('Av Corrientes',3437,'Capital Federal','Buenos Aires'),
('Av Corrientes',1503,'Capital Federal','Buenos Aires'),
('Av Corrientes',3600,'Capital Federal','Buenos Aires'),
('Av Corrientes',3315,'Capital Federal','Buenos Aires'),
('Av Corrientes',2653,'Capital Federal','Buenos Aires'),
('Av Corrientes',1960,'Capital Federal','Buenos Aires'),
('Av Corrientes',1019,'Capital Federal','Buenos Aires'),
('Av Corrientes',3706,'Capital Federal','Buenos Aires'),
('Av Corrientes',1320,'Capital Federal','Buenos Aires'),
('Av Corrientes',3700,'Capital Federal','Buenos Aires'),
('Av Cordoba',2018,'Capital Federal','Buenos Aires'),
('Av Cordoba',1766,'Capital Federal','Buenos Aires'),
('Av Cordoba',1565,'Capital Federal','Buenos Aires'),
('Av Cordoba',1637,'Capital Federal','Buenos Aires'),
('Av Cordoba',1431,'Capital Federal','Buenos Aires'),
('Av Cordoba',2264,'Capital Federal','Buenos Aires'),
('Av Cordoba',3486,'Capital Federal','Buenos Aires'),
('Av Cordoba',1701,'Capital Federal','Buenos Aires'),
('Av Cordoba',3708,'Capital Federal','Buenos Aires'),
('Av Cordoba',2766,'Capital Federal','Buenos Aires'),
('Av Cordoba',1633,'Capital Federal','Buenos Aires'),
('Av Cordoba',2826,'Capital Federal','Buenos Aires'),
('Av Cordoba',1144,'Capital Federal','Buenos Aires'),
('Av Cordoba',3305,'Capital Federal','Buenos Aires'),
('Av Cordoba',3731,'Capital Federal','Buenos Aires'),
('Av Cordoba',3146,'Capital Federal','Buenos Aires'),
('Av Cordoba',3088,'Capital Federal','Buenos Aires'),
('Av Cordoba',3301,'Capital Federal','Buenos Aires'),
('Av Cordoba',3982,'Capital Federal','Buenos Aires'),
('Av Cordoba',1756,'Capital Federal','Buenos Aires'),
('Av Cordoba',2616,'Capital Federal','Buenos Aires'),
('Av Cordoba',1527,'Capital Federal','Buenos Aires'),
('Av Cordoba',1485,'Capital Federal','Buenos Aires'),
('Av Cordoba',1313,'Capital Federal','Buenos Aires'),
('Av Cordoba',2642,'Capital Federal','Buenos Aires'),
('Av Cordoba',2435,'Capital Federal','Buenos Aires'),
('Av Cordoba',1185,'Capital Federal','Buenos Aires'),
('Av Cordoba',2245,'Capital Federal','Buenos Aires'),
('Calchaqui',2433,'Quilmes','Buenos Aires'),
('Calchaqui',2126,'Quilmes','Buenos Aires'),
('Calchaqui',3180,'Quilmes','Buenos Aires'),
('Calchaqui',2661,'Quilmes','Buenos Aires'),
('Calchaqui',2726,'Quilmes','Buenos Aires'),
('Calchaqui',3993,'Quilmes','Buenos Aires'),
('Calchaqui',1340,'Quilmes','Buenos Aires'),
('Calchaqui',3583,'Quilmes','Buenos Aires'),
('Calchaqui',3182,'Quilmes','Buenos Aires'),
('Calchaqui',1153,'Quilmes','Buenos Aires'),
('Calchaqui',1981,'Quilmes','Buenos Aires'),
('Calchaqui',3630,'Quilmes','Buenos Aires'),
('Calchaqui',1043,'Quilmes','Buenos Aires'),
('Calchaqui',2166,'Quilmes','Buenos Aires'),
('Calchaqui',1232,'Quilmes','Buenos Aires'),
('Calchaqui',3073,'Quilmes','Buenos Aires'),
('Calchaqui',3323,'Quilmes','Buenos Aires'),
('Mitre',2364,'Quilmes','Buenos Aires'),
('Mitre',3790,'Quilmes','Buenos Aires'),
('Mitre',3886,'Quilmes','Buenos Aires'),
('Mitre',1753,'Quilmes','Buenos Aires'),
('Mitre',2733,'Quilmes','Buenos Aires'),
('Mitre',1558,'Quilmes','Buenos Aires'),
('Mitre',3841,'Quilmes','Buenos Aires'),
('Mitre',2795,'Quilmes','Buenos Aires'),
('Mitre',1628,'Quilmes','Buenos Aires'),
('Mitre',1283,'Quilmes','Buenos Aires'),
('Mitre',3622,'Quilmes','Buenos Aires'),
('Alem',2827,'Quilmes','Buenos Aires'),
('Alem',1638,'Quilmes','Buenos Aires'),
('Alem',2625,'Quilmes','Buenos Aires'),
('Alem',2047,'Quilmes','Buenos Aires'),
('Alem',2521,'Quilmes','Buenos Aires'),
('Alem',1931,'Quilmes','Buenos Aires'),
('Alem',1195,'Quilmes','Buenos Aires'),
('Alem',1330,'Quilmes','Buenos Aires'),
('Alem',3775,'Quilmes','Buenos Aires'),
('Alem',3362,'Quilmes','Buenos Aires'),
('Alem',2524,'Quilmes','Buenos Aires'),
('Alem',3014,'Quilmes','Buenos Aires'),
('Alem',3944,'Quilmes','Buenos Aires'),
('Alem',2373,'Quilmes','Buenos Aires'),
('Alem',3482,'Quilmes','Buenos Aires'),
('Alem',1730,'Quilmes','Buenos Aires'),
('Alem',2185,'Quilmes','Buenos Aires'),
('Alem',3055,'Quilmes','Buenos Aires'),
('Calle 14',1319,'La Plata','Buenos Aires'),
('Calle 15',1622,'La Plata','Buenos Aires'),
('Calle 16',2203,'La Plata','Buenos Aires'),
('Calle 17',3112,'La Plata','Buenos Aires'),
('Calle 18',3902,'La Plata','Buenos Aires'),
('Calle 19',3248,'La Plata','Buenos Aires'),
('Calle 20',3942,'La Plata','Buenos Aires'),
('Calle 21',2830,'La Plata','Buenos Aires'),
('Calle 22',2817,'La Plata','Buenos Aires'),
('Calle 23',3046,'La Plata','Buenos Aires'),
('Calle 24',2316,'La Plata','Buenos Aires'),
('Calle 25',2457,'La Plata','Buenos Aires'),
('Calle 26',3564,'La Plata','Buenos Aires'),
('Diagonal 74',2030,'La Plata','Buenos Aires'),
('Diagonal 75',2720,'La Plata','Buenos Aires'),
('Diagonal 76',2957,'La Plata','Buenos Aires'),
('Diagonal 77',1741,'La Plata','Buenos Aires'),
('Diagonal 78',2382,'La Plata','Buenos Aires'),
('Diagonal 79',3980,'La Plata','Buenos Aires'),
('Diagonal 80',1552,'La Plata','Buenos Aires'),
('Diagonal 81',1475,'La Plata','Buenos Aires'),
('Diagonal 82',1575,'La Plata','Buenos Aires'),
('Diagonal 83',3198,'La Plata','Buenos Aires'),
('Diagonal 84',1243,'La Plata','Buenos Aires'),
('Diagonal 85',2687,'La Plata','Buenos Aires'),
('Diagonal 86',3598,'La Plata','Buenos Aires'),
('Diagonal 87',1115,'La Plata','Buenos Aires'),
('Diagonal 88',3963,'La Plata','Buenos Aires'),
('Diagonal 89',3891,'La Plata','Buenos Aires'),
('Diagonal 90',3672,'La Plata','Buenos Aires'),
('Presidente Roca',1761,'Rosario','Santa Fe'),
('Presidente Roca',1404,'Rosario','Santa Fe'),
('Presidente Roca',2139,'Rosario','Santa Fe'),
('Presidente Roca',3058,'Rosario','Santa Fe'),
('Presidente Roca',3705,'Rosario','Santa Fe'),
('Presidente Roca',3891,'Rosario','Santa Fe'),
('Presidente Roca',1261,'Rosario','Santa Fe'),
('Presidente Roca',2892,'Rosario','Santa Fe'),
('Presidente Roca',1681,'Rosario','Santa Fe'),
('Presidente Roca',3646,'Rosario','Santa Fe'),
('Presidente Roca',2109,'Rosario','Santa Fe'),
('Presidente Roca',1137,'Rosario','Santa Fe'),
('Presidente Roca',3865,'Rosario','Santa Fe'),
('Presidente Roca',1774,'Rosario','Santa Fe'),
('Presidente Roca',1076,'Rosario','Santa Fe'),
('Presidente Roca',2633,'Rosario','Santa Fe'),
('Presidente Roca',2907,'Rosario','Santa Fe'),
('Presidente Roca',1709,'Rosario','Santa Fe'),
('Cordoba',1694,'Rosario','Santa Fe'),
('Cordoba',2468,'Rosario','Santa Fe'),
('Cordoba',2679,'Rosario','Santa Fe'),
('Cordoba',3229,'Rosario','Santa Fe'),
('Cordoba',3370,'Rosario','Santa Fe'),
('Cordoba',1617,'Rosario','Santa Fe'),
('Cordoba',3583,'Rosario','Santa Fe'),
('Cordoba',1084,'Rosario','Santa Fe'),
('Cordoba',3146,'Rosario','Santa Fe'),
('Cordoba',2389,'Rosario','Santa Fe'),
('Cordoba',3077,'Rosario','Santa Fe'),
('Cordoba',1340,'Rosario','Santa Fe'),
('Cordoba',2154,'Rosario','Santa Fe'),
('Cordoba',2029,'Rosario','Santa Fe'),
('Cordoba',2821,'Rosario','Santa Fe'),
('Honorio',2651,'Rosario','Santa Fe'),
('Honorio',2350,'Rosario','Santa Fe'),
('Honorio',3327,'Rosario','Santa Fe'),
('Honorio',1390,'Rosario','Santa Fe'),
('Honorio',1108,'Rosario','Santa Fe'),
('Honorio',3843,'Rosario','Santa Fe'),
('Honorio',3320,'Rosario','Santa Fe'),
('Honorio',3275,'Rosario','Santa Fe'),
('Entre Rios',2589,'Rosario','Santa Fe'),
('Entre Rios',3372,'Rosario','Santa Fe'),
('Entre Rios',2729,'Rosario','Santa Fe'),
('Entre Rios',1511,'Rosario','Santa Fe'),
('Entre Rios',2886,'Rosario','Santa Fe'),
('Entre Rios',1568,'Rosario','Santa Fe'),
('Entre Rios',3775,'Rosario','Santa Fe'),
('Entre Rios',1075,'Rosario','Santa Fe'),
('Entre Rios',3663,'Rosario','Santa Fe'),
('Chubut',3722,'Villa Constitucion','Santa Fe'),
('Chubut',1925,'Villa Constitucion','Santa Fe'),
('Chubut',3132,'Villa Constitucion','Santa Fe'),
('Chubut',1941,'Villa Constitucion','Santa Fe'),
('Chubut',2907,'Villa Constitucion','Santa Fe'),
('Chubut',3945,'Villa Constitucion','Santa Fe'),
('Chubut',3232,'Villa Constitucion','Santa Fe'),
('Chubut',1812,'Villa Constitucion','Santa Fe'),
('Chubut',2226,'Villa Constitucion','Santa Fe'),
('Dorrego',2716,'Villa Constitucion','Santa Fe'),
('Dorrego',1269,'Villa Constitucion','Santa Fe'),
('Dorrego',3504,'Villa Constitucion','Santa Fe'),
('Dorrego',1725,'Villa Constitucion','Santa Fe'),
('Dorrego',3098,'Villa Constitucion','Santa Fe'),
('Dorrego',3689,'Villa Constitucion','Santa Fe'),
('Dorrego',2210,'Villa Constitucion','Santa Fe'),
('Dorrego',3503,'Villa Constitucion','Santa Fe'),
('Dorrego',3980,'Villa Constitucion','Santa Fe'),
('Dorrego',2983,'Villa Constitucion','Santa Fe'),
('Dorrego',3937,'Villa Constitucion','Santa Fe'),
('Brown',3308,'Villa Constitucion','Santa Fe'),
('Brown',3050,'Villa Constitucion','Santa Fe'),
('Brown',3341,'Villa Constitucion','Santa Fe'),
('Brown',1362,'Villa Constitucion','Santa Fe'),
('Brown',2176,'Villa Constitucion','Santa Fe'),
('Brown',3806,'Villa Constitucion','Santa Fe'),
('Brown',2887,'Villa Constitucion','Santa Fe'),
('Brown',2872,'Villa Constitucion','Santa Fe'),
('Brown',2030,'Villa Constitucion','Santa Fe'),
('Brown',1211,'Villa Constitucion','Santa Fe'),
('Brown',3881,'Villa Constitucion','Santa Fe'),
('Brown',2027,'Villa Constitucion','Santa Fe'),
('Urquiza',1126,'Villa Constitucion','Santa Fe'),
('Urquiza',1720,'Villa Constitucion','Santa Fe'),
('Urquiza',3460,'Villa Constitucion','Santa Fe'),
('Urquiza',2732,'Villa Constitucion','Santa Fe'),
('Urquiza',1600,'Villa Constitucion','Santa Fe'),
('Urquiza',1523,'Villa Constitucion','Santa Fe'),
('Urquiza',3941,'Villa Constitucion','Santa Fe'),
('Urquiza',1462,'Villa Constitucion','Santa Fe'),
('Urquiza',1797,'Villa Constitucion','Santa Fe'),
('Urquiza',1158,'Villa Constitucion','Santa Fe'),
('Urquiza',3510,'Villa Constitucion','Santa Fe'),
('Urquiza',1919,'Villa Constitucion','Santa Fe'),
('Urquiza',3801,'Villa Constitucion','Santa Fe'),
('Urquiza',2441,'Villa Constitucion','Santa Fe'),
('Urquiza',1650,'Villa Constitucion','Santa Fe'),
('Urquiza',2005,'Villa Constitucion','Santa Fe'),
('Urquiza',1611,'Villa Constitucion','Santa Fe'),
('Urquiza',2834,'Villa Constitucion','Santa Fe'),
('Urquiza',1361,'Villa Constitucion','Santa Fe'),
('Urquiza',2086,'Villa Constitucion','Santa Fe'),
('Urquiza',1947,'Villa Constitucion','Santa Fe'),
('Urquiza',1022,'Villa Constitucion','Santa Fe'),
('Urquiza',3027,'Villa Constitucion','Santa Fe'),
('Urquiza',3009,'Villa Constitucion','Santa Fe'),
('Urquiza',2717,'Villa Constitucion','Santa Fe'),
('Urquiza',1980,'Villa Constitucion','Santa Fe'),
('Urquiza',1949,'Villa Constitucion','Santa Fe'),
('Urquiza',1075,'Villa Constitucion','Santa Fe'),
('Urquiza',2430,'Villa Constitucion','Santa Fe'),
('Urquiza',3720,'Villa Constitucion','Santa Fe'),
('Urquiza',2547,'Villa Constitucion','Santa Fe'),
('Urquiza',1297,'Villa Constitucion','Santa Fe'),
('Urquiza',2248,'Villa Constitucion','Santa Fe'),
('Urquiza',2073,'Villa Constitucion','Santa Fe'),
('Urquiza',1376,'Villa Constitucion','Santa Fe'),
('Urquiza',3953,'Villa Constitucion','Santa Fe'),
('Urquiza',3786,'Villa Constitucion','Santa Fe'),
('Urquiza',1544,'Villa Constitucion','Santa Fe'),
('Urquiza',2913,'Villa Constitucion','Santa Fe'),
('Urquiza',3447,'Villa Constitucion','Santa Fe'),
('Urquiza',2590,'Villa Constitucion','Santa Fe'),
('Urquiza',3181,'Villa Constitucion','Santa Fe'),
('Urquiza',1776,'Villa Constitucion','Santa Fe'),
('Independencia',3579,'Carlos Paz','Cordoba'),
('Independencia',1011,'Carlos Paz','Cordoba'),
('Independencia',3949,'Carlos Paz','Cordoba'),
('Independencia',2212,'Carlos Paz','Cordoba'),
('Independencia',1376,'Carlos Paz','Cordoba'),
('Independencia',3263,'Carlos Paz','Cordoba'),
('Independencia',1494,'Carlos Paz','Cordoba'),
('Independencia',3364,'Carlos Paz','Cordoba'),
('Independencia',3063,'Carlos Paz','Cordoba'),
('Independencia',1384,'Carlos Paz','Cordoba'),
('Independencia',3311,'Carlos Paz','Cordoba'),
('Independencia',2034,'Carlos Paz','Cordoba'),
('Independencia',3329,'Carlos Paz','Cordoba'),
('Independencia',3901,'Carlos Paz','Cordoba'),
('Independencia',1617,'Carlos Paz','Cordoba'),
('Independencia',1089,'Carlos Paz','Cordoba'),
('Independencia',3545,'Carlos Paz','Cordoba'),
('Independencia',3838,'Carlos Paz','Cordoba'),
('Independencia',3472,'Carlos Paz','Cordoba'),
('Independencia',2294,'Carlos Paz','Cordoba'),
('Independencia',2424,'Carlos Paz','Cordoba'),
('Independencia',3824,'Carlos Paz','Cordoba'),
('Independencia',2547,'Carlos Paz','Cordoba'),
('Independencia',2298,'Carlos Paz','Cordoba'),
('Independencia',3069,'Carlos Paz','Cordoba'),
('Independencia',2177,'Carlos Paz','Cordoba'),
('Independencia',1894,'Carlos Paz','Cordoba'),
('Independencia',2838,'Carlos Paz','Cordoba'),
('Independencia',3553,'Carlos Paz','Cordoba'),
('Independencia',1459,'Carlos Paz','Cordoba'),
('Independencia',2271,'Carlos Paz','Cordoba'),
('Independencia',3176,'Carlos Paz','Cordoba'),
('Independencia',1263,'Carlos Paz','Cordoba'),
('Independencia',3745,'Carlos Paz','Cordoba'),
('Independencia',1011,'Carlos Paz','Cordoba'),
('Independencia',2491,'Carlos Paz','Cordoba'),
('Independencia',2331,'Carlos Paz','Cordoba'),
('Independencia',2242,'Carlos Paz','Cordoba'),
('Independencia',3594,'Carlos Paz','Cordoba'),
('Independencia',2660,'Carlos Paz','Cordoba'),
('Independencia',2374,'Carlos Paz','Cordoba'),
('Independencia',2658,'Carlos Paz','Cordoba'),
('Azopardo',1718,'Carlos Paz','Cordoba'),
('Azopardo',2669,'Carlos Paz','Cordoba'),
('Azopardo',2598,'Carlos Paz','Cordoba'),
('Azopardo',2860,'Carlos Paz','Cordoba'),
('Azopardo',1940,'Carlos Paz','Cordoba'),
('Azopardo',2389,'Carlos Paz','Cordoba'),
('Azopardo',1575,'Carlos Paz','Cordoba'),
('Azopardo',2026,'Carlos Paz','Cordoba'),
('Azopardo',3525,'Carlos Paz','Cordoba'),
('Azopardo',3877,'Carlos Paz','Cordoba'),
('Azopardo',3254,'Carlos Paz','Cordoba'),
('Azopardo',1888,'Carlos Paz','Cordoba'),
('Azopardo',3304,'Carlos Paz','Cordoba'),
('Azopardo',3179,'Carlos Paz','Cordoba'),
('Azopardo',2664,'Carlos Paz','Cordoba'),
('Azopardo',1283,'Carlos Paz','Cordoba'),
('Azopardo',3891,'Carlos Paz','Cordoba'),
('Azopardo',3066,'Carlos Paz','Cordoba'),
('Azopardo',2179,'Carlos Paz','Cordoba'),
('Azopardo',1432,'Carlos Paz','Cordoba'),
('Azopardo',1549,'Carlos Paz','Cordoba'),
('Azopardo',2425,'Carlos Paz','Cordoba'),
('Azopardo',1655,'Carlos Paz','Cordoba'),
('Azopardo',1387,'Carlos Paz','Cordoba'),
('Azopardo',2034,'Carlos Paz','Cordoba'),
('Azopardo',2098,'Carlos Paz','Cordoba'),
('Azopardo',2914,'Carlos Paz','Cordoba'),
('Azopardo',2494,'Carlos Paz','Cordoba'),
('Chacabuco',1130,'Carlos Paz','Cordoba'),
('Chacabuco',3677,'Carlos Paz','Cordoba'),
('Chacabuco',2889,'Carlos Paz','Cordoba'),
('Chacabuco',2375,'Carlos Paz','Cordoba'),
('Chacabuco',1113,'Carlos Paz','Cordoba'),
('Chacabuco',1764,'Carlos Paz','Cordoba'),
('Chacabuco',2299,'Carlos Paz','Cordoba'),
('Chacabuco',2667,'Carlos Paz','Cordoba'),
('Chacabuco',3520,'Carlos Paz','Cordoba'),
('Chacabuco',2045,'Carlos Paz','Cordoba'),
('Chacabuco',3450,'Carlos Paz','Cordoba'),
('Chacabuco',1284,'Carlos Paz','Cordoba'),
('Chacabuco',3779,'Carlos Paz','Cordoba'),
('Chacabuco',2463,'Carlos Paz','Cordoba'),
('Chacabuco',1632,'Carlos Paz','Cordoba'),
('Chacabuco',2989,'Carlos Paz','Cordoba'),
('Chacabuco',2638,'Carlos Paz','Cordoba'),
('Chacabuco',2089,'Carlos Paz','Cordoba'),
('Chacabuco',2818,'Carlos Paz','Cordoba'),
('Chacabuco',3190,'Carlos Paz','Cordoba'),
('Chacabuco',2717,'Carlos Paz','Cordoba'),
('Chacabuco',1850,'Carlos Paz','Cordoba'),
('Chacabuco',2989,'Carlos Paz','Cordoba'),
('Chacabuco',2502,'Carlos Paz','Cordoba'),
('Chacabuco',2696,'Carlos Paz','Cordoba'),
('Chacabuco',1126,'Carlos Paz','Cordoba'),
('Chacabuco',1471,'Carlos Paz','Cordoba'),
('Chacabuco',2158,'Carlos Paz','Cordoba'),
('Chacabuco',1496,'Carlos Paz','Cordoba'),
('Chacabuco',3767,'Carlos Paz','Cordoba'),
('Chacabuco',2485,'Carlos Paz','Cordoba'),
('Chacabuco',2984,'Carlos Paz','Cordoba'),
('Zuviria',1946,'Carlos Paz','Cordoba'),
('Zuviria',2553,'Carlos Paz','Cordoba'),
('Zuviria',1777,'Carlos Paz','Cordoba'),
('Zuviria',2032,'Carlos Paz','Cordoba'),
('Zuviria',1706,'Carlos Paz','Cordoba'),
('Zuviria',2538,'Carlos Paz','Cordoba'),
('Zuviria',1388,'Carlos Paz','Cordoba'),
('Zuviria',1253,'Carlos Paz','Cordoba'),
('Zuviria',3725,'Carlos Paz','Cordoba'),
('Zuviria',3204,'Carlos Paz','Cordoba'),
('Zuviria',1883,'Carlos Paz','Cordoba'),
('Zuviria',1589,'Carlos Paz','Cordoba'),
('Zuviria',1770,'Carlos Paz','Cordoba'),
('Zuviria',2465,'Carlos Paz','Cordoba'),
('Zuviria',3027,'Carlos Paz','Cordoba'),
('Zuviria',2046,'Carlos Paz','Cordoba'),
('Zuviria',2186,'Carlos Paz','Cordoba'),
('Zuviria',1468,'Carlos Paz','Cordoba'),
('Zuviria',2411,'Carlos Paz','Cordoba'),
('Zuviria',3977,'Carlos Paz','Cordoba'),
('Zuviria',1779,'Carlos Paz','Cordoba'),
('Zuviria',2992,'Carlos Paz','Cordoba'),
('Zuviria',2229,'Carlos Paz','Cordoba'),
('Godoy',2172,'Neuquen','Neuquen'),
('Godoy',1048,'Neuquen','Neuquen'),
('Godoy',2938,'Neuquen','Neuquen'),
('Godoy',3757,'Neuquen','Neuquen'),
('Godoy',1850,'Neuquen','Neuquen'),
('Godoy',3674,'Neuquen','Neuquen'),
('Godoy',3210,'Neuquen','Neuquen'),
('Godoy',2719,'Neuquen','Neuquen'),
('Godoy',1232,'Neuquen','Neuquen'),
('Godoy',2369,'Neuquen','Neuquen'),
('Godoy',3511,'Neuquen','Neuquen'),
('Godoy',1005,'Neuquen','Neuquen'),
('Godoy',2386,'Neuquen','Neuquen'),
('Frontera',1192,'Neuquen','Neuquen'),
('Frontera',3729,'Neuquen','Neuquen'),
('Frontera',2452,'Neuquen','Neuquen'),
('Frontera',1300,'Neuquen','Neuquen'),
('Frontera',2579,'Neuquen','Neuquen'),
('Frontera',2689,'Neuquen','Neuquen'),
('Frontera',2107,'Neuquen','Neuquen'),
('Frontera',3731,'Neuquen','Neuquen'),
('Frontera',2903,'Neuquen','Neuquen'),
('Frontera',1835,'Neuquen','Neuquen'),
('Frontera',1770,'Neuquen','Neuquen'),
('Frontera',2336,'Neuquen','Neuquen'),
('Frontera',3608,'Neuquen','Neuquen'),
('Frontera',3219,'Neuquen','Neuquen'),
('Aconcagua',3252,'Neuquen','Neuquen'),
('Aconcagua',2763,'Neuquen','Neuquen'),
('Aconcagua',1963,'Neuquen','Neuquen'),
('Aconcagua',2552,'Neuquen','Neuquen'),
('Aconcagua',2041,'Neuquen','Neuquen'),
('Aconcagua',3334,'Neuquen','Neuquen'),
('Aconcagua',2771,'Neuquen','Neuquen'),
('Aconcagua',1598,'Neuquen','Neuquen'),
('Aconcagua',3741,'Neuquen','Neuquen'),
('Aconcagua',2888,'Neuquen','Neuquen'),
('Aconcagua',1332,'Neuquen','Neuquen'),
('Aconcagua',1133,'Neuquen','Neuquen'),
('Aconcagua',3283,'Neuquen','Neuquen'),
('Aconcagua',1278,'Neuquen','Neuquen'),
('Aconcagua',3611,'Neuquen','Neuquen'),
('Aconcagua',2072,'Neuquen','Neuquen'),
('Aconcagua',3341,'Neuquen','Neuquen'),
('Aconcagua',2397,'Neuquen','Neuquen'),
('Aconcagua',3892,'Neuquen','Neuquen'),
('Aconcagua',2813,'Neuquen','Neuquen'),
('Aconcagua',1271,'Neuquen','Neuquen'),
('Aconcagua',1156,'Neuquen','Neuquen'),
('Aconcagua',1666,'Neuquen','Neuquen'),
('Aconcagua',3002,'Neuquen','Neuquen'),
('Aconcagua',1529,'Neuquen','Neuquen'),
('Aconcagua',2019,'Neuquen','Neuquen'),
('Aconcagua',2429,'Neuquen','Neuquen'),
('Aconcagua',3486,'Neuquen','Neuquen'),
('Aconcagua',1774,'Neuquen','Neuquen'),
('Aconcagua',3232,'Neuquen','Neuquen'),
('Aconcagua',1028,'Neuquen','Neuquen'),
('Aconcagua',1686,'Neuquen','Neuquen'),
('Aconcagua',3910,'Neuquen','Neuquen'),
('Aconcagua',3592,'Neuquen','Neuquen'),
('Aconcagua',1549,'Neuquen','Neuquen'),
('Aconcagua',2376,'Neuquen','Neuquen'),
('Aconcagua',2779,'Neuquen','Neuquen'),
('Aconcagua',1796,'Neuquen','Neuquen'),
('Aconcagua',1018,'Neuquen','Neuquen'),
('Aconcagua',3939,'Neuquen','Neuquen'),
('Aconcagua',1475,'Neuquen','Neuquen'),
('Aconcagua',2196,'Neuquen','Neuquen'),
('Aconcagua',2389,'Neuquen','Neuquen'),
('Aconcagua',2200,'Neuquen','Neuquen'),
('Aconcagua',2492,'Neuquen','Neuquen'),
('Aconcagua',3165,'Neuquen','Neuquen'),
('Perito Moreno',3083,'San Martin de los Andes','Neuquen'),
('Perito Moreno',2854,'San Martin de los Andes','Neuquen'),
('Perito Moreno',1902,'San Martin de los Andes','Neuquen'),
('Perito Moreno',3496,'San Martin de los Andes','Neuquen'),
('Perito Moreno',3142,'San Martin de los Andes','Neuquen'),
('Perito Moreno',3277,'San Martin de los Andes','Neuquen'),
('Perito Moreno',2603,'San Martin de los Andes','Neuquen'),
('Perito Moreno',1433,'San Martin de los Andes','Neuquen'),
('Perito Moreno',3025,'San Martin de los Andes','Neuquen'),
('Perito Moreno',2024,'San Martin de los Andes','Neuquen'),
('Perito Moreno',3874,'San Martin de los Andes','Neuquen'),
('Molina Campos',1341,'San Martin de los Andes','Neuquen'),
('Molina Campos',1723,'San Martin de los Andes','Neuquen'),
('Molina Campos',2120,'San Martin de los Andes','Neuquen'),
('Molina Campos',2421,'San Martin de los Andes','Neuquen'),
('Molina Campos',2998,'San Martin de los Andes','Neuquen'),
('Molina Campos',1704,'San Martin de los Andes','Neuquen'),
('Molina Campos',3424,'San Martin de los Andes','Neuquen'),
('Molina Campos',3927,'San Martin de los Andes','Neuquen'),
('Molina Campos',2899,'San Martin de los Andes','Neuquen'),
('Molina Campos',2913,'San Martin de los Andes','Neuquen'),
('Molina Campos',3711,'San Martin de los Andes','Neuquen'),
('Molina Campos',3079,'San Martin de los Andes','Neuquen'),
('Molina Campos',2128,'San Martin de los Andes','Neuquen'),
('Molina Campos',3956,'San Martin de los Andes','Neuquen'),
('Molina Campos',2453,'San Martin de los Andes','Neuquen'),
('Molina Campos',2479,'San Martin de los Andes','Neuquen'),
('Molina Campos',3043,'San Martin de los Andes','Neuquen'),
('Molina Campos',1404,'San Martin de los Andes','Neuquen'),
('Molina Campos',2721,'San Martin de los Andes','Neuquen'),
('Molina Campos',2126,'San Martin de los Andes','Neuquen'),
('Molina Campos',1070,'San Martin de los Andes','Neuquen'),
('Molina Campos',1629,'San Martin de los Andes','Neuquen'),
('Molina Campos',3391,'San Martin de los Andes','Neuquen'),
('Molina Campos',1207,'San Martin de los Andes','Neuquen'),
('Molina Campos',3048,'San Martin de los Andes','Neuquen'),
('Molina Campos',2388,'San Martin de los Andes','Neuquen'),
('Lola Mora',2368,'San Martin de los Andes','Neuquen'),
('Lola Mora',3052,'San Martin de los Andes','Neuquen'),
('Lola Mora',2335,'San Martin de los Andes','Neuquen'),
('Lola Mora',2020,'San Martin de los Andes','Neuquen'),
('Lola Mora',3937,'San Martin de los Andes','Neuquen'),
('Lola Mora',3117,'San Martin de los Andes','Neuquen'),
('Lola Mora',3707,'San Martin de los Andes','Neuquen'),
('Lola Mora',3795,'San Martin de los Andes','Neuquen'),
('Lola Mora',3045,'San Martin de los Andes','Neuquen'),
('Lola Mora',2269,'San Martin de los Andes','Neuquen'),
('Lola Mora',2090,'San Martin de los Andes','Neuquen'),
('Lola Mora',1528,'San Martin de los Andes','Neuquen'),
('Lola Mora',3005,'San Martin de los Andes','Neuquen'),
('Lola Mora',2354,'San Martin de los Andes','Neuquen');

/*Consulta tabla direcciones*/ 
SELECT * 
FROM direcciones

/*Asignando del lote inicial a empleados, clientes o sucursal de forma aleatoria*/
/*Empleado*/
UPDATE empleado 
SET id_direccion = abs(random()) % (501 - 1) + 1;
/*Clientes*/
UPDATE cliente 
SET id_direccion = abs(random()) % (501 - 1) + 1;
/*Sucursal*/
UPDATE sucursal 
SET id_direccion = abs(random()) % (501 - 1) + 1;

/*Amplio alcance entidad cuenta  para que identifique el tipo de la misma*/ /*Hay que agregar tipo_cuenta*/ 
				/*Se agrego la columna modificado la tabla desde database structure*/

/*Asignar un tipo de cuenta a cada registro de cuenta de forma aleatoria*/
/*Como ya esta creada la columna habria que agregarle los valores con un UPDATE*/
UPDATE cuenta 
SET tipo_de_cuenta = abs(random()) % (4 - 1) + 1;

/*Corregir el campo employee_hire_date de la tabla empleado con la fecha en formato YYYY-MM-DD*/
UPDATE empleado SET employee_hire_date = substr(employee_hire_date, 7, 4) || '-' || substr(employee_hire_date, 4,2) || '-' || substr(employee_hire_date, 1,2);

/*Miedo, musica de tension*/
/*Consulta tabla empleado*/ 
SELECT * 
FROM empleado

/*Consulta tabla sucursal*/ 
SELECT * 
FROM sucursal

/*Consulta tabla cliente*/ 
SELECT * 
FROM cliente

/*Consulta tabla tipo_cuenta*/ 
SELECT * 
FROM tipo_cuenta

/*Consulta tabla cuenta*/ 
SELECT * 
FROM cuenta

/*Consulta tabla cuenta*/ 
SELECT DISTINCT id_direccion 
FROM sucursal