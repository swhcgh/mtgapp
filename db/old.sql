BEGIN TRANSACTION;
CREATE TABLE `Cardlist` (
  `CID` integer NOT NULL DEFAULT '0'
,  `MID` integer DEFAULT NULL
,  `Location` varchar(3) DEFAULT NULL
,  PRIMARY KEY (`CID`)
);
INSERT INTO Cardlist VALUES(1,231,'D01');
INSERT INTO Cardlist VALUES(2,187,'D01');
INSERT INTO Cardlist VALUES(3,184,'D01');
INSERT INTO Cardlist VALUES(4,201,'D01');
INSERT INTO Cardlist VALUES(5,175,'D01');
INSERT INTO Cardlist VALUES(6,226,'D01');
INSERT INTO Cardlist VALUES(7,242,'D01');
INSERT INTO Cardlist VALUES(8,181,'D01');
INSERT INTO Cardlist VALUES(9,183,'D01');
INSERT INTO Cardlist VALUES(10,204,'D01');
INSERT INTO Cardlist VALUES(11,208,'D01');
INSERT INTO Cardlist VALUES(12,201,'D01');
INSERT INTO Cardlist VALUES(13,209,'D01');
INSERT INTO Cardlist VALUES(14,184,'D01');
INSERT INTO Cardlist VALUES(15,171,'D01');
INSERT INTO Cardlist VALUES(16,184,'D01');
INSERT INTO Cardlist VALUES(17,204,'D01');
INSERT INTO Cardlist VALUES(18,80,'D02');
INSERT INTO Cardlist VALUES(19,54,'D02');
INSERT INTO Cardlist VALUES(20,72,'D02');
INSERT INTO Cardlist VALUES(21,72,'D02');
INSERT INTO Cardlist VALUES(22,46,'D02');
INSERT INTO Cardlist VALUES(23,59,'D02');
INSERT INTO Cardlist VALUES(24,68,'D02');
INSERT INTO Cardlist VALUES(25,50,'D02');
INSERT INTO Cardlist VALUES(26,50,'D02');
INSERT INTO Cardlist VALUES(27,241,'D02');
INSERT INTO Cardlist VALUES(28,62,'D02');
INSERT INTO Cardlist VALUES(29,62,'D02');
INSERT INTO Cardlist VALUES(30,63,'D02');
INSERT INTO Cardlist VALUES(31,50,'D02');
INSERT INTO Cardlist VALUES(32,63,'D02');
INSERT INTO Cardlist VALUES(33,242,'D02');
INSERT INTO Cardlist VALUES(34,534,'BX1');
INSERT INTO Cardlist VALUES(35,161,'BX1');
INSERT INTO Cardlist VALUES(40,124,'BX1');
INSERT INTO Cardlist VALUES(41,234,'BX1');
INSERT INTO Cardlist VALUES(42,152,'BX1');
INSERT INTO Cardlist VALUES(43,69,'D01');
INSERT INTO Cardlist VALUES(44,136,'BX1');
INSERT INTO Cardlist VALUES(45,15,'BX1');
INSERT INTO Cardlist VALUES(46,111,'BX1');
INSERT INTO Cardlist VALUES(48,77,'BX1');
INSERT INTO Cardlist VALUES(49,204,'BX1');
INSERT INTO Cardlist VALUES(50,132,'BX1');
INSERT INTO Cardlist VALUES(51,184,'BX1');
INSERT INTO Cardlist VALUES(52,36,'BX1');
INSERT INTO Cardlist VALUES(53,68,'BX1');
INSERT INTO Cardlist VALUES(54,183,'BX1');
INSERT INTO Cardlist VALUES(55,74,'BX1');
INSERT INTO Cardlist VALUES(56,162,'BX1');
INSERT INTO Cardlist VALUES(57,5,'BX1');
INSERT INTO Cardlist VALUES(58,208,'BX1');
INSERT INTO Cardlist VALUES(59,63,'BX1');
INSERT INTO Cardlist VALUES(60,56,'BX1');
INSERT INTO Cardlist VALUES(61,196,'BX1');
INSERT INTO Cardlist VALUES(62,25,'BX1');
INSERT INTO Cardlist VALUES(63,246,'BX1');
INSERT INTO Cardlist VALUES(64,166,'BX1');
INSERT INTO Cardlist VALUES(65,114,'BX1');
INSERT INTO Cardlist VALUES(66,249,'BX1');
INSERT INTO Cardlist VALUES(67,22,'BX1');
INSERT INTO Cardlist VALUES(68,73,'BX1');
INSERT INTO Cardlist VALUES(69,193,'D02');
INSERT INTO Cardlist VALUES(70,74,'D01');
INSERT INTO Cardlist VALUES(71,23,'BX1');
CREATE TABLE `Decks` (
  `DeckID` varchar(3) NOT NULL
,  `DName` varchar(255) NOT NULL
,  `UserID` integer NOT NULL
,  PRIMARY KEY (`DeckID`)
);
INSERT INTO Decks VALUES('D01','Mono Blue Flyers',1);
INSERT INTO Decks VALUES('D02','Green Ramp',2);
INSERT INTO Decks VALUES('D05','Mono Blue Aggro',1);
CREATE TABLE `ORI_Master` (
  `MID` integer NOT NULL DEFAULT '0'
,  `Card_Name` varchar(29) DEFAULT NULL
,  `Color` varchar(11) DEFAULT NULL
,  `Cost` varchar(12) DEFAULT NULL
,  `Type` varchar(18) DEFAULT NULL
,  `Subtype_1` varchar(10) DEFAULT NULL
,  `Subtype_2` varchar(9) DEFAULT NULL
,  `Subtype_3` varchar(9) DEFAULT NULL
,  `Rarity` varchar(11) DEFAULT NULL
,  `P` varchar(1) DEFAULT NULL
,  `T` varchar(1) DEFAULT NULL
,  `Loyal` integer DEFAULT NULL
,  `Rules_Text` varchar(399) DEFAULT NULL
,  `CMC` integer DEFAULT NULL
,  PRIMARY KEY (`MID`)
);
INSERT INTO ORI_Master VALUES(1,'Akroan Jailer','White','{W}','Creature','Human','Soldier',NULL,'Common',1,1,NULL,'{2}{W}, {}: Tap target creature.',1);
INSERT INTO ORI_Master VALUES(2,'Ampryn Tactician','White','{2}{W}{W}','Creature','Human','Soldier',NULL,'Common',3,3,NULL,'When Ampryn Tactician enters the battlefield, creatures you control get +1/+1 until end of turn',4);
INSERT INTO ORI_Master VALUES(3,'Anointer of Champions','White','{W}','Creature','Human','Cleric',NULL,'Uncommon',1,1,NULL,'{}: Target attacking creature gets +1/+1 until end of turn.',1);
INSERT INTO ORI_Master VALUES(4,'Archangel of Tithes','White','{1}{W}{W}{W}','Creature','Angel',NULL,NULL,'Mythic Rare',3,5,NULL,'Flying

As long as Archangel of Tithes is untapped, creatures can''t attack you or a planeswalker you control unless their controller pays {1} for each of those creatures.

As long as Archangel of Tithes is attacking, creatures can''t block unless their controller pays {1} for each of those creatures.',4);
INSERT INTO ORI_Master VALUES(5,'Auramancer','White','{2}{W}','Creature','Human','Wizard',NULL,'Common',2,2,NULL,'When Auramancer enters the battlefield, you may return target enchantment card from your graveyard to your hand.',3);
INSERT INTO ORI_Master VALUES(6,'Aven Battle Priest','White','{5}{W}','Creature','Bird','Cleric',NULL,'Common',3,3,NULL,'Flying

When Aven Battle Priest enters the battlefield, you gain 3 life.',6);
INSERT INTO ORI_Master VALUES(7,'Blessed Spirits','White','{2}{W}','Creature','Spirit',NULL,NULL,'Uncommon',2,2,NULL,'Flying

Whenever you cast an enchantment spell, put a +1/+1 counter on Blessed Spirits.',3);
INSERT INTO ORI_Master VALUES(8,'Celestial Flare','White','{W}{W}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target player sacrifices an attacking or blocking creature.',2);
INSERT INTO ORI_Master VALUES(9,'Charging Griffin','White','{3}{W}','Creature','Griffin',NULL,NULL,'Common',2,2,NULL,'Flying
 Whenever Charging Griffin attacks, it gets +1/+1 until end of turn.',4);
INSERT INTO ORI_Master VALUES(10,'Cleric of the Forward Order','White','{1}{W}','Creature','Human','Cleric',NULL,'Common',2,2,NULL,'When Cleric of the Forward Order enters the battlefield, you gain 2 life for each creature you control named Cleric of the Forward Order.',2);
INSERT INTO ORI_Master VALUES(11,'Consul''s Lieutenant','White','{W}{W}','Creature','Human','Soldier',NULL,'Uncommon',2,1,NULL,'First Strike

Renown 1

Whenever Consul''s Lieutenant attacks, if it''s renowned, other attacking creatures you control get +1/+1 until end of turn.',2);
INSERT INTO ORI_Master VALUES(12,'Enlightened Ascetic','White','{1}{W}','Creature','Cat','Monk',NULL,'Common',1,1,NULL,'When Enlightened Ascetic enters the battlefield, you may destroy target enchantment.',2);
INSERT INTO ORI_Master VALUES(13,'Enshrouding Mist','White','{W}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature gets +1/+1 until end of turn. Prevent all damage that would be dealt to it this turn. If it''s renowned, untap it.',1);
INSERT INTO ORI_Master VALUES(14,'Gideon''s Phalanx','White','{5}{W}{W}','Instant',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Put four 2/2 white Knight creature tokens with vigilance onto the battlefield.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, creatures you control gain indesctructible until end of turn.',7);
INSERT INTO ORI_Master VALUES(15,'Grasp of the Hieromancer','White','{1}{W}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets +1/+1 and has "Whenever this creature attacks, tap target creature defending player controls."',2);
INSERT INTO ORI_Master VALUES(16,'Hallowed Moonlight','White','{1}{W}','Instant',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Until end of turn, if a creature would enter the battlefield and it wasn''t cast, exile it instead.

Draw a card.',2);
INSERT INTO ORI_Master VALUES(17,'Healing Hands','White','{2}{W}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target player gains 4 life.

Draw a card.',3);
INSERT INTO ORI_Master VALUES(18,'Heavy Infantry','White','{4}{W}','Creature','Human','Soldier',NULL,'Common',3,4,NULL,'When Heavy Infantry enters the battlefield, tap taget creature an opponent controls.',5);
INSERT INTO ORI_Master VALUES(19,'Hixus, Prison Warden','White','{3}{W}{W}','Creature','Legendary','Human','Soldier','Rare',4,4,NULL,'Flash

Whenever a creature deals combat damage to you, if Hixus, Prison Warden enetered the battlefield this turn, exile that creature until Hixus leavs the battlefield.',5);
INSERT INTO ORI_Master VALUES(20,'Knight of the Pilgrim''s Road','White','{2}{W}','Creature','Human','Knight',NULL,'Common',3,2,NULL,'Renown 1',3);
INSERT INTO ORI_Master VALUES(21,'Knight of the White Orchid','White','{W}{W}','Creature','Human','Knight',NULL,'Rare',2,2,NULL,'First strike
When Knight of the White Orchid enters the battlefield, if an opponenet controls more lands than you, you may search your library for a Plains card, put it onto the battlefield, then shuffle your library.',2);
INSERT INTO ORI_Master VALUES(22,'Knightly Valor','White','{4}{W}','Enchantment','Aura',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Enchant creature

When Knightly Valor enters the battlefield, put a 2/2 white Knight creature token with vigilance onto the battlefield

Enchanted creature gets +2/+2 and has vigilance.',5);
INSERT INTO ORI_Master VALUES(23,'Kytheon, Hero of Akros','White','{W}','Creature','Legendary','Human','Soldier','Mythic Rare',2,1,NULL,'At end of combat, if Kytheon, Hero of Akros and at least two other creatures attacked this combat, exile Kytheon, then return him to the battlefield transformed under his owner''s control.

{2}{W}: Kytheon gains indestructible until end of turn.',1);
INSERT INTO ORI_Master VALUES(24,'Kytheon''s Irregulars','White','{2}{W}{W}','Creature','Human','Soldier',NULL,'Rare',4,3,NULL,'Renown 1

{W}{W}: Tap target creature.',4);
INSERT INTO ORI_Master VALUES(25,'Kytheon''s Tactics','White','{1}{W}{W}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Creatures you control get +2/+1 until end of turn.

Spell Mastery - If there are two or more instant and/or sorcery cards in your graveyard, those creatures also gain vigilance until end of turn.',3);
INSERT INTO ORI_Master VALUES(26,'Mighty Leap','White','{1}{W}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature gets +2/+2 and gains flying until end of turn.',2);
INSERT INTO ORI_Master VALUES(27,'Murder Investigation','White','{1}{W}','Enchantment','Aura',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Enchant creature you control

When enchanted creature dies, put X 1/1 white Soldier creature tokens onto the battlefield, where X is its power.',2);
INSERT INTO ORI_Master VALUES(28,'Patron of the Valiant','White','{3}{W}{W}','Creature','Angel',NULL,NULL,'Uncommon',4,4,NULL,'Flying

When Patron of the Valiant enters the battlefield, put a +1/+1 counter on each creature you control with a +1/+1 counter on it.',5);
INSERT INTO ORI_Master VALUES(29,'Relic Seeker','White','{1}{W}','Creature','Human','Soldier',NULL,'Rare',2,2,NULL,'Renown 1

When Relic Seeker becomes renowned, you may serach your library for an Equipment card, reveal it, put it into your hand, then shuffle your library.',2);
INSERT INTO ORI_Master VALUES(30,'Sentinel of the Eternal Watch','White','{5}{W}','Creature','Giant','Soldier',NULL,'Uncommon',4,6,NULL,'Vigilance

At the beginning of combat on each opponent''s turn, tap target creature that player controls.',6);
INSERT INTO ORI_Master VALUES(31,'Sigil of the Empty Throne','White','{3}{W}{W}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Whenever you cast an enchantment spell, put a 4/4 white Angel creature token with flying onto the battlefield.',5);
INSERT INTO ORI_Master VALUES(32,'Stalwart Aven','White','{2}{W}','Creature','Bird','Soldier',NULL,'Common',1,3,NULL,'Flying

Renown 1',3);
INSERT INTO ORI_Master VALUES(33,'Starfield of Nyx','White','{4}{W}','Enchantment',NULL,NULL,NULL,'Mythic Rare',NULL,NULL,NULL,'At the beginning of your upkeep, you may return target enchantment card from your graveyard to the battlefield.

As long as you control five or more enchantments, each other non-Aura enchantment you control is a creature in addition to its other types and has base power and toughness each equal to its converted mana cost.',5);
INSERT INTO ORI_Master VALUES(34,'Suppression Bonds','White','{3}{W}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant nonland permanent

Enchanted permanent can''t attack or block, and its activated abilities can''t be activated.',4);
INSERT INTO ORI_Master VALUES(35,'Swift Reckoning','White','{1}{W}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Spell master - If there are two or more instant and/or sorcery cards in your graveyard, you may cast Swift Reckoning as though it had flash.

Destroy target tapped creature.',2);
INSERT INTO ORI_Master VALUES(36,'Topan Freeblade','White','{1}{W}','Creature','Human','Soldier',NULL,'Common',2,2,NULL,'Vigilance

Renown 1',2);
INSERT INTO ORI_Master VALUES(37,'Totem-Guide Hartebeest','White','{4}{W}','Creature','Antelope',NULL,NULL,'Uncommon',2,5,NULL,'When Totem-Guide Hartebeest enters the battlefield, you may search your library for an Aura card, reveal it, put it into your hand, then shuffle your library.',5);
INSERT INTO ORI_Master VALUES(38,'Tragic Arrogance','White','{3}{W}{W}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'For each player, you choose from among the permanents that player controls an artifact, a creature, an enchantment, and a planeswalker. Then each player sacrifices all other nonland permanents he or she controls.',5);
INSERT INTO ORI_Master VALUES(39,'Valor in Akros','White','{3}{W}','Enchantment',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever a creature enters the battlefield under your control, creatures you control get +1/+1 until end of turn.',4);
INSERT INTO ORI_Master VALUES(40,'Vryn Wingmare','White','{2}{W}','Creature','Pegasus',NULL,NULL,'Rare',2,1,NULL,'Flying

Noncreature spells cost {1} more to cast.',3);
INSERT INTO ORI_Master VALUES(41,'War Oracle','White','{2}{W}{W}','Creature','Human','Cleric',NULL,'Uncommon',3,3,NULL,'Lifelink

Renown 1',4);
INSERT INTO ORI_Master VALUES(42,'Yoked Ox','White','{W}','Creature','Ox',NULL,NULL,'Common',0,4,NULL,NULL,1);
INSERT INTO ORI_Master VALUES(43,'Alhammarret, High Arbiter','Blue','{5}{U}{U}','Creature','Legendary','Sphinx',NULL,'Rare',5,5,NULL,'Flying

As Alhammarret, High Arbiter enters the battlefield, each opponent reveals his or her hand. You choose the name of a nonland card revealed this way.

Your opponents can''t cast spells with the chosen name.',7);
INSERT INTO ORI_Master VALUES(44,'Anchor to the Aether','Blue','{2}{U}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Put target creature on top of its owner''s library. Scry 1.',3);
INSERT INTO ORI_Master VALUES(45,'Artificer''s Epiphany','Blue','{2}{U}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Draw two cards. If you control no artifacts, discard a card.',3);
INSERT INTO ORI_Master VALUES(46,'Aspiring Aeronaut','Blue','{2}{U}','Creature','Human','Artificer',NULL,'Common',1,2,NULL,'Flying

When Aspiring Aeronaut enters the battlefield, put a 1/1 colorless Thopter artifact creature token with flying onto the battlefield.',3);
INSERT INTO ORI_Master VALUES(47,'Bone to Ash','Blue','{2}{U}{U}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Counter target creature spell.

Draw a card.',4);
INSERT INTO ORI_Master VALUES(48,'Calculated Dismissal','Blue','{2}{U}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Counter target spell unless its controller pays {3}.

Spell mastery - If there are two or more instant and/or sorvery cards in your graveyard, scry 2.',3);
INSERT INTO ORI_Master VALUES(49,'Clash of Wills','Blue','{X}{U}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Counter target spell unless its conroller pays {X}',1);
INSERT INTO ORI_Master VALUES(50,'Claustrophobia','Blue','{1}{U}{U}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

When Claustrophobia enters the battlefield, tap enchanted creature.

Enchanted creature doesn''t untap during its controller''s untap step.',3);
INSERT INTO ORI_Master VALUES(51,'Day''s Undoing','Blue','{2}{U}','Sorcery',NULL,NULL,NULL,'Mythic Rare',NULL,NULL,NULL,'Each player shuffles his or her hand and graveyard into his or her library, then draws seven cards. If it''s your turn, end the turn. (Exile all spells and abilities on the stack, including this card. Discard down to your maximum hand size. Damage wears off, and "this turn" and "until end of turn" effects end.)',3);
INSERT INTO ORI_Master VALUES(52,'Deep-Sea Terror','Blue','{4}{U}{U}','Creature','Serpent',NULL,NULL,'Common',6,6,NULL,'Deep-Sea Terror can''t attack unless there are seven or more cards in your graveyard.',6);
INSERT INTO ORI_Master VALUES(53,'Disciple of the Ring','Blue','{2}{U}{U}','Creature','Human','Wizard',NULL,'Mythic Rare',3,4,NULL,'{1}, Exile an instant or sorcery card from your graveyard: Choose one -
 - Counter target noncreature spell unless its controller pays {2}
 - Disciple of the Ring gets +1/+1 until end of turn.
 - Tap target creature.
 - Untap target creature.',4);
INSERT INTO ORI_Master VALUES(54,'Disperse','Blue','{1}{U}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Return target nonland permanent to its owner''s hand.',2);
INSERT INTO ORI_Master VALUES(55,'Displacement Wave','Blue','{X}{U}{U}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Return all nonland permanents with converted mana cost X or less to their owner''s hands.',2);
INSERT INTO ORI_Master VALUES(56,'Dreadwaters','Blue','{3}{U}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target player puts the top X cards of his or her library into his or her graveyard, where X is the number of lands you control.',4);
INSERT INTO ORI_Master VALUES(57,'Faerie Miscreant','Blue','{U}','Creature','Faerie','Rogue',NULL,'Common',1,1,NULL,'Flying

When Faerie Miscreant enters the battlefield, if you control another creature named Faerie Miscreant, draw a card.',1);
INSERT INTO ORI_Master VALUES(58,'Harbinger of the Tides','Blue','{U}{U}','Creature','Merfolk','Wizard',NULL,'Rare',2,2,NULL,'You may cast Harbinger of the Tides as though it had flash if you pay {2} more to cast it.

When Harbinger of the Tides enters the battlefield, you may return target tapped creature an opponent controls to its owner''s hand.',2);
INSERT INTO ORI_Master VALUES(59,'Hydrolash','Blue','{2}{U}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Attacking creatures get -2/-0 until end of turn.

Draw a card.',3);
INSERT INTO ORI_Master VALUES(60,'Jace, Vryn''s Prodigy','Blue','{1}{U}','Creature','Legendary','Human','Wizard','Mythic Rare',0,2,NULL,'{}: Draw a card, then discard a card. If there are five or more cards in your graveyard, exile Jace, Vryn''s Prodigy, then return him to the battlefield transformed under his owner''s control.',2);
INSERT INTO ORI_Master VALUES(61,'Jace''s Sanctum','Blue','{2}{U}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Instant and sorcery spells you cast cost {1} less to cast.

Whenever you cast an instant or sorcery spell, scry 1.',3);
INSERT INTO ORI_Master VALUES(62,'Jhessian Thief','Blue','{2}{U}','Creature','Human','Rogue',NULL,'Uncommon',1,3,NULL,'Prowess

Whenever Jhessian Thief deals combat damage to a player, draw a card.',3);
INSERT INTO ORI_Master VALUES(63,'Maritime Guard','Blue','{1}{U}','Creature','Merfolk','Soldier',NULL,'Common',1,3,NULL,NULL,2);
INSERT INTO ORI_Master VALUES(64,'Mizzium Meddler','Blue','{2}{U}','Creature','Vedalken','Wizard',NULL,'Rare',1,4,NULL,'Flash

When Mizzium Meddler enters the battlefield, you may change a target of target spell or ability to Mizzium Meddler.',3);
INSERT INTO ORI_Master VALUES(65,'Negate','Blue','{1}{U}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Counter target noncreature spell.',2);
INSERT INTO ORI_Master VALUES(66,'Nivix Barrier','Blue','{2}{U}','Creature','Illusion','Wall',NULL,'Common',0,4,NULL,'Flash

Defender

When Nivix Barrier enters the battlefield, target attacking creature gets -4/-0 until end of turn.',3);
INSERT INTO ORI_Master VALUES(67,'Psychic Rebuttal','Blue','{1}{U}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Counter target instant or sorcery spell that targets you.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, you may copy the spell countered this way. You may choose new targets for the copy.',2);
INSERT INTO ORI_Master VALUES(68,'Ringwarden Owl','Blue','{2}{U}{U}','Creature','Bird',NULL,NULL,'Common',3,3,NULL,'Flying

Prowess',4);
INSERT INTO ORI_Master VALUES(69,'Scrapskin Drake','Blue','{2}{U}','Creature','Zombie','Drake',NULL,'Common',2,3,NULL,'Flying

Scrapskin Drake can block only creatures with flying.',3);
INSERT INTO ORI_Master VALUES(70,'Screeching Skaab','Blue','{1}{U}','Creature','Zombie',NULL,NULL,'Common',2,1,NULL,'When Screeching Skaab enters the battlefield, put the top two cards of your library into your graveyard.',2);
INSERT INTO ORI_Master VALUES(71,'Send to Sleep','Blue','{1}{U}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Tap up to two target creatures.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, those creatures don''t untap during their controllers'' next untap steps.',2);
INSERT INTO ORI_Master VALUES(72,'Separatist Voidmage','Blue','{2}{U}','Creature','Human','Wizard',NULL,'Common',2,2,NULL,'When Seperatist Voidmage enters the battlefield, you may return target creature to its owner''s hand.',3);
INSERT INTO ORI_Master VALUES(73,'Sigiled Starfish','Blue','{1}{U}','Creature','Starfish',NULL,NULL,'Uncommon',0,3,NULL,'{}: Draw a card, then discard a card. If there are five or more cards in your graveyard, exile Jace, Vryn''s Prodigy, then return him to the battlefield transformed under his owner''s control.',2);
INSERT INTO ORI_Master VALUES(74,'Skaab Goliath','Blue','{5}{U}{U}','Creature','Zombie','Giant',NULL,'Uncommon',6,9,NULL,'As an additional cost to cast Skaab Goliath, exile two creature cards from your graveyard.

Trample.',7);
INSERT INTO ORI_Master VALUES(75,'Soulblade Djinn','Blue','{2}{U}{U}','Creature','Djinn',NULL,NULL,'Rare',4,3,NULL,'Flying

Whenever you cast a noncreature spell, creatures you control get +1/+1 until end of turn.',4);
INSERT INTO ORI_Master VALUES(76,'Sphinx''s Tutelage','Blue','{2}{U}','Enchantment',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever you draw a card, target opponent puts the top two cards of his or her library into his or her graveyard. If they''re both nonland cards that share a color, repeat this process.

{5}{U}: Draw a card, then discard a card.',3);
INSERT INTO ORI_Master VALUES(77,'Stratus Walk','Blue','{1}{U}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

When Stratus Walk enters the battlefield, draw a card.

Enchanted creature has flying.

Enchanted creature can block only creatures with flying.',2);
INSERT INTO ORI_Master VALUES(78,'Talent of the Telepath','Blue','{2}{U}{U}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Target opponent reveals the top seven cards of his or her library. You may cast an instant or sorcery card from among them without paying its mana cost. Then that player puts the rest into his or her graveyard.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, you may cast up to two revealed instant and/or sorcery cards instead of one.',4);
INSERT INTO ORI_Master VALUES(79,'Thopter Spy Network','Blue','{2}{U}{U}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'At the beginning of your upkeep, if you control an artifact, put a 1/1 colorless Thopter artifact creature token with flying onto the battlefield.

Whenever one of more artifact creatures you control deal combat damage to a player, draw a card.',4);
INSERT INTO ORI_Master VALUES(80,'Tower Geist','Blue','{2}{U}','Creature','Spirit',NULL,NULL,'Uncommon',2,2,NULL,'Flying

When Tower Geist enters the battlefield, look at the top two cards of your library. Put one of them into your hand and the other into your graveyard.',3);
INSERT INTO ORI_Master VALUES(81,'Turn to Frog','Blue','{1}{U}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Until end of turn, target creature loses all abilities and becomes a blue Frog with base power and toughness 1/1',2);
INSERT INTO ORI_Master VALUES(82,'Watercourser','Blue','{2}{U}','Creature','Elemental',NULL,NULL,'Common',2,3,NULL,'{U}: Watercourser gets +1/-1 until end of turn.',3);
INSERT INTO ORI_Master VALUES(83,'Whirler Rogue','Blue','{2}{U}{U}','Creature','Human','Rogue','Artificer','Uncommon',2,2,NULL,'When Whirler Rogue enters the battlefield, put two 1/1 colorless Thopter artifact creature tokens with flying onto the battlefield.

Tap two untapped atifacts you control: Target creature can''t be blocked this turn.',4);
INSERT INTO ORI_Master VALUES(84,'Willbreaker','Blue','{2}{U}{U}','Creature','Human','Wizard',NULL,'Rare',2,3,NULL,'Whenever a creature an opponent controls becomes the target of a spell or ability you control, gain control of that creature for as long as you control Willbreaker.',4);
INSERT INTO ORI_Master VALUES(85,'Blightcaster','Black','{2}[B}','Creature','Human','Wizard',NULL,'Uncommon',2,3,NULL,'Whenever you cast an enchantment spell, you may have target creature get -2/-2 until end of turn.',3);
INSERT INTO ORI_Master VALUES(86,'Catacomb Slug','Black','{4}[B}','Creature','Slug',NULL,NULL,'Common',2,6,NULL,NULL,5);
INSERT INTO ORI_Master VALUES(87,'Consecrated by Blood','Black','{2}[B}[B}','Enchantment','Aura',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets +2/+2 and has flying and "Sacrifice two other creatures: Regenerate this creater."',4);
INSERT INTO ORI_Master VALUES(88,'Cruel Revival','Black','{4}{B}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Destroy target non-Zombie creature. It can''t be regenerated. Return up to one target Zombie card from your graveyard to your hand.',5);
INSERT INTO ORI_Master VALUES(89,'Dark Dabbling','Black','{2}{B}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Regenerate target creature. Draw a card.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, also regenerate each other creature you control.',3);
INSERT INTO ORI_Master VALUES(90,'Dark Petition','Black','{3}{B}{B}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Search your library for a card and put that card into your hand. Then shuffle your library.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, add {B}{B}{B} to your mana pool.',5);
INSERT INTO ORI_Master VALUES(91,'Deadbridge Shaman','Black','{2}{B}','Creature','Elf','Shaman',NULL,'Common',3,1,NULL,'When Deadbridge Shaman dies, target opponent discards a card.',3);
INSERT INTO ORI_Master VALUES(92,'Demonic Pact','Black','{2}{B}{B}','Enchantment',NULL,NULL,NULL,'Mythic Rare',NULL,NULL,NULL,'At the beginning of your upkeep, choose one that hasn''t been chosen -
 - Demonic Pact deals 4 damage to target
 - Target opponent discards two cards
 - Draw two cards
 - You lose the game',4);
INSERT INTO ORI_Master VALUES(93,'Despoiler of Souls','Black','{B}{B}','Creature','Horror',NULL,NULL,'Rare',3,1,NULL,'Despoiler of Souls can''t block.

{B}{B}, Exile two other creature cards from your graveyard: Return Despoiler of Souls from your graveyard to the battlefield.',2);
INSERT INTO ORI_Master VALUES(94,'Erebos''s Titan','Black','{1}{B}{B}{B}','Creature','Giant',NULL,NULL,'Mythic Rare',5,5,NULL,'As long as your opponents control no creatures, Erebos''s Titan has indestructible.

Whenever a creature card leaves an opponent''s graeyard, you may discard a card. If you do, return Erebos''s Titan from your graveyard to your hand.',4);
INSERT INTO ORI_Master VALUES(95,'Eyeblight Assassin','Black','{2}{B}','Creature','Elf','Assassin',NULL,'Common',2,2,NULL,'When Eyeblight Assassin enters the battlefield, target creature an opponent controls gets -1/-1 until end of turn.',3);
INSERT INTO ORI_Master VALUES(96,'Eyeblight Massacre','Black','{2}{B}{B}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Non-Elf creatures get -2/-2 until end of turn.',4);
INSERT INTO ORI_Master VALUES(97,'Fetid Imp','Black','{1}{B}','Creature','Imp',NULL,NULL,'Common',1,2,NULL,'Flying

{B}: Fetid Imp gains deathtouch until end of turn.',2);
INSERT INTO ORI_Master VALUES(98,'Fleshbag Marauder','Black','{2}{B}','Creature','Zombie','Warrior',NULL,'Uncommon',3,1,NULL,'When Fleshbag Marauder enters the battlefield, each player sacrifices a creature.',3);
INSERT INTO ORI_Master VALUES(99,'Gilt-Leaf Winnower','Black','{3}{B}{B}','Creature','Elf','Warrior',NULL,'Rare',4,3,NULL,'Menace

When Gilt-Leaf Winnower enters the battlefield, you may destroy target non-Elf creature whose power and toughness aren''t equal.',5);
INSERT INTO ORI_Master VALUES(100,'Gnarlroot Trapper','Black','{B}{B}','Creature','Elf','Druid',NULL,'Uncommon',1,1,NULL,'{}, Pay 1 life: Add {G} to your mana pool. Spend this mana only to cast an Elf creature spell.
{}: Target attacking Elf you control gains deathtouch until end of turn.',2);
INSERT INTO ORI_Master VALUES(101,'Graveblade Marauder','Black','{2}{B}','Creature','Human','Warrior',NULL,'Rare',1,4,NULL,'Deathtouch

Whenever Graveblade Marauder deals combat damage to a player, that player loses life equal to the number of creature cards in your graveyard.',3);
INSERT INTO ORI_Master VALUES(102,'Infernal Scarring','Black','{1}{B}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets +2/+0 and has "When this creature dies, draw a card."',2);
INSERT INTO ORI_Master VALUES(103,'Infinte Obliteration','Black','{1}{B}{B}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Name a creature card. Search target opponent''s graveyard, hand, and library for any number of cards with that name and exile them. Then that player shuffles his or her library.',3);
INSERT INTO ORI_Master VALUES(104,'Kothophed, Soul Hoarder','Black','{4}{B}{B}','Creature','Legendary','Demon',NULL,'Rare',6,6,NULL,'Flying

Whenever a permanent owned by another player is put into a graveyard from the battlefield, you draw a card and you lose 1 life.',6);
INSERT INTO ORI_Master VALUES(105,'Languish','Black','{2}{B}{B}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'All creatures get -4/-4 until end of turn',4);
INSERT INTO ORI_Master VALUES(106,'Liliana, Heretical Healer','Black','{1}{B}{B}','Creature','Legendary','Human','Cleric','Mythic Rare',2,3,NULL,'Lifelink
Whenever another nontoken creature you control dies, exile Liliana, Heretical Healer, then return her to the battlefield transformed under her owner''s control. If you do, put a 2/2 black Zombie creature token onto the battlefield.',3);
INSERT INTO ORI_Master VALUES(107,'Macabre Waltz','Black','{1}{B}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Return up to two target creature cards from your graveyard to your hand, then discard a card.',2);
INSERT INTO ORI_Master VALUES(108,'Malakir Cullblade','Black','{1}{B}','Creature','Vampire','Warrior',NULL,'Uncommon',1,1,NULL,'Whenever a creature an opponent controls dies, put a +1/+1 counter on Malakir Cullblade.',2);
INSERT INTO ORI_Master VALUES(109,'Nantuko Husk','Black','{2}{B}','Creature','Zombie','Insect',NULL,'Common',2,2,NULL,'Sacrifice a creature: Nantuko Husk gets +2/+2 until end of turn.',3);
INSERT INTO ORI_Master VALUES(110,'Necromantic Summons','Black','{4}{B}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Put target creature card from a graveyard onto the battlefield under your control.
 Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, that creature enters the battlefield with two additional +1/+1 counters on it.',5);
INSERT INTO ORI_Master VALUES(111,'Nightsnare','Black','{3}{B}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target opponent reveals his or her hand. You may choose a nonland card from it. If you do, that player discards that card. If you don''t, that player discards two cards.',4);
INSERT INTO ORI_Master VALUES(112,'Priest of the Blood Rite','Black','{3}{B}{B}','Creature','Human','Cleric',NULL,'Rare',2,2,NULL,'When Priest of the Blood Rite enters the battlefield, put a 5/5 black Demon creature token with flying onto the battlefield.

At the beginning of your upkeep, you lose 2 life.',5);
INSERT INTO ORI_Master VALUES(113,'Rabid Bloodsucker','Black','{4}{B}','Creature','Vampire',NULL,NULL,'Common',3,2,NULL,'Flying

When Rabid Bloodsucker enters the battlefield, each player loses 2 life.',5);
INSERT INTO ORI_Master VALUES(114,'Read the Bones','Black','{2}{B}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Scry 2, then draw two cards. You lose 2 life.',3);
INSERT INTO ORI_Master VALUES(115,'Reave Soul','Black','{1}{B}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Destroy target creature with power 3 or less.',2);
INSERT INTO ORI_Master VALUES(116,'Returned Centaur','Black','{3}{B}','Creature','Zombie','Centaur',NULL,'Common',2,4,NULL,'When Returned Centaur enters the battlefield, target player puts the top four cards of his or her library into his or her graveyard.',4);
INSERT INTO ORI_Master VALUES(117,'Revenant','Black','{4}{B}','Creature','Spirit',NULL,NULL,'Uncommon','*','*',NULL,'Flying

Revenant''s power and toughness are each equal to the number of creature cards in your graveyard.',5);
INSERT INTO ORI_Master VALUES(118,'Shadows of the Past','Black','{1}{B}','Enchantment',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever a creature dies, scry 1.

{4}{B}: Each opponent loses 2 life and you gain 2 life. Activate this ability only if there are four or more creature cards in your graveyard.',2);
INSERT INTO ORI_Master VALUES(119,'Shambling Ghoul','Black','{1}{B}','Creature','Zombie',NULL,NULL,'Common',2,3,NULL,'Shambling Ghoul enters the battlefield tapped.',2);
INSERT INTO ORI_Master VALUES(120,'Tainted Remedy','Black','{2}{B}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'If an opponent would gain life, that player loses that much life instead.',3);
INSERT INTO ORI_Master VALUES(121,'Thornbow Archer','Black','{B}','Creature','Elf','Archer',NULL,'Common',1,2,NULL,'Whenever Thornbow Archer attacks, each opponent who doesn''t control an Elf loses 1 life.',1);
INSERT INTO ORI_Master VALUES(122,'Tormented Thoughts','Black','{2}{B}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'As an additional cost to cast Tormented Thoughts, sacrifice a creature.

Target player discards a number of cards equal to the sacrificed creature''s power.',3);
INSERT INTO ORI_Master VALUES(123,'Touch of Moonglove','Black','{B}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature you control gets +1/+0 and gains deathtouch until end of turn. Whenever a creature dealt damage by that creature dies this turn, its controller loses 2 life.',1);
INSERT INTO ORI_Master VALUES(124,'Undead Servant','Black','{3}{B}','Creature','Zombie',NULL,NULL,'Common',3,2,NULL,'When Undead Servant enters the battlefield, put a 2/2 black Zombie creature token onto the battlefield for each card named Undead Servant in your graveyard.',4);
INSERT INTO ORI_Master VALUES(125,'Unholy Hunger','Black','{3}{B}{B}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Destroy target creature.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, you gain 2 life.',5);
INSERT INTO ORI_Master VALUES(126,'Weight of the Underworld','Black','{3}{B}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets -3/-2.',4);
INSERT INTO ORI_Master VALUES(127,'Abbot of Keral keep','Red','{1}{R}','Creature','Human','Monk',NULL,'Rare',2,1,NULL,'Prowess

When Abbot of Keral Keep enters the battlefield, exile the top card of your library. Until end of turn, you may play that card.',2);
INSERT INTO ORI_Master VALUES(128,'Acolyte of the Inferno','Red','{2}{R}','Creature','Human','Monk',NULL,'Uncommon',3,1,NULL,'Renown 1

Whenever Acolyte of the Inferno becomes blocked by a creature, it deals 2 damage to that creature.',3);
INSERT INTO ORI_Master VALUES(129,'Act of Treason','Red','{2}{R}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Gain control of target creature until end of turn. Untap that creature. It gains haste until end of turn.',3);
INSERT INTO ORI_Master VALUES(130,'Akroan Sergeant','Red','{2}{R}','Creature','Human','Soldier',NULL,'Common',2,2,NULL,'First Strike

Renown 1',3);
INSERT INTO ORI_Master VALUES(131,'Avaricious Dragon','Red','{2}{R}{R}','Creature','Dragon',NULL,NULL,'Mythic Rare',4,4,NULL,'Flying

At the beginning of your draw step, draw an additional card.

At the beginning of your end step, discard your hand.',4);
INSERT INTO ORI_Master VALUES(132,'Bellows Lizard','Red','{R}','Creature','Lizard',NULL,NULL,'Common',1,1,NULL,'{1}{R}: Bellows Lizard gets +1/+0 until end of turn.',1);
INSERT INTO ORI_Master VALUES(133,'Boggart Brute','Red','{2}{R}','Creature','Goblin','Warrior',NULL,'Common',3,2,NULL,'Menace',3);
INSERT INTO ORI_Master VALUES(134,'Call of the Full Moon','Red','{1}{R}','Enchantment','Aura',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets +3/+2 and has trample

At the beginning of each upkeep, if a player cast two or more spells last turn, sacrifice Call of the Full Moon.',2);
INSERT INTO ORI_Master VALUES(135,'Chandra, Fire of Kaladesh','Red','{1}{R}{R}','Creature','Legendary','Human','Shaman','Mythic Rare',2,2,NULL,'Whenever you cast a red spell, untap Chandra, Fire of Kaladesh.

{}: Chandra, Fire of Kaladesh deals 1 damage to target player. If Chandra has dealt 3 or more damage this turn, exile her, then return her to the battlefield transformed under her owner''s control.',3);
INSERT INTO ORI_Master VALUES(136,'Chandra''s Fury','Red','{4}{R}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Chandra''s Fury deals 4 damage to target player and 1 damage to each creature that player controls.',5);
INSERT INTO ORI_Master VALUES(137,'Chandra''s Ignition','Red','{3}{R}{R}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Target creature you control deals damage equal to its power to each other creature and each opponent.',5);
INSERT INTO ORI_Master VALUES(138,'Cobblebrute','Red','{3}{R}','Creature','Elemental',NULL,NULL,'Common',5,2,NULL,NULL,4);
INSERT INTO ORI_Master VALUES(139,'Demolish','Red','{3}{R}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Destroy target artifact or land.',4);
INSERT INTO ORI_Master VALUES(140,'Dragon Fodder','Red','{1}{R}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Put two 1/1 red Goblin creature tokens onto the battlefield.',2);
INSERT INTO ORI_Master VALUES(141,'Embermaw Hellion','Red','{3}{R}{R}','Creature','Hellion',NULL,NULL,'Rare',4,5,NULL,'Trample

If another red source you control would deal damage to a permanent or player, it deals that much damage plus 1 to that permanent or player instead.',5);
INSERT INTO ORI_Master VALUES(142,'Enthralling Victor','Red','{3}{R}','Creature','Human','Warrior',NULL,'Uncommon',3,2,NULL,'When Enthralling Victor enters the battlefield, gain control of target creature an opponenet controls with power 2 or less until end of turn. Untap that creature. It gains haste until end of turn.',4);
INSERT INTO ORI_Master VALUES(143,'Exquisite Firecraft','Red','{1}{R}{R}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Exquisite Firecraft deals 4 damage to target creature or player.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, Exquisite Firecraft can''t be countered by spells or abilities.',3);
INSERT INTO ORI_Master VALUES(144,'Fiery Conclusion','Red','{1}{R}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'As an additional cost to cast Fiery Conclusion, sacrifice a creature.

Fiery Conclusion deal 5 damage to target creature.',2);
INSERT INTO ORI_Master VALUES(145,'Fiery Impulse','Red','{R}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Fiery Impulse deals 2 damage to target creature.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, Fiery Impulse deals 3 damage to that creature instead.',1);
INSERT INTO ORI_Master VALUES(146,'Firefiend Elemental','Red','{3}{R}','Creature','Elemental',NULL,NULL,'Common',3,2,NULL,'Haste

Renown 1',4);
INSERT INTO ORI_Master VALUES(147,'Flameshadow Conjuring','Red','{3}{R}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Whenever a nontoken creature enters the battlefield under your control, you may pay {R}. If you do, put a token onto the battlefield that''s a copy of that creature. That token gains haste. Exile it at the beginning of the next end step.',4);
INSERT INTO ORI_Master VALUES(148,'Ghirapur Aether Grid','Red','{2}{R}','Enchantment',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Tap two untapped artifacts you control: Ghirapur Aether Grid deals 1 damage to target creature or player.',3);
INSERT INTO ORI_Master VALUES(149,'Ghirapur Gearcrafter','Red','{2}{R}','Creature','Human','Artificer',NULL,'Common',2,1,NULL,'When Ghirapur Gearcrafter enters the battlefield, put a 1/1 colorless Thopter artifact creature token with flying onto the battlefield.',3);
INSERT INTO ORI_Master VALUES(150,'Goblin Glory Chaser','Red','{R}','Creature','Goblin','Warrior',NULL,'Uncommon',1,1,NULL,'Renown 1

As long as Goblin Glory Chaser is renowned, it has menace.',1);
INSERT INTO ORI_Master VALUES(151,'Goblin Pile Driver','Red','{1}{R}','Creature','Goblin','Warrior',NULL,'Rare',1,2,NULL,'Protection from blue

Whenever Goblin Piledriver attacks, it gets +2/+0 until end of turn for each other attacking Goblin.',2);
INSERT INTO ORI_Master VALUES(152,'Infectious Bloodlust','Red','{1}{R}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets +2/+1, has haste, and attacks each turn if able.

When enchanted creature dies, you may search your library for a card named Infectious Bloodlust, reveal it, put it into your hand, then shuffle your library.',2);
INSERT INTO ORI_Master VALUES(153,'Lightning Javelin','Red','{3}{R}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Lightning Javelin deals 3 damage to target creature or player. Scry 1.',4);
INSERT INTO ORI_Master VALUES(154,'Mage-Ring Bully','Red','{1}{R}','Creature','Human','Warrior',NULL,'Common',2,2,NULL,'Prowess

Mage-Ring Bully attacks each turn if able.',2);
INSERT INTO ORI_Master VALUES(155,'Magmatic Insight','Red','{R}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'As an additional cost to cast Magmatic Insight, discard a land card.

Draw two cards.',1);
INSERT INTO ORI_Master VALUES(156,'Molten Vortex','Red','{R}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{R}, Discard a land card: Molton Vortex deals 2 damage to target creature or player.',1);
INSERT INTO ORI_Master VALUES(157,'Pia and Kiran Nalaar','Red','{2}{R}{R}','Creature','Legendary','Human','Artificer','Rare',2,2,NULL,'When Pia and Kiran Nalaar enters the battlefield, put two 1/1 colorless Thopter artifact creature tokens with flying onto the battlefield.

{2}{R}, Sacrifice an artifact: Pia and Kiran Nalaar deals 2 damage to target creature or player.',4);
INSERT INTO ORI_Master VALUES(158,'Prickleboar','Red','{4}{R}','Creature','Boar',NULL,NULL,'Common',3,3,NULL,'As long as it''s your turn, Prickleboar gets +2/+0 and has first strike.',5);
INSERT INTO ORI_Master VALUES(159,'Ravaging Blaze','Red','x{R}{R}','Instant',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Ravaging Blaze deals X damage to target creature.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, Ravaging Blaze also deals X damage to that creature''s controller.',2);
INSERT INTO ORI_Master VALUES(160,'Scab-Clan Berserker','Red','{1}{R}{R}','Creature','Human','Berserker',NULL,'Rare',2,2,NULL,'Haste

Renown 1

Whenever an opponent casts a noncreature spell, if Scab-Clan Berserker is renowned, Scab-Clan Berserker deals 2 damage to that player.',3);
INSERT INTO ORI_Master VALUES(161,'Seismic Elemental','Red','{3}{R}{R}','Creature','Elemental',NULL,NULL,'Uncommon',4,4,NULL,'When Seismic Elemental enters the battlefield, creatures without flying can''t block this turn.',5);
INSERT INTO ORI_Master VALUES(162,'Skyraker Giant','Red','{2}{R}{R}','Creature','Giant',NULL,NULL,'Uncommon',4,3,NULL,'Reach.',4);
INSERT INTO ORI_Master VALUES(163,'Smash to Smithereens','Red','{1}{R}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Destroy target artifact. Smash to Smithereens deals 3 damage to that artifact''s controller.',2);
INSERT INTO ORI_Master VALUES(164,'Subterranean Scout','Red','{1}{R}','Creature','Goblin','Scout',NULL,'Common',2,1,NULL,'When Subterranean Scout enters the battlefield, target creature with power 2 or less can''t be blocked this turn.',2);
INSERT INTO ORI_Master VALUES(165,'Thopter Engineer','Red','{2}{R}','Creature','Human','Artificer',NULL,'Uncommon',1,3,NULL,'When Thopter Engineer enters the battlefield, put a 1/1 colorless Thopter artifact creature token with flying onto the battlefield.

Artifact creatures you control have haste.',3);
INSERT INTO ORI_Master VALUES(166,'Titan''s Strength','Red','{R}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature gets +3/+1 until end of turn. Scry 1.',1);
INSERT INTO ORI_Master VALUES(167,'Volcanic Rambler','Red','{5}{R}','Creature','Elemental',NULL,NULL,'Common',6,4,NULL,'{2}{R}: Volcanic Rambler deals 1 damage to target player.',6);
INSERT INTO ORI_Master VALUES(168,'Aerial Volley','Green','{G}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Aerial Volley deals 3 damage divided as you choose among one, two, or three target creatures with flying.',1);
INSERT INTO ORI_Master VALUES(169,'Animist''s Awakening','Green','x{G}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Reveal the top X cards of your library. Put all land cards from among them onto the battlefield tapped and the rest on the bottom of your library in a random order.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, untap those lands.',1);
INSERT INTO ORI_Master VALUES(170,'Caustic Caterpillar','Green','{G}','Creature','Insect',NULL,NULL,'Common',1,1,NULL,'{1}{G}, Sacrifice Caustic Caterpillar: Destroy target artifact or enchantment.',1);
INSERT INTO ORI_Master VALUES(171,'Conclave Naturalists','Green','{4}{G}','Creature','Dryad',NULL,NULL,'Uncommon',4,4,NULL,'When Conclave Naturalists enters the battlefield, you may destroy target artifact or enchantment.',5);
INSERT INTO ORI_Master VALUES(172,'Dwynen, Gilt-Leaf Daen','Green','{2}{G}{G}','Creature','Elf','Warrior',NULL,'Rare',3,4,NULL,'Reach

Other Elf creatures you control get +1/+1

Whenever Dwynen, Gilt-Leaf Daen attacks, you gain 1 life for each attacking Elf you control.',4);
INSERT INTO ORI_Master VALUES(173,'Dwynen''s Elite','Green','{1}{G}','Creature','Elf','Warrior',NULL,'Uncommon',2,2,NULL,'When Dwynen''s Elite enters the battlefield, if you control another Elf, put a 1/1 green Elf Warrior creature token onto the battlefield.',2);
INSERT INTO ORI_Master VALUES(174,'Elemental Bond','Green','{2}{G}','Enchantment',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever a creature with power 3 or greater enters the battlefield under your control, draw a card.',3);
INSERT INTO ORI_Master VALUES(175,'Elvish Visionary','Green','{1}{G}','Creature','Elf','Shaman',NULL,'Common',1,1,NULL,'When Elvish Visionary enters the battlefield, draw a card.',2);
INSERT INTO ORI_Master VALUES(176,'Evolutionary Leap','Green','{1}{G}','Enchantment',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{G}, Sacrifice a creature: Reveal cards from the top of your library until you reveal a creature card. Put that card into your hand and the rest on the bottom of your library in a random order.',2);
INSERT INTO ORI_Master VALUES(177,'Gaea''s Revenge','Green','{5}{G}{G}','Creature','Elemental',NULL,NULL,'Rare',8,5,NULL,'Gaea''s Revenge can''t be countered.

Haste

Gaea''s Revenge can''t be the target of nongreen spells or abilities from nongreen sources.',7);
INSERT INTO ORI_Master VALUES(178,'Gather the Pack','Green','{1}{G}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Reveal the top five cards of your library. You may put a creature card from among them into your hand. Put the rest into your graveyard.

Spell mastery - If there are two or more instant and/or sorcery cards in your graveyard, put up to two creature cards from among the revealed cards into your hand instead of one.',2);
INSERT INTO ORI_Master VALUES(179,'The Great Aurora','Green','{6}{G}{G}{G}','Sorcery',NULL,NULL,NULL,'Mythic Rare',NULL,NULL,NULL,'Each player shuffles all cards from his or her hand and all permanents he or she owns into his or her library, then draws that many cards. Each player may put any number of land cards from his or her hand onto the battlefield. Exile The Great Aurora.',9);
INSERT INTO ORI_Master VALUES(180,'Herald of the Pantheon','Green','{1}{G}','Creature','Centaur','Shaman',NULL,'Rare',2,2,NULL,'Enchantment spells you cast cost {1} less to cast.

Whenever you cast an enchantment spell, you gain 1 life.',2);
INSERT INTO ORI_Master VALUES(181,'Hitchclaw Recluse','Green','{2}{G}','Creature','Spider',NULL,NULL,'Common',1,4,NULL,'Reach.',3);
INSERT INTO ORI_Master VALUES(182,'Honored Hierarch','Green','{G}','Creature','Human','Druid',NULL,'Rare',1,1,NULL,'Renown 1

As long as Honored Hierarch is renowned, it has vigilance and "{}: Add one mana of any color to your mana pool."',1);
INSERT INTO ORI_Master VALUES(183,'Joraga Invocation','Green','{4}{G}{G}','Sorcery',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Each creature you control gets +3/+3 until end of turn and must be blocked this turn if able.',6);
INSERT INTO ORI_Master VALUES(184,'Leaf Gilder','Green','{1}{G}','Creature','Elf','Druid',NULL,'Common',2,1,NULL,'{}: Add {G} to your mana pool.',2);
INSERT INTO ORI_Master VALUES(185,'Llanowar Empath','Green','{3}{G}','Creature','Elf','Shaman',NULL,'Common',2,2,NULL,'When Llanowar Empath enters the battlefield, scry 2, then reveal the top card of your library. If it''s a creature card, put it into your hand.',4);
INSERT INTO ORI_Master VALUES(186,'Managorger Hydra','Green','{2}{G}','Creature','Hydra',NULL,NULL,'Rare',1,1,NULL,'Trample

Whenever a player casts a spell, put a +1/+1 counter on Managorger Hydra.',3);
INSERT INTO ORI_Master VALUES(187,'Mantle of Webs','Green','{1}{G}','Enchantment','Aura',NULL,NULL,'Common',NULL,NULL,NULL,'Enchant creature

Enchanted creature gets +1/+3 and has reach.',2);
INSERT INTO ORI_Master VALUES(188,'Might of the Masses','Green','{G}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature gets +1/+1 until end of turn for each creature you control.',1);
INSERT INTO ORI_Master VALUES(189,'Nissa, Vastwood Seer','Green','{2}{G}','Creature','Legendary','Elf','Scout','Mythic Rare',2,2,NULL,'When Nissa, Vastwood Seer enters the battlefield, you may search your library for a basic Forest card, reveal it, put it into your hand, then shuffle your library.

Whenever a land enters the battlefield under your control, if you control seven or more lands, exile Nissa, then return her to the battlefield transformed under her owner''s control.',3);
INSERT INTO ORI_Master VALUES(190,'Nissa''s Pilgrimage','Green','{2}{G}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Search your library for up to two basic Forest cards, reveal those cards, and put one onto the battlefield tapped and the rest into your hand. Then shuffle your library.
Spell mastery - If there are two or more instand and/or sorcery cards in your graveyard, search your library for up to three basic Forest cards instead of two.',3);
INSERT INTO ORI_Master VALUES(191,'Nissa''s Revelation','Green','{5}{G}{G}','Sorcery',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'Scry 5, then reveal the top card of your library. If it''s a creature card, you draw cards equal to its power and you gain life equal to its toughness.',7);
INSERT INTO ORI_Master VALUES(192,'Orchard Spirit','Green','{2}{G}','Creature','Spirit',NULL,NULL,'Common',2,2,NULL,'Orchard Spirit can''t be blocked except by creatures with flying or reach.',3);
INSERT INTO ORI_Master VALUES(193,'Outland Colossus','Green','{3}{G}{G}','Creature','Giant',NULL,NULL,'Rare',6,6,NULL,'Renown 6

Outland Colossus can''t be blocked by more than one creature.',5);
INSERT INTO ORI_Master VALUES(194,'Pharika''s Disciple','Green','{3}{G}','Creature','Centaur','Warrior',NULL,'Common',2,3,NULL,'Deathtouch

Renown 1',4);
INSERT INTO ORI_Master VALUES(195,'Reclaim','Green','{G}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Put target card from your graveyard on top of your library.',1);
INSERT INTO ORI_Master VALUES(196,'Rhox Maulers','Green','{4}{G}','Creature','Rhino','Soldier',NULL,'Common',4,4,NULL,'Trample

Renown 2',5);
INSERT INTO ORI_Master VALUES(197,'Skysnare Spider','Green','{4}{G}{G}','Creature','Spider',NULL,NULL,'Uncommon',6,6,NULL,'Vigilance

Reach',6);
INSERT INTO ORI_Master VALUES(198,'Somberwald Alpha','Green','{3}{G}','Creature','Wolf',NULL,NULL,'Uncommon',3,2,NULL,'Whenever a creature you control becomes blocked, it gets +1/+1 until end of turn.

{1}{G}: Target creature you control gains trample until end of turn.',4);
INSERT INTO ORI_Master VALUES(199,'Sylvan Messenger','Green','{3}{G}','Creature','Elf',NULL,NULL,'Uncommon',2,2,NULL,'Trample

When Sylvan Messenger enters the battlefield, reveal the top four cards of your library. Put all Elf cards revealed this way into your hand and the rest on the bottom of your library in any order.',4);
INSERT INTO ORI_Master VALUES(200,'Timberpack Wolf','Green','{1}{G}','Creature','Wolf',NULL,NULL,'Common',2,2,NULL,'Timberpack Wolf gets +1/+1 for each other creature you control named Timberpack Wolf.',2);
INSERT INTO ORI_Master VALUES(201,'Titanic Growth','Green','{1}{G}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature gets +4/+4 until end of turn.',2);
INSERT INTO ORI_Master VALUES(202,'Undercity Troll','Green','{1}{G}','Creature','Troll',NULL,NULL,'Uncommon',2,2,NULL,'Renown 1

{2}{G}: Regenerate Undercity Troll.',2);
INSERT INTO ORI_Master VALUES(203,'Valeron Wardens','Green','{2}{G}','Creature','Human','Monk',NULL,'Uncommon',1,3,NULL,'Renown 2

Whenever a creature you control becomes renowned, draw a card.',3);
INSERT INTO ORI_Master VALUES(204,'Vastwood Gorger','Green','{5}{G}','Creature','Wurm',NULL,NULL,'Common',5,6,NULL,NULL,6);
INSERT INTO ORI_Master VALUES(205,'Vine Snare','Green','{2}{G}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Prevent all combat damage that would be deal this turn by creatures with power 4 or less.',3);
INSERT INTO ORI_Master VALUES(206,'Wild Instincts','Green','{3}{G}','Sorcery',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Target creature you control gets +2/+2 until end of turn. It fights target creature an opponent controls.',4);
INSERT INTO ORI_Master VALUES(207,'Woodland Bellower','Green','{4}{G}{G}','Creature','Beast',NULL,NULL,'Mythic Rare',6,5,NULL,'When Woodland Bellower enters the battlefield, you may search your library for a nonlegendary green creature card with converted mana cost 3 or less, put it onto the battlefield, then shuffle your library.',6);
INSERT INTO ORI_Master VALUES(208,'Yeva''s Forcemage','Green','{2}{G}','Creature','Elf','Shaman',NULL,'Common',2,2,NULL,'When Yeva''s Forcemage enters the battlefield, target creature gets +2/+2 until end of turn.',3);
INSERT INTO ORI_Master VALUES(209,'Zendikar''s Roil','Green','{3}{G}{G}','Enchantment',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever a land enters the battlefield under your control, put a 2/2 green Elemental creature token onto the battlefield.',5);
INSERT INTO ORI_Master VALUES(210,'Blazing Hellhound','Black/Red','{2}{B}{R}','Creature','Elemental','Hound',NULL,'Uncommon',4,3,NULL,'{1}, Sacrifice another creature: Blazing Hellhound deals 1 damage to target creature or player.',4);
INSERT INTO ORI_Master VALUES(211,'Blood-Cursed Knight','White/Black','{1}{W}{B}','Creature','Vampire','Knight',NULL,'Uncommon',3,2,NULL,'As long as you control an enchantment, Blood-Cursed Knight gets +1/+1 and has lifelink.',3);
INSERT INTO ORI_Master VALUES(212,'Bounding Krasis','Green/Blue','{1}{G}{U}','Creature','Fish','Lizard',NULL,'Uncommon',3,3,NULL,'Flash

When Bounding Krasis enters the battlefield, you may tap or untap target creature.',3);
INSERT INTO ORI_Master VALUES(213,'Citadel Castellan','Green/White','{1}{G}{W}','Creature','Human','Knight',NULL,'Uncommon',2,3,NULL,'Vigilance

Renown 2',3);
INSERT INTO ORI_Master VALUES(214,'Iroas''s Champion','Red/White','{1}{R}{W}','Creature','Human','Soldier',NULL,'Uncommon',2,2,NULL,'Double strike',3);
INSERT INTO ORI_Master VALUES(215,'Possessed Skaab','Blue/Green','{3}{U}{B}','Creature','Zombie',NULL,NULL,'Uncommon',3,2,NULL,'When Possessed Skaab enters the battlefield, return target instant, sorcery, or creature card from your graveyard to your hand.

If Possessed Skaab would die, exile it instead.',5);
INSERT INTO ORI_Master VALUES(216,'Reclusive Artificer','Blue/Red','{2}{U}{R}','Creature','Human','Artificer',NULL,'Uncommon',2,3,NULL,'Haste

When Reclusive Artificer enters the battlefield, you may have it deal damage to target creature equal to the number of artifacts you control.',4);
INSERT INTO ORI_Master VALUES(217,'Shaman of the Pack','Black/Green','{1}{B}{G}','Creature','Elf','Shaman',NULL,'Uncommon',3,2,NULL,'When Shaman of the Pack enters the battlefield, target opponent loses life equal to the number of Elves you control.',3);
INSERT INTO ORI_Master VALUES(218,'Thunderclap Wyvern','White/Blue','{2}{W}{U}','Creature','Drake',NULL,NULL,'Uncommon',2,3,NULL,'Flash

Flying

Other creatures you control with flying get +1/+1',4);
INSERT INTO ORI_Master VALUES(219,'Zendikar Incarnate','Red/Green','{2}{R}{G}','Creature','Elemental',NULL,NULL,'Uncommon','*',4,NULL,'Zendikar Incarnate''s power is equal to the number of lands you control.',4);
INSERT INTO ORI_Master VALUES(220,'Alchemist''s Vial','Colorless','{2}','Artifact',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'When Alchemist''s Vial enters the battlefield, draw a card.

{1}, {}: Sacrifice Alchemist''s Vial: Target creature can''t attack or block this turn.',2);
INSERT INTO ORI_Master VALUES(221,'Alhammarret''s Archive','Colorless','{5}','Artifact','Legendary',NULL,NULL,'Mythic Rare',NULL,NULL,NULL,'If you would gain life, you gain twice that much life instead.

If you would draw a card except the first one you draw in each of your draw steps, draw two cards instead.',5);
INSERT INTO ORI_Master VALUES(222,'Angel''s Tomb','Colorless','{3}','Artifact',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever a creature enters the battlefield under your control, you may have Angel''s Tomb become a 3/3 white Angel artifact creature with flying until end of turn.',3);
INSERT INTO ORI_Master VALUES(223,'Bonded Construct','Colorless','{1}','Artifact Creature','Construct',NULL,NULL,'Common',2,1,NULL,'Bonded Construct can''t attack alone.',1);
INSERT INTO ORI_Master VALUES(224,'Brawler''s Plate','Colorless','{3}','Artifact','Equipment',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Equipped creature gets +2/+2 and has trample.
Equip {4}',3);
INSERT INTO ORI_Master VALUES(225,'Chief of the Foundry','Colorless','{3}','Artifact Creature','Construct',NULL,NULL,'Uncommon',2,3,NULL,'Other artifact creatures you control get +1/+1.',3);
INSERT INTO ORI_Master VALUES(226,'Gold-Forged Sentinel','Colorless','{6}','Artifact Creature','Construct',NULL,NULL,'Uncommon',4,4,NULL,'Flying',6);
INSERT INTO ORI_Master VALUES(227,'Guardian Automaton','Colorless','{4}','Artifact Creature','Construct',NULL,NULL,'Common',3,3,NULL,'When Guardian Automaton dies, you gain 3 life.',4);
INSERT INTO ORI_Master VALUES(228,'Guardians of Meletis','Colorless','{3}','Artifact Creature','Golem',NULL,NULL,'Common',0,6,NULL,'Defender',3);
INSERT INTO ORI_Master VALUES(229,'Hangarback Walker','Colorless','{X}{X}','Artifact Creature','Construct',NULL,NULL,'Rare',0,0,NULL,'Hangarback Walker enters the battlefield with X +1/+1 counters on it.

When Hangarback Walker dies, put a 1/1 colorless Thopter artifact creature token with flying onto the battlefield for each +1/+1 counter on Hangarback Walker.

{1},{}: Put a +1/+1 counter on Hangarback Walker.',0);
INSERT INTO ORI_Master VALUES(230,'Helm of the Gods','Colorless','{1}','Artifact','Equipment',NULL,NULL,'Rare',NULL,NULL,NULL,'Equipped creature gets +1/+1 for each enchantment you control.
Equip {1}',1);
INSERT INTO ORI_Master VALUES(231,'Jayemdae Tome','Colorless','{4}','Artifact',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'{4},{}: Draw a card.',4);
INSERT INTO ORI_Master VALUES(232,'Mage-Ring Responder','Colorless','{7}','Artifact Creature','Golem',NULL,NULL,'Rare',7,7,NULL,'Mage-Ring Responder doesn''t untap during your untap step.

{7}: Untap Mage-Ring Responder.

Whenever Mage-Ring Responder attacks, it deals 7 damage to target creature defending player controls.',7);
INSERT INTO ORI_Master VALUES(233,'Meteorite','Colorless','{5}','Artifact',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'When Meteorite enters the battlefield, it deals 2 damage to target creature or player.

{}: Add one mana of any color to your mana pool.',5);
INSERT INTO ORI_Master VALUES(234,'Orbs of Warding','Colorless','{5}','Artifact',NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'You have hexproof.
If a creature would deal damage to you, prevent 1 of that damage.',5);
INSERT INTO ORI_Master VALUES(235,'Prism Ring','Colorless','{1}','Artifact',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'As Prism Ring enters the battlefield, choose a color.
Whenever you cast a spell of the chosen color, you gain 1 life.',1);
INSERT INTO ORI_Master VALUES(236,'Pyromancer''s Goggles','Colorless','{5}','Legendary Artifact',NULL,NULL,NULL,'Mythic Rare',NULL,NULL,NULL,'{}: Add {R} to your mana pool. When that mana is used to cast a red instant or sorcery spell, copy that spell and you may choose new targets for the copy.',5);
INSERT INTO ORI_Master VALUES(237,'Ramroller','Colorless','{3}','Artifact Creature','Juggernaut',NULL,NULL,'Uncommon',2,3,NULL,'Ramroller attacks each turn if able.

Ramroller gets +2/+0 as long as you control another artifact.',3);
INSERT INTO ORI_Master VALUES(238,'Runed Servitor','Colorless','{2}','Artifact Creature','Construct',NULL,NULL,'Uncommon',2,2,NULL,'When Runed Servitor dies, each player draws a card.',2);
INSERT INTO ORI_Master VALUES(239,'Sigil of Valor','Colorless','{2}','Artifact','Equipment',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Whenever equipped creature attacks alone, it gets +1/+1 until end of turn for each other creature you control.

Equip {1}',2);
INSERT INTO ORI_Master VALUES(240,'Sword of the Animist','Colorless','{2}','Legendary Artifact','Equipment',NULL,NULL,'Rare',NULL,NULL,NULL,'Equipped creature gets +1/+1.

Whenever equipped creature attacks, you may search your library for a basic land card, put it onto the battlefield tapped, then shuffle your library.

Equip {2}',2);
INSERT INTO ORI_Master VALUES(241,'Throwing Knife','Colorless','{2}','Artifact','Equipment',NULL,NULL,'Uncommon',NULL,NULL,NULL,'Equipped creature gets +2/+0.

Whenever equipped creature attacks, you may sacrifice Throwing Knife. If you do, Throwing Knife deals 2 damage to target creature or player.

Equip {2}',2);
INSERT INTO ORI_Master VALUES(242,'Veteran''s Sidearm','Colorless','{2}','Artifact','Equipment',NULL,NULL,'Common',NULL,NULL,NULL,'Equipped creature gets +1/+1.

Equip {1}',2);
INSERT INTO ORI_Master VALUES(243,'War Horn','Colorless','{3}','Artifact',NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'Attacking creatures you control get +1/+0.',3);
INSERT INTO ORI_Master VALUES(244,'Battlefield Forge','Land',NULL,NULL,NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{}: Add 1 to your mana pool.

{}: Add R or W to your mana pool. Battlefield Forge deals 1 damage to you.',0);
INSERT INTO ORI_Master VALUES(245,'Caves of Koilos','Land',NULL,NULL,NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{}: Add {1} to your mana pool.

{}: Add {W} or {B} to your mana pool. Caves of Koilos deals 1 damage to you.',0);
INSERT INTO ORI_Master VALUES(246,'Evolving Wilds','Land',NULL,NULL,NULL,NULL,NULL,'Common',NULL,NULL,NULL,'{}, Sacrifice Evolving Wilds: Search your library for a basic land card and put it onto the battlefield tapped. Then shuffle your library.',0);
INSERT INTO ORI_Master VALUES(247,'Foundry of the Consuls','Land',NULL,NULL,NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'{}: Add {1} to your mana pool.
{5}, {}, Sacrifice Foundry of the Consuls: Put two 1/1 colorless Thopter artifact creature tokens with flying onto the battlefield.',0);
INSERT INTO ORI_Master VALUES(248,'Llanowar Wastes','Land',NULL,NULL,NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{}: Add {1} to your mana pool.

{}: Add {B} or {G} to your mana pool. Llanowar Wastes deals 1 damage to you.',0);
INSERT INTO ORI_Master VALUES(249,'Mage-Ring Network','Land',NULL,NULL,NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'{}: Add {1} to your mana pool.

{1},{}: Put a storage counter on Mage-Ring Network.

{}, Remove X storage counters from Mage-Ring Network: Add {X} to your mana pool.',0);
INSERT INTO ORI_Master VALUES(250,'Rogue''s Passage','Land',NULL,NULL,NULL,NULL,NULL,'Uncommon',NULL,NULL,NULL,'{}: Add {1} to your mana pool.

{4},{}: Target creature can''t be blocked this turn.',0);
INSERT INTO ORI_Master VALUES(251,'Shivan Reef','Land',NULL,NULL,NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{}: Add {1} to your mana pool.

{}: Add {U} or {R} to your mana pool. Shivan Reef deals 1 damage to you.',0);
INSERT INTO ORI_Master VALUES(252,'Yavimaya Coast','Land',NULL,NULL,NULL,NULL,NULL,'Rare',NULL,NULL,NULL,'{}: Add {1} to your mana pool.

{}: Add {G} or {U} to your mana pool. Yavimaya Coast deals 1 damage to you.',0);
INSERT INTO ORI_Master VALUES(284,'Fiery Hellhound','Red','{1}{R}{R}','Creature','Elemental','Hound',NULL,'Common',2,2,NULL,'{R}: Fiery Hellhound gets +1/+0 until end of turn.',3);
INSERT INTO ORI_Master VALUES(285,'Shivan Dragon','Red','{4}{R}{R}','Creature','Dragon',NULL,NULL,'Rare',5,5,NULL,'Flying

{R}: Shivan Dragon gets +1/+0 until end of turn.',6);
INSERT INTO ORI_Master VALUES(286,'Plummet','Green','{1}{G}','Instant',NULL,NULL,NULL,'Common',NULL,NULL,NULL,'Destroy target creature with flying.',2);
INSERT INTO ORI_Master VALUES(287,'Prized Unicorn','Green','{3}{G}','Creature','Unicorn',NULL,NULL,'Uncommon',2,2,NULL,'All creatures able to block Prized Unicorn do so.',4);
INSERT INTO ORI_Master VALUES(288,'Terra Stomper','Green','{3}{G}{G}{G}','Creature','Beast',NULL,NULL,'Rare',8,8,NULL,'Terra Stomper can''t be countered.

Trample',6);
CREATE TABLE `Users` (
  `UserID` integer NOT NULL DEFAULT '0'
,  `LName` varchar(255) DEFAULT NULL
,  `FName` varchar(255) DEFAULT NULL
,  `Phone` varchar(255) DEFAULT NULL
,  PRIMARY KEY (`UserID`)
);
INSERT INTO Users VALUES(1,'Stark','Mark','915-603-1069');
INSERT INTO Users VALUES(2,'Fnu','Jatin','269-601-2286');
COMMIT;
