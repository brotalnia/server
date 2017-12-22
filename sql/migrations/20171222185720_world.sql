DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20171222185720');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20171222185720');
-- Add your query below.


-- Add new creature_spells table.
DROP TABLE IF EXISTS `creature_spells`;
CREATE TABLE IF NOT EXISTS `creature_spells` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `spellId_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_1` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_1` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_1` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_2` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_2` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_2` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_3` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_3` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_3` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_4` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_4` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_4` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_5` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_5` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_5` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_6` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_6` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_6` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_7` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_7` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_7` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellId_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `probability_8` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `castTarget_8` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `castFlags_8` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `delayInitialMin_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayInitialMax_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMin_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `delayRepeatMax_8` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Add creature spells id to creature template.
ALTER TABLE `creature_template`
	ADD COLUMN `spells_template` int(11) unsigned NOT NULL DEFAULT '0' AFTER `spell4`;


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
