

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `role_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_username_unique` (`username`),
  UNIQUE KEY `admins_email_unique` (`email`),
  KEY `admins_role_id_index` (`role_id`),
  CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO admins VALUES("1","admin","admin@techvill.net","$2y$10$uG/S6cGp8cqHsUAAePBYreM80KMehuo6J5Xs7uY8J4RnPGT4Xn/Hi","Active","1","jpRAaUEiP2qmWPvzyp8x3wOAjHLDp4hcmEIJTtNY8GwspVhmBjiAYgIETZwt","2018-02-20 10:02:41","2018-02-20 10:02:41");





CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO backups VALUES("1","2018-02-09-070728.sql","2018-02-09 07:07:28","");
INSERT INTO backups VALUES("2","2018-02-09-070744.sql","2018-02-09 07:07:44","");
INSERT INTO backups VALUES("3","2018-02-09-070831.sql","2018-02-09 07:08:31","");
INSERT INTO backups VALUES("4","2018-02-10-104921.sql","2018-02-10 10:49:21","");
INSERT INTO backups VALUES("5","2018-03-01-105852.sql","2018-03-01 10:58:52","");
INSERT INTO backups VALUES("6","2018-03-09-075730.sql","2018-03-09 07:57:30","");





CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_short_name_unique` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO countries VALUES("1","AF","Afghanistan","AFG","4","93");
INSERT INTO countries VALUES("2","AL","Albania","ALB","8","355");
INSERT INTO countries VALUES("3","DZ","Algeria","DZA","12","213");
INSERT INTO countries VALUES("4","AS","American Samoa","ASM","16","1684");
INSERT INTO countries VALUES("5","AD","Andorra","AND","20","376");
INSERT INTO countries VALUES("6","AO","Angola","AGO","24","244");
INSERT INTO countries VALUES("7","AI","Anguilla","AIA","660","1264");
INSERT INTO countries VALUES("8","AQ","Antarctica","","","0");
INSERT INTO countries VALUES("9","AG","Antigua and Barbuda","ATG","28","1268");
INSERT INTO countries VALUES("10","AR","Argentina","ARG","32","54");
INSERT INTO countries VALUES("11","AM","Armenia","ARM","51","374");
INSERT INTO countries VALUES("12","AW","Aruba","ABW","533","297");
INSERT INTO countries VALUES("13","AU","Australia","AUS","36","61");
INSERT INTO countries VALUES("14","AT","Austria","AUT","40","43");
INSERT INTO countries VALUES("15","AZ","Azerbaijan","AZE","31","994");
INSERT INTO countries VALUES("16","BS","Bahamas","BHS","44","1242");
INSERT INTO countries VALUES("17","BH","Bahrain","BHR","48","973");
INSERT INTO countries VALUES("18","BD","Bangladesh","BGD","50","880");
INSERT INTO countries VALUES("19","BB","Barbados","BRB","52","1246");
INSERT INTO countries VALUES("20","BY","Belarus","BLR","112","375");
INSERT INTO countries VALUES("21","BE","Belgium","BEL","56","32");
INSERT INTO countries VALUES("22","BZ","Belize","BLZ","84","501");
INSERT INTO countries VALUES("23","BJ","Benin","BEN","204","229");
INSERT INTO countries VALUES("24","BM","Bermuda","BMU","60","1441");
INSERT INTO countries VALUES("25","BT","Bhutan","BTN","64","975");
INSERT INTO countries VALUES("26","BO","Bolivia","BOL","68","591");
INSERT INTO countries VALUES("27","BA","Bosnia and Herzegovina","BIH","70","387");
INSERT INTO countries VALUES("28","BW","Botswana","BWA","72","267");
INSERT INTO countries VALUES("29","BV","Bouvet Island","","","0");
INSERT INTO countries VALUES("30","BR","Brazil","BRA","76","55");
INSERT INTO countries VALUES("31","IO","British Indian Ocean Territory","","","246");
INSERT INTO countries VALUES("32","BN","Brunei Darussalam","BRN","96","673");
INSERT INTO countries VALUES("33","BG","Bulgaria","BGR","100","359");
INSERT INTO countries VALUES("34","BF","Burkina Faso","BFA","854","226");
INSERT INTO countries VALUES("35","BI","Burundi","BDI","108","257");
INSERT INTO countries VALUES("36","KH","Cambodia","KHM","116","855");
INSERT INTO countries VALUES("37","CM","Cameroon","CMR","120","237");
INSERT INTO countries VALUES("38","CA","Canada","CAN","124","1");
INSERT INTO countries VALUES("39","CV","Cape Verde","CPV","132","238");
INSERT INTO countries VALUES("40","KY","Cayman Islands","CYM","136","1345");
INSERT INTO countries VALUES("41","CF","Central African Republic","CAF","140","236");
INSERT INTO countries VALUES("42","TD","Chad","TCD","148","235");
INSERT INTO countries VALUES("43","CL","Chile","CHL","152","56");
INSERT INTO countries VALUES("44","CN","China","CHN","156","86");
INSERT INTO countries VALUES("45","CX","Christmas Island","","","61");
INSERT INTO countries VALUES("46","CC","Cocos (Keeling) Islands","","","672");
INSERT INTO countries VALUES("47","CO","Colombia","COL","170","57");
INSERT INTO countries VALUES("48","KM","Comoros","COM","174","269");
INSERT INTO countries VALUES("49","CG","Congo","COG","178","242");
INSERT INTO countries VALUES("50","CD","Congo, the Democratic Republic of the","COD","180","242");
INSERT INTO countries VALUES("51","CK","Cook Islands","COK","184","682");
INSERT INTO countries VALUES("52","CR","Costa Rica","CRI","188","506");
INSERT INTO countries VALUES("53","CI","Cote D\'Ivoire","CIV","384","225");
INSERT INTO countries VALUES("54","HR","Croatia","HRV","191","385");
INSERT INTO countries VALUES("55","CU","Cuba","CUB","192","53");
INSERT INTO countries VALUES("56","CY","Cyprus","CYP","196","357");
INSERT INTO countries VALUES("57","CZ","Czech Republic","CZE","203","420");
INSERT INTO countries VALUES("58","DK","Denmark","DNK","208","45");
INSERT INTO countries VALUES("59","DJ","Djibouti","DJI","262","253");
INSERT INTO countries VALUES("60","DM","Dominica","DMA","212","1767");
INSERT INTO countries VALUES("61","DO","Dominican Republic","DOM","214","1809");
INSERT INTO countries VALUES("62","EC","Ecuador","ECU","218","593");
INSERT INTO countries VALUES("63","EG","Egypt","EGY","818","20");
INSERT INTO countries VALUES("64","SV","El Salvador","SLV","222","503");
INSERT INTO countries VALUES("65","GQ","Equatorial Guinea","GNQ","226","240");
INSERT INTO countries VALUES("66","ER","Eritrea","ERI","232","291");
INSERT INTO countries VALUES("67","EE","Estonia","EST","233","372");
INSERT INTO countries VALUES("68","ET","Ethiopia","ETH","231","251");
INSERT INTO countries VALUES("69","FK","Falkland Islands (Malvinas)","FLK","238","500");
INSERT INTO countries VALUES("70","FO","Faroe Islands","FRO","234","298");
INSERT INTO countries VALUES("71","FJ","Fiji","FJI","242","679");
INSERT INTO countries VALUES("72","FI","Finland","FIN","246","358");
INSERT INTO countries VALUES("73","FR","France","FRA","250","33");
INSERT INTO countries VALUES("74","GF","French Guiana","GUF","254","594");
INSERT INTO countries VALUES("75","PF","French Polynesia","PYF","258","689");
INSERT INTO countries VALUES("76","TF","French Southern Territories","","","0");
INSERT INTO countries VALUES("77","GA","Gabon","GAB","266","241");
INSERT INTO countries VALUES("78","GM","Gambia","GMB","270","220");
INSERT INTO countries VALUES("79","GE","Georgia","GEO","268","995");
INSERT INTO countries VALUES("80","DE","Germany","DEU","276","49");
INSERT INTO countries VALUES("81","GH","Ghana","GHA","288","233");
INSERT INTO countries VALUES("82","GI","Gibraltar","GIB","292","350");
INSERT INTO countries VALUES("83","GR","Greece","GRC","300","30");
INSERT INTO countries VALUES("84","GL","Greenland","GRL","304","299");
INSERT INTO countries VALUES("85","GD","Grenada","GRD","308","1473");
INSERT INTO countries VALUES("86","GP","Guadeloupe","GLP","312","590");
INSERT INTO countries VALUES("87","GU","Guam","GUM","316","1671");
INSERT INTO countries VALUES("88","GT","Guatemala","GTM","320","502");
INSERT INTO countries VALUES("89","GN","Guinea","GIN","324","224");
INSERT INTO countries VALUES("90","GW","Guinea-Bissau","GNB","624","245");
INSERT INTO countries VALUES("91","GY","Guyana","GUY","328","592");
INSERT INTO countries VALUES("92","HT","Haiti","HTI","332","509");
INSERT INTO countries VALUES("93","HM","Heard Island and Mcdonald Islands","","","0");
INSERT INTO countries VALUES("94","VA","Holy See (Vatican City State)","VAT","336","39");
INSERT INTO countries VALUES("95","HN","Honduras","HND","340","504");
INSERT INTO countries VALUES("96","HK","Hong Kong","HKG","344","852");
INSERT INTO countries VALUES("97","HU","Hungary","HUN","348","36");
INSERT INTO countries VALUES("98","IS","Iceland","ISL","352","354");
INSERT INTO countries VALUES("99","IN","India","IND","356","91");
INSERT INTO countries VALUES("100","ID","Indonesia","IDN","360","62");
INSERT INTO countries VALUES("101","IR","Iran, Islamic Republic of","IRN","364","98");
INSERT INTO countries VALUES("102","IQ","Iraq","IRQ","368","964");
INSERT INTO countries VALUES("103","IE","Ireland","IRL","372","353");
INSERT INTO countries VALUES("104","IL","Israel","ISR","376","972");
INSERT INTO countries VALUES("105","IT","Italy","ITA","380","39");
INSERT INTO countries VALUES("106","JM","Jamaica","JAM","388","1876");
INSERT INTO countries VALUES("107","JP","Japan","JPN","392","81");
INSERT INTO countries VALUES("108","JO","Jordan","JOR","400","962");
INSERT INTO countries VALUES("109","KZ","Kazakhstan","KAZ","398","7");
INSERT INTO countries VALUES("110","KE","Kenya","KEN","404","254");
INSERT INTO countries VALUES("111","KI","Kiribati","KIR","296","686");
INSERT INTO countries VALUES("112","KP","Korea, Democratic People\'s Republic of","PRK","408","850");
INSERT INTO countries VALUES("113","KR","Korea, Republic of","KOR","410","82");
INSERT INTO countries VALUES("114","KW","Kuwait","KWT","414","965");
INSERT INTO countries VALUES("115","KG","Kyrgyzstan","KGZ","417","996");
INSERT INTO countries VALUES("116","LA","Lao People\'s Democratic Republic","LAO","418","856");
INSERT INTO countries VALUES("117","LV","Latvia","LVA","428","371");
INSERT INTO countries VALUES("118","LB","Lebanon","LBN","422","961");
INSERT INTO countries VALUES("119","LS","Lesotho","LSO","426","266");
INSERT INTO countries VALUES("120","LR","Liberia","LBR","430","231");
INSERT INTO countries VALUES("121","LY","Libyan Arab Jamahiriya","LBY","434","218");
INSERT INTO countries VALUES("122","LI","Liechtenstein","LIE","438","423");
INSERT INTO countries VALUES("123","LT","Lithuania","LTU","440","370");
INSERT INTO countries VALUES("124","LU","Luxembourg","LUX","442","352");
INSERT INTO countries VALUES("125","MO","Macao","MAC","446","853");
INSERT INTO countries VALUES("126","MK","Macedonia, the Former Yugoslav Republic of","MKD","807","389");
INSERT INTO countries VALUES("127","MG","Madagascar","MDG","450","261");
INSERT INTO countries VALUES("128","MW","Malawi","MWI","454","265");
INSERT INTO countries VALUES("129","MY","Malaysia","MYS","458","60");
INSERT INTO countries VALUES("130","MV","Maldives","MDV","462","960");
INSERT INTO countries VALUES("131","ML","Mali","MLI","466","223");
INSERT INTO countries VALUES("132","MT","Malta","MLT","470","356");
INSERT INTO countries VALUES("133","MH","Marshall Islands","MHL","584","692");
INSERT INTO countries VALUES("134","MQ","Martinique","MTQ","474","596");
INSERT INTO countries VALUES("135","MR","Mauritania","MRT","478","222");
INSERT INTO countries VALUES("136","MU","Mauritius","MUS","480","230");
INSERT INTO countries VALUES("138","MX","Mexico","MEX","484","52");
INSERT INTO countries VALUES("139","FM","Micronesia, Federated States of","FSM","583","691");
INSERT INTO countries VALUES("140","MD","Moldova, Republic of","MDA","498","373");
INSERT INTO countries VALUES("141","MC","Monaco","MCO","492","377");
INSERT INTO countries VALUES("142","MN","Mongolia","MNG","496","976");
INSERT INTO countries VALUES("143","MS","Montserrat","MSR","500","1664");
INSERT INTO countries VALUES("144","MA","Morocco","MAR","504","212");
INSERT INTO countries VALUES("145","MZ","Mozambique","MOZ","508","258");
INSERT INTO countries VALUES("146","MM","Myanmar","MMR","104","95");
INSERT INTO countries VALUES("147","NA","Namibia","NAM","516","264");
INSERT INTO countries VALUES("148","NR","Nauru","NRU","520","674");
INSERT INTO countries VALUES("149","NP","Nepal","NPL","524","977");
INSERT INTO countries VALUES("150","NL","Netherlands","NLD","528","31");
INSERT INTO countries VALUES("151","AN","Netherlands Antilles","ANT","530","599");
INSERT INTO countries VALUES("152","NC","New Caledonia","NCL","540","687");
INSERT INTO countries VALUES("153","NZ","New Zealand","NZL","554","64");
INSERT INTO countries VALUES("154","NI","Nicaragua","NIC","558","505");
INSERT INTO countries VALUES("155","NE","Niger","NER","562","227");
INSERT INTO countries VALUES("156","NG","Nigeria","NGA","566","234");
INSERT INTO countries VALUES("157","NU","Niue","NIU","570","683");
INSERT INTO countries VALUES("158","NF","Norfolk Island","NFK","574","672");
INSERT INTO countries VALUES("159","MP","Northern Mariana Islands","MNP","580","1670");
INSERT INTO countries VALUES("160","NO","Norway","NOR","578","47");
INSERT INTO countries VALUES("161","OM","Oman","OMN","512","968");
INSERT INTO countries VALUES("162","PK","Pakistan","PAK","586","92");
INSERT INTO countries VALUES("163","PW","Palau","PLW","585","680");
INSERT INTO countries VALUES("164","PS","Palestinian Territory, Occupied","","","970");
INSERT INTO countries VALUES("165","PA","Panama","PAN","591","507");
INSERT INTO countries VALUES("166","PG","Papua New Guinea","PNG","598","675");
INSERT INTO countries VALUES("167","PY","Paraguay","PRY","600","595");
INSERT INTO countries VALUES("168","PE","Peru","PER","604","51");
INSERT INTO countries VALUES("169","PH","Philippines","PHL","608","63");
INSERT INTO countries VALUES("170","PN","Pitcairn","PCN","612","0");
INSERT INTO countries VALUES("171","PL","Poland","POL","616","48");
INSERT INTO countries VALUES("172","PT","Portugal","PRT","620","351");
INSERT INTO countries VALUES("173","PR","Puerto Rico","PRI","630","1787");
INSERT INTO countries VALUES("174","QA","Qatar","QAT","634","974");
INSERT INTO countries VALUES("175","RE","Reunion","REU","638","262");
INSERT INTO countries VALUES("176","RO","Romania","ROM","642","40");
INSERT INTO countries VALUES("177","RU","Russian Federation","RUS","643","70");
INSERT INTO countries VALUES("178","RW","Rwanda","RWA","646","250");
INSERT INTO countries VALUES("179","SH","Saint Helena","SHN","654","290");
INSERT INTO countries VALUES("180","KN","Saint Kitts and Nevis","KNA","659","1869");
INSERT INTO countries VALUES("181","LC","Saint Lucia","LCA","662","1758");
INSERT INTO countries VALUES("182","PM","Saint Pierre and Miquelon","SPM","666","508");
INSERT INTO countries VALUES("183","VC","Saint Vincent and the Grenadines","VCT","670","1784");
INSERT INTO countries VALUES("185","SM","San Marino","SMR","674","378");
INSERT INTO countries VALUES("186","ST","Sao Tome and Principe","STP","678","239");
INSERT INTO countries VALUES("188","SN","Senegal","SEN","686","221");
INSERT INTO countries VALUES("189","CS","Serbia and Montenegro","","","381");
INSERT INTO countries VALUES("190","SC","Seychelles","SYC","690","248");
INSERT INTO countries VALUES("191","SL","Sierra Leone","SLE","694","232");
INSERT INTO countries VALUES("192","SG","Singapore","SGP","702","65");
INSERT INTO countries VALUES("193","SK","Slovakia","SVK","703","421");
INSERT INTO countries VALUES("194","SI","Slovenia","SVN","705","386");
INSERT INTO countries VALUES("195","SB","Solomon Islands","SLB","90","677");
INSERT INTO countries VALUES("196","SO","Somalia","SOM","706","252");
INSERT INTO countries VALUES("198","GS","South Georgia and the South Sandwich Islands","","","0");
INSERT INTO countries VALUES("199","ES","Spain","ESP","724","34");
INSERT INTO countries VALUES("200","LK","Sri Lanka","LKA","144","94");
INSERT INTO countries VALUES("201","SD","Sudan","SDN","736","249");
INSERT INTO countries VALUES("202","SR","Suriname","SUR","740","597");
INSERT INTO countries VALUES("203","SJ","Svalbard and Jan Mayen","SJM","744","47");
INSERT INTO countries VALUES("204","SZ","Swaziland","SWZ","748","268");
INSERT INTO countries VALUES("205","SE","Sweden","SWE","752","46");
INSERT INTO countries VALUES("206","CH","Switzerland","CHE","756","41");
INSERT INTO countries VALUES("207","SY","Syrian Arab Republic","SYR","760","963");
INSERT INTO countries VALUES("208","TW","Taiwan, Province of China","TWN","158","886");
INSERT INTO countries VALUES("209","TJ","Tajikistan","TJK","762","992");
INSERT INTO countries VALUES("210","TZ","Tanzania, United Republic of","TZA","834","255");
INSERT INTO countries VALUES("211","TH","Thailand","THA","764","66");
INSERT INTO countries VALUES("212","TL","Timor-Leste","","","670");
INSERT INTO countries VALUES("213","TG","Togo","TGO","768","228");
INSERT INTO countries VALUES("214","TK","Tokelau","TKL","772","690");
INSERT INTO countries VALUES("215","TO","Tonga","TON","776","676");
INSERT INTO countries VALUES("216","TT","Trinidad and Tobago","TTO","780","1868");
INSERT INTO countries VALUES("217","TN","Tunisia","TUN","788","216");
INSERT INTO countries VALUES("218","TR","Turkey","TUR","792","90");
INSERT INTO countries VALUES("219","TM","Turkmenistan","TKM","795","7370");
INSERT INTO countries VALUES("220","TC","Turks and Caicos Islands","TCA","796","1649");
INSERT INTO countries VALUES("221","TV","Tuvalu","TUV","798","688");
INSERT INTO countries VALUES("222","UG","Uganda","UGA","800","256");
INSERT INTO countries VALUES("223","UA","Ukraine","UKR","804","380");
INSERT INTO countries VALUES("224","AE","United Arab Emirates","ARE","784","971");
INSERT INTO countries VALUES("225","GB","United Kingdom","GBR","826","44");
INSERT INTO countries VALUES("226","US","United States","USA","840","1");
INSERT INTO countries VALUES("229","UZ","Uzbekistan","UZB","860","998");
INSERT INTO countries VALUES("230","VU","Vanuatu","VUT","548","678");
INSERT INTO countries VALUES("231","VE","Venezuela","VEN","862","58");
INSERT INTO countries VALUES("232","VN","Viet Nam","VNM","704","84");
INSERT INTO countries VALUES("233","VG","Virgin Islands, British","VGB","92","1284");
INSERT INTO countries VALUES("234","VI","Virgin Islands, U.s.","VIR","850","1340");
INSERT INTO countries VALUES("235","WF","Wallis and Futuna","WLF","876","681");
INSERT INTO countries VALUES("236","EH","Western Sahara","ESH","732","212");
INSERT INTO countries VALUES("241","Es_","Spain","ESP","091","+2323");





CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `symbol` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '$',
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT '101',
  `hundreds_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'one thousand',
  `rate` double NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO currencies VALUES("1","Guinean franc","FG","GNF","one thousand","50","Inactive","0","","");
INSERT INTO currencies VALUES("12","US Dollar","$","USD","one thousand","1","Active","1","","");
INSERT INTO currencies VALUES("13","Pound Sterling","�","GBP","one thousand","0.65","Inactive","0","","");
INSERT INTO currencies VALUES("14","Europe","�","EUR","one thousand","0.65","Active","0","","");
INSERT INTO currencies VALUES("15","Czech Republic Koruna","K?","CZK","one thousand","78","Inactive","0","","");
INSERT INTO currencies VALUES("16","Hong Kong Dollar","&#36;","HKD","one thousand","0","","0","","");
INSERT INTO currencies VALUES("17","Hungarian Forint","Ft","HUF","one thousand","0","","0","","");
INSERT INTO currencies VALUES("18","Indonesian Rupiah","Rp","IDR","one thousand","0","","0","","");
INSERT INTO currencies VALUES("19","Israeli New Sheqel","&#8362;","ILS","one thousand","0","","0","","");
INSERT INTO currencies VALUES("20","Japanese Yen","&#165;","JPY","one thousand","0","","0","","");
INSERT INTO currencies VALUES("21","South Korean Won","?","KRW","one thousand","80","Inactive","0","","");
INSERT INTO currencies VALUES("22","Norwegian Krone","kr","NOK","one thousand","0","","0","","");
INSERT INTO currencies VALUES("23","New Zealand Dollar","&#36;","NZD","one thousand","0","","0","","");
INSERT INTO currencies VALUES("24","Polish Zloty","z&#322;","PLN","one thousand","0","","0","","");
INSERT INTO currencies VALUES("25","Russian Ruble","P","RUB","one thousand","51.99","Active","0","","");
INSERT INTO currencies VALUES("26","TAKA","BDT","BDT","one thousand","80","Active","0","","");





CREATE TABLE IF NOT EXISTS `currency_exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `from_wallet` int(10) unsigned DEFAULT NULL,
  `to_wallet` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `exchange_rate` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `type` enum('In','Out') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_exchanges_user_id_index` (`user_id`),
  KEY `currency_exchanges_from_wallet_index` (`from_wallet`),
  KEY `currency_exchanges_to_wallet_index` (`to_wallet`),
  KEY `currency_exchanges_currency_id_index` (`currency_id`),
  CONSTRAINT `currency_exchanges_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_exchanges_from_wallet_foreign` FOREIGN KEY (`from_wallet`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_exchanges_to_wallet_foreign` FOREIGN KEY (`to_wallet`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_exchanges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO currency_exchanges VALUES("1","3","3","6","26","80.00","200.00","Out","2018-03-11 08:55:48","2018-03-11 08:55:48");
INSERT INTO currency_exchanges VALUES("2","1","1","7","26","80.00","150.00","Out","2018-03-11 09:28:23","2018-03-11 09:28:23");
INSERT INTO currency_exchanges VALUES("3","6","14","15","14","0.65","100.00","Out","2018-03-11 11:32:49","2018-03-11 11:32:49");





CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Deposit)',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `deposits_user_id_index` (`user_id`),
  KEY `deposits_currency_id_index` (`currency_id`),
  KEY `deposits_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `deposits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO deposits VALUES("1","3","12","2","TME1MAWDIMQQ0","5.00","25.00","10000.00","2018-03-11 11:15:14");
INSERT INTO deposits VALUES("2","6","12","1","KQQFH1M77BP5M","1.00","30.00","4969.00","2018-03-11 17:31:11");





CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_type` enum('Deposit','Exchange','Transfer','Withdrawl') COLLATE utf8_unicode_ci DEFAULT NULL,
  `charge_percentage` double(10,2) DEFAULT '1.00',
  `charge_fixed` double(10,2) DEFAULT '15.00',
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `fees_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fees VALUES("1","Deposit","1.00","30.00","1");
INSERT INTO fees VALUES("2","Deposit","5.00","25.00","2");
INSERT INTO fees VALUES("3","Transfer","2.00","40.00","2");
INSERT INTO fees VALUES("4","Exchange","7.50","50.50","3");
INSERT INTO fees VALUES("5","Deposit","7.00","60.00","3");
INSERT INTO fees VALUES("6","Withdrawl","4.00","40.00","2");
INSERT INTO fees VALUES("11","Exchange","1.40","14.00","2");
INSERT INTO fees VALUES("12","Transfer","2.50","25.00","1");





CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO languages VALUES("1","English","en","Active","1");
INSERT INTO languages VALUES("2","????","ar","Active","0");
INSERT INTO languages VALUES("4","Fran�ais","fr","Active","0");
INSERT INTO languages VALUES("5","Portugu�s","pt","Active","0");
INSERT INTO languages VALUES("6","???????","ru","Active","0");
INSERT INTO languages VALUES("7","Espa�ol","es","Active","0");
INSERT INTO languages VALUES("8","T�rk�e","tr","Active","0");





CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO metas VALUES("1","/","Home","root page","root,home");
INSERT INTO metas VALUES("2","login","Log In","Log In","Log In");
INSERT INTO metas VALUES("3","register","Register","Register","Register");
INSERT INTO metas VALUES("14","3333","233","3424","Settings");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2016_06_01_000001_create_oauth_auth_codes_table","1");
INSERT INTO migrations VALUES("4","2016_06_01_000002_create_oauth_access_tokens_table","1");
INSERT INTO migrations VALUES("5","2016_06_01_000003_create_oauth_refresh_tokens_table","1");
INSERT INTO migrations VALUES("6","2016_06_01_000004_create_oauth_clients_table","1");
INSERT INTO migrations VALUES("7","2016_06_01_000005_create_oauth_personal_access_clients_table","1");
INSERT INTO migrations VALUES("8","2018_01_23_054930_entrust_setup_tables","1");
INSERT INTO migrations VALUES("9","2018_01_24_134400_add_role_id_to_users","1");
INSERT INTO migrations VALUES("17","2018_02_01_075202_create_settings_table","4");
INSERT INTO migrations VALUES("18","2018_02_01_104705_create_languages_table","5");
INSERT INTO migrations VALUES("20","2018_01_28_073527_create_currencies_table","6");
INSERT INTO migrations VALUES("21","2018_02_02_121311_create_countries_table","7");
INSERT INTO migrations VALUES("22","2018_02_05_065402_create_preferences_table","8");
INSERT INTO migrations VALUES("32","2018_02_09_055248_create_backups_table","10");
INSERT INTO migrations VALUES("33","2018_02_09_104306_create_metas_table","11");
INSERT INTO migrations VALUES("42","2018_02_17_105822_create_role_admin_table","17");
INSERT INTO migrations VALUES("52","2014_10_12_000000_create_users_table","20");
INSERT INTO migrations VALUES("53","2018_02_20_095528_create_testers_table","21");
INSERT INTO migrations VALUES("54","2018_02_20_095847_create_admins_table","21");
INSERT INTO migrations VALUES("60","2018_02_26_103220_create_wallets_table","22");
INSERT INTO migrations VALUES("64","2018_02_09_121049_create_payment_methods_table","24");
INSERT INTO migrations VALUES("66","2018_02_27_101356_create_fees_table","25");
INSERT INTO migrations VALUES("71","2018_02_26_084847_create_deposits_table","27");
INSERT INTO migrations VALUES("75","2018_03_03_083507_create_transfers_table","28");
INSERT INTO migrations VALUES("77","2018_03_06_115806_create_withdrawals_table","29");
INSERT INTO migrations VALUES("79","2018_03_03_083507_create_request_payments_table","31");
INSERT INTO migrations VALUES("80","2018_03_03_083507_create_vouchers_table","31");
INSERT INTO migrations VALUES("81","2018_03_03_083507_create_currency_exchanges_table","32");
INSERT INTO migrations VALUES("82","2018_01_28_060439_create_transactions_table","33");





CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO oauth_access_tokens VALUES("80357e7a3d7f8fd1ab961116202881a8b8e271b81f39dddfc844a7ac0225055f59a90e9e8a824281","1","2","","[]","0","2018-01-29 06:01:24","2018-01-29 06:01:24","2018-02-13 06:01:24");
INSERT INTO oauth_access_tokens VALUES("96f8a607c71acde8d9d11e4d5295d62d70bacb06953a5b8d2d9289e7ca0658d82fbbbe306bb83a48","1","2","","[]","0","2018-01-28 11:56:27","2018-01-28 11:56:27","2018-02-12 11:56:27");





CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO oauth_clients VALUES("1","","Laravel Personal Access Client","agkL4ISxlzHE5z2zS2vwqZqqoF7ker3HMXo7De3v","http://localhost","1","0","0","2018-01-28 11:51:19","2018-01-28 11:51:19");
INSERT INTO oauth_clients VALUES("2","","Laravel Password Grant Client","TwF6YvwSCLuVejXhUQCAqMaPAqhHZ29sEhhFfsM9","http://localhost","0","1","0","2018-01-28 11:51:19","2018-01-28 11:51:19");
INSERT INTO oauth_clients VALUES("3","","Laravel Personal Access Client","YWG63Yjp0bcf7iL45MgK75Yc5Tq18KS9rcv8ltBM","http://localhost","1","0","0","2018-01-28 11:51:28","2018-01-28 11:51:28");
INSERT INTO oauth_clients VALUES("4","","Laravel Password Grant Client","qDC0d5dnplHrRVdt1Yu66qMJ6nmRkHBRly8hE9oB","http://localhost","0","1","0","2018-01-28 11:51:28","2018-01-28 11:51:28");





CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO oauth_personal_access_clients VALUES("1","1","2018-01-28 11:51:19","2018-01-28 11:51:19");
INSERT INTO oauth_personal_access_clients VALUES("2","3","2018-01-28 11:51:28","2018-01-28 11:51:28");





CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO oauth_refresh_tokens VALUES("1156faaec3f8721d7dfd10c88179e82cb5d945eb18772f54096392ef4b596da9501135f580f4bafe","96f8a607c71acde8d9d11e4d5295d62d70bacb06953a5b8d2d9289e7ca0658d82fbbbe306bb83a48","0","2018-02-27 11:56:27");
INSERT INTO oauth_refresh_tokens VALUES("608b002d7f9b7b7a66a53a50080075d8ff111973cf96f6e7705c349d41f45e18f3d42975a326a811","80357e7a3d7f8fd1ab961116202881a8b8e271b81f39dddfc844a7ac0225055f59a90e9e8a824281","0","2018-02-28 06:01:25");





CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payment_methods VALUES("1","Paypal","Active");
INSERT INTO payment_methods VALUES("2","Stripe","Inactive");
INSERT INTO payment_methods VALUES("3","Swift","Inactive");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permission_role VALUES("23","1");
INSERT INTO permission_role VALUES("24","1");
INSERT INTO permission_role VALUES("25","1");
INSERT INTO permission_role VALUES("26","1");
INSERT INTO permission_role VALUES("27","1");
INSERT INTO permission_role VALUES("28","1");
INSERT INTO permission_role VALUES("29","1");
INSERT INTO permission_role VALUES("30","1");
INSERT INTO permission_role VALUES("31","1");
INSERT INTO permission_role VALUES("32","1");
INSERT INTO permission_role VALUES("33","1");
INSERT INTO permission_role VALUES("34","1");
INSERT INTO permission_role VALUES("35","1");
INSERT INTO permission_role VALUES("36","1");
INSERT INTO permission_role VALUES("37","1");
INSERT INTO permission_role VALUES("38","1");
INSERT INTO permission_role VALUES("39","1");
INSERT INTO permission_role VALUES("40","1");
INSERT INTO permission_role VALUES("41","1");
INSERT INTO permission_role VALUES("42","1");
INSERT INTO permission_role VALUES("23","2");
INSERT INTO permission_role VALUES("24","2");
INSERT INTO permission_role VALUES("25","2");
INSERT INTO permission_role VALUES("26","2");
INSERT INTO permission_role VALUES("27","2");
INSERT INTO permission_role VALUES("28","2");
INSERT INTO permission_role VALUES("29","2");
INSERT INTO permission_role VALUES("30","2");
INSERT INTO permission_role VALUES("31","2");
INSERT INTO permission_role VALUES("32","2");
INSERT INTO permission_role VALUES("33","2");
INSERT INTO permission_role VALUES("34","2");
INSERT INTO permission_role VALUES("35","2");
INSERT INTO permission_role VALUES("36","2");
INSERT INTO permission_role VALUES("37","2");
INSERT INTO permission_role VALUES("38","2");
INSERT INTO permission_role VALUES("39","2");
INSERT INTO permission_role VALUES("40","2");
INSERT INTO permission_role VALUES("41","2");
INSERT INTO permission_role VALUES("42","2");
INSERT INTO permission_role VALUES("43","2");
INSERT INTO permission_role VALUES("24","3");
INSERT INTO permission_role VALUES("25","3");
INSERT INTO permission_role VALUES("27","3");
INSERT INTO permission_role VALUES("36","3");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permissions VALUES("23","manage_admin","Manage Admin","Manage Admin Users","2018-02-08 07:27:18","2018-02-08 07:27:18");
INSERT INTO permissions VALUES("24","customers","View Customers","View Customer","2018-02-08 07:27:18","2018-02-08 07:27:18");
INSERT INTO permissions VALUES("25","add_customer","Add Customers","Add Customer","2018-02-08 07:27:18","2018-02-08 07:27:18");
INSERT INTO permissions VALUES("26","edit_customer","Edit Customers","Edit Customer","2018-02-08 07:27:18","2018-02-08 07:27:18");
INSERT INTO permissions VALUES("27","delete_customer","Delete Customers","Delete Customer","2018-02-08 07:27:18","2018-02-08 07:27:18");
INSERT INTO permissions VALUES("28","general_settings","General Setting","General Setting","2018-02-08 07:27:18","2018-02-08 07:27:18");
INSERT INTO permissions VALUES("29","manage_currency","Manage Currency","Manage Currency","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("30","manage_country","Manage Country","Manage Country","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("31","manage_language","Manage Language","Manage Language","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("32","email_settings","Email Settings","Email Settings","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("33","manage_fees","Manage Fees","Manage Fees","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("34","manage_metas","Manage Metas","Manage Metas","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("35","api_informations","Api Credentials","Api Credentials","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("36","payment_settings","Payment Settings","Payment Settings","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("37","social_links","Social Links","Social Links","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("38","manage_roles","Manage Roles","Manage Roles","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("39","manage_preferences","Manage Preferences","Manage Preferences","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("40","database_backup","Database Backup","Database Backup","2018-02-08 07:27:19","2018-02-08 07:27:19");
INSERT INTO permissions VALUES("41","manage_transactions","Manage Transactions","Manage Transactions","2018-02-20 18:04:00","2018-02-20 18:04:00");
INSERT INTO permissions VALUES("42","settings","Settings","Settings","2018-02-20 18:05:01","2018-02-20 18:05:01");
INSERT INTO permissions VALUES("43","dashboard","Manage Dashboard","managing dashboard","","");
INSERT INTO permissions VALUES("44","view_transactions","View Transactions","View Transactions","2018-03-05 14:10:05","2018-03-05 14:05:02");





CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO preferences VALUES("1","preference","row_per_page","50");
INSERT INTO preferences VALUES("2","preference","date_format","4");
INSERT INTO preferences VALUES("3","preference","date_sepa","/");
INSERT INTO preferences VALUES("4","preference","soft_name","MTS");
INSERT INTO preferences VALUES("5","company","site_short_name","SP");
INSERT INTO preferences VALUES("6","preference","percentage","2");
INSERT INTO preferences VALUES("7","preference","quantity","0");
INSERT INTO preferences VALUES("8","preference","date_format_type","yyyy/M/dd");
INSERT INTO preferences VALUES("9","company","company_name","MTS");
INSERT INTO preferences VALUES("10","company","company_email","admin@techvill.net");
INSERT INTO preferences VALUES("11","company","company_phone","123465798");
INSERT INTO preferences VALUES("12","company","company_street","City Hall Park Path");
INSERT INTO preferences VALUES("13","company","company_city","New York");
INSERT INTO preferences VALUES("14","company","company_state","New York");
INSERT INTO preferences VALUES("15","company","company_zipCode","10007");
INSERT INTO preferences VALUES("16","company","company_country_id","United States");
INSERT INTO preferences VALUES("17","company","dflt_lang","en");
INSERT INTO preferences VALUES("18","company","dflt_currency_id","12");
INSERT INTO preferences VALUES("19","company","sates_type_id","1");
INSERT INTO preferences VALUES("20","company","logo","logo.jpg");
INSERT INTO preferences VALUES("21","company","vat_no","DE9999");
INSERT INTO preferences VALUES("22","company","stock_id","2018");
INSERT INTO preferences VALUES("23","preference","default_money_format","&nbsp;&#36;");
INSERT INTO preferences VALUES("24","preference","money_format","after");
INSERT INTO preferences VALUES("25","preference","amount","2");





CREATE TABLE IF NOT EXISTS `request_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `amount` double(10,2) DEFAULT '0.00',
  `accept_amount` double NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purpose` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` enum('Pending','Completed','Canceled') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `request_payments_user_id_index` (`user_id`),
  KEY `request_payments_receiver_id_index` (`receiver_id`),
  KEY `request_payments_currency_id_index` (`currency_id`),
  CONSTRAINT `request_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_payments_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO request_payments VALUES("1","1","2","12","500.00","0","user2@gmail.com","","INV-1001","Testing","Testing purchase","Pending","2018-03-11 06:42:50","2018-03-11 12:06:35");
INSERT INTO request_payments VALUES("2","1","2","12","10.00","0","user2@gmail.com","","","Testing","Test","Pending","2018-03-11 06:46:29","2018-03-11 06:46:29");
INSERT INTO request_payments VALUES("3","2","1","14","20.00","0","user1@gmail.com","","","Testing","Test","Pending","2018-03-11 07:22:03","2018-03-11 07:22:03");
INSERT INTO request_payments VALUES("4","2","1","26","50.00","0","user1@gmail.com","","INV-1001","Testing","Test","Pending","2018-03-11 07:22:30","2018-03-11 07:22:30");
INSERT INTO request_payments VALUES("5","1","","12","3500.00","0","tuhin@gmail.com","","","Testing2","asfadfs asdasd","Canceled","2018-03-11 10:14:55","2018-03-11 12:40:00");





CREATE TABLE IF NOT EXISTS `role_admin` (
  `admin_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`admin_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO role_user VALUES("1","1");
INSERT INTO role_user VALUES("2","3");
INSERT INTO role_user VALUES("3","3");
INSERT INTO role_user VALUES("7","3");
INSERT INTO role_user VALUES("9","3");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO roles VALUES("1","admin","Admin","This is admin","2018-01-28 11:51:49","2018-02-06 10:19:26");
INSERT INTO roles VALUES("2","customers","Customer","This is customer","2018-02-06 08:33:00","2018-02-06 10:21:15");
INSERT INTO roles VALUES("3","BranchUser","Branch User","Branch User with limited functionality","2018-02-20 05:54:16","2018-02-20 05:54:16");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO settings VALUES("42","name","MTS","general");
INSERT INTO settings VALUES("43","logo","logo.png","general");
INSERT INTO settings VALUES("44","favicon","favicon.ico","general");
INSERT INTO settings VALUES("45","head_code","","general");
INSERT INTO settings VALUES("46","default_currency","12","general");
INSERT INTO settings VALUES("47","default_language","1","general");
INSERT INTO settings VALUES("48","email_logo","email_logo.png","general");
INSERT INTO settings VALUES("49","username","test","PayPal");
INSERT INTO settings VALUES("50","password","1122223333","PayPal");
INSERT INTO settings VALUES("51","signature","AFcWxV21C7fd0v3bYYYRCpSSRl3","PayPal");
INSERT INTO settings VALUES("52","mode","sandbox","PayPal");
INSERT INTO settings VALUES("53","publishable","tytbbb.$ddfdf","Stripe");
INSERT INTO settings VALUES("54","secret","21312sfsr.ytuuuu","Stripe");
INSERT INTO settings VALUES("55","driver","smtp","email");
INSERT INTO settings VALUES("56","host","smtp.gmail.com","email");
INSERT INTO settings VALUES("57","port","587","email");
INSERT INTO settings VALUES("58","from_address","stockpile.techvill@gmail.com","email");
INSERT INTO settings VALUES("59","from_name","Vrent","email");
INSERT INTO settings VALUES("60","encryption","tls","email");
INSERT INTO settings VALUES("61","username","stockpile.techvill@gmail.com","email");
INSERT INTO settings VALUES("62","password","xgldhlpedszmglvj","email");
INSERT INTO settings VALUES("63","facebook","#","join_us");
INSERT INTO settings VALUES("64","google_plus","#","join_us");
INSERT INTO settings VALUES("65","twitter","#","join_us");
INSERT INTO settings VALUES("66","linkedin","#","join_us");
INSERT INTO settings VALUES("67","pinterest","#","join_us");
INSERT INTO settings VALUES("68","youtube","#","join_us");
INSERT INTO settings VALUES("69","instagram","#","join_us");
INSERT INTO settings VALUES("70","key","AIzaSyC2lQCpLk6SZ3U5zBaV7y4n-lXfqjsMQXM","googleMap");
INSERT INTO settings VALUES("71","client_id","673970283138-om7qt5erh1bd3a92ftcvt4pv2tg4mhlj.apps.googleusercontent.com","google");
INSERT INTO settings VALUES("72","client_secret","B8SZ7qyNwoGkRlSlXZpZWIjy","google");
INSERT INTO settings VALUES("73","client_id","337273813338799","facebook");
INSERT INTO settings VALUES("74","client_secret","a678e247401b80488e7caffd48f89e32","facebook");
INSERT INTO settings VALUES("75","publishable","5555dff#22323","Swift");
INSERT INTO settings VALUES("76","secret","3424$gsf%see","Swift");





CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Transaction)',
  `transaction_reference_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('Deposit','Transferred','Received','Exchange_From','Exchange_To','Withdrawl','Voucher') COLLATE utf8_unicode_ci NOT NULL,
  `subtotal` double(10,2) DEFAULT '200.00',
  `fee` double(10,2) DEFAULT '10.00',
  `total` double(10,2) DEFAULT '210.00',
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'doing transaction',
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_index` (`user_id`),
  KEY `transactions_currency_id_index` (`currency_id`),
  KEY `transactions_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `transactions_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO transactions VALUES("1","1","12","","UZPTFN97KT1UF","1","Voucher","-10.00","0.00","-10.00","doing transaction","1","2018-03-11 05:11:58","2018-03-11 05:11:58");
INSERT INTO transactions VALUES("2","1","26","","XGWFHM0RYHM3L","2","Voucher","-3.00","0.00","-3.00","doing transaction","1","2018-03-11 05:12:32","2018-03-11 05:12:32");
INSERT INTO transactions VALUES("4","2","26","","VASJLTRV9RT5P","2","Voucher","3.00","0.00","3.00","doing transaction","1","2018-03-11 05:14:08","2018-03-11 05:14:08");
INSERT INTO transactions VALUES("5","3","12","2","AQQQMLSQWI8VQ","1","Deposit","10000.00","30.00","10030.00","","1","2018-03-11 05:15:14","2018-03-11 05:15:14");
INSERT INTO transactions VALUES("6","3","25","","RAMI351AURBTE","1","Transferred","2080.00","81.60","2161.60","2080 RUB to user2","1","2018-03-11 05:18:48","2018-03-11 05:18:48");
INSERT INTO transactions VALUES("7","2","25","","RAMI351AURBTE","1","Received","2080.00","","2080.00","2080 RUB to user2","1","2018-03-11 05:18:48","2018-03-11 05:18:48");
INSERT INTO transactions VALUES("8","1","12","","PTEAPQ1REOYQP","1","Voucher","-10.00","0.00","-10.00","doing transaction","1","2018-03-11 05:23:43","2018-03-11 05:23:43");
INSERT INTO transactions VALUES("9","1","25","","9TQFU1AB68T90","2","Voucher","-15.00","0.00","-15.00","doing transaction","1","2018-03-11 05:23:58","2018-03-11 05:23:58");
INSERT INTO transactions VALUES("10","2","12","","K8MT5UDWO3ZDT","1","Voucher","10.00","0.00","10.00","doing transaction","1","2018-03-11 05:24:18","2018-03-11 05:24:18");
INSERT INTO transactions VALUES("11","1","25","","0CZRQWG66VECF","2","Voucher","15.00","0.00","15.00","doing transaction","1","2018-03-11 05:25:13","2018-03-11 05:25:13");
INSERT INTO transactions VALUES("12","1","26","","MBGCEUB5NS5ZG","3","Voucher","-10.00","0.00","-10.00","doing transaction","1","2018-03-11 05:26:04","2018-03-11 05:26:04");
INSERT INTO transactions VALUES("13","2","26","","DACUDTJ7H9VWE","3","Voucher","10.00","0.00","10.00","doing transaction","1","2018-03-11 05:26:33","2018-03-11 05:26:33");
INSERT INTO transactions VALUES("14","3","26","","RISUNMPWNI9Z2","2","Transferred","1111.00","62.22","1173.22","1111 BDT to user2","1","2018-03-11 07:02:25","2018-03-11 07:02:25");
INSERT INTO transactions VALUES("15","2","26","","RISUNMPWNI9Z2","2","Received","1111.00","","1111.00","1111 BDT to user2","1","2018-03-11 07:02:25","2018-03-11 07:02:25");
INSERT INTO transactions VALUES("16","3","12","","OPIIZK5N2HTSP","1","Exchange_From","-200.00","0.00","-200.00","doing transaction","1","2018-03-11 08:55:48","2018-03-11 08:55:48");
INSERT INTO transactions VALUES("17","3","26","","OPIIZK5N2HTSP","1","Exchange_To","16000.00","0.00","16000.00","doing transaction","1","2018-03-11 08:55:48","2018-03-11 08:55:48");
INSERT INTO transactions VALUES("18","1","12","","BQMEJXA8FNTHI","2","Exchange_From","-150.00","0.00","-150.00","doing transaction","1","2018-03-11 09:28:24","2018-03-11 09:28:24");
INSERT INTO transactions VALUES("19","1","26","","BQMEJXA8FNTHI","2","Exchange_To","12000.00","0.00","12000.00","doing transaction","1","2018-03-11 09:28:24","2018-03-11 09:28:24");
INSERT INTO transactions VALUES("20","2","14","","CBVSIDD2DXW08","3","Transferred","170.00","43.40","213.40","170 EUR to user3","1","2018-03-11 09:42:58","2018-03-11 09:42:58");
INSERT INTO transactions VALUES("21","3","14","","CBVSIDD2DXW08","3","Received","170.00","","170.00","170 EUR to user3","1","2018-03-11 09:42:58","2018-03-11 09:42:58");
INSERT INTO transactions VALUES("22","3","12","","KD8DMYUNTKLDA","4","Voucher","-500.00","0.00","-500.00","doing transaction","1","2018-03-11 10:02:32","2018-03-11 10:02:32");
INSERT INTO transactions VALUES("23","3","12","","1LDDQTKFA7BSW","4","Voucher","500.00","0.00","500.00","doing transaction","1","2018-03-11 10:11:09","2018-03-11 10:11:09");
INSERT INTO transactions VALUES("24","6","12","1","D5WZTE5A4Q3OG","2","Deposit","4969.00","31.00","5000.00","","1","2018-03-11 11:31:11","2018-03-11 11:31:11");
INSERT INTO transactions VALUES("25","6","12","","YLAFECABHQCS8","3","Exchange_From","-100.00","0.00","-100.00","doing transaction","1","2018-03-11 11:32:49","2018-03-11 11:32:49");
INSERT INTO transactions VALUES("26","6","14","","YLAFECABHQCS8","3","Exchange_To","65.00","0.00","65.00","doing transaction","1","2018-03-11 11:32:49","2018-03-11 11:32:49");
INSERT INTO transactions VALUES("27","6","14","","XLRNUEOUJGF5S","4","Transferred","30.00","40.60","70.60","to test","1","2018-03-11 11:34:34","2018-03-11 11:34:34");
INSERT INTO transactions VALUES("28","5","14","","XLRNUEOUJGF5S","4","Received","30.00","","30.00","to test","1","2018-03-11 11:34:34","2018-03-11 11:34:34");
INSERT INTO transactions VALUES("29","6","12","","V4XHTFIBDNUBU","5","Voucher","-10.00","0.00","-10.00","doing transaction","1","2018-03-11 11:38:10","2018-03-11 11:38:10");
INSERT INTO transactions VALUES("30","5","12","","QM4NJVBGNOKDA","5","Voucher","10.00","0.00","10.00","doing transaction","1","2018-03-11 11:38:47","2018-03-11 11:38:47");





CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `note` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transfers_sender_id_index` (`sender_id`),
  KEY `transfers_receiver_id_index` (`receiver_id`),
  KEY `transfers_currency_id_index` (`currency_id`),
  CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO transfers VALUES("1","3","2","25","RAMI351AURBTE","81.60","2161.60","2080 RUB to user2","2018-03-11 11:18:48");
INSERT INTO transfers VALUES("2","3","2","26","RISUNMPWNI9Z2","62.22","1173.22","1111 BDT to user2","2018-03-11 13:02:24");
INSERT INTO transfers VALUES("3","2","3","14","CBVSIDD2DXW08","43.40","213.40","170 EUR to user3","2018-03-11 15:42:58");
INSERT INTO transfers VALUES("4","6","5","14","XLRNUEOUJGF5S","40.60","70.60","to test","2018-03-11 17:34:34");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phrase` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `role_id` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_role_id_index` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users VALUES("1","user1","user1","user1","1737365145","user1@gmail.com","$2y$10$Yktj/AFzaQovHXpIMdEFN.fKYw/ZeDk79YkQ8gxZVJ7pwL5EDME32","","Active","","m3sRWpw0BhhCx7tgNl35X4GlQs3xjF10kYsu2Mb9AXZkpxmLTGFOxgVwumKK","2018-03-08 10:24:04","2018-03-08 10:24:04");
INSERT INTO users VALUES("2","user2","user2","user2","1833863013","user2@gmail.com","$2y$10$f5B.9NYryCNOZJWhHIQIWuLpCUYRTKl4.p2olrE9xn0uB2IMunoPe","","Active","","4yxKsYT2TbeWa4i2tkZpfW5DhH8K0TI9tOFz6DFDMp97UyZaRKI7KlZLcnCe","2018-03-08 10:24:43","2018-03-08 10:24:43");
INSERT INTO users VALUES("3","user3","user3","user3","1848363013","user3@gmail.com","$2y$10$KSuqCDuMEWm0eX2xnBfbG.kOS.nqjYHINjrl69SJiuco8sLgosLgq","","Active","","EuKP0Ii9rf41KloPoqU9fw8O7efa1RYMvjnzYN5u66SUlJYzxORtUH8IzhFn","2018-03-08 10:25:20","2018-03-08 10:25:20");
INSERT INTO users VALUES("4","user4","user4","user4","1521102969","user4@gmail.com","$2y$10$z0QCwdynPcbgWnFyluMRZ.2nlvSxz38/kOOC1UzMIAqDykHXJD8xe","","Active","","Jy5rCTtdpyFBKZSfVc4EZEvNyjviw5CfUtGh1rIi6AzapuhcsuSDct7Nq1du","2018-03-08 13:33:06","2018-03-08 13:33:06");
INSERT INTO users VALUES("5","lenin.rock","Tauhidul","HAn","1717170543","lenin.rock@gmail.com","$2y$10$B/wDyQ9Uv2PT4hB.b.Dw.eJkofW67tEA6EcwvGdIEb3HC9ZaG114i","","Active","","efCSWbFqfdlzXaIou2gBUHrMR2h92T4jQpGhxkMkFCyC0vRaBt2QYgYuXsWB","2018-03-09 06:03:24","2018-03-09 06:03:24");
INSERT INTO users VALUES("6","borna.techvill","Farzana","Borna","93479043","borna.techvill@gmail.com","$2y$10$OLmhwafAhhvrGU7piaT4.u2GTWBEOalc1lYEG64shkG9rIFKi0tuu","","Active","","ErCRzCCPPpKacqqFMc8Ezc8M7XeaPGIMd1zIyUP6aP44PlrgubUi0TOwNZdx","2018-03-11 11:30:07","2018-03-11 11:30:07");
INSERT INTO users VALUES("8","parvezrobi","robi","parvez","1939999999","parvezrobi@techvill.net","$2y$10$9AWMNaF99Gza.OglehBgmud2zmyrPF4xw56YFRSbZgSRosR9OYJ/.","","Active","","fSb6LUWLzqaILGsB2y8RM5T3ji0tdEk092GpkXcjjkbGdtCmR4CmBYh5BvnV","2018-03-11 12:52:48","2018-03-11 12:52:48");





CREATE TABLE IF NOT EXISTS `vouchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `activator_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `amount` double(10,2) DEFAULT '0.00',
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Activated') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vouchers_user_id_index` (`user_id`),
  KEY `vouchers_activator_id_index` (`activator_id`),
  KEY `vouchers_currency_id_index` (`currency_id`),
  CONSTRAINT `vouchers_activator_id_foreign` FOREIGN KEY (`activator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vouchers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vouchers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO vouchers VALUES("1","1","2","12","10.00","5TE7MYDIKS1IE5JMRL0ELAG1DWL3TO","Activated","2018-03-11 05:23:43","2018-03-11 05:24:18");
INSERT INTO vouchers VALUES("2","1","1","25","15.00","5C2UEQOEANZC56YSGTADIL8BPUFQN1","Activated","2018-03-11 05:23:57","2018-03-11 05:25:13");
INSERT INTO vouchers VALUES("3","1","2","26","10.00","HEWJZS0RMTXDKLX2YWJKZB6WWXASNK","Activated","2018-03-11 05:26:04","2018-03-11 05:26:33");
INSERT INTO vouchers VALUES("4","3","3","12","500.00","HADCPLS3SZZKPWU4KNSWYYO7X58J2W","Activated","2018-03-11 10:02:32","2018-03-11 10:11:09");
INSERT INTO vouchers VALUES("5","6","5","12","10.00","S8NZVHESTO2ZH4D8BNLARDKZSUR0B7","Activated","2018-03-11 11:38:10","2018-03-11 11:38:47");





CREATE TABLE IF NOT EXISTS `wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `balance` double(10,2) DEFAULT '0.00',
  `is_default` enum('No','Yes') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_user_id_index` (`user_id`),
  KEY `wallets_currency_id_index` (`currency_id`),
  CONSTRAINT `wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO wallets VALUES("1","1","12","12430.00","Yes","2018-03-08 10:24:04","2018-03-11 09:31:18");
INSERT INTO wallets VALUES("2","2","12","4410.00","Yes","2018-03-08 10:24:43","2018-03-11 09:42:06");
INSERT INTO wallets VALUES("3","3","12","9800.00","Yes","2018-03-08 10:25:20","2018-03-11 10:28:02");
INSERT INTO wallets VALUES("4","2","26","50521.00","No","2018-03-08 10:31:32","2018-03-11 07:02:24");
INSERT INTO wallets VALUES("5","2","25","2219.80","No","2018-03-08 10:32:17","2018-03-11 05:18:48");
INSERT INTO wallets VALUES("6","3","26","14826.80","No","2018-03-08 17:02:09","2018-03-11 08:55:48");
INSERT INTO wallets VALUES("7","1","26","12030.00","No","2018-03-08 11:23:14","2018-03-11 09:28:23");
INSERT INTO wallets VALUES("8","3","25","-2161.60","No","2018-03-08 17:42:00","2018-03-11 05:18:48");
INSERT INTO wallets VALUES("9","1","25","110.00","No","2018-03-08 11:46:38","2018-03-11 05:25:13");
INSERT INTO wallets VALUES("10","4","12","16880.00","Yes","2018-03-08 13:33:06","2018-03-09 11:26:47");
INSERT INTO wallets VALUES("11","2","14","-148.45","No","2018-03-09 05:46:52","2018-03-11 09:42:58");
INSERT INTO wallets VALUES("12","5","12","4979.00","Yes","2018-03-09 06:03:25","2018-03-11 11:38:47");
INSERT INTO wallets VALUES("13","3","14","170.00","No","2018-03-11 09:42:58","2018-03-11 09:42:58");
INSERT INTO wallets VALUES("14","6","12","4859.00","Yes","2018-03-11 11:30:07","2018-03-11 11:38:10");
INSERT INTO wallets VALUES("15","6","14","-5.60","No","2018-03-11 11:32:49","2018-03-11 11:34:34");
INSERT INTO wallets VALUES("16","5","14","30.00","No","2018-03-11 11:34:34","2018-03-11 11:34:34");
INSERT INTO wallets VALUES("17","8","12","0.00","Yes","2018-03-11 12:52:48","2018-03-11 12:53:31");





CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




