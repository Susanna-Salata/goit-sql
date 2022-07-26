-- Create a database and fill it with random data (~30 students, 3 groups, 5 subjects, 3 teachers, 20 marks for each student in all subjects).
DROP TABLE IF exists groups;
CREATE TABLE groups (
	id INTEGER PRIMARY KEY UNIQUE,
    group_name VARCHAR(40) NOT NULL,
    specialization VARCHAR(40) NOT NULL);
   
DROP TABLE IF exists disciplines;   
CREATE TABLE disciplines (
    id INTEGER PRIMARY KEY UNIQUE,
    discipline_name VARCHAR(40) NOT NULL);  

DROP TABLE IF exists lectors;     
CREATE TABLE lectors (
    id INTEGER PRIMARY KEY UNIQUE,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL);
    

DROP TABLE IF exists students;
CREATE TABLE students (
    id INTEGER PRIMARY KEY UNIQUE,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    student_age INTEGER, 
    group_id INTEGER NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups (id)
      --ON DELETE CASCADE
      --ON UPDATE CASCADE
      );
   
   
DROP TABLE IF exists grades;
CREATE TABLE grades (
    id INTEGER PRIMARY KEY UNIQUE,
    exam_date DATE NOT NULL,
    student_id INTEGER NOT NULL,
    discipline_id INTEGER NOT NULL,
    lector_id INTEGER NOT NULL,
    grade INTEGER,
    FOREIGN KEY (student_id) REFERENCES students (id)
      --ON DELETE CASCADE
      --ON UPDATE CASCADE,
    ,
    FOREIGN KEY (discipline_id) REFERENCES disciplines (id)
      --ON DELETE CASCADE
      --ON UPDATE CASCADE,
    ,
    FOREIGN KEY (lector_id) REFERENCES lectors (id)
      --ON DELETE CASCADE
      --ON UPDATE CASCADE
      );
     
     
INSERT INTO lectors (id, first_name, last_name)
VALUES (1, 'Alex', 'Medvediev'),
(2, 'Vovan', 'Dunkin'),
(3, 'Roman', 'Gnatenko');


INSERT INTO groups (id, group_name, specialization)
VALUES (1, 'Core', 'Python'),
(2, 'Web', 'Python'),
(3, 'Data', 'Python');


INSERT INTO disciplines (id, discipline_name)
VALUES (1, 'Core'),
(2, 'Django'),
(3, 'Flask'),
(4, 'Data'),
(5, 'SQL');

INSERT INTO students (id, first_name, last_name, student_age, group_id)
VALUES (1, 'Boris', 'Johnson', 43, 1),
(2, 'Alina', 'Kobylova', 32, 2),
(3, 'Maksim', 'Sanin', 30, 2),
(4, 'Ivan', 'Saratov', 40, 1),
(5, 'Stepan', 'Saratov', 40, 1),
(6, 'Kyrylo', 'Korovin', 31, 2),
(7, 'Danylo', 'Sovin', 27, 2),
(8, 'Stepan', 'Bandera', 34, 3),
(9, 'Putin', 'Huilo', 39, 3),
(10, 'Slava', 'Ukraini', 29, 3);

INSERT INTO grades (id, student_id, discipline_id, lector_id, grade, exam_date)
VALUES 
(1, 1, 1, 1, 10, '2022-06-21'),
(2, 1, 2, 2, 7, '2022-06-22'),
(3, 1, 3, 2, 6, '2022-06-23'),
(4, 1, 4, 3, 9, '2022-06-24'),
(5, 1, 5, 3, 9, '2022-06-25'),
(6, 2, 1, 1, 7, '2022-06-21'),
(7, 2, 2, 2, 9, '2022-06-22'),
(8, 2, 3, 2, 10, '2022-06-23'),
(9, 2, 4, 3, 8, '2022-06-24'),
(10, 2, 5, 3, 10, '2022-06-25'),
(11, 3, 1, 1, 6, '2022-06-21'),
(12, 3, 2, 2, 5, '2022-06-22'),
(13, 3, 3, 2, 7, '2022-06-23'),
(14, 3, 4, 3, 6, '2022-06-24'),
(15, 3, 5, 3, 4, '2022-06-25'),
(16, 4, 1, 1, 10, '2022-06-21'),
(17, 4, 2, 2, 9, '2022-06-22'),
(18, 4, 3, 2, 10, '2022-06-23'),
(19, 4, 4, 3, 8, '2022-06-24'),
(20, 4, 5, 3, 10, '2022-06-25'),
(21, 5, 1, 1, 10, '2022-06-21'),
(22, 5, 2, 2, 6, '2022-06-22'),
(23, 5, 3, 2, 7, '2022-06-23'),
(24, 5, 4, 3, 8, '2022-06-24'),
(25, 5, 5, 3, 10, '2022-06-25'),
(26, 6, 1, 1, 10, '2022-06-21'),
(27, 6, 2, 2, 7, '2022-06-22'),
(28, 6, 3, 2, 8, '2022-06-23'),
(29, 6, 4, 3, 5, '2022-06-24'),
(30, 6, 5, 3, 8, '2022-06-25'),
(31, 7, 1, 1, 6, '2022-06-21'),
(32, 7, 2, 2, 9, '2022-06-22'),
(33, 7, 3, 2, 10, '2022-06-23'),
(34, 7, 4, 3, 8, '2022-06-24'),
(35, 7, 5, 3, 9, '2022-06-25'),
(36, 8, 1, 1, 10, '2022-06-21'),
(37, 8, 2, 2, 10, '2022-06-22'),
(38, 8, 3, 2, 10, '2022-06-23'),
(39, 8, 4, 3, 10, '2022-06-24'),
(40, 8, 5, 3, 10, '2022-06-25'),
(41, 9, 1, 1, NULL, '2022-06-21'),
(42, 9, 2, 2, 0, '2022-06-22'),
(43, 9, 3, 2, NULL, '2022-06-23'),
(44, 9, 4, 3, 0, '2022-06-24'),
(45, 9, 5, 3, NULL, '2022-06-25'),
(46, 10, 1, 1, 9, '2022-06-21'),
(47, 10, 2, 2, 9, '2022-06-22'),
(48, 10, 3, 2, 9, '2022-06-23'),
(49, 10, 4, 3, 9, '2022-06-24'),
(50, 10, 5, 3, 9, '2022-06-25'),
(51,1,1,1,1, '2022-06-21'),
(52,1,2,2,4, '2022-06-22'),
(53,1,3,2,3, '2022-06-23'),
(54,1,4,3,NULL, '2022-06-24'),
(55,1,5,3,9, '2022-06-25'),
(56,1,1,1,9, '2022-06-26'),
(57,1,2,2,1, '2022-06-27'),
(58,1,3,2,3, '2022-06-28'),
(59,1,4,3,1, '2022-06-29'),
(60,1,5,3,10, '2022-06-30'),
(61,2,1,1,8, '2022-06-21'),
(62,2,2,2,7, '2022-06-22'),
(63,2,3,2,3, '2022-06-23'),
(64,2,4,3,NULL, '2022-06-24'),
(65,2,5,3,8, '2022-06-25'),
(66,2,1,1,6, '2022-06-26'),
(67,2,2,2,0, '2022-06-27'),
(68,2,3,2,0, '2022-06-28'),
(69,2,4,3,3, '2022-06-29'),
(70,2,5,3,8, '2022-06-30'),
(71,3,1,1,5, '2022-06-21'),
(72,3,2,2,NULL, '2022-06-22'),
(73,3,3,2,2, '2022-06-23'),
(74,3,4,3,0, '2022-06-24'),
(75,3,5,3,5, '2022-06-25'),
(76,3,1,1,9, '2022-06-26'),
(77,3,2,2,8, '2022-06-27'),
(78,3,3,2,7, '2022-06-28'),
(79,3,4,3,9, '2022-06-29'),
(80,3,5,3,4, '2022-06-30'),
(81,4,1,1,4, '2022-06-21'),
(82,4,2,2,0, '2022-06-22'),
(83,4,3,2,2, '2022-06-23'),
(84,4,4,3,NULL, '2022-06-24'),
(85,4,5,3,8, '2022-06-25'),
(86,4,1,1,6, '2022-06-26'),
(87,4,2,2,10, '2022-06-27'),
(88,4,3,2,9, '2022-06-28'),
(89,4,4,3,7, '2022-06-29'),
(90,4,5,3,6, '2022-06-30'),
(91,5,1,1,10, '2022-06-21'),
(92,5,2,2,0, '2022-06-22'),
(93,5,3,2,7, '2022-06-23'),
(94,5,4,3,6, '2022-06-24'),
(95,5,5,3,3, '2022-06-25'),
(96,5,1,1,5, '2022-06-26'),
(97,5,2,2,9, '2022-06-27'),
(98,5,3,2,0, '2022-06-28'),
(99,5,4,3,NULL, '2022-06-29'),
(100,5,5,3,NULL, '2022-06-30'),
(101,6,1,1,1, '2022-06-21'),
(102,6,2,2,6, '2022-06-22'),
(103,6,3,2,3, '2022-06-23'),
(104,6,4,3,2, '2022-06-24'),
(105,6,5,3,7, '2022-06-25'),
(106,6,1,1,8, '2022-06-26'),
(107,6,2,2,2, '2022-06-27'),
(108,6,3,2,NULL, '2022-06-28'),
(109,6,4,3,6, '2022-06-29'),
(110,6,5,3,NULL, '2022-06-30'),
(111,7,1,1,3, '2022-06-21'),
(112,7,2,2,NULL, '2022-06-22'),
(113,7,3,2,0, '2022-06-23'),
(114,7,4,3,4, '2022-06-24'),
(115,7,5,3,6, '2022-06-25'),
(116,7,1,1,7, '2022-06-26'),
(117,7,2,2,2, '2022-06-27'),
(118,7,3,2,3, '2022-06-28'),
(119,7,4,3,NULL, '2022-06-29'),
(120,7,5,3,0, '2022-06-30'),
(121,8,1,1,5, '2022-06-21'),
(122,8,2,2,5, '2022-06-22'),
(123,8,3,2,4, '2022-06-23'),
(124,8,4,3,1, '2022-06-24'),
(125,8,5,3,4, '2022-06-25'),
(126,8,1,1,NULL, '2022-06-26'),
(127,8,2,2,6, '2022-06-27'),
(128,8,3,2,0, '2022-06-28'),
(129,8,4,3,0, '2022-06-29'),
(130,8,5,3,0, '2022-06-30'),
(131,9,1,1,7, '2022-06-21'),
(132,9,2,2,7, '2022-06-22'),
(133,9,3,2,0, '2022-06-23'),
(134,9,4,3,3, '2022-06-24'),
(135,9,5,3,2, '2022-06-25'),
(136,9,1,1,NULL, '2022-06-26'),
(137,9,2,2,4, '2022-06-27'),
(138,9,3,2,4, '2022-06-28'),
(139,9,4,3,NULL, '2022-06-29'),
(140,9,5,3,0, '2022-06-30'),
(141,10,1,1,NULL, '2022-06-21'),
(142,10,2,2,3, '2022-06-22'),
(143,10,3,2,4, '2022-06-23'),
(144,10,4,3,6, '2022-06-24'),
(145,10,5,3,9, '2022-06-25'),
(146,10,1,1,0, '2022-06-26'),
(147,10,2,2,7, '2022-06-27'),
(148,10,3,2,NULL, '2022-06-28'),
(149,10,4,3,7, '2022-06-29'),
(150,10,5,3,1, '2022-06-30'),
(151,1,1,1,10, '2022-06-21'),
(152,1,2,2,0, '2022-06-22'),
(153,1,3,2,3, '2022-06-23'),
(154,1,4,3,0, '2022-06-24'),
(155,1,5,3,6, '2022-06-25'),
(156,1,1,1,9, '2022-06-26'),
(157,1,2,2,7, '2022-06-27'),
(158,1,3,2,8, '2022-06-28'),
(159,1,4,3,10, '2022-06-29'),
(160,1,5,3,6, '2022-06-30'),
(161,2,1,1,2, '2022-06-21'),
(162,2,2,2,5, '2022-06-22'),
(163,2,3,2,10, '2022-06-23'),
(164,2,4,3,2, '2022-06-24'),
(165,2,5,3,10, '2022-06-25'),
(166,2,1,1,2, '2022-06-26'),
(167,2,2,2,6, '2022-06-27'),
(168,2,3,2,8, '2022-06-28'),
(169,2,4,3,2, '2022-06-29'),
(170,2,5,3,2, '2022-06-30'),
(171,3,1,1,6, '2022-06-21'),
(172,3,2,2,2, '2022-06-22'),
(173,3,3,2,3, '2022-06-23'),
(174,3,4,3,NULL, '2022-06-24'),
(175,3,5,3,NULL, '2022-06-25'),
(176,3,1,1,10, '2022-06-26'),
(177,3,2,2,9, '2022-06-27'),
(178,3,3,2,6, '2022-06-28'),
(179,3,4,3,7, '2022-06-29'),
(180,3,5,3,4, '2022-06-30'),
(181,4,1,1,5, '2022-06-21'),
(182,4,2,2,5, '2022-06-22'),
(183,4,3,2,6, '2022-06-23'),
(184,4,4,3,NULL, '2022-06-24'),
(185,4,5,3,0, '2022-06-25'),
(186,4,1,1,8, '2022-06-26'),
(187,4,2,2,3, '2022-06-27'),
(188,4,3,2,8, '2022-06-28'),
(189,4,4,3,4, '2022-06-29'),
(190,4,5,3,8, '2022-06-30'),
(191,5,1,1,NULL, '2022-06-21'),
(192,5,2,2,NULL, '2022-06-22'),
(193,5,3,2,10, '2022-06-23'),
(194,5,4,3,6, '2022-06-24'),
(195,5,5,3,8, '2022-06-25'),
(196,5,1,1,2, '2022-06-26'),
(197,5,2,2,4, '2022-06-27'),
(198,5,3,2,1, '2022-06-28'),
(199,5,4,3,3, '2022-06-29'),
(200,5,5,3,9, '2022-06-30'),
(201,6,1,1,4, '2022-06-21'),
(202,6,2,2,9, '2022-06-22'),
(203,6,3,2,6, '2022-06-23'),
(204,6,4,3,7, '2022-06-24'),
(205,6,5,3,3, '2022-06-25'),
(206,6,1,1,NULL, '2022-06-26'),
(207,6,2,2,5, '2022-06-27'),
(208,6,3,2,5, '2022-06-28'),
(209,6,4,3,8, '2022-06-29'),
(210,6,5,3,9, '2022-06-30'),
(211,7,1,1,2, '2022-06-21'),
(212,7,2,2,6, '2022-06-22'),
(213,7,3,2,3, '2022-06-23'),
(214,7,4,3,9, '2022-06-24'),
(215,7,5,3,NULL, '2022-06-25'),
(216,7,1,1,0, '2022-06-26'),
(217,7,2,2,4, '2022-06-27'),
(218,7,3,2,8, '2022-06-28'),
(219,7,4,3,7, '2022-06-29'),
(220,7,5,3,5, '2022-06-30'),
(221,8,1,1,NULL, '2022-06-21'),
(222,8,2,2,6, '2022-06-22'),
(223,8,3,2,8, '2022-06-23'),
(224,8,4,3,3, '2022-06-24'),
(225,8,5,3,0, '2022-06-25'),
(226,8,1,1,3, '2022-06-26'),
(227,8,2,2,2, '2022-06-27'),
(228,8,3,2,0, '2022-06-28'),
(229,8,4,3,6, '2022-06-29'),
(230,8,5,3,7, '2022-06-30'),
(231,9,1,1,0, '2022-06-21'),
(232,9,2,2,3, '2022-06-22'),
(233,9,3,2,8, '2022-06-23'),
(234,9,4,3,4, '2022-06-24'),
(235,9,5,3,6, '2022-06-25'),
(236,9,1,1,1, '2022-06-26'),
(237,9,2,2,9, '2022-06-27'),
(238,9,3,2,5, '2022-06-28'),
(239,9,4,3,3, '2022-06-29'),
(240,9,5,3,NULL, '2022-06-30'),
(241,10,1,1,0, '2022-06-21'),
(242,10,2,2,6, '2022-06-22'),
(243,10,3,2,5, '2022-06-23'),
(244,10,4,3,8, '2022-06-24'),
(245,10,5,3,6, '2022-06-25'),
(246,10,1,1,7, '2022-06-26'),
(247,10,2,2,4, '2022-06-27'),
(248,10,3,2,8, '2022-06-28'),
(249,10,4,3,4, '2022-06-29'),
(250,10,5,3,10, '2022-06-30');