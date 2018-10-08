SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `game` enum('TF2','IW','ZS','MTA','DODS','CSS') NOT NULL,
  `key` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT 'None',
  `description` text NOT NULL,
  `image` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `game`, `key`, `name`, `description`, `image`) VALUES
(1, 'ZS', 'bloodseeker', 'Bloodseeker', 'Kill 5 humans in one round!', 'zombiesurvival/achv_blank_zs'),
(2, 'ZS', 'angelofwar', 'Angel of War', 'Kill 1000 undead in total!', 'zombiesurvival/achv_blank_zs'),
(3, 'ZS', 'ghost', 'Ghost', 'Make a kill before getting hit even once (after spawn) as zombie!', 'zombiesurvival/achv_blank_zs'),
(4, 'ZS', 'meatseeker', 'Meatseeker', 'Kill 8 humans in one round!', 'zombiesurvival/achv_blank_zs'),
(5, 'ZS', 'sexistzombie', 'Sexist Zombie', 'Kill a girl! (FYI: based on model)', 'zombiesurvival/achv_blank_zs'),
(6, 'ZS', 'angelofhope', 'Angel of Hope', 'Kill 10.000 undead in total!', 'zombiesurvival/achv_blank_zs'),
(7, 'ZS', 'emo', 'Emo', 'Kill yourself while human', 'zombiesurvival/achv_blank_zs'),
(8, 'ZS', 'samurai', 'Samurai', 'Melee 10 zombies in one round!', 'zombiesurvival/achv_blank_zs'),
(9, 'ZS', 'spartan', 'Spartan', 'Kill 300 undead in total!', 'zombiesurvival/achv_blank_zs'),
(10, 'ZS', 'toolsofdestruction', 'Tools of Destruction', 'Propkill 3 humans in one round!', 'zombiesurvival/achv_blank_zs'),
(11, 'ZS', 'headfucker', 'Headfucker', 'Kill 5 humans as headcrab (poison excluded) in one round!', 'zombiesurvival/achv_blank_zs'),
(12, 'ZS', 'masterofzs', 'Master of ZS', 'Get every other achievement', 'zombiesurvival/achv_blank_zs'),
(13, 'ZS', 'dealwiththedevil', 'Deal With The Devil', 'Redeem yourself three times', 'zombiesurvival/achv_blank_zs'),
(14, 'ZS', 'launchanddestroy', 'Launch And Destroy', 'Propkill a human', 'zombiesurvival/achv_blank_zs'),
(15, 'ZS', 'humanitysdamnation', 'Humanity\'s Damnation', 'Do a total of 10.000 damage to the humans!', 'zombiesurvival/achv_blank_zs'),
(16, 'ZS', 'slayer', 'Slayer', 'Kill 50 humans in total!', 'zombiesurvival/achv_blank_zs'),
(17, 'ZS', 'runningmeatbag', 'Running Meatbag', 'Stay alive at least 1 minute when last human', 'zombiesurvival/achv_blank_zs'),
(18, 'ZS', 'sergeant', 'Sergeant', 'Kill 60 undead in one round!', 'zombiesurvival/achv_blank_zs'),
(19, 'ZS', 'survivor', 'Survivor', 'Be last human and win the round', 'zombiesurvival/achv_blank_zs'),
(20, 'ZS', 'marksman', 'Marksman', 'Kill a fast zombie in mid-air', 'zombiesurvival/achv_blank_zs'),
(21, 'ZS', 'slowdeath', 'Slow Death', 'Kill a human by poisoning him!', 'zombiesurvival/achv_blank_zs'),
(22, 'ZS', 'poltergeist', 'Poltergeist', 'Scare the living daylights out of 10 different players with the Wraith scream!', 'zombiesurvival/achv_blank_zs'),
(23, 'ZS', 'private', 'Private', 'Kill 20 undead in one round!', 'zombiesurvival/achv_blank_zs'),
(24, 'ZS', 'butcher', 'Butcher', 'Kill 100 humans in total!', 'zombiesurvival/achv_blank_zs'),
(25, 'ZS', 'iamlegend', 'I Am Legend', 'Kill yourself when last human', 'zombiesurvival/achv_blank_zs'),
(26, 'ZS', 'payback', 'Payback', 'Redeem yourself', 'zombiesurvival/achv_blank_zs'),
(27, 'ZS', 'dancingqueen', 'Dancing Queen', 'Avoid getting hit the whole round when human!', 'zombiesurvival/achv_blank_zs'),
(28, 'ZS', 'feastseeker', 'Feastseeker', 'Kill 12 humans in one round!', 'zombiesurvival/achv_blank_zs'),
(29, 'ZS', '>:(', '>:(', 'Kill an admin when he\'s human', 'zombiesurvival/achv_blank_zs'),
(30, 'ZS', 'hidinkitchencloset', 'Hid In Kitchen Closet', 'Stay alive for at least 5 minutes as last human', 'zombiesurvival/achv_blank_zs'),
(31, 'ZS', 'ninja', 'Ninja', 'Melee 5 zombies in one round!', 'zombiesurvival/achv_blank_zs'),
(32, 'ZS', 'lightbringer', 'Lightbringer', 'Do a total of 100.000 damage to the undead!', 'zombiesurvival/achv_blank_zs'),
(33, 'ZS', 'laststand', 'Last Stand', 'Melee a zombie while having less than 10 hp', 'zombiesurvival/achv_blank_zs'),
(34, 'ZS', 'mankindsanswer', 'Mankind\'s Answer', 'Do a MASSIVE total of 1.000.000 damage to the undead!', 'zombiesurvival/achv_blank_zs'),
(35, 'ZS', '>>:o', '>>:O', 'Kill an admin 5 times when he\'s zombie in one round!', 'zombiesurvival/achv_blank_zs'),
(36, 'ZS', 'corporal', 'Corporal', 'Kill 40 undead in one round!', 'zombiesurvival/achv_blank_zs'),
(37, 'ZS', 'humanitysworstnightmare', 'Humanity\'s Worst Nightmare', 'Do a total of 100.000 damage to the humans!', 'zombiesurvival/achv_blank_zs'),
(38, 'ZS', 'stuckinpurgatory', 'Stuck In Purgatory', 'Redeem yourself a 100 times in total!', 'zombiesurvival/achv_blank_zs'),
(39, 'ZS', 'eredicator', 'Eredicator', 'Kill 250 humans in total!', 'zombiesurvival/achv_blank_zs'),
(40, 'ZS', 'annihilator', 'Annihilator', 'Kill 1000 humans in total!', 'zombiesurvival/achv_blank_zs'),
(41, 'ZS', 'headhumper', 'Headhumper', 'Kill 3 humans as headcrab (poison excluded) in one round!', 'zombiesurvival/achv_blank_zs'),
(42, 'ZS', 'fuckingrambo', 'Fucking Rambo', 'Kill 100 undead in one round!', 'zombiesurvival/achv_blank_zs');

-- --------------------------------------------------------

--
-- Table structure for table `game_connections`
--

CREATE TABLE `game_connections` (
  `id` int(11) NOT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `forum_name` varchar(64) NOT NULL DEFAULT '[ UNSPECIFIED ]',
  `game_id_type` enum('STEAM','MTA','Minecraft') NOT NULL DEFAULT 'STEAM',
  `game_id` varchar(32) NOT NULL DEFAULT '',
  `status` enum('PENDING','CONFIRMED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `last_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valid` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `game_stats`
--

CREATE TABLE `game_stats` (
  `game` varchar(16) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `green_coins`
--

CREATE TABLE `green_coins` (
  `id` int(32) NOT NULL,
  `steam_id` varchar(32) DEFAULT NULL,
  `minecraft_id` varchar(32) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `steam_name` varchar(64) DEFAULT NULL,
  `mta_name` varchar(64) DEFAULT NULL,
  `amount_current` int(11) DEFAULT NULL,
  `last_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valid` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `green_coins_events`
--

CREATE TABLE `green_coins_events` (
  `id` int(32) NOT NULL,
  `game` varchar(32) NOT NULL,
  `game_id` varchar(32) NOT NULL,
  `event` text NOT NULL,
  `gc_gained` int(11) UNSIGNED NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zs_player_achievements`
--

CREATE TABLE `zs_player_achievements` (
  `id` int(11) NOT NULL,
  `steamid` varchar(64) DEFAULT NULL,
  `achievements` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zs_player_classes`
--

CREATE TABLE `zs_player_classes` (
  `id` int(11) NOT NULL,
  `steamid` varchar(64) NOT NULL DEFAULT 'N/A',
  `medic_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `medic_achlevel0_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `medic_achlevel0_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `medic_achlevel2_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `medic_achlevel2_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `medic_achlevel4_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `medic_achlevel4_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `commando_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `commando_achlevel0_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `commando_achlevel0_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `commando_achlevel2_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `commando_achlevel2_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `commando_achlevel4_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `commando_achlevel4_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_achlevel0_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_achlevel0_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_achlevel2_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_achlevel2_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_achlevel4_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `berserker_achlevel4_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_achlevel0_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_achlevel0_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_achlevel2_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_achlevel2_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_achlevel4_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `engineer_achlevel4_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `support_level` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `support_achlevel0_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `support_achlevel0_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `support_achlevel2_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `support_achlevel2_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `support_achlevel4_1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `support_achlevel4_2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `default_rank` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `default_xp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `new_rank` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `new_xp` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Temporal host for classes stats.';

-- --------------------------------------------------------

--
-- Table structure for table `zs_player_progress`
--

CREATE TABLE `zs_player_progress` (
  `playerId` int(11) NOT NULL,
  `steamId` varchar(64) NOT NULL,
  `medicXp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sharpshooterXp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `berserkerXp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `commandoXp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `supportXp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `engineerXp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pyroXp` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zs_player_shop_items`
--

CREATE TABLE `zs_player_shop_items` (
  `id` int(11) NOT NULL,
  `steamid` varchar(64) DEFAULT '',
  `itembought` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zs_player_stats`
--

CREATE TABLE `zs_player_stats` (
  `id` int(11) NOT NULL,
  `steamid` varchar(64) NOT NULL DEFAULT 'N/A',
  `coins` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(32) NOT NULL DEFAULT 'Not logged',
  `lastlog` varchar(64) NOT NULL DEFAULT 'Not connected',
  `hat` varchar(64) NOT NULL DEFAULT 'none',
  `timeplayed` int(11) NOT NULL DEFAULT '0',
  `humanskilled` int(11) NOT NULL DEFAULT '0',
  `progress` int(11) NOT NULL DEFAULT '0',
  `redeems` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT 'MingeBag',
  `humansdamaged` varchar(64) NOT NULL DEFAULT '0',
  `undeadkilled` int(11) NOT NULL DEFAULT '0',
  `undeaddamaged` int(11) NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT 'Guest'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zs_shopitems`
--

CREATE TABLE `zs_shopitems` (
  `id` int(11) NOT NULL,
  `key` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'None',
  `description` text NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `sellable` tinyint(1) NOT NULL DEFAULT '0',
  `requires` tinyint(3) NOT NULL DEFAULT '0',
  `adminonly` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zs_shopitems`
--

INSERT INTO `zs_shopitems` (`id`, `key`, `name`, `description`, `cost`, `sellable`, `requires`, `adminonly`) VALUES
(1, 'egg', 'Egg Hat (NEW)', 'Eating too many eggs in the morning? No problem. This is your solution! Now you can eat eggs, in-game, too!', 800, 0, 0, 0),
(2, 'monitor', 'TV Head (NEW)', 'If you wear this, you\'ll look like that anime character,Kanti Sama.', 800, 0, 0, 0),
(3, 'magnumman', 'Mysterious Stranger', 'Join the group with your only friend, Mister .357 cal. \nHave a 1/3 chance of starting the round with a magnum! Damage with this weapon increased by 50%.', 5000, 0, 0, 0),
(4, 'steamroller', 'Steamroller', 'You kill humans for a living. Literally. Restores half your HP \nafter killing a human!', 6000, 0, 0, 0),
(5, 'comeback', 'Comeback', 'Get an additional weapon after redeeming. \nMore zombies, better weapon.', 7500, 0, 0, 0),
(6, 'mask', 'Mask', 'Being a bit paranoid about those toxic fumes? No worries, carry this mask! \n(note: it doesn\'t work against toxis fumes).', 1000, 0, 0, 0),
(7, 'ushat', 'Baseball cap', 'Time to hit a homerun! All you need is a headcrab and a crowbar...', 1000, 0, 0, 0),
(8, 'backbreaker', 'Backbreaker', 'Human spines are like toothpicks to you. Do more damage \nwhen attacking a human from behind!', 5000, 0, 0, 0),
(9, 'pumpkin', 'Pumpkin Hat (HALLOWEEN)', 'Trick \'r\' treat! Make sure you put this hat on to look cool on Halloween :) (Permanent hat)', 100, 0, 0, 0),
(10, 'bunnyears', 'Bunny Ears', 'Easter eggs. Lol.', 750, 0, 0, 0),
(11, 'blessedfists', 'Blessed Fists', 'Bringing your bare hands to a gun fight? Why not! \nYou\'ll get an extra boost with melee weapons and your fists.', 5000, 0, 0, 0),
(12, 'quickredemp', 'Quick Redemption', 'God puts you on his express list. Redeem after killing 3 humans!', 7500, 0, 0, 0),
(13, 'borghat', 'Borg hat', 'You might experience a little IQ increase when inserting this thing in your head. \nDon\'t count on it though.', 1000, 0, 0, 0),
(14, 'greenshat', 'Greens Hat', 'Hat for admins! Nope, normal players cannot see this in the list.', 1, 0, 0, 1),
(15, 'roboteye', 'Robot hat', 'With this big eye-catching thing lodged on your head you\'re sure \nto attract some attention. Too bad it doesn\'t shoot lasers.', 1000, 0, 0, 0),
(16, 'antidote', 'Horse Health (NEW)', 'You are healthy as a horse and you regenerate an additional 10 hp of health, if under 40 health. You need Quick Cure and at least 3 upgrades to buy this.', 5500, 0, 3, 0),
(17, 'lastmanstand', 'Last Man Stand', 'Rambo\'s your bitch. Get a poweful weapon when becoming last human. (Different weapon for different class!)', 7500, 0, 0, 0),
(18, 'snowhat', 'Snowman Hat (CHRISTMAS)', 'Ho ho ho! Merry Christmas! It\'s that time of the year again .. (Permanent hat)', 1000, 0, 0, 0),
(19, 'present', 'Present Hat (CHRISTMAS)', 'Greencoins make Santa Claus\'s World go round! That\'s why you should buy this lovely hat right from Santa\'s Bag!  .. (Permanent hat)', 1000, 0, 0, 0),
(20, 'sombrero', 'Sombrero', 'A sawblade sombrero, how cool can it get? Chuck Norris has one you know.', 1000, 0, 0, 0),
(21, 'melonhead', 'Melonhead', 'You won\'t die of starvation with this thing on.', 1000, 0, 0, 0),
(22, 'ammoman', 'Ammunition Man (NEW)', 'You get twice as much ammunition from the Supply Crates!', 5000, 0, 0, 0),
(23, 'vampire', 'Blood Sucker (NEW)', 'You get thirsty and want to suck the blood out of your victims. With this sucker,you\'ll leech health from your victims. The greater the damage, the greater the leech!', 7000, 0, 5, 0),
(24, 'gordonfreeman', 'Crowbar Wielding God', 'Have a chance to start the round as THE Gordon Freeman. Crowbar damage is scaled by the number of zombies!', 6500, 0, 0, 0),
(25, 'adrenaline', 'Adrenaline', 'When having low health you won\'t walk as slow as without adreline.', 5000, 0, 0, 0),
(26, 'quickcure', 'Quick Cure', 'A few bandages should hold. Health regenerates when below 30 hp \nwhen you\'re still human!', 7500, 0, 0, 0),
(27, 'titlechanging', 'Title Editor', 'Ability to change your player title in the Options (F4) menu.', 1500, 0, 0, 0),
(28, 'cheatdeath', 'Cheat Death (NEW)', 'When your health is 30 or below, and you get hit by zombies that do damage greater than 25, then you have a 30% chance to not take damage. Occurs once in 5 minutes. You must have atleast 4 upgrades to buy this one.', 7200, 0, 4, 0),
(29, 'surgery', 'Surgery (NEW)', 'Health vials and packs heal you for 50% more health.', 3500, 0, 3, 0),
(30, 'pothat', 'Pot hat', 'A cooking pot is THE perfect household head protection \nwhen fighting anything unnatural!', 1000, 0, 0, 0),
(31, 'fleshfreak', 'Flesh Freak', 'Cannibalism is healthy. Get more health from \neating flesh gibs when zombie.', 4000, 0, 0, 0),
(32, 'crab', 'Headcrab Hat (NEW)', 'Your ICING? Uhm, dude you got something on your head! This hat doesn\'t turn you into a zombie!', 800, 0, 0, 0),
(33, 'santahat', 'Santa hat', 'Christmas, it\'s that time of the year again!', 1000, 0, 0, 0),
(34, 'ladyluck', 'Lady Luck', 'Luck is not for sale? Well it is here! The chance of a good outcome \nwith roll-the-dice is increased.', 4000, 0, 0, 0),
(35, 'retrieval', 'Might Of A Previous Life ', 'Retrieve all weapons from your previous life \nafter redeeming as zombie.', 5000, 0, 0, 0),
(36, 'skull', 'Skull Hat (NEW)', 'You\'d be Nicolas Cage - Death Rider with this hat on!', 800, 0, 0, 0),
(37, 'naturalimmunity', 'Natural Immunity (NEW)', 'As human, if you get hit by a poison headcrab spit or hump, you will get 40% less damage.', 5000, 0, 4, 0),
(38, 'piratehat', 'Pirate hat', 'Pirates are the mortal enemy of ninjas, but they love to \npick off a zombie on their way.', 1000, 0, 0, 0),
(39, 'tophat', 'Top hat', 'Raises your intelligence-aura by 100%! \nNote that it does not scare off zombies.', 1500, 0, 0, 0),
(40, 'homburg', 'Homburg hat', 'Bring some old-fashioned style to the apocalypse. \nProbably stolen from a dead Brit.', 1000, 0, 0, 0),
(41, 'buckethat', 'Bucket hat', 'A bucket hat. Works better than kevlar according to the local bums.', 1000, 0, 0, 0),
(42, 'spartanu', 'Spartan (NEW)', 'As human, you receive [15 + your total score divided by 5] percent less damage from Normal and Poison zombies. Requires 7 other upgrades.', 5500, 0, 7, 0),
(43, 'cadebuster', 'Cade Buster (NEW)', 'Bring more destruction power! You will deal 30% more damage against barricades and nailed props! Requires 3 other upgrades.', 6500, 0, 3, 0),
(44, 'bootsofsteel', 'Boots of Steel (NEW)', 'Screw the gravity! You will have 25% chance to avoid fall damage. Requires 2 other upgrades.', 5000, 0, 2, 0),
(45, 'homerun', 'Home Run (NEW)', 'Bonk! Receive additional 20% chance to decapitate a zombie! Requires 3 other upgrades.', 7500, 0, 6, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_connections`
--
ALTER TABLE `game_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_stats`
--
ALTER TABLE `game_stats`
  ADD PRIMARY KEY (`game`,`tag`);

--
-- Indexes for table `green_coins`
--
ALTER TABLE `green_coins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `minecraft_id` (`minecraft_id`),
  ADD KEY `steam_id` (`steam_id`),
  ADD KEY `valid` (`valid`);

--
-- Indexes for table `green_coins_events`
--
ALTER TABLE `green_coins_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zs_player_achievements`
--
ALTER TABLE `zs_player_achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steamid` (`steamid`);

--
-- Indexes for table `zs_player_classes`
--
ALTER TABLE `zs_player_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steamid` (`steamid`);

--
-- Indexes for table `zs_player_progress`
--
ALTER TABLE `zs_player_progress`
  ADD PRIMARY KEY (`playerId`),
  ADD UNIQUE KEY `steamId` (`steamId`);

--
-- Indexes for table `zs_player_shop_items`
--
ALTER TABLE `zs_player_shop_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steamid` (`steamid`);

--
-- Indexes for table `zs_player_stats`
--
ALTER TABLE `zs_player_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `steamid` (`steamid`);

--
-- Indexes for table `zs_shopitems`
--
ALTER TABLE `zs_shopitems`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `game_connections`
--
ALTER TABLE `game_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `green_coins`
--
ALTER TABLE `green_coins`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `green_coins_events`
--
ALTER TABLE `green_coins_events`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zs_player_achievements`
--
ALTER TABLE `zs_player_achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zs_player_classes`
--
ALTER TABLE `zs_player_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zs_player_progress`
--
ALTER TABLE `zs_player_progress`
  MODIFY `playerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zs_player_shop_items`
--
ALTER TABLE `zs_player_shop_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zs_player_stats`
--
ALTER TABLE `zs_player_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zs_shopitems`
--
ALTER TABLE `zs_shopitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `id` int(11) NOT NULL,
  `ip` text NOT NULL,
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `whitelist`
--
ALTER TABLE `whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
