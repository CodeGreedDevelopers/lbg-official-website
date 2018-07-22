-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2018 at 12:00 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livebetting_goal`
--

-- --------------------------------------------------------

--
-- Table structure for table `appusers`
--

CREATE TABLE `appusers` (
  `fcm_token` varchar(400) NOT NULL,
  `id` int(23) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `validity` varchar(20) NOT NULL,
  `date_paid` varchar(30) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `validity`, `date_paid`, `amount`, `comment`) VALUES
(31, 'Tony', '2017-09-09', '2017-08-07', 'â‚¬ 35', '1 week extra to be given'),
(33, 'JOY DAS', '2017-08-27', '2017-05-16', 'â‚¬ 35', '2 months offer,should get 2 weeks extra'),
(34, 'Daniel', '2017-09-10', '2017-08-20', 'â‚¬ 35', 'Should get 2 weeks extra'),
(35, 'Givenchy', '2017-09-08', '2017-07-23', 'â‚¬ 11', 'Get 2 weeks extra'),
(36, 'Marker', '2017-09-30', '2017-07-27', 'â‚¬ 5', '1week extra'),
(37, 'Sam', '2017-09-15', '2017-08-09', 'â‚¬ 10', '1 week subscription '),
(38, 'Nil Megh', '2017-09-27', '2017-08-20', 'â‚¬ 10', '1 week extra'),
(39, 'Swisher', '2017-09-17', '2017-08-09', 'â‚¬ 5', 'Paid for 1 week subscrption'),
(40, 'Campineanu George', '2017-09-12', '2017-08-25', 'â‚¬ 11', '1 week extra'),
(41, 'Prince', '2017-09-05', '2017-08-14', 'â‚¬ 15', '1 week extra'),
(48, 'Syed Asif', '2017-09-04', '2017-08-28', 'â‚¬5', ''),
(49, 'ROBERT NJOROGE', '2017-09-17', '2017-09-09', 'â‚¬5', '');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`country`, `currency`, `code`, `symbol`) VALUES
('Albania', 'Leke', 'ALL', 'Lek'),
('America', 'Dollars', 'USD', '$'),
('Afghanistan', 'Afghanis', 'AFN', '?'),
('Argentina', 'Pesos', 'ARS', '$'),
('Aruba', 'Guilders', 'AWG', 'ƒ'),
('Australia', 'Dollars', 'AUD', '$'),
('Azerbaijan', 'New Manats', 'AZN', '???'),
('Bahamas', 'Dollars', 'BSD', '$'),
('Barbados', 'Dollars', 'BBD', '$'),
('Belarus', 'Rubles', 'BYR', 'p.'),
('Belgium', 'Euro', 'EUR', '€'),
('Beliz', 'Dollars', 'BZD', 'BZ$'),
('Bermuda', 'Dollars', 'BMD', '$'),
('Bolivia', 'Bolivianos', 'BOB', '$b'),
('Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM'),
('Botswana', 'Pula', 'BWP', 'P'),
('Bulgaria', 'Leva', 'BGN', '??'),
('Brazil', 'Reais', 'BRL', 'R$'),
('Britain (United Kingdom)', 'Pounds', 'GBP', '£'),
('Brunei Darussalam', 'Dollars', 'BND', '$'),
('Cambodia', 'Riels', 'KHR', '?'),
('Canada', 'Dollars', 'CAD', '$'),
('Cayman Islands', 'Dollars', 'KYD', '$'),
('Chile', 'Pesos', 'CLP', '$'),
('China', 'Yuan Renminbi', 'CNY', '¥'),
('Colombia', 'Pesos', 'COP', '$'),
('Costa Rica', 'Colón', 'CRC', '?'),
('Croatia', 'Kuna', 'HRK', 'kn'),
('Cuba', 'Pesos', 'CUP', '?'),
('Cyprus', 'Euro', 'EUR', '€'),
('Czech Republic', 'Koruny', 'CZK', 'K?'),
('Denmark', 'Kroner', 'DKK', 'kr'),
('Dominican Republic', 'Pesos', 'DOP ', 'RD$'),
('East Caribbean', 'Dollars', 'XCD', '$'),
('Egypt', 'Pounds', 'EGP', '£'),
('El Salvador', 'Colones', 'SVC', '$'),
('England (United Kingdom)', 'Pounds', 'GBP', '£'),
('Euro', 'Euro', 'EUR', '€'),
('Falkland Islands', 'Pounds', 'FKP', '£'),
('Fiji', 'Dollars', 'FJD', '$'),
('France', 'Euro', 'EUR', '€'),
('Ghana', 'Cedis', 'GHC', '¢'),
('Gibraltar', 'Pounds', 'GIP', '£'),
('Greece', 'Euro', 'EUR', '€'),
('Guatemala', 'Quetzales', 'GTQ', 'Q'),
('Guernsey', 'Pounds', 'GGP', '£'),
('Guyana', 'Dollars', 'GYD', '$'),
('Holland (Netherlands)', 'Euro', 'EUR', '€'),
('Honduras', 'Lempiras', 'HNL', 'L'),
('Hong Kong', 'Dollars', 'HKD', '$'),
('Hungary', 'Forint', 'HUF', 'Ft'),
('Iceland', 'Kronur', 'ISK', 'kr'),
('India', 'Rupees', 'INR', 'Rp'),
('Indonesia', 'Rupiahs', 'IDR', 'Rp'),
('Iran', 'Rials', 'IRR', '?'),
('Ireland', 'Euro', 'EUR', '€'),
('Isle of Man', 'Pounds', 'IMP', '£'),
('Israel', 'New Shekels', 'ILS', '?'),
('Italy', 'Euro', 'EUR', '€'),
('Jamaica', 'Dollars', 'JMD', 'J$'),
('Japan', 'Yen', 'JPY', '¥'),
('Jersey', 'Pounds', 'JEP', '£'),
('Kazakhstan', 'Tenge', 'KZT', '??'),
('Korea (North)', 'Won', 'KPW', '?'),
('Korea (South)', 'Won', 'KRW', '?'),
('Kyrgyzstan', 'Soms', 'KGS', '??'),
('Laos', 'Kips', 'LAK', '?'),
('Latvia', 'Lati', 'LVL', 'Ls'),
('Lebanon', 'Pounds', 'LBP', '£'),
('Liberia', 'Dollars', 'LRD', '$'),
('Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF'),
('Lithuania', 'Litai', 'LTL', 'Lt'),
('Luxembourg', 'Euro', 'EUR', '€'),
('Macedonia', 'Denars', 'MKD', '???'),
('Malaysia', 'Ringgits', 'MYR', 'RM'),
('Malta', 'Euro', 'EUR', '€'),
('Mauritius', 'Rupees', 'MUR', '?'),
('Mexico', 'Pesos', 'MXN', '$'),
('Mongolia', 'Tugriks', 'MNT', '?'),
('Mozambique', 'Meticais', 'MZN', 'MT'),
('Namibia', 'Dollars', 'NAD', '$'),
('Nepal', 'Rupees', 'NPR', '?'),
('Netherlands Antilles', 'Guilders', 'ANG', 'ƒ'),
('Netherlands', 'Euro', 'EUR', '€'),
('New Zealand', 'Dollars', 'NZD', '$'),
('Nicaragua', 'Cordobas', 'NIO', 'C$'),
('Nigeria', 'Nairas', 'NGN', '?'),
('North Korea', 'Won', 'KPW', '?'),
('Norway', 'Krone', 'NOK', 'kr'),
('Oman', 'Rials', 'OMR', '?'),
('Pakistan', 'Rupees', 'PKR', '?'),
('Panama', 'Balboa', 'PAB', 'B/.'),
('Paraguay', 'Guarani', 'PYG', 'Gs'),
('Peru', 'Nuevos Soles', 'PEN', 'S/.'),
('Philippines', 'Pesos', 'PHP', 'Php'),
('Poland', 'Zlotych', 'PLN', 'z?'),
('Qatar', 'Rials', 'QAR', '?'),
('Romania', 'New Lei', 'RON', 'lei'),
('Russia', 'Rubles', 'RUB', '???'),
('Saint Helena', 'Pounds', 'SHP', '£'),
('Saudi Arabia', 'Riyals', 'SAR', '?'),
('Serbia', 'Dinars', 'RSD', '???.'),
('Seychelles', 'Rupees', 'SCR', '?'),
('Singapore', 'Dollars', 'SGD', '$'),
('Slovenia', 'Euro', 'EUR', '€'),
('Solomon Islands', 'Dollars', 'SBD', '$'),
('Somalia', 'Shillings', 'SOS', 'S'),
('South Africa', 'Rand', 'ZAR', 'R'),
('South Korea', 'Won', 'KRW', '?'),
('Spain', 'Euro', 'EUR', '€'),
('Sri Lanka', 'Rupees', 'LKR', '?'),
('Sweden', 'Kronor', 'SEK', 'kr'),
('Switzerland', 'Francs', 'CHF', 'CHF'),
('Suriname', 'Dollars', 'SRD', '$'),
('Syria', 'Pounds', 'SYP', '£'),
('Taiwan', 'New Dollars', 'TWD', 'NT$'),
('Thailand', 'Baht', 'THB', '?'),
('Trinidad and Tobago', 'Dollars', 'TTD', 'TT$'),
('Turkey', 'Lira', 'TRY', 'TL'),
('Turkey', 'Liras', 'TRL', '£'),
('Tuvalu', 'Dollars', 'TVD', '$'),
('Ukraine', 'Hryvnia', 'UAH', '?'),
('United Kingdom', 'Pounds', 'GBP', '£'),
('United States of America', 'Dollars', 'USD', '$'),
('Uruguay', 'Pesos', 'UYU', '$U'),
('Uzbekistan', 'Sums', 'UZS', '??'),
('Vatican City', 'Euro', 'EUR', '€'),
('Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs'),
('Vietnam', 'Dong', 'VND', '?'),
('Yemen', 'Rials', 'YER', '?'),
('Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, 'What is Live Bet?', 'Live betting is the ability to bet on sporting events as they happen. This means that you can bet on any soccer event once the game has started.'),
(2, 'What Does LBG stand for?', 'LBG stands for Live Betting Goal'),
(3, 'What sports do you tip?', 'We focus on football/soccer only'),
(4, 'What leagues do you cover?', 'We cover almost all the world\'s leagues'),
(5, 'What betting types do you deal with?', 'We deal with over goals only, it does not matter who wins or loses you just need the goals to WIN, for more information See <a href=\"betting-types.php\">Betting Types</a>'),
(6, 'What\'s Difference in VIP from the FREE matches?', 'In VIP we deal with Goal Line Over bets, First-Half and some fun bets i.e. Alternative Total Corners, Accas & while Free matches are only Full-Time goals & a few First Half Bets. Besides I focus and dedicate more of my time to VIP members because they deserve it.<br><br>\r\nThis is how it has been for a long time. Sorry to say but the subscribers who support me by paying for VIP get priority always.\r\n'),
(7, 'Am I guaranteed profit in VIP??', 'It is important for you to remember that I am a tipster not a miracle worker, this is gambling and with gambling there is always risk. Why? No one can be certain 100% every time on an outcome on football match, or other sporting event. It is impossible! But through my extensive research, I aim to make all members long term profit as you can see on my spreadsheet-->><a href=\"web-results.php\">Results</a>'),
(8, 'Will I win every day?', 'No. It is unrealistic. However, I am very good at what I do but we can not win every single bet, the system was developed by a human being you know, if it was that easy, I would be living in Santorini Islands tipping from a luxury yacht. That is why we have staking plan which is designed to lessen any losses but this should not be looked at as a get rich quick scheme.<br><br>\r\nMy tips are NOT a get rich quick scheme, make sure you are managing your bankroll correctly and are not lumping it all on your next bet in an attempt to get it back. Please read our <a href=\"rules.php\">Rules/Guidance</a><br><br>\r\nThere is no need to rush anything in this game. Never forget: Betting, like any other form of serious investment, betting is a marathon, not a sprint - especially if you are aspiring to get some profit out of it\r\n'),
(9, 'Do you research your inplay/live tips apart from the live stats?', 'Of course, Although live stats are a great starter it is good to have a background knowledge of how the teams generally perform. The program does a pre-match research of how the teams generally perform and uses the information to be ready to pull the trigger when live stats of the game comes up. We usually research each team previous 6 games. From this we have a good idea as to whether the teams usually score first half goals, the amount they concede per game and also the % of goals they score in the late stages of the games.<br><br>\r\nI also use a number of web sites and some personal knowledge to cross check information from the system and ensure it is correct.\r\n'),
(10, 'Do I need an account with specific bookmakers and why?', 'No. You can use wherever you feel comfortable as long as the bookmaker offers most live betting markets. If you can manage to use two or more bookmakers, its great as you will able to spot the bookie offering the bigger odds each and every time, this requires great organizing.<br><br>\r\nOr you can stick with bet365 for your inplay bet. Why bet365? bet365 have the most games and markets \'in play\' out of any bookmaker but,\r\n'),
(11, 'Can I have a free trial on VIP for a day or week(s)?', 'I do NOT give people free days or weeks in VIP so please do NOT ask. I give FREE matches on my FREE Public Telegram channel (Click here to join) and my VIP track record is on P/L spreadsheet so I do not feel the need to give people a trial. You are able to see all my VIP results on my spreadsheets which outline exactly what I have won and that is all the information you should need regarding my tipping ability.'),
(12, 'Do I need to join VIP channel since I play only your FREE matches?', 'Yes, you need to join if you want to stay PROFITABLE because I focus, give more priority, share most of the matches and I dedicate more time to my loyal members besides, we keep P/L for VIP only so you can be rest assured you will have profit with us in the long term'),
(13, 'How do you deliver the VIP tips?', 'I post every tip on our private Telegram channel for members'),
(14, 'Why are odds small sometimes?', 'I do post matches early while its playing & sometimes before kickoff so that you can be prepared and place the bet when you are comfortable with the odds prize; I don\'t like you rushing on every bet that is why I try as much as possible posting too early sometimes so you can get ready & do not miss it. '),
(15, 'What makes you different from other Tipsters?', 'First, I am a trustworthy tipster, not just in my tips but as a human being. <br><br>\r\nSecondly every inplay/live bet I post is well explained with exact league, exact time and current correct score of the game to make it easier and faster for you to locate it.<br><br>\r\nThirdly, I have results for VIP P/L for my followers to check & verify I am NOT a tipster who will shout \'\'99% success rate in VIP\'\' or \'\'We win daily in VIP join us\'\' with no evidence or proof.<br><br>\r\nLastly, I also promote responsible gambling as I try explain to new members how I work and what staking plan to you use. I know at the end of the day it\'s your decision, but I feel as a tipster who is providing financial advice, it is my responsibility to tell you.<br><br>\r\n<span style=\"font-style: italic;\">\'\'In business words are words, explanations are explanations, promises are promises-but only performance is reality\'\'</span>\r\n'),
(16, 'How long does it take to be added to VIP channel?', 'You will be added immediately once your payment is verified by Admin'),
(17, 'How many hours per day do you post matches?', 'I tip anytime of the day as long as I see something good. My normal tipping hours is 07:00hours - 23:00hours UTC+3 hours'),
(18, 'How can I contact you with any questions I might have?', 'If you have any questions not covered by this FAQ, or you want to make a suggestion do not hesitate contact me at <a  href=\"mailto:livebettinggoal@gmail.com\" target=\"blank\">livebettinggoal@gmail.com</a> or Chat with me directly on Telegram, my handle <a href=\"https://www.telegram.me/LBGAdmin\" target=\"blank\">@LBGAdmin</a>');

-- --------------------------------------------------------

--
-- Table structure for table `helper_country`
--

CREATE TABLE `helper_country` (
  `ID` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dial_code` int(11) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `currency_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `helper_country`
--

INSERT INTO `helper_country` (`ID`, `code`, `name`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'AF', 'Afghanistan', 93, 'Afghan afghani', '؋', 'AFN'),
(2, 'AL', 'Albania', 355, 'Albanian lek', 'L', 'ALL'),
(3, 'DZ', 'Algeria', 213, 'Algerian dinar', 'د.ج', 'DZD'),
(4, 'AS', 'American Samoa', 1684, '', '', ''),
(5, 'AD', 'Andorra', 376, 'Euro', '€', 'EUR'),
(6, 'AO', 'Angola', 244, 'Angolan kwanza', 'Kz', 'AOA'),
(7, 'AI', 'Anguilla', 1264, 'East Caribbean dolla', '$', 'XCD'),
(8, 'AQ', 'Antarctica', 0, '', '', ''),
(9, 'AG', 'Antigua And Barbuda', 1268, 'East Caribbean dolla', '$', 'XCD'),
(10, 'AR', 'Argentina', 54, 'Argentine peso', '$', 'ARS'),
(11, 'AM', 'Armenia', 374, 'Armenian dram', '', 'AMD'),
(12, 'AW', 'Aruba', 297, 'Aruban florin', 'ƒ', 'AWG'),
(13, 'AU', 'Australia', 61, 'Australian dollar', '$', 'AUD'),
(14, 'AT', 'Austria', 43, 'Euro', '€', 'EUR'),
(15, 'AZ', 'Azerbaijan', 994, 'Azerbaijani manat', '', 'AZN'),
(16, 'BS', 'Bahamas The', 1242, '', '', ''),
(17, 'BH', 'Bahrain', 973, 'Bahraini dinar', '.د.ب', 'BHD'),
(18, 'BD', 'Bangladesh', 880, 'Bangladeshi taka', '৳', 'BDT'),
(19, 'BB', 'Barbados', 1246, 'Barbadian dollar', '$', 'BBD'),
(20, 'BY', 'Belarus', 375, 'Belarusian ruble', 'Br', 'BYR'),
(21, 'BE', 'Belgium', 32, 'Euro', '€', 'EUR'),
(22, 'BZ', 'Belize', 501, 'Belize dollar', '$', 'BZD'),
(23, 'BJ', 'Benin', 229, 'West African CFA fra', 'Fr', 'XOF'),
(24, 'BM', 'Bermuda', 1441, 'Bermudian dollar', '$', 'BMD'),
(25, 'BT', 'Bhutan', 975, 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(26, 'BO', 'Bolivia', 591, 'Bolivian boliviano', 'Bs.', 'BOB'),
(27, 'BA', 'Bosnia and Herzegovina', 387, 'Bosnia and Herzegovi', 'KM or КМ', 'BAM'),
(28, 'BW', 'Botswana', 267, 'Botswana pula', 'P', 'BWP'),
(29, 'BV', 'Bouvet Island', 0, '', '', ''),
(30, 'BR', 'Brazil', 55, 'Brazilian real', 'R$', 'BRL'),
(31, 'IO', 'British Indian Ocean Territory', 246, 'United States dollar', '$', 'USD'),
(32, 'BN', 'Brunei', 673, 'Brunei dollar', '$', 'BND'),
(33, 'BG', 'Bulgaria', 359, 'Bulgarian lev', 'лв', 'BGN'),
(34, 'BF', 'Burkina Faso', 226, 'West African CFA fra', 'Fr', 'XOF'),
(35, 'BI', 'Burundi', 257, 'Burundian franc', 'Fr', 'BIF'),
(36, 'KH', 'Cambodia', 855, 'Cambodian riel', '៛', 'KHR'),
(37, 'CM', 'Cameroon', 237, 'Central African CFA ', 'Fr', 'XAF'),
(38, 'CA', 'Canada', 1, 'Canadian dollar', '$', 'CAD'),
(39, 'CV', 'Cape Verde', 238, 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(40, 'KY', 'Cayman Islands', 1345, 'Cayman Islands dolla', '$', 'KYD'),
(41, 'CF', 'Central African Republic', 236, 'Central African CFA ', 'Fr', 'XAF'),
(42, 'TD', 'Chad', 235, 'Central African CFA ', 'Fr', 'XAF'),
(43, 'CL', 'Chile', 56, 'Chilean peso', '$', 'CLP'),
(44, 'CN', 'China', 86, 'Chinese yuan', '¥ or 元', 'CNY'),
(45, 'CX', 'Christmas Island', 61, '', '', ''),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 'Australian dollar', '$', 'AUD'),
(47, 'CO', 'Colombia', 57, 'Colombian peso', '$', 'COP'),
(48, 'KM', 'Comoros', 269, 'Comorian franc', 'Fr', 'KMF'),
(49, 'CG', 'Congo', 242, '', '', ''),
(50, 'CD', 'Congo The Democratic Republic Of The', 242, '', '', ''),
(51, 'CK', 'Cook Islands', 682, 'New Zealand dollar', '$', 'NZD'),
(52, 'CR', 'Costa Rica', 506, 'Costa Rican colón', '₡', 'CRC'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, '', '', ''),
(54, 'HR', 'Croatia (Hrvatska)', 385, '', '', ''),
(55, 'CU', 'Cuba', 53, 'Cuban convertible pe', '$', 'CUC'),
(56, 'CY', 'Cyprus', 357, 'Euro', '€', 'EUR'),
(57, 'CZ', 'Czech Republic', 420, 'Czech koruna', 'Kč', 'CZK'),
(58, 'DK', 'Denmark', 45, 'Danish krone', 'kr', 'DKK'),
(59, 'DJ', 'Djibouti', 253, 'Djiboutian franc', 'Fr', 'DJF'),
(60, 'DM', 'Dominica', 1767, 'East Caribbean dolla', '$', 'XCD'),
(61, 'DO', 'Dominican Republic', 1809, 'Dominican peso', '$', 'DOP'),
(62, 'TP', 'East Timor', 670, 'United States dollar', '$', 'USD'),
(63, 'EC', 'Ecuador', 593, 'United States dollar', '$', 'USD'),
(64, 'EG', 'Egypt', 20, 'Egyptian pound', '£', 'EGP'),
(65, 'SV', 'El Salvador', 503, 'United States dollar', '$', 'USD'),
(66, 'GQ', 'Equatorial Guinea', 240, 'Central African CFA ', 'Fr', 'XAF'),
(67, 'ER', 'Eritrea', 291, 'Eritrean nakfa', 'Nfk', 'ERN'),
(68, 'EE', 'Estonia', 372, 'Euro', '€', 'EUR'),
(69, 'ET', 'Ethiopia', 251, 'Ethiopian birr', 'Br', 'ETB'),
(70, 'XA', 'External Territories of Australia', 61, '', '', ''),
(71, 'FK', 'Falkland Islands', 500, 'Falkland Islands pou', '£', 'FKP'),
(72, 'FO', 'Faroe Islands', 298, 'Danish krone', 'kr', 'DKK'),
(73, 'FJ', 'Fiji Islands', 679, '', '', ''),
(74, 'FI', 'Finland', 358, 'Euro', '€', 'EUR'),
(75, 'FR', 'France', 33, 'Euro', '€', 'EUR'),
(76, 'GF', 'French Guiana', 594, '', '', ''),
(77, 'PF', 'French Polynesia', 689, 'CFP franc', 'Fr', 'XPF'),
(78, 'TF', 'French Southern Territories', 0, '', '', ''),
(79, 'GA', 'Gabon', 241, 'Central African CFA ', 'Fr', 'XAF'),
(80, 'GM', 'Gambia The', 220, '', '', ''),
(81, 'GE', 'Georgia', 995, 'Georgian lari', 'ლ', 'GEL'),
(82, 'DE', 'Germany', 49, 'Euro', '€', 'EUR'),
(83, 'GH', 'Ghana', 233, 'Ghana cedi', '₵', 'GHS'),
(84, 'GI', 'Gibraltar', 350, 'Gibraltar pound', '£', 'GIP'),
(85, 'GR', 'Greece', 30, 'Euro', '€', 'EUR'),
(86, 'GL', 'Greenland', 299, '', '', ''),
(87, 'GD', 'Grenada', 1473, 'East Caribbean dolla', '$', 'XCD'),
(88, 'GP', 'Guadeloupe', 590, '', '', ''),
(89, 'GU', 'Guam', 1671, '', '', ''),
(90, 'GT', 'Guatemala', 502, 'Guatemalan quetzal', 'Q', 'GTQ'),
(91, 'XU', 'Guernsey and Alderney', 44, '', '', ''),
(92, 'GN', 'Guinea', 224, 'Guinean franc', 'Fr', 'GNF'),
(93, 'GW', 'Guinea-Bissau', 245, 'West African CFA fra', 'Fr', 'XOF'),
(94, 'GY', 'Guyana', 592, 'Guyanese dollar', '$', 'GYD'),
(95, 'HT', 'Haiti', 509, 'Haitian gourde', 'G', 'HTG'),
(96, 'HM', 'Heard and McDonald Islands', 0, '', '', ''),
(97, 'HN', 'Honduras', 504, 'Honduran lempira', 'L', 'HNL'),
(98, 'HK', 'Hong Kong S.A.R.', 852, '', '', ''),
(99, 'HU', 'Hungary', 36, 'Hungarian forint', 'Ft', 'HUF'),
(100, 'IS', 'Iceland', 354, 'Icelandic króna', 'kr', 'ISK'),
(101, 'IN', 'India', 91, 'Indian rupee', '₹', 'INR'),
(102, 'ID', 'Indonesia', 62, 'Indonesian rupiah', 'Rp', 'IDR'),
(103, 'IR', 'Iran', 98, 'Iranian rial', '﷼', 'IRR'),
(104, 'IQ', 'Iraq', 964, 'Iraqi dinar', 'ع.د', 'IQD'),
(105, 'IE', 'Ireland', 353, 'Euro', '€', 'EUR'),
(106, 'IL', 'Israel', 972, 'Israeli new shekel', '₪', 'ILS'),
(107, 'IT', 'Italy', 39, 'Euro', '€', 'EUR'),
(108, 'JM', 'Jamaica', 1876, 'Jamaican dollar', '$', 'JMD'),
(109, 'JP', 'Japan', 81, 'Japanese yen', '¥', 'JPY'),
(110, 'XJ', 'Jersey', 44, 'British pound', '£', 'GBP'),
(111, 'JO', 'Jordan', 962, 'Jordanian dinar', 'د.ا', 'JOD'),
(112, 'KZ', 'Kazakhstan', 7, 'Kazakhstani tenge', '', 'KZT'),
(113, 'KE', 'Kenya', 254, 'Kenyan shilling', 'Sh', 'KES'),
(114, 'KI', 'Kiribati', 686, 'Australian dollar', '$', 'AUD'),
(115, 'KP', 'Korea North', 850, '', '', ''),
(116, 'KR', 'Korea South', 82, '', '', ''),
(117, 'KW', 'Kuwait', 965, 'Kuwaiti dinar', 'د.ك', 'KWD'),
(118, 'KG', 'Kyrgyzstan', 996, 'Kyrgyzstani som', 'лв', 'KGS'),
(119, 'LA', 'Laos', 856, 'Lao kip', '₭', 'LAK'),
(120, 'LV', 'Latvia', 371, 'Euro', '€', 'EUR'),
(121, 'LB', 'Lebanon', 961, 'Lebanese pound', 'ل.ل', 'LBP'),
(122, 'LS', 'Lesotho', 266, 'Lesotho loti', 'L', 'LSL'),
(123, 'LR', 'Liberia', 231, 'Liberian dollar', '$', 'LRD'),
(124, 'LY', 'Libya', 218, 'Libyan dinar', 'ل.د', 'LYD'),
(125, 'LI', 'Liechtenstein', 423, 'Swiss franc', 'Fr', 'CHF'),
(126, 'LT', 'Lithuania', 370, 'Euro', '€', 'EUR'),
(127, 'LU', 'Luxembourg', 352, 'Euro', '€', 'EUR'),
(128, 'MO', 'Macau S.A.R.', 853, '', '', ''),
(129, 'MK', 'Macedonia', 389, '', '', ''),
(130, 'MG', 'Madagascar', 261, 'Malagasy ariary', 'Ar', 'MGA'),
(131, 'MW', 'Malawi', 265, 'Malawian kwacha', 'MK', 'MWK'),
(132, 'MY', 'Malaysia', 60, 'Malaysian ringgit', 'RM', 'MYR'),
(133, 'MV', 'Maldives', 960, 'Maldivian rufiyaa', '.ރ', 'MVR'),
(134, 'ML', 'Mali', 223, 'West African CFA fra', 'Fr', 'XOF'),
(135, 'MT', 'Malta', 356, 'Euro', '€', 'EUR'),
(136, 'XM', 'Man (Isle of)', 44, '', '', ''),
(137, 'MH', 'Marshall Islands', 692, 'United States dollar', '$', 'USD'),
(138, 'MQ', 'Martinique', 596, '', '', ''),
(139, 'MR', 'Mauritania', 222, 'Mauritanian ouguiya', 'UM', 'MRO'),
(140, 'MU', 'Mauritius', 230, 'Mauritian rupee', '₨', 'MUR'),
(141, 'YT', 'Mayotte', 269, '', '', ''),
(142, 'MX', 'Mexico', 52, 'Mexican peso', '$', 'MXN'),
(143, 'FM', 'Micronesia', 691, 'Micronesian dollar', '$', ''),
(144, 'MD', 'Moldova', 373, 'Moldovan leu', 'L', 'MDL'),
(145, 'MC', 'Monaco', 377, 'Euro', '€', 'EUR'),
(146, 'MN', 'Mongolia', 976, 'Mongolian tögrög', '₮', 'MNT'),
(147, 'MS', 'Montserrat', 1664, 'East Caribbean dolla', '$', 'XCD'),
(148, 'MA', 'Morocco', 212, 'Moroccan dirham', 'د.م.', 'MAD'),
(149, 'MZ', 'Mozambique', 258, 'Mozambican metical', 'MT', 'MZN'),
(150, 'MM', 'Myanmar', 95, 'Burmese kyat', 'Ks', 'MMK'),
(151, 'NA', 'Namibia', 264, 'Namibian dollar', '$', 'NAD'),
(152, 'NR', 'Nauru', 674, 'Australian dollar', '$', 'AUD'),
(153, 'NP', 'Nepal', 977, 'Nepalese rupee', '₨', 'NPR'),
(154, 'AN', 'Netherlands Antilles', 599, '', '', ''),
(155, 'NL', 'Netherlands', 31, 'Euro', '€', 'EUR'),
(156, 'NC', 'New Caledonia', 687, 'CFP franc', 'Fr', 'XPF'),
(157, 'NZ', 'New Zealand', 64, 'New Zealand dollar', '$', 'NZD'),
(158, 'NI', 'Nicaragua', 505, 'Nicaraguan córdoba', 'C$', 'NIO'),
(159, 'NE', 'Niger', 227, 'West African CFA fra', 'Fr', 'XOF'),
(160, 'NG', 'Nigeria', 234, 'Nigerian naira', '₦', 'NGN'),
(161, 'NU', 'Niue', 683, 'New Zealand dollar', '$', 'NZD'),
(162, 'NF', 'Norfolk Island', 672, '', '', ''),
(163, 'MP', 'Northern Mariana Islands', 1670, '', '', ''),
(164, 'NO', 'Norway', 47, 'Norwegian krone', 'kr', 'NOK'),
(165, 'OM', 'Oman', 968, 'Omani rial', 'ر.ع.', 'OMR'),
(166, 'PK', 'Pakistan', 92, 'Pakistani rupee', '₨', 'PKR'),
(167, 'PW', 'Palau', 680, 'Palauan dollar', '$', ''),
(168, 'PS', 'Palestinian Territory Occupied', 970, '', '', ''),
(169, 'PA', 'Panama', 507, 'Panamanian balboa', 'B/.', 'PAB'),
(170, 'PG', 'Papua new Guinea', 675, 'Papua New Guinean ki', 'K', 'PGK'),
(171, 'PY', 'Paraguay', 595, 'Paraguayan guaraní', '₲', 'PYG'),
(172, 'PE', 'Peru', 51, 'Peruvian nuevo sol', 'S/.', 'PEN'),
(173, 'PH', 'Philippines', 63, 'Philippine peso', '₱', 'PHP'),
(174, 'PN', 'Pitcairn Island', 0, '', '', ''),
(175, 'PL', 'Poland', 48, 'Polish złoty', 'zł', 'PLN'),
(176, 'PT', 'Portugal', 351, 'Euro', '€', 'EUR'),
(177, 'PR', 'Puerto Rico', 1787, '', '', ''),
(178, 'QA', 'Qatar', 974, 'Qatari riyal', 'ر.ق', 'QAR'),
(179, 'RE', 'Reunion', 262, '', '', ''),
(180, 'RO', 'Romania', 40, 'Romanian leu', 'lei', 'RON'),
(181, 'RU', 'Russia', 70, 'Russian ruble', '', 'RUB'),
(182, 'RW', 'Rwanda', 250, 'Rwandan franc', 'Fr', 'RWF'),
(183, 'SH', 'Saint Helena', 290, 'Saint Helena pound', '£', 'SHP'),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 'East Caribbean dolla', '$', 'XCD'),
(185, 'LC', 'Saint Lucia', 1758, 'East Caribbean dolla', '$', 'XCD'),
(186, 'PM', 'Saint Pierre and Miquelon', 508, '', '', ''),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 'East Caribbean dolla', '$', 'XCD'),
(188, 'WS', 'Samoa', 684, 'Samoan tālā', 'T', 'WST'),
(189, 'SM', 'San Marino', 378, 'Euro', '€', 'EUR'),
(190, 'ST', 'Sao Tome and Principe', 239, 'São Tomé and Príncip', 'Db', 'STD'),
(191, 'SA', 'Saudi Arabia', 966, 'Saudi riyal', 'ر.س', 'SAR'),
(192, 'SN', 'Senegal', 221, 'West African CFA fra', 'Fr', 'XOF'),
(193, 'RS', 'Serbia', 381, 'Serbian dinar', 'дин. or din.', 'RSD'),
(194, 'SC', 'Seychelles', 248, 'Seychellois rupee', '₨', 'SCR'),
(195, 'SL', 'Sierra Leone', 232, 'Sierra Leonean leone', 'Le', 'SLL'),
(196, 'SG', 'Singapore', 65, 'Brunei dollar', '$', 'BND'),
(197, 'SK', 'Slovakia', 421, 'Euro', '€', 'EUR'),
(198, 'SI', 'Slovenia', 386, 'Euro', '€', 'EUR'),
(199, 'XG', 'Smaller Territories of the UK', 44, '', '', ''),
(200, 'SB', 'Solomon Islands', 677, 'Solomon Islands doll', '$', 'SBD'),
(201, 'SO', 'Somalia', 252, 'Somali shilling', 'Sh', 'SOS'),
(202, 'ZA', 'South Africa', 27, 'South African rand', 'R', 'ZAR'),
(203, 'GS', 'South Georgia', 0, '', '', ''),
(204, 'SS', 'South Sudan', 211, 'South Sudanese pound', '£', 'SSP'),
(205, 'ES', 'Spain', 34, 'Euro', '€', 'EUR'),
(206, 'LK', 'Sri Lanka', 94, 'Sri Lankan rupee', 'Rs or රු', 'LKR'),
(207, 'SD', 'Sudan', 249, 'Sudanese pound', 'ج.س.', 'SDG'),
(208, 'SR', 'Suriname', 597, 'Surinamese dollar', '$', 'SRD'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, '', '', ''),
(210, 'SZ', 'Swaziland', 268, 'Swazi lilangeni', 'L', 'SZL'),
(211, 'SE', 'Sweden', 46, 'Swedish krona', 'kr', 'SEK'),
(212, 'CH', 'Switzerland', 41, 'Swiss franc', 'Fr', 'CHF'),
(213, 'SY', 'Syria', 963, 'Syrian pound', '£ or ل.س', 'SYP'),
(214, 'TW', 'Taiwan', 886, 'New Taiwan dollar', '$', 'TWD'),
(215, 'TJ', 'Tajikistan', 992, 'Tajikistani somoni', 'ЅМ', 'TJS'),
(216, 'TZ', 'Tanzania', 255, 'Tanzanian shilling', 'Sh', 'TZS'),
(217, 'TH', 'Thailand', 66, 'Thai baht', '฿', 'THB'),
(218, 'TG', 'Togo', 228, 'West African CFA fra', 'Fr', 'XOF'),
(219, 'TK', 'Tokelau', 690, '', '', ''),
(220, 'TO', 'Tonga', 676, 'Tongan paʻanga', 'T$', 'TOP'),
(221, 'TT', 'Trinidad And Tobago', 1868, 'Trinidad and Tobago ', '$', 'TTD'),
(222, 'TN', 'Tunisia', 216, 'Tunisian dinar', 'د.ت', 'TND'),
(223, 'TR', 'Turkey', 90, 'Turkish lira', '', 'TRY'),
(224, 'TM', 'Turkmenistan', 7370, 'Turkmenistan manat', 'm', 'TMT'),
(225, 'TC', 'Turks And Caicos Islands', 1649, 'United States dollar', '$', 'USD'),
(226, 'TV', 'Tuvalu', 688, 'Australian dollar', '$', 'AUD'),
(227, 'UG', 'Uganda', 256, 'Ugandan shilling', 'Sh', 'UGX'),
(228, 'UA', 'Ukraine', 380, 'Ukrainian hryvnia', '₴', 'UAH'),
(229, 'AE', 'United Arab Emirates', 971, 'United Arab Emirates', 'د.إ', 'AED'),
(230, 'GB', 'United Kingdom', 44, 'British pound', '£', 'GBP'),
(231, 'US', 'United States', 1, 'United States dollar', '$', 'USD'),
(232, 'UM', 'United States Minor Outlying Islands', 1, '', '', ''),
(233, 'UY', 'Uruguay', 598, 'Uruguayan peso', '$', 'UYU'),
(234, 'UZ', 'Uzbekistan', 998, 'Uzbekistani som', '', 'UZS'),
(235, 'VU', 'Vanuatu', 678, 'Vanuatu vatu', 'Vt', 'VUV'),
(236, 'VA', 'Vatican City State (Holy See)', 39, '', '', ''),
(237, 'VE', 'Venezuela', 58, 'Venezuelan bolívar', 'Bs F', 'VEF'),
(238, 'VN', 'Vietnam', 84, 'Vietnamese đồng', '₫', 'VND'),
(239, 'VG', 'Virgin Islands (British)', 1284, '', '', ''),
(240, 'VI', 'Virgin Islands (US)', 1340, '', '', ''),
(241, 'WF', 'Wallis And Futuna Islands', 681, '', '', ''),
(242, 'EH', 'Western Sahara', 212, '', '', ''),
(243, 'YE', 'Yemen', 967, 'Yemeni rial', '﷼', 'YER'),
(244, 'YU', 'Yugoslavia', 38, '', '', ''),
(245, 'ZM', 'Zambia', 260, 'Zambian kwacha', 'ZK', 'ZMW'),
(246, 'ZW', 'Zimbabwe', 263, 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `livetips`
--

CREATE TABLE `livetips` (
  `id` int(50) NOT NULL,
  `tips` text NOT NULL,
  `postdate` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livetips`
--

INSERT INTO `livetips` (`id`, `tips`, `postdate`) VALUES
(52, 'Full Time - Over 0.5 goals Teams: Wolfsburg II vs St Pauli II League: Germany Regionalliga North Score: 0 - 0 Minute: 27', '14/09/2017'),
(54, 'Full Time - Over 0.5 goals Teams: Wolfsburg II vs St Pauli II League: Germany Regionalliga North Score: 0 - 0 Minute: 27', '16/11/2017');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(30) NOT NULL,
  `result` text NOT NULL,
  `won` text NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` int(10) NOT NULL,
  `date_posted` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `email`, `message`, `status`, `date_posted`) VALUES
(1, 'Augustine', 'augustinetreezy@gmail.com', 'This is only a test', 1, '2018-01-27 17:25:59'),
(2, 'Agusto', 'augustineowuor32@gmail.com', 'This is wonderfull', 2, '2018-01-27 17:27:45'),
(7, 'Tweesty', 'olivertweesty32@gmail.com', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '2018-01-27 18:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user` text NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user`, `password`) VALUES
('admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `web_tips`
--

CREATE TABLE `web_tips` (
  `id` int(20) NOT NULL,
  `tips` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_tips`
--

INSERT INTO `web_tips` (`id`, `tips`) VALUES
(1, 'Join VIP to increase your chances of winning'),
(2, 'We do not provide fixed match.'),
(3, 'Get our free android app to enjoy the free matches');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appusers`
--
ALTER TABLE `appusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fcm_token` (`fcm_token`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helper_country`
--
ALTER TABLE `helper_country`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `livetips`
--
ALTER TABLE `livetips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `web_tips`
--
ALTER TABLE `web_tips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appusers`
--
ALTER TABLE `appusers`
  MODIFY `id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `helper_country`
--
ALTER TABLE `helper_country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `livetips`
--
ALTER TABLE `livetips`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `web_tips`
--
ALTER TABLE `web_tips`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
