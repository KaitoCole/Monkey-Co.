-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 03:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monkeyapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_name` text DEFAULT NULL,
  `item_id` int(5) NOT NULL,
  `item_type` varchar(20) DEFAULT NULL,
  `item_description` varchar(75) DEFAULT NULL,
  `item_requirement` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_name`, `item_id`, `item_type`, `item_description`, `item_requirement`) VALUES
('Meat', 1, 'XP Item', 'Gives a Unit +50 XP.', 'null'),
('Energy Crystal', 2, 'XP Item', 'Gives a Unit +100 XP.', 'null'),
('Cursed Object', 3, 'XP Item', 'Gives a Unit +150 XP.', 'null'),
('Alien Fruit', 4, 'XP item', 'Gives a Unit +200 XP.', 'null'),
('Underwater Chest', 5, 'XP Item', 'Gives a Unit +250 XP.', 'null'),
('Ancient Scroll', 6, 'XP item', 'Gives a Unit +320 XP.', 'null'),
('Winter Herb', 7, 'XP item', 'Gives a Unit +450 XP.', 'null'),
('Mana Crystal', 8, 'XP item', 'Gives a Unit +700 XP.', 'null'),
('Magma Core', 9, 'XP Item', 'Gives a Unit +1000 XP.', 'null'),
('Underwater Pearl', 10, 'XP Item', 'Gives a Unit +1250 XP.', 'null'),
('Jester Hat', 11, 'XP Item', 'Gives a Unit +2000 XP.', 'null'),
('Star Rift (Yellow)', 12, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (Blue)', 13, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (Red)', 14, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (Green)', 15, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (Purple)', 16, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (Rainbow)', 17, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (Black)', 18, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Star Rift (White)', 19, 'Evolution Materials', 'Used to craft Evolution Items.', 'null'),
('Blue Soul', 20, 'Evolution Item', 'Used to evolve Ant King to Ant King (Unlocked).', 'Star Rift(Rainbow) 1x, Star Rift(Blue) 13x, Star Rift (Red) 10x, Star Rift(Green) 12x, Star Rift(Yellow) 32x'),
('Cursed Finger', 21, 'Evolution Item', 'Used to evolve Curse Prince to Curse King.', 'Star Rift(Rainbow) 1x, Star Rift(Purple) 5x, Star Rift (Red) 6x, Star Rift(Green) 6x, Star Rift(Yellow) 14x'),
('Esper\'s Spirit', 22, 'Evolution Item', 'Used to evolve Esper to Unstable Esper.', 'Star Rift(Rainbow) 2x, Star Rift(Purple) 5x, Star Rift (Red) 7x, Star Rift(Green) 5x, Star Rift(Blue) 7x, Star Rift(Yellow) 25x'),
('Fire Dragon Soul', 23, 'Evolution Item', 'Used to evolve Flame Dragon King to Flame Dragon God.', 'Star Rift(Rainbow) 1x, Star Rift(Purple) 5x, Star Rift(Green) 6x, Star Rift(Blue) 6x, Star Rift(Yellow) 14x'),
('Flame Grimoire', 24, 'Evolution Item', 'Used to evolve Elf Wizardress to Elf Hero.', 'Star Rift(Rainbow) 1x, Star Rift(Purple) 3x, Star Rift (Red) 3x, Star Rift(Green) 3x, Star Rift(Blue) 3x, Star Rift(Yellow) 10x'),
('Marine\'s Hat', 25, 'Evolution Item', 'Used to evolve Strike Commander to Prime Commander.', 'Star Rift(Rainbow) 2x, Star Rift(Purple) 10x, Star Rift (Red) 12x, Star Rift(Blue) 13x, Star Rift(Yellow) 30x'),
('Shadow Eye', 26, 'Evolution Item', 'Used to evolve Thunder Shinobi to Thunder God.', 'Star Rift(Rainbow) 1x, Star Rift(Purple) 4x, Star Rift (Red) 6x, Star Rift(Blue) 6x, Star Rift(Yellow) 15x'),
('Skull Mask', 27, 'Evolution Item', 'Used to evolve Skull Warrior to Skull Paladin.', 'Star Rift(Rainbow) 2x, Star Rift (Red) 6x, Star Rift(Green) 4x, Star Rift(Blue) 6x, Star Rift(Yellow) 28x'),
('Sky Splitting Bow', 28, 'Evolution Item', 'Used to evolve Sharpshooter to Proficient Sharpshooter.', 'Star Rift(Rainbow) 1x, Star Rift (Red) 5x, Star Rift(Green) 6x, Star Rift(Blue) 7x, Star Rift(Yellow) 15x'),
('Celestial Sword', 29, 'Evolution Item', 'Used to evolve Warrior Princess to Warrior Queen.', 'Star Rift(Rainbow) 2x, Star Rift(Purple) 7x, Star Rift (Red) 6x, Star Rift(Blue) 8x, Star Rift(Yellow) 30x'),
('Cursed Dagger', 30, 'Evolution Item', 'Used to evolve Muscular Sorcerer to Muscular Sorcerer (Enhanced).', 'Star Rift (Black) 1x, Star Rift(Rainbow) 2x, Star Rift(Purple) 7x, Star Rift (Red) 6x, Star Rift(Blue) 8x, Star Rift(Yellow) 30x'),
('Cursed Soul', 31, 'Evolution Item', 'Used to evolve The Cursed Knight to The Cursed Knight (Unlocked).', 'Star Rift(Rainbow) 3x, Star Rift (Red) 14x, Star Rift(Green) 13x, Star Rift(Blue) 14x, Star Rift(Yellow) 10x'),
('Demon Greatsword', 32, 'Evolution Item', 'Used to evolve The Gamer to The Pro Gamer.', 'Star Rift(Rainbow) 3x, Star Rift(Purple) 9x, Star Rift (Red) 9x, Star Rift(Green) 9x, Star Rift(Blue) 9x, Star Rift(Yellow) 35x'),
('Dimension Pendant', 33, '', 'Used to evolve The Rift Sorcerer to The Rift Sorcerer (Awakened).', 'Star Rift (Black) 2x, Star Rift(Rainbow) 2x, Star Rift(Purple) 8x, Star Rift (Red) 8x, Star Rift(Blue) 8x, Star Rift(Yellow) 38x'),
('Donut of Prosperity', 34, 'Evolution Item', 'Used to evolve Donut Warrior to Donut Master.', 'Star Rift(Rainbow) 1x, Star Rift(Purple) 4x, Star Rift (Red) 4x, Star Rift(Blue) 4x, Star Rift(Yellow) 11x'),
('Roulette Machine', 35, 'Evolution Item', 'Used to evolve Chance Taker to Chance King.', 'Star Rift(Rainbow) 3x, Star Rift(Purple) 8x, Star Rift (Red) 10x, Star Rift(Green) 8x, Star Rift(Blue) 10x, Star Rift(Yellow) 35x'),
('3 Leaf Clover', 36, 'Evolution Item', 'Used To Evolve Blood Phantom to Crimson Phantom.', 'Star Rift (Black) 3x, Star Rift(Purple) 8x, Star Rift(Green) 8x, Star Rift(Blue) 8x, Star Rift(Yellow) 35x'),
('Aqua Blade', 37, 'Evolution Item', 'Used to Evolve Water Swordsmaster to Water Grandmaster', '1000 Raid Crystal (Yellow)'),
('Arcane Bow', 38, 'Evolution Item', 'Used to Evolve Ace Marksman to Champion Marksman.', 'Star Rift(White) 1x, Star Rift(Purple) 5x, Star Rift(Green) 5x, Star Rift(Red) 6x, Star Rift(Yellow) 35x, 50x Magic Mirror'),
('Arcane Orb', 39, 'Evolution Item', 'Used to Evolve Celestial Qi Warrior to Celestial Qi Master', 'Star Shard(Rainbow) 1x, Star Shard(Purple) 5x, Star Shard (Red) 5x, Star Shard(Green) 5x, Star Shard(Blue) 5x, Star Shard(Yellow) 20x'),
('Beast Sigil', 40, 'Evolution Item', 'Used to Evolve Shadow Dragon to Shadow Dragon (Unlocked)', 'Star Rift(White) 3x, Star Rift(Purple) 9x, Star Rift(Green) 6x, Star Rift(Blue) 9x, Star Rift(Yellow) 38x'),
('Commander Medallion', 41, 'Evolution Item', 'Used to Evolve Legion Commander to Legion Captain', 'Star Rift(White) 2x, Star Rift(Purple) 6x, Star Rift (Red) 7x, Star Rift(Green) 6x, Star Rift(Yellow) 32x, 120x Magic Mirror'),
('Crimson Katana', 42, 'Evolution Item', 'Used to Evolve Fire Demon Ninja to Crimson Demon Ninja', 'Star Rift(White) 2x, Star Rift(Black) 2x, Star Rift(Purple) 6x, Star Rift (Green) 6x, Star Rift(Blue) 7x,  Star Rift(Yellow) 32x, 50x Magic Mirror'),
('Cursed Amulet', 43, 'Evolution Item', 'Used to Evolve Shadow Conjurer to Shadow Master', 'Star Shard(Rainbow) 1x, Star Shard(Purple) 4x, Star Shard(Red) 5x, Star Shard(Blue) 5x, Star Shard(Yellow) 25x'),
('Cursed Hat', 44, 'Evolution Item', 'Used to Evolve Darkness Prince to Darkness King', 'Star Rift (Black) 3x, Star Rift(Rainbow) 2x, Star Rift(Purple) 10x, Star Rift (Red) 10x, Star Rift(Blue) 10x, Star Rift(Yellow) 40x'),
('Cursed Sword', 45, 'Evolution Item', 'Used to Evolve The Cursed Knight to The Cursed Knight (Unlocked)', 'Star Rift(Black) 2x, Star Rift(Purple) 7x, Star Rift (Red) 9x, Star Rift(Blue) 8x, Star Rift(Yellow) 25x, 125x Cursed Crystal'),
('Dark Sword', 46, 'Evolution Item', 'Used to Evolve Jadefire Knight to Grand Jadefire Knight', 'Star Rift (White) 1x, Star Rift(Rainbow) 2x, Star Rift(Purple) 5x, Star Rift(Green) 4x, Star Rift(Blue) 5x, Star Rift(Yellow) 20x'),
('Demon Flower', 47, 'Evolution Item', 'Used to evolve Pink Demon Witch to Pink Demon Mage', 'Star Rift (White) 1x, Star Rift(Rainbow) 1x, Star Rift(Purple) 4x, Star Rift (Red) 3x, Star Rift(Blue) 2x'),
('Demonic Scepter', 48, 'Evolution Item', 'Used to Evolve The Demon Lord to The Demon Overlord', 'Star Rift(Rainbow) 3x, Star Rift(Purple) 9x, Star Rift (Red) 9x, Star Rift(Green) 9x, Star Rift(Blue) 9x, Star Rift(Yellow) 35x, 100x Demonic Extract'),
('Dragon Badge', 49, 'Evolution Item', 'Used to Evolve Dragon Wizard to Dragon Mage', 'Star Rift(White) 1x, Star Rift(Purple) 5x, Star Rift(Green) 5x, Star Rift(Blue) 5x, Star Rift(Yellow) 20x, 70 Draconic Crystal'),
('Fire Soul', 50, 'Evolution Item', 'Used to Evolve Blazing Soulmaster to Blazing Grandmaster', 'Star Rift(Black) 1x, Star Rift(Purple) 4x, Star Rift(Green) 5x, Star Rift(Blue) 5x, Star Rift(Yellow) 15x, 15x Magic Mirror'),
('Golden Lotus', 51, 'Evolution Item', 'Used to Evolve Sage to Sage(Deity)', 'Star Shard(Rainbow) 2x, Star Shard(Purple) 5x, Star Shard (Red) 5x, Star Shard(Blue) 5x, Star Shard(Yellow) 22x'),
('Heart Necklace', 52, 'Evolution Item', 'Used to Evolve Princess Swordmaster to Queen Swordmaster', 'Star Rift(White) 1x, Star Rift(Purple) 3x, Star Rift (Red) 4x, Star Rift(Blue) 3x, Star Rift(Yellow) 12x'),
('Ice Dragon Scale', 53, 'Evolution Item', 'Used to Evolve Ice Dragon to Ice Dragon Queen', 'Star Rift(Black) 1x, Star Rift(White) 1x, Star Rift(Purple) 4x, Star Rift(Red) 3x, Star Rift(Green) 5x, Star Rift(Yellow) 16x'),
('Nightshade Cloak', 54, 'Evolution Item', 'Used to Evolve Legion Assassin to Legion Assassin Master', 'Star Rift(White) 2x, Star Rift (Red) 8x, Star Rift(Green) 8x, Star Rift(Blue) 8x, Star Rift(Yellow) 35x, 100x Magic Mirror'),
('Moon Necklace', 55, 'Evolution Item', 'Used to Evolve Lunar Huntress to Lunar Empress', 'Star Rift(White) 2x, Star Rift (Red) 9x, Star Rift(Green) 8x, Star Rift(Blue) 9x, Star Rift(Yellow) 40x, 250 Lunar Essence Extract'),
('Otherworldy Gauntlet', 56, 'Evolution Item', 'Used to Evolve Bear King to Bear King (Unlocked)', '1000 Raid Shards (Red)'),
('Radiant Crown', 57, 'Evolution Item', 'Used to Evolve Radiant King to Radiant Monarch', 'Star Shard(Rainbow) 3x, Star Shard(Purple) 13x, Star Shard (Red) 11x, Star Shard(Blue) 14x, Star Shard(Yellow) 45x'),
('Ring Amulet', 58, 'Evolution Item', 'Used to Evolve Dark Sovereign to Dark Revenant', 'Star Rift(White) 3x, Star Rift (Red) 9x, Star Rift(Green) 6x, Star Rift(Blue) 9x, Star Rift(Yellow) 38x, 150x Magic Mirror'),
('Sky Piercer Bow', 59, 'Evolution Item', 'Used to Evolve Gale Archer to Gale Sage', 'Star Shard(Rainbow) 2x, Star Shard(Purple) 9x, Star Shard (Red) 10x, Star Shard(Blue) 11x, Star Shard(Yellow) 40x'),
('Slime Spirt Essence', 60, 'Evolution Item', 'Used to Evolve Slime Spirit to Slime Spirit Queen', 'Star Rift (Black) 1x, Star Rift(Rainbow) 1x, Star Rift(Purple) 6x, Star Rift(Green) 6x, Star Rift(Blue) 6x, Star Rift(Yellow) 20x'),
('Solar Sigil', 61, 'Evolution Item', 'Used to Evolve Solar Slayer to Solar Overlord', 'Star Rift(White) 2x, Star Rift(Purple) 8x, Star Rift(Green) 8x, Star Rift(Blue) 8x, Star Rift(Yellow) 40x, 250x Solar Essence Extract'),
('Spirit Pendant', 62, 'Evolution Item', 'Used to Evolve Beast Sorcerer to Monster Sorcerer', 'Star Rift(Black) 2x, Star Rift(Rainbow) 1x, Star Rift(Purple) 6x, Star Rift (Green) 8x, Star Rift(Red) 7x, Star Rift(Yellow) 34x'),
('Spiritual Butterfly', 63, 'Evolution Item', 'Used to Evolve Aether Knight to Grand Aether Knight', 'Star Rift(Black) 2x,Star Rift(Rainbow) 2x, Star Rift(Purple) 7x, Star Rift (Red) 8x, Star Rift(Blue) 9x, Star Rift(Yellow) 35x'),
('Trident', 64, 'Evolution Item', 'Used to Evolve Poseidon to Poseidon (Sea Sovereign)', 'Star Shard(Rainbow) 3x, Star Shard(Purple) 14x, Star Shard (Red) 13x, Star Shard(Blue) 11x, Star Shard(Yellow) 45x'),
('Veteran\'s Medal', 65, 'Evolution Item', 'Used to Evolve Legion Veteran to Legion Veteran (Max)', 'Star Rift(White) 2x, Star Rift(Purple) 7x, Star Rift (Red) 9x, Star Rift(Blue) 7x, Star Rift(Yellow) 30x, 75x Magic Mirror'),
('Lucky Potion', 66, 'Potion', 'Gives 2x Summons Luck. Lasts for 1 hour.', 'null'),
('Super Lucky Potion', 67, 'Potion', 'Gives 3x Summons Luck. Lasts for 1 hour.', 'null'),
('Mini Lucky Potion', 68, 'Potion', 'Gives 1.5x Summons Luck. Lasts for 5 minutes.', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_name` text DEFAULT NULL,
  `unit_id` int(6) NOT NULL,
  `unit_passive` varchar(20) DEFAULT NULL,
  `unit_rarity` text DEFAULT NULL,
  `unit_evolution` text DEFAULT NULL,
  `unit_cost` int(6) DEFAULT NULL,
  `unit_placement` int(3) DEFAULT NULL,
  `unit_type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_name`, `unit_id`, `unit_passive`, `unit_rarity`, `unit_evolution`, `unit_cost`, `unit_placement`, `unit_type`) VALUES
('Ice Mage', 1, 'null', 'Rare', 'null', 700, 6, 'GROUND'),
('Clown Pirate', 2, 'null', 'Rare', 'null', 350, 6, 'GROUND'),
('Cursed Nail', 3, 'null', 'Rare', 'null', 500, 6, 'HYBRID'),
('Fire Swordsman', 4, 'null', 'Rare', 'null', 350, 6, 'GROUND'),
('Frost Reaper', 5, 'slow', 'Rare', 'null', 750, 6, 'GROUND'),
('Emp Fighter', 6, 'null', 'Rare', 'null', 400, 6, 'GROUND'),
('Magic Arrow', 7, 'null', 'Rare', 'null', 350, 6, 'HILL'),
('Pink Shinobi', 8, 'null', 'Rare', 'null', 500, 6, 'GROUND'),
('Dual Swordsman', 9, 'null', 'Rare', 'null', 500, 6, 'GROUND'),
('Qi Master', 10, 'null', 'Rare', 'null', 700, 6, 'GROUND'),
('Draconic Fighter', 11, 'Burn', 'Rare', 'null', 350, 6, 'GROUND'),
('Soul Reaper', 12, 'null', 'Rare', 'null', 600, 6, 'GROUND'),
('Pirate Man', 13, 'null', 'Rare', 'null', 300, 6, 'GROUND'),
('Savage', 14, 'null', 'Rare', 'null', 500, 6, 'GROUND'),
('Shinobi', 15, 'null', 'Rare', 'null', 350, 4, 'GROUND'),
('Verdant Guardian', 16, 'null', 'Rare', 'null', 400, 4, 'GROUND'),
('Ascended Qi Master', 17, 'null', 'Epic', 'null', 180, 5, 'GROUND'),
('Blood Demon', 18, 'null', 'Epic', 'null', 850, 5, 'GROUND'),
('Bloomer', 19, 'null', 'Epic', 'null', 550, 3, 'GROUND(FARM)'),
('Dragon Slayer', 20, 'Burn', 'Epic', 'null', 850, 5, 'HYBRID'),
('Fire Leg Master', 21, 'Burn', 'Epic', 'null', 500, 5, 'GROUND'),
('Inferno Commander', 22, 'Burn', 'Epic', 'null', 600, 5, 'GROUND'),
('Ocean Guardian', 23, 'null', 'Epic', 'null', 450, 4, 'GROUND'),
('Radiant Guardian (Retrived)', 24, 'null', 'Epic', 'null', 800, 3, 'GROUND'),
('Ronin Sage', 25, 'null', 'Epic', 'null', 650, 5, 'GROUND'),
('Sea Enchantress', 26, 'null', 'Epic', 'null', 700, 4, 'GROUND'),
('Soulforce Reaper', 27, 'null', 'Epic', 'null', 600, 5, 'GROUND'),
('Spirit Hybrid', 28, 'null', 'Epic', 'null', 550, 5, 'GROUND'),
('The Beast', 29, 'null', 'Epic', 'null', 850, 5, 'GROUND'),
('Vengeful Shinobi', 30, 'null', 'Epic', 'null', 600, 5, 'GROUND'),
('Zen Swordsman', 31, 'null', 'Epic', 'null', 650, 4, 'GROUND'),
('Chief of Ice', 32, 'Slow', 'Legendary', 'null', 850, 4, 'GROUND'),
('Chief of Lava', 33, 'Burn', 'Legendary', 'null', 800, 4, 'HILL'),
('Chief of Light', 34, 'null', 'Legendary', 'null', 1000, 4, 'HILL'),
('Cursed Archer', 35, 'Bleed', 'Legendary', 'null', 1000, 3, 'HILL'),
('Cursed Fighter', 36, 'Fear', 'Legendary', 'null', 800, 5, 'GROUND'),
('Dunestricker', 37, 'null', 'Legendary', 'null', 1300, 3, 'GROUND'),
('Electric Cyborg', 38, 'Turret', 'Legendary', 'null', 1000, 3, 'HYBRID'),
('Golden Emperor (Retrieved)', 39, 'null', 'Legendary', 'null', 1550, 3, 'GROUND'),
('Master Swordsmaster', 40, 'null', 'Legendary', 'null', 1000, 5, 'GROUND'),
('Maxed Qi Master', 41, 'null', 'Legendary', 'null', 950, 4, 'GROUND'),
('Pink Rockstar', 42, 'Play Rockstar', 'Legendary', 'null', 800, 1, 'GROUND(FARM X BUFFER)'),
('Purple Demon Berserker', 43, 'null', 'Legendary', 'null', 750, 3, 'GROUND'),
('Shinobi Form 3', 44, 'null', 'Legendary', 'null', 800, 4, 'GROUND'),
('Storm Slayer', 45, 'null', 'Legendary', 'null', 1000, 4, 'GROUND'),
('Strongest Swordsman', 46, 'null', 'Legendary', 'null', 850, 5, 'GROUND'),
('Zephyra', 47, 'null', 'Legendary', 'null', 1000, 3, 'GROUND'),
('Ant King', 48, 'null', 'Mythic', 'Ant King (Unlocked)', 1000, 4, 'GROUND'),
('Ant King (Unlocked)', 49, 'null', 'Mythic', 'null', 1000, 4, 'GROUND'),
('Beast Sorcerer', 50, 'null', 'Mythic', 'Monster Sorcerer', 1200, 4, 'GROUND'),
('Monster Sorcerer', 51, 'null', 'Mythic', 'null', 1200, 4, 'GROUND'),
('Bear King', 52, 'Bleed', 'Mythic', 'Bear King (Unlocked)', 950, 4, 'HYBRID'),
('Bear King (Unlocked)', 53, 'Bleed', 'Mythic', 'null', 950, 4, 'Hybrid'),
('Bionic Machine', 54, 'Burn', 'Mythic', 'Bionic Machine (Full Power)', 750, 5, 'HILL'),
('Bionic Machine (Full Power)', 55, 'Burn', 'Mythic', 'null', 12, 5, 'HILL'),
('Strike Commander', 56, 'null', 'Mythic', 'Prime Commander', 1500, 3, 'GROUND'),
('Prime Commander', 57, 'null', 'Mythic', 'Prime Leader', 1500, 3, 'GROUND'),
('Prime Leader', 58, 'Galaxy Smash', 'Mythical V2', 'null', 1500, 3, 'GROUND'),
('Curse Prince', 59, 'Bleed, Burn', 'Mythic', 'Curse Lord', 1000, 3, 'HYBRID'),
('Curse Lord', 60, 'Bleed, Burn', 'Mythic', 'Curse Overlord', 1000, 3, 'HYBRID'),
('Curse Overlord', 61, 'Bleed, Burn', 'Mythical V2', 'null', 2000, 1, 'HYBRID'),
('Donut Warrior', 62, 'Slow', 'Mythic', 'Donut Master', 1350, 3, 'HYBRID'),
('Donut Master', 63, 'Slow', 'Mythic', 'null', 1350, 3, 'HYBRID'),
('Elf Wizardess', 64, 'null', 'Mythic', 'Elf Hero', 1350, 3, 'GROUND'),
('Elf Hero', 65, 'null', 'Mythic', 'Elf Saint', 1350, 3, 'GROUND'),
('Elf Saint', 66, 'Confusion', 'Mythic V2', 'null', 1500, 3, 'GROUND'),
('Esper', 67, 'null', 'Mythic', 'Unstable Esper', 1800, 4, 'HYBRID'),
('Unstable Esper', 68, 'null', 'Mythic', 'null', 1800, 4, 'HYBRID'),
('Fire Demon Ninja', 69, 'Burn', 'Mythic', 'Crimson Demon Ninja', 900, 3, 'HYBRID'),
('Crimson Demon Ninja', 70, 'Burn', 'Mythic', 'null', 900, 3, 'HYBRID'),
('Flame Dragon King', 71, 'Burn', 'Mythic', 'Flame Dragon God', 950, 4, 'HYBRID'),
('Flame Dragon God', 72, 'Burn', 'Mythic', 'King Of Dragons', 950, 4, 'HYBRID'),
('King Of Dragons', 73, 'Burn, Flame Nuke', 'Mythic V2', 'null', 1100, 3, 'HYBRID'),
('Ice Dragon', 74, 'Slow', 'Mythic', 'Ice Dragon Queen', 2500, 3, 'HYBRID'),
('Ice Dragon Queen', 75, 'Slow', 'Mythic', 'null', 2500, 3, 'HYBRID'),
('Sharpshooter', 76, 'null', 'Mythic', 'Proficient Sharpshooter', 1250, 4, 'HILL'),
('Proficient Sharpshooter', 77, 'Huge Bullet Blast', 'Mythic', 'Expert Sharpshooter', 1500, 4, 'HILL'),
('Skull Warrior', 78, 'null', 'Mythic', 'Skull Paladin', 1500, 4, 'GROUND'),
('Skull Paladin', 79, 'null', 'Mythic', 'Skull Vindicator', 1500, 4, 'GROUND'),
('Skull Vindicator', 80, 'null', 'Mythic V2', 'null', 2000, 4, 'GROUND'),
('Thunder Shinobi', 81, 'null', 'Mythic', 'Thunder God', 1200, 4, 'GROUND'),
('Thunder God', 82, 'null', 'Mythic', 'null', 1200, 4, 'GROUND'),
('Muscular Sorcerer', 83, 'null', 'Mythic', 'Muscular Sorcerer (Enhanced)', 850, 3, 'GROUND'),
('Pink Demon Witch', 84, 'Soul Capture', 'Mythic', 'Pink Demon Mage', 1500, 1, 'GROUND (FARM)'),
('Pink Demon Mage', 85, 'Soul Capture', 'Mythic', 'null', 1500, 1, 'GROUND (FARM)'),
('Warrior Princess', 86, 'null', 'Mythic', 'Warrior Queen', 1250, 4, 'GROUND'),
('Warrior Queen', 87, 'null', 'Mythic', 'null', 1250, 4, 'GROUND'),
('Water Swordsmaster', 88, 'null', 'Mythic', 'Water Grandmaster', 1000, 3, 'GROUND'),
('Water Grandmaster', 89, 'null', 'Mythic', 'null', 1000, 3, 'GROUND'),
('Princess Swordsmaster', 90, 'null', 'Mythic', 'Queen Swordmaster', 600, 4, 'HYBRID'),
('Queen Swordmaster', 91, 'null', 'Mythic', 'null', 600, 4, 'HYBRID'),
('Jadefire Knight', 92, 'Fear', 'Mythic', 'Grand Jadefire Knight', 1000, 4, 'HYBRID'),
('Grand Jadefire Knight', 93, 'Fear', 'Mythic', 'null', 1000, 4, 'HYBRID'),
('Gale Archer', 94, 'null', 'Mythic', 'Gale Sage', 2000, 4, 'HILL'),
('Gale Sage', 95, 'null', 'MYTHIC', 'null', 2000, 4, 'HILL'),
('Shadow Conjurer', 96, 'Burn', 'Mythic', 'Shadow Master', 2250, 3, 'GROUND'),
('Shadow Master', 97, 'Burn', 'Mythic', 'null', 2250, 3, 'GROUND'),
('Celestial Qi Warrior', 98, 'null', 'Mythic', 'Celestial Qi Master', 2000, 3, 'GROUND'),
('Aether Knight', 99, 'null', 'Secret', 'Grand Aether Knight', 500, 5, 'HYBRID'),
('Grand Aether Knight', 100, 'Kaleidoscope!', 'Secret', 'null', 500, 5, 'HYBRID'),
('Darkness Prince', 101, 'Fear', 'Secret', 'Darkness King', 1000, 1, 'HYBRID'),
('Darkness King', 102, 'Fear', 'Secret', 'null', 1000, 1, 'HYBRID'),
('Demon King', 103, 'null', 'Secret', 'Demon King (Peak)', 1500, 4, 'HYBRID'),
('Demon King (Peak)', 104, 'Slow', 'Secret', 'null', 1500, 4, 'HYBRID'),
('Golden Boy', 105, 'Burn', 'Secret', 'Golden Adult', 1000, 2, 'HYBRID'),
('Golden Adult', 106, 'Burn, Bleed, Fear', 'Secret', 'null', 1000, 2, 'HYBRID'),
('The Rift Sorcerer', 107, 'null', 'Secret', 'The Rift Sorcerer (Awakened)', 1500, 2, 'HYBRID'),
('The Rift Sorcerer (Awakened)', 108, 'Slow', 'Secret', 'null', 1500, 2, 'HYBRID'),
('Slime Spirit', 109, 'null', 'Secret', 'Slime Spirit Queen', 11, 2, 'GROUND'),
('Slime Spirit Queen', 110, 'null', 'Secret', 'null', 2250, 2, 'GROUND'),
('The Cursed Knight', 111, 'Fear', 'Secret', 'The Cursed Knight (Unlocked)', 2250, 2, 'HYBRID'),
('The Cursed Knight (Unlocked)', 112, 'Fear', 'Secret', 'null', 2250, 2, 'HYBRID'),
('The Gamer', 113, 'null', 'Secret', 'The Pro Gamer', 2000, 2, 'GROUND'),
('The Pro Gamer', 114, 'Arise', 'Secret', 'null', 2000, 2, 'GROUND'),
('Chance Taker', 115, 'null', 'Secret', 'Chance King', 2500, 2, 'GROUND'),
('Chance King', 116, 'null', 'Secret', 'null', 2500, 2, 'GROUND'),
('The Demon Lord', 117, 'Bleed', 'Secret', 'The Demon Overlord', 2000, 3, 'GROUND'),
('The Demon Overlord', 118, 'Bleed', 'Secret', 'null', 2000, 3, 'GROUND'),
('Dragon Wizard', 119, 'Burn', 'Secret', 'Dragon Mage', 5000, 2, 'HYBRID'),
('Dragon Mage', 120, 'Dragon\'s Wrath, Burn', 'Secret', 'null', 5000, 2, 'HYBRID'),
('Cursed Berserker Knight', 121, 'null', 'Secret', 'Cursed Berserker Paladin', 2000, 3, 'GROUND'),
('Cursed Berserker Paladin', 122, 'null', 'Secret', 'null', 2000, 3, 'GROUND'),
('Radiant King', 123, 'Bleed', 'Secret', 'Radiant Monarch', 3250, 2, 'HYBRID'),
('Radiant Monarch', 124, 'Bleed', 'Secret', 'null', 3250, 2, 'HYBRID'),
('Sage', 125, 'null', 'Secret', 'Sage (Deity)', 2750, 4, 'GROUND'),
('Sage (Deity)', 126, 'null', 'Secret', 'null', 2750, 4, 'GROUND'),
('Poseidon', 127, 'Slow', 'Secret', 'Poseidon (Sea Sovereign)', 2750, 3, 'GROUND'),
('Poseidon (Sea Sovereign)', 128, 'Slow', 'Secret', 'null', 2750, 3, 'GROUND'),
('Lunar Huntress', 129, 'null', 'Secret', 'Lunar Empress', 4000, 1, 'HYBRID'),
('Lunar Empress', 130, 'Lunar Stacks', 'Secret', 'null', 4000, 1, 'HYBRID'),
('Solar Slayer', 131, 'Burn', 'Secret', 'Solar Overlord', 2500, 3, 'HYBRID'),
('Solar Overlord', 132, 'Burn', 'Secret', 'null', 2500, 3, 'HYBRID'),
('Ace Marksman', 133, '75% Crit Chance', 'Exclusive', 'Champion Marksman', 3000, 3, 'HILL'),
('Champion Marksman', 134, '75% Crit Chance', 'Exclusive', 'null', 3000, 3, 'HILL'),
('Blazing Soulmaster', 135, 'null', 'Exclusive', 'Blazing Grandmaster', 1000, 4, 'GROUND'),
('Blazing Grandmaster', 136, 'null', 'Exclusive', 'null', 1000, 4, 'GROUND'),
('Blood Phantom', 137, 'Burn', 'Exclusive', 'Crimson Phantom', 1500, 2, 'HYBRID'),
('Dark Sovereign', 138, 'null', 'Exclusive', 'Dark Revenant', 2500, 2, 'GROUND'),
('Dark Revenant', 139, 'null', 'Exclusive', 'null', 2500, 2, 'GROUND'),
('Shadow Dragon', 140, 'Otherworldly Power', 'Exclusive', 'Shadow Dragon (Unlocked)', 1850, 2, 'HYBRID'),
('Shadow Dragon (Unlocked)', 141, 'Otherworldly Power', 'Exclusive', 'null', 1850, 2, 'HYBRID'),
('Legion Commander', 142, 'Beam Barrage', 'Exclusive', 'Legion Captain', 1250, 2, 'HILL'),
('Legion Captain', 143, 'Beam Barrage, Summon', 'Exclusive', 'null', 1250, 2, 'HILL'),
('Legion Assassin', 144, 'Assassin Might', 'Exclusive', 'Legion Assassin Master', 1500, 3, 'HYBRID'),
('Legion Assassin Master', 145, 'Assassin Might', 'Exclusive', 'null', 1500, 3, 'HYBRID'),
('Legion Veteran', 146, 'Veteran Blessing', 'Exclusive', 'Legion Veteran (Max)', 850, 3, 'HYBRID'),
('Legion Veteran (Max)', 147, 'Veteran Blessing', 'Exclusive', 'null', 850, 3, 'HYBRID');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
