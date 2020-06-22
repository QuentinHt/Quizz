-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 22, 2020 at 01:03 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `quizz_id` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(100) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `prop1` varchar(40) NOT NULL DEFAULT '',
  `prop2` varchar(40) NOT NULL DEFAULT '',
  `prop3` varchar(40) NOT NULL DEFAULT '',
  `prop4` varchar(40) NOT NULL DEFAULT '',
  `difficulte` varchar(9) NOT NULL DEFAULT '',
  `anecdote` varchar(255) NOT NULL DEFAULT '',
  `wiki` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`quizz_id`, `theme`, `question`, `prop1`, `prop2`, `prop3`, `prop4`, `difficulte`, `anecdote`, `wiki`) VALUES
(1, 'Jeux olympiques', 'À quel historien et pédagogue français doit-on les Jeux olympiques modernes ?', 'Pierre de Coubertin', 'Napoléon Bonaparte', 'Duc de Windsor', 'Pie XI', 'Débutant', 'La médaille Pierre-de-Coubertin, attribuée par le CIO, démontre un vrai esprit sportif aux Jeux olympiques.', 'Pierre_de_Coubertin'),
(2, 'Jeux olympiques', 'Combien y a-t-il de couloirs dans une piscine olympique ?', '10', '14', '6', '12', 'Débutant', 'Seules les piscines d\'eau douce homologuées conviennent aux compétitions organisées dans ces grands bassins.', 'Piscine_olympique'),
(3, 'Jeux olympiques', 'Qui a été élu « journaliste français le plus chauvin » des Jeux olympiques de 2012 ?', 'Nelson Monfort', 'Michel Denisot', 'Christian Jeanpierre', 'Georges Cazeneuve', 'Débutant', 'Nelson Monfort commente le patinage artistique mais surtout interviewe les sportifs dans de nombreuses disciplines.', 'Nelson_Monfort'),
(4, 'Jeux olympiques', 'Dans quelle ville se dérouleront les Jeux olympiques de 2016, malgré son insécurité ?', 'Rio de Janeiro', 'Londres', 'Tokyo', 'Pékin', 'Débutant', 'Ces JO seront les premiers à se dérouler en Amérique du Sud et les premiers à se dérouler dans un pays lusophone.', 'Jeux_olympiques_d\'été_de_2016'),
(5, 'Jeux olympiques', 'Quelle épreuve olympique commence hors du stade pour se terminer dans ses murs ?', 'Le marathon', 'Le cross-country', 'Le trail', 'Le 10 000 m', 'Débutant', 'Le marathon est une épreuve sportive de course à pied qui se dispute généralement sur une distance de 42 kilomètres.', 'Marathon_(sport)'),
(6, 'Jeux olympiques', 'Lequel des anneaux du drapeau olympique se retrouve le plus près du mât ?', 'Le bleu', 'Le jaune', 'Le vert', 'Le rouge', 'Débutant', 'Les 5 anneaux entrelacés représentent les cinq continents unis par l’olympisme, et les six couleurs représentent toutes les nations.', 'Drapeau_olympique'),
(7, 'Jeux olympiques', 'Quel pongiste belge a participé à ses septièmes Jeux olympiques à l\'âge de 42 ans ?', 'Jean-Michel Saive', 'Martin Bratanov', 'Grégory Obert', 'Yannick Vostes', 'Débutant', 'Jean-Michel Saive a également porté le drapeau de la délégation belge lors des Jeux olympiques de 1996 et 2004.', 'Jean-Michel_Saive'),
(8, 'Jeux olympiques', 'Qui est la première gymnaste à avoir obtenu un 10 au Jeux olympiques ?', 'Nadia Comaneci', 'Diana Mocanu', 'Tatiana Gutsu', 'Doina Ignat', 'Débutant', 'Nadia Comaneci, qui possède une double nationalité, a donné une dimension populaire et médiatique inégalée à ce sport.', 'Nadia_Comaneci'),
(9, 'Jeux olympiques', 'Quelle est la couleur de fond du drapeau olympique, célèbre pour ses cinq anneaux ?', 'Blanche', 'Bleue', 'Jaune', 'Verte', 'Débutant', 'Aux Jeux de 2008, l\'association Reporters sans frontières a détourné le drapeau olympique en remplaçant le fond blanc par un fond noir.', 'Drapeau_olympique'),
(10, 'Jeux olympiques', 'Qui était Premier ministre britannique lors des Jeux olympiques de Londres en 2012 ?', 'David Cameron', 'Gordon Brown', 'Tony Blair', 'James Callaghan', 'Débutant', 'Diplômé du Brasenose College de l\'université d\'Oxford, il fut conseiller politique de Margaret Thatcher puis de John Major.', 'David_Cameron'),
(11, 'Jeux olympiques', 'Quel athlète Jamaïcain a marqué les Jeux olympiques de 2008 ?', 'Usain Bolt', 'Dexter Lee', 'Ray Stewart', 'Lerone Clarke', 'Confirmé', 'Spécialiste des épreuves de sprint, Usain Bolt est également l\'athlète le plus décoré des championnats du monde d\'athlétisme.', 'Usain_Bolt'),
(12, 'Jeux olympiques', 'Quelle discipline olympique associe le saut à ski au ski de fond ?', 'Le combiné nordique', 'Le curling', 'Le biathlon', 'Le snowboard', 'Confirmé', 'Créé en Norvège à la fin du XIXe siècle, le combiné nordique est au programme olympique depuis la première édition.', 'Combiné_nordique'),
(13, 'Jeux olympiques', 'En 2012, quel type de passeport est apparu aux Jeux olympiques de Londres ?', 'Biologique', 'Thermique', 'Automatique', 'Télépathique', 'Confirmé', 'Il permet de déceler des violations de la réglementation antidopage en détectant des variations anormales de marqueurs biologiques.', 'Passeport_biologique_de_l\'athlète'),
(14, 'Jeux olympiques', 'Quelle sportive française a participé à sept éditions des Jeux olympiques ?', 'Jeannie Longo', 'Sabrina Jonnier', 'Marion Rousse', 'Sophie Creux', 'Confirmé', 'Au total, Jeannie Longo a remporté 9 titres de championne du monde sur route et un titre olympique.', 'Jeannie_Longo'),
(15, 'Jeux olympiques', 'Quel objet les femmes ne peuvent-elles jeter aux Jeux olympiques que depuis 1995 ?', 'Le marteau', 'Le poids', 'Le javelot', 'Le disque', 'Confirmé', 'Le lancer du marteau pour femmes a eu lieu pour la première fois aux Jeux olympiques d\'été de 2000 à Sydney.', 'Lancer_du_marteau'),
(16, 'Jeux olympiques', 'Quel équipement très utilisé en athlétisme doit peser au moins 50 grammes ?', 'Le témoin', 'Le sifflet', 'Le javelot', 'Le disque', 'Confirmé', 'Le but du relais est de parcourir la distance le plus rapidement possible tout en assurant la transmission d\'un témoin.', 'Athlétisme'),
(17, 'Jeux olympiques', 'Dans quelle épreuve olympique peut-on trouver des hommes couchés par terre ?', 'Le tir', 'Le croquet', 'Le softball', 'Le curling', 'Confirmé', 'Le tir inclus deux types principaux de compétition, le tir sur cible avec des pistolets ou des carabines et le tir sur plateau.', 'Tir_aux_Jeux_olympiques'),
(18, 'Jeux olympiques', 'Quel sportif, né le 30 juin 1985 à Towson, est le plus titré des Jeux olympiques ?', 'Michael Phelps', 'Mark Spitz', 'Ian Thorpe', 'Andriy Serdinov', 'Confirmé', 'En grand bassin, l\'Américain est le nageur le plus médaillé de l\'histoire avec 22 médailles dont 18 d\'or.', 'Michael_Phelps'),
(19, 'Jeux olympiques', 'Comment appelle-t-on la période de quatre ans entre deux Jeux olympiques ?', 'Une olympiade', 'Un quinquennat', 'Un lustre', 'Une tierce', 'Confirmé', 'L\'olympiade est la base de la chronologie du monde grec à partir d\'Alexandre le Grand.', 'Olympiade'),
(20, 'Jeux olympiques', 'Quel athlète a été champion olympique du saut en longueur à Atlanta en 1996 ?', 'Carl Lewis', 'Linford Christie', 'Dwight Phillips', 'Michael Johnson', 'Confirmé', 'Sa carrière, plusieurs fois interrompue, a duré de 1979 à 1996, année durant laquelle il a conquis son dernier titre olympique.', 'Carl_Lewis'),
(21, 'Jeux olympiques', 'En quelle année les Jeux olympiques se sont-ils déroulés à Paris pour la première fois ?', '1900', '1908', '1920', '1928', 'Expert', 'Aucune cérémonie d\'ouverture ou de fermeture n\'a été prévue au programme, mis à part un défilé des gymnastes à Vincennes.', 'Jeux_olympiques_d\'été_de_1900'),
(22, 'Jeux olympiques', 'Lequel de ces sports ne figure pas parmi les épreuves disputées en pentathlon moderne ?', 'Le cyclisme', 'La natation', 'Le tir au pistolet', 'La course à pied', 'Expert', 'Les épreuves du pentathlon moderne sont l\'escrime, la natation, l\'équitation, le tir au pistolet et la course à pied.', 'Pentathlon_moderne'),
(23, 'Jeux olympiques', 'Quel chirurgien orthopédiste a été élu en 2001 président du Comité international olympique ?', 'Jacques Rogge', 'Jean-Claude Killy', 'Marc Hodler', 'René Fasel', 'Expert', 'Après une carrière sportive remplie, en voile comme skipper puis au rugby à XV, Jacques Rogge s\'oriente vers l\'administration sportive.', 'Jacques_Rogge'),
(24, 'Jeux olympiques', 'Quelle est la première ville à avoir accueilli trois fois les Jeux olympiques ?', 'Londres', 'Athènes', 'Los Angeles', 'Paris', 'Expert', 'Les JO sont un événement international majeur, regroupant les sports d\'été et d\'hiver, auquel des milliers d\'athlètes participent.', 'Jeux_olympiques'),
(25, 'Jeux olympiques', 'Dans quelle discipline olympique le parcours est-il toujours triangulaire ?', 'La voile', 'Le canoë-kayak', 'L\'aviron', 'Le triathlon', 'Expert', 'Le plus grand catamaran à voile jamais construit est le Douce France : 42 mètres de grand luxe et de teck.', 'Nautisme_(voile)'),
(26, 'Jeux olympiques', 'En 1980, lequel de ces pays a totalement boycotté les Jeux olympiques de Moscou ?', 'La Norvège', 'La Suède', 'La Grande-Bretagne', 'La France', 'Expert', 'Une cinquantaine de nations ont boycotté ces Jeux à la suite de l\'invasion de l\'Afghanistan par l\'Union Soviétique en 1979.', 'Jeux_olympiques_d\'été_de_1980'),
(27, 'Jeux olympiques', 'Quel nageur olympique de Guinée équatoriale a connu une célébrité éphémère ?', 'Éric Moussambani', 'Bill Kirby', 'Jens Kruppa', 'Ian Thorpe', 'Expert', 'Son courage à Sydney en 2000 sera perçu comme un symbole de l\'esprit olympique, après un 100 mètres nage libre en 1m 52s.', 'Éric_Moussambani'),
(28, 'Jeux olympiques', 'Quel animal a représenté la mascotte des Jeux olympiques de Moscou en 1980 ?', 'Un ours', 'Un renne', 'Un élan', 'Un loup', 'Expert', 'La mascotte officielle, l\'ours Misha, a été imaginée par Victor Tchijikov, auteur de livres pour enfants.', 'Jeux_olympiques_d\'été_de_1980'),
(29, 'Jeux olympiques', 'Combien de médailles olympiques ont été distribuées aux Jeux olympiques de 2012 ?', '4 700', '3 500', '2 900', '5 600', 'Expert', 'Londres est la première ville à accueillir les Jeux olympiques modernes pour la troisième fois.', 'Jeux_olympiques_d\'été_de_2012'),
(30, 'Jeux olympiques', 'En quelle année les Jeux olympiques ont-ils été télévisés pour la première fois ?', '1936', '1947', '1952', '1963', 'Expert', 'Pour la première fois, la flamme olympique sera introduite dans une cérémonie d\'ouverture de Jeux olympiques.', 'Jeux_olympiques_d\'été_de_1936'),
(31, 'Jeux et consoles Nintendo', 'Quel plombier de jeu vidéo, vêtu de rouge, est également la mascotte de Nintendo ?', 'Mario', 'Luigi', 'Peach', 'Wario', 'Débutant', 'Mario est facilement reconnaissable à sa moustache, sa salopette, ses gants blancs et sa casquette rouge marquée d\'un M.', 'Mario_(personnage)'),
(32, 'Jeux et consoles Nintendo', 'Sur quelle console de chez Nintendo sont sortis les deux premiers jeux Pokémon ?', 'Game Boy', 'Super Nintendo', 'Nintendo DS', 'Game Cube', 'Débutant', 'Le joueur contrôle le personnage principal via une vue aérienne et le dirige dans l\'ensemble de la région fictive de Kanto.', 'Pokémon_Rouge_et_Bleu'),
(33, 'Jeux et consoles Nintendo', 'Lequel de ces personnages de jeu ne fait pas partie de l\'univers de Mario ?', 'Mylord', 'Luigi', 'Peach', 'Wario', 'Débutant', 'La série Mario est la plus vendue de l\'histoire du jeu vidéo, avec plus de 195 millions d\'exemplaires écoulés.', 'Mario_(personnage)'),
(34, 'Jeux et consoles Nintendo', 'Quel jeu vidéo de sport développé et édité par Nintendo était offert pour l\'achat d\'une Wii ?', 'Wii Sports', 'Wii Mix', 'Wii Games', 'Wii Play', 'Débutant', 'Le jeu a été inclus dans un paquetage promotionnel avec la Wii sur tous les territoires, excepté au Japon et en Corée du Sud.', 'Wii_Sports'),
(35, 'Jeux et consoles Nintendo', 'Quel personnage fictif de jeu vidéo représente la fidèle monture de Mario ?', 'Yoshi', 'Birbo', 'Kirby', 'Peach', 'Débutant', 'Yoshi a fait sa première apparition (dans un jeu) dans le niveau 1-2 de Super Mario World sur Super Nintendo, sorti en 1990 au Japon.', 'Yoshi'),
(36, 'Jeux et consoles Nintendo', 'Quel gorille costaud fut un des premiers personnages célèbres de la marque Nintendo ?', 'Donkey Kong', 'Abu', 'King Kong', 'Mookie', 'Débutant', 'Créé par Shigeru Miyamoto, ce gorille est à l\'origine l\'ennemi de Jumpman, son maître, dont il a enlevé la fiancée.', 'Donkey_Kong_(personnage)'),
(37, 'Jeux et consoles Nintendo', 'Que signifie le sigle « DS » de la Nintendo DS, console portable sortie en 2005 en Europe ?', 'Dual Screen', 'Data Super', 'Direct Shot', 'Detect System', 'Débutant', 'La Nintendo DS est devenue la console la plus vendue de tous les temps au cours du mois de décembre 2012.', 'Nintendo_DS'),
(38, 'Jeux et consoles Nintendo', 'Parmi ces « catégories » de Game Boy, laquelle ne pourrez-vous jamais trouver en magasin ?', 'Printer', 'Color', 'Advance', 'Pocket', 'Débutant', 'Malgré la sortie de consoles portables technologiquement plus avancées, la Game Boy a véritablement connu un franc succès.', 'Game_Boy'),
(39, 'Jeux et consoles Nintendo', 'Quel accessoire prévu pour être connecté à la console Wii est associé au jeu Wii Fit ?', 'Wii Balance Board', 'Wii Shot', 'Wii Zapper', 'Wii Gun', 'Débutant', 'La Wii Balance Board est un accessoire en forme de pèse-personne électronique conçu pour les consoles de jeu Wii et Wii U.', 'Wii_Balance_Board'),
(40, 'Jeux et consoles Nintendo', 'Dans l\'univers Nintendo, quel habitant de Dream Land est représenté par une petite boule rose ?', 'Kirby', 'Pinky', 'Dadidou', 'Yoshi', 'Débutant', 'La particularité de Kirby est qu\'il peut aspirer tout ce qu\'il voit, que ce soit des objets ou des ennemis.', 'Kirby_(personnage)'),
(41, 'Jeux et consoles Nintendo', 'Quelle arme est utilisée par Luigi dans Luigi\'s Mansion sous la dénomination « Ectoblast 3000 » ?', 'Un aspirateur', 'Un lance-flammes', 'Un marteau', 'Une raquette', 'Confirmé', 'Le jeu retrace les aventures de Luigi dans un manoir qu\'il a gagné lors d\'un concours auquel il n\'a jamais participé.', 'Luigi\'s_Mansion'),
(42, 'Jeux et consoles Nintendo', 'Quel a été le tout premier nom de Mario, apparu en 1981 dans le jeu Donkey Kong ?', 'Jumpman', 'Link', 'Yoshi', 'Zelda', 'Confirmé', 'Les jeux de la série Super Mario ont joué un rôle important dans l\'évolution du jeu de plates-formes.', 'Mario_(personnage)'),
(43, 'Jeux et consoles Nintendo', 'Quel était le nom de prototype de la Wii depuis la conférence de presse précédant l\'E3 de 2004 ?', 'Revolution', 'Super GameCube', 'Wiitendo', 'Nintendo 64', 'Confirmé', 'La Wii était jusqu\'alors évoquée sous les noms de « GCNext » et « N5 » (N5 signifiant cinquième génération de consoles Nintendo).', 'Wii'),
(44, 'Jeux et consoles Nintendo', 'Quelle ville de la région de Kanto est la ville natale de Sacha dans Pokémon ?', 'Bourg Palette', 'SachaLand', 'Dream Land', 'Kong City', 'Confirmé', 'Kanto est la région utilisée dans les versions Vert (Japon uniquement), Rouge, Bleu, Jaune, Or, Argent et Rouge Feu.', 'Lieux_de_Pokémon'),
(45, 'Jeux et consoles Nintendo', 'Quel accessoire transforme la wiimote et le nunchuk de la Wii en un simulateur de mitraillette ?', 'Wii Zapper', 'Wii Gun', 'Wii Wiz', 'Wii Shot', 'Confirmé', 'Le Wii Zapper, vendu avec Link\'s Crossbow Training, a reçu ce nom en référence au pistolet optique du NES, le NES Zapper.', 'Télécommande_Wii'),
(46, 'Jeux et consoles Nintendo', 'Créée en 1983, quelle fut la première console de salon de chez Nintendo ?', 'Famicom', 'Nintendo 64', 'Wii', 'GameCube', 'Confirmé', 'Nintendo a élargi sa clientèle en exportant en 1985 aux États-Unis la console rebaptisée Nintendo Entertainment System.', 'Family_Computer'),
(47, 'Jeux et consoles Nintendo', 'À quelle console au design très similaire la Nintendo DSi a-t-elle succédé ?', 'DS Lite', 'Game Boy', 'Advance', 'DS', 'Confirmé', 'La DSi est équipée de deux caméras, un lecteur de cartes SD, un navigateur web Opera intégré et un lecteur audio.', 'Nintendo_DSi'),
(48, 'Jeux et consoles Nintendo', 'Laquelle de ces consoles révolutionnaire de Nintendo peut fonctionner avec un stylet ?', 'DS', 'GameCube', 'Famicom', 'Nintendo 64', 'Confirmé', 'Son jeu phare, New Super Mario Bros., reste quant à lui l\'un des jeux les plus vendus du monde.', 'Nintendo_DS'),
(49, 'Jeux et consoles Nintendo', 'Quel message apparaît fréquemment derrière l\'héroïne du jeu Donkey Kong ?', 'HELP !', 'BONUS', 'SMILE', 'PUSH', 'Confirmé', 'Malgré les doutes initiaux de l\'équipe américaine, Donkey Kong fut un succès énorme au Japon et en Amérique du Nord.', 'Donkey_Kong_(jeu_vidéo,_1981)'),
(50, 'Jeux et consoles Nintendo', 'Laquelle de ces consoles fut considérée comme un échec commercial par Nintendo ?', 'Virtual Boy', '3DS', 'Wii', 'Game Cube', 'Confirmé', 'Le Virtual Boy est la console la moins vendue dans l\'histoire des consoles de jeu vidéo de Nintendo, avec 770 000 unités vendues.', 'Virtual_Boy'),
(51, 'Jeux et consoles Nintendo', 'Quel petit astronaute est un personnage imaginaire et emblématique de Nintendo ?', 'Olimar', 'Kirby', 'Louie', 'Pikmin', 'Expert', 'Olimar est équipé d\'un scaphandre qu\'il met toujours sur la Planète Lointaine car, pour lui, l\'oxygène est toxique.', 'Olimar'),
(52, 'Jeux et consoles Nintendo', 'Quel était le tout premier métier de Mario avant de devenir plombier dans Mario Bros. ?', 'Charpentier', 'Magicien', 'Pizzaïolo', 'Boulanger', 'Expert', 'Le nom de Mario aurait été choisi en l\'honneur du propriétaire des locaux de la société Nintendo of America de l\'époque, Mario Segali.', 'Mario_(personnage)'),
(53, 'Jeux et consoles Nintendo', 'Quel était le nom de prototype de la console de jeux vidéo de salon GameCube ?', 'Dolphin', 'Game 128', 'Revolution', 'Famicom', 'Expert', 'C\'est le 24 août 2000 que la machine est officiellement présentée avec son nouveau nom, la GameCube.', 'GameCube'),
(54, 'Jeux et consoles Nintendo', 'Dans Super Mario Kart, chaque coupe est composée de 5 courses comptant chacune combien de tours ?', '5', '4', '3', '2', 'Expert', 'Dans Super Mario Kart, le joueur contrôle l\'un des huit personnages issus de l\'univers Super Mario.', 'Super_Mario_Kart'),
(55, 'Jeux et consoles Nintendo', 'Dans quelle ville se trouve le siège de la société Nintendo fondée en 1889 par Fusajiro Yamauchi ?', 'Kyoto', 'Tokyo', 'Pékin', 'Shanghai', 'Expert', 'Nintendo est l\'une des rares entreprises de jeu vidéo à avoir su faire rentrer certaines de ses licences, en particulier Mario ou Pokémon.', 'Nintendo'),
(56, 'Jeux et consoles Nintendo', 'Quelle déesse a créé la vie dans le jeu vidéo phare Zelda : Ocarina of time ?', 'Farore', 'Din', 'Nayru', 'Eikichi', 'Expert', 'Les trois Déesses d\'Hyrule sont Din, déesse de la Force, Nayru, déesse de la Sagesse et du Temps et Farore, déesse du Courage.', 'Personnages_de_la_série_The_Legend_of_Zelda'),
(57, 'Jeux et consoles Nintendo', 'Que faisait la société Nintendo avant de produire des jeux vidéo ?', 'Des cartes à jouer', 'Des montres', 'Des livres', 'Des dés à jouer', 'Expert', 'C’est à partir des années 1970 que la société Nintendo a diversifié ses activités en produisant des jouets et des bornes d’arcade.', 'Nintendo'),
(58, 'Jeux et consoles Nintendo', 'Quelle est le nom de la deuxième génération de console Nintendo DS ?', 'DS Lite', 'DS3D', 'DSi', 'Advance', 'Expert', ' La Nintendo DS Lite, avec ses 93 millions de ventes, est aujourd\'hui la console portable la mieux vendue de tous les temps.', 'Nintendo_DS'),
(59, 'Jeux et consoles Nintendo', 'En quelle année la société Nintendo est-elle entrée en bourse ?', '1962', '1972', '1982', '1992', 'Expert', 'C’est grâce à un contrat signé avec Disney en 1959 que la société prend une envergure internationale et entre en bourse en 1962.', 'Nintendo'),
(60, 'Jeux et consoles Nintendo', 'Comment se prénommait la petite amie de Jumpman dans Donkey Kong ?', 'Lady', 'Pauline', 'Daisy', 'Zelda', 'Expert', 'Maltraité par le charpentier, Donkey Kong s\'échappe et kidnappe la petite amie de Jumpman, connue sous le nom de Lady.', 'Donkey_Kong_(jeu_vidéo,_1981)'),
(61, 'Histoire de France', 'Quelle ville française était la « cité des papes » au Moyen-Âge ?', 'Avignon', 'Tours', 'Metz', 'Nantes', 'Débutant', 'C\'est l\'une des rares villes françaises à avoir conservé ses remparts et son centre historique, composé du palais des papes.', 'Avignon'),
(62, 'Histoire de France', 'Quel diplomate français a succédé au Cardinal de Richelieu ?', 'Jules Mazarin', 'Philippe Mancini', 'Charles de Mantoue', 'Antonio Barberini', 'Débutant', 'Le cardinal choisit comme pièce principale de son blason le faisceau de licteur, un signe de romanité.', 'Jules_Mazarin'),
(63, 'Histoire de France', 'Quelle reine de France a porté le chapeau dans l\'affaire du collier ?', 'Marie-Antoinette', 'Marie-Joséphine', 'Marie-Thérèse', 'Marie-Louise', 'Débutant', 'Les joailliers Boehmer et Bassange réclamèrent à la reine 1,6 million de livres pour l\'achat d\'un collier de diamants.', 'Marie-Antoinette_d\'Autriche'),
(64, 'Histoire de France', 'Quand François Mitterrand fut-il élu président de la France pour la première fois ?', '1981', '1976', '1986', '1991', 'Débutant', 'Il sera élu 21e président de la République française face à Valéry Giscard d\'Estaing avec 51,76% des suffrages exprimés.', 'François_Mitterrand'),
(65, 'Histoire de France', 'Quelle ville Jeanne d\'Arc a-t-elle héroïquement libérée des Anglais ?', 'Orléans', 'Angers', 'Le Mans', 'Tours', 'Débutant', 'Jeanne d\'Arc a été condamnée à être brûlée vive en 1431 après un procès en hérésie conduit par Pierre Cauchon.', 'Jeanne_d\'Arc'),
(66, 'Histoire de France', 'Quel homme d\'État français fut surnommé « le Tigre » ou le « Père-la--victoire » ?', 'Clémenceau', 'Foch', 'Joffre', 'Poincaré', 'Débutant', 'Se désignant comme « premier flic de France », Clémenceau réprimera les grèves et mettra fin à la querelle des inventaires.', 'Georges_Clemenceau'),
(67, 'Histoire de France', 'Quelle héroïne de l\'histoire de France était la « Pucelle d\'Orléans » ?', 'Jeanne d\'Arc', 'Rita de Cascia', 'Hélène Duglioli', 'Alessandra Scala', 'Débutant', 'Elle parvint à insuffler aux soldats français une énergie nouvelle et à contraindre les Anglais à lever le siège de la ville.', 'Jeanne_d\'Arc'),
(68, 'Histoire de France', 'Sur quelle principauté à régné la maison de Matignon ?', 'Monaco', 'Cambrai', 'Foucarmont', 'Condé', 'Débutant', 'La maison de Goyon donna à la France, sous l\'Ancien Régime, plusieurs maréchaux de France et évêques.', 'Maison_de_Goyon'),
(69, 'Histoire de France', 'Quel journal a brillé en sortant le premier l\'affaire des diamants de Bokassa ?', 'Le Canard Enchaîné', 'Charlie Hebdo', 'Minute', 'Paris Match', 'Débutant', 'Cette affaire pourrait être une des causes de sa défaite face au candidat du Parti socialiste, François Mitterrand.', 'Affaire_des_diamants'),
(70, 'Histoire de France', 'Quel Guillaume, duc de Normandie, parfois surnommé « le Bâtard », a conquis l\'Angleterre ?', 'Le Conquérant', 'Le Chevelu', 'Le Pieux', 'Le Hardi', 'Débutant', 'Vers 1050, il épouse Mathilde de Flandre fille de Baudouin V avec qui il aura au moins dix enfants dont quatre fils.', 'Guillaume_le_Conquérant'),
(71, 'Histoire de France', 'Quelle ville assiégée Gambetta a-t-il quittée en ballon ?', 'Paris', 'Lyon', 'Rouen', 'Toulouse', 'Confirmé', 'Gambetta, d\'abord réticent, est sollicité par ses collègues ministres et le 7 octobre 1870, il quitte Paris en ballon monté.', 'Léon_Gambetta'),
(72, 'Histoire de France', 'Quel roi a révoqué l\'édit de Nantes ayant donné la liberté de religion ?', 'Louis XIV', 'Henri IV', 'Charles IX', 'François II', 'Confirmé', 'La promulgation de cet édit a mis fin aux guerres de religion qui avaient ravagé le royaume de France depuis 1572.', 'Édit_de_Nantes'),
(73, 'Histoire de France', 'Quel était le surnom du fils de Napoléon Ier et de Marie-Louise ?', 'L\'Aiglon', 'Le Corsaire', 'L\'Incapable', 'Le Mal aimé', 'Confirmé', 'Jusqu\'à sa mort à l\'âge de 21 ans, Napoléon II fut reconnu par les bonapartistes comme l\'héritier du trône impérial.', 'Napoléon_II'),
(74, 'Histoire de France', 'Quel chevalier franc et comte urbain a été trahi par Ganelon au col de Roncevaux ?', 'Roland', 'Perceval', 'Marsile', 'Gauvain', 'Confirmé', 'Pour cette raison, Ganelon est d\'une certaine manière devenu dans la tradition française l\'archétype du félon ou du traître.', 'Bataille_de_Roncevaux_(778)'),
(75, 'Histoire de France', 'De quelle manière François Ravaillac a-t-il tué Henri IV ?', 'Poignardé', 'Empoisonné', 'Décapité', 'Fusillé', 'Confirmé', 'Ravaillac sera condamné à mort par le Parlement de Paris au cours d\'un procès de dix jours, présidé par Achille Ier de Harlay.', 'François_Ravaillac'),
(76, 'Histoire de France', 'Quel code régissait la vie d\'une grand partie de la cour de Louis XIV ?', 'L\'étiquette', 'Le bonjour', 'Le pourboire', 'La mayade', 'Confirmé', 'L\'étiquette gouverne et restreint la manière dont les gens interagissent et sert à exprimer le respect dû à autrui.', 'Étiquette_(code)'),
(77, 'Histoire de France', 'Quel pays Bertrand Du Guesclin a-t-il combattu toute sa vie ?', 'L\'Angleterre', 'L\'Allemagne', 'L\'Italie', 'Les Pays-Bas', 'Confirmé', 'Bertrand du Guesclin est considéré, selon les sources, soit comme un héros à la loyauté absolue, soit comme un traître.', 'Bertrand_Du_Guesclin'),
(78, 'Histoire de France', 'Quel âge avait Clovis lorsqu\'il fut élu roi des Francs en 481 ?', '16 ans', '14 ans', '12 ans', '10 ans', 'Confirmé', 'Clovis est considéré dans l\'historiographie comme un des personnages historiques les plus importants de l\'histoire de France.', 'Clovis_Ier'),
(79, 'Histoire de France', 'À quelle élection présidentielle s\'est présenté pour la première fois Michel Rocard ?', '1969', '1972', '1975', '1978', 'Confirmé', 'Michel Rocard fut chargé de la négociation internationale pour les pôles arctique et antarctique de 2009 à sa mort.', 'Michel_Rocard'),
(80, 'Histoire de France', 'Quel corsaire malouin s\'est évadé d\'Angleterre et a rejoint St-Malo à la rame ?', 'Jean Bart', 'Jean Bernanos', 'Nicolas Surcouf', 'Philippe Bequel', 'Confirmé', 'La bataille navale du Dogger Bank fut livrée en mer du Nord le 17 juin 1696, pendant la guerre de la Ligue d\'Augsbourg.', 'Jean_Bart'),
(81, 'Histoire de France', 'Quel droit adopté en 1792 a été rétabli par la loi Naquet en 1884 ?', 'Droit au divorce', 'Droit à la retraite', 'Droit au vote', 'Droit à l\'euthanasie', 'Expert', 'Devant le nombre élevé de divorces qui se produisit, certaines modifications furent apportées à cette loi sur le divorce.', 'Loi_autorisant_le_divorce_en_France'),
(82, 'Histoire de France', 'Quel roi a fait installer les premières boîtes aux lettres dans Paris ?', 'Louis XIV', 'Henri IV', 'Charles IX', 'François II', 'Expert', 'La Poste est issue des relais de poste créés par Louis XI en 1477 pour le transport des messages royaux.', 'La_Poste_(entreprise_française)'),
(83, 'Histoire de France', 'À quel fruit les caricaturistes comparaient-ils la tête du roi Louis-Philippe ?', 'Une poire', 'Une banane', 'Une fraise', 'Un citron', 'Expert', 'Il fut caricaturé par Honoré Daumier qui accentua sa bedaine et ses rouflaquettes et le profilera en rat ou perroquet.', 'Louis-Philippe_Ier'),
(84, 'Histoire de France', 'Quel était l\'emblème du régime de Vichy en France pendant la guerre ?', 'Francisque', 'Fleur de lys', 'Croix de Lorraine', 'Cosse de genêts', 'Expert', 'La francisque est le nom traditionnel de la hache de jet des Germains occidentaux, que popularisèrent les Francs.', 'Ordre_de_la_Francisque'),
(85, 'Histoire de France', 'De quel roi de France le duc de Sully fut-il le ministre ?', 'Henri IV', 'Louis XIV', 'Charles IX', 'François II', 'Expert', 'Sully eut de brillants conseillers, comme l\'économiste Barthélemy de Laffemas, qui développa les manufactures et l\'artisanat.', 'Maximilien_de_Béthune_(duc_de_Sully)'),
(86, 'Histoire de France', 'Quel roi de la dynastie mérovingienne fut conseillé par Saint Eloi ?', 'Dagobert', 'Sigebert', 'Caribert', 'Childebert', 'Expert', 'Sous son règne, la royauté mérovingienne jette un dernier éclat avant que la réalité du pouvoir ne passe aux maires du palais.', 'Dagobert_Ier'),
(87, 'Histoire de France', 'Combien de prisonniers y avait-il dans la Bastille le 14 juillet 1789 ?', '7', '47', '167', '1 257', 'Expert', 'L\'événement fut sans précédent par ses répercussions, par ses implications politiques et son retentissement symbolique.', 'Prise_de_la_Bastille'),
(88, 'Histoire de France', 'Quelle expression a été utilisée pour la première fois à propos du Père Joseph ?', 'Éminence grise', 'Suprême rouge', 'Stratège bleu', 'Bérurier noir', 'Expert', 'François Leclerc du Tremblay est un capucin surnommé par ses détracteurs « l\'éminence grise du cardinal de Richelieu ».', 'François_Leclerc_du_Tremblay'),
(89, 'Histoire de France', 'Quel roi, connu sous le titre de comte d\'Artois, a succédé à Louis XVIII ?', 'Charles X', 'Henri IV', 'François II', 'Jean II', 'Expert', 'Charles X est le dernier Bourbon (de la branche aînée) à avoir régné mais également le 68e et dernier roi de France.', 'Charles_X'),
(90, 'Histoire de France', 'Quel évêque a baptisé Clovis à Reims un 25 décembre ?', 'Saint Rémi', 'Saint Paul', 'Saint Justin', 'Saint André', 'Expert', 'Dans le diocèse de Reims, il est fêté le 1er octobre conformément à une tradition locale remontant à la fin du VIe siècle.', 'Remi_de_Reims');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `theme` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `score`
--

-- --------------------------------------------------------

--
-- Table structure for table `Theme`
--

CREATE TABLE `Theme` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `description` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Theme`
--

INSERT INTO `Theme` (`id`, `titre`, `description`) VALUES
(1, 'Jeux olympiques', 'Testes toi sur les jo !'),
(2, 'Jeux et consoles Nintendo', 'Enorme !'),
(3, 'Histoire de France', 'Toute l\'histoire');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`quizz_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Theme`
--
ALTER TABLE `Theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `quizz_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Theme`
--
ALTER TABLE `Theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;