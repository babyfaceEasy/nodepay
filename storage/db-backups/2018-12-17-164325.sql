

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO activity_logs VALUES("1","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36","2018-12-17 16:42:06");





CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_phone_unique` (`phone`),
  KEY `admins_role_id_index` (`role_id`),
  CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO admins VALUES("1","1","admin","admin","","admin@techvill.net","$2y$10$UEuhzufFKY08YKp4S7Fk5uT/P5IWRGS1V6axSDw1A0Tfd11C1ET5m","Active","","2018-12-17 16:41:56","2018-12-17 16:41:56","");





CREATE TABLE IF NOT EXISTS `app_store_credentials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `has_app_credentials` enum('Yes','No') NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `company` enum('Google','Apple') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO app_store_credentials VALUES("1","Yes","http://store.google.com/pay-money","1531650482.png","Google","","");
INSERT INTO app_store_credentials VALUES("2","Yes","https://itunes.apple.com/bd/app/pay-money","1531134592.png","Apple","","");





CREATE TABLE IF NOT EXISTS `app_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `expires_in` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_tokens_app_id_index` (`app_id`),
  CONSTRAINT `app_tokens_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `merchant_apps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `app_transactions_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `currency` varchar(10) NOT NULL,
  `return_url` varchar(191) NOT NULL,
  `cancel_url` varchar(191) NOT NULL,
  `grant_id` varchar(100) NOT NULL,
  `token` varchar(191) NOT NULL,
  `expires_in` varchar(100) NOT NULL,
  `status` enum('pending','success','cancel') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_transactions_infos_app_id_index` (`app_id`),
  CONSTRAINT `app_transactions_infos_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `merchant_apps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `bank_branch_name` varchar(25) DEFAULT NULL,
  `bank_branch_city` varchar(25) DEFAULT NULL,
  `bank_branch_address` varchar(100) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(25) DEFAULT NULL,
  `swift_code` varchar(11) DEFAULT NULL,
  `is_default` enum('No','Yes') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banks_user_id_index` (`user_id`),
  KEY `banks_admin_id_index` (`admin_id`),
  KEY `banks_currency_id_index` (`currency_id`),
  KEY `banks_country_id_index` (`country_id`),
  CONSTRAINT `banks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `cointpayment_log_trxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `payment_address` varchar(191) NOT NULL,
  `coin` varchar(10) NOT NULL,
  `fiat` varchar(10) NOT NULL,
  `status_text` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_created_at` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `confirmation_at` datetime DEFAULT NULL,
  `amount` double(20,8) NOT NULL,
  `confirms_needed` int(11) NOT NULL,
  `qrcode_url` varchar(191) NOT NULL,
  `status_url` varchar(191) NOT NULL,
  `payload` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3` varchar(10) DEFAULT NULL,
  `number_code` varchar(10) DEFAULT NULL,
  `phone_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_short_name_unique` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

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
INSERT INTO countries VALUES("137","YT","Mayotte","","","269");
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
INSERT INTO countries VALUES("184","WS","Samoa","WSM","882","684");
INSERT INTO countries VALUES("185","SM","San Marino","SMR","674","378");
INSERT INTO countries VALUES("186","ST","Sao Tome and Principe","STP","678","239");
INSERT INTO countries VALUES("187","SA","Saudi Arabia","SAU","682","966");
INSERT INTO countries VALUES("188","SN","Senegal","SEN","686","221");
INSERT INTO countries VALUES("189","CS","Serbia and Montenegro","","","381");
INSERT INTO countries VALUES("190","SC","Seychelles","SYC","690","248");
INSERT INTO countries VALUES("191","SL","Sierra Leone","SLE","694","232");
INSERT INTO countries VALUES("192","SG","Singapore","SGP","702","65");
INSERT INTO countries VALUES("193","SK","Slovakia","SVK","703","421");
INSERT INTO countries VALUES("194","SI","Slovenia","SVN","705","386");
INSERT INTO countries VALUES("195","SB","Solomon Islands","SLB","90","677");
INSERT INTO countries VALUES("196","SO","Somalia","SOM","706","252");
INSERT INTO countries VALUES("197","ZA","South Africa","ZAF","710","27");
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
INSERT INTO countries VALUES("227","UM","United States Minor Outlying Islands","","","1");
INSERT INTO countries VALUES("228","UY","Uruguay","URY","858","598");
INSERT INTO countries VALUES("229","UZ","Uzbekistan","UZB","860","998");
INSERT INTO countries VALUES("230","VU","Vanuatu","VUT","548","678");
INSERT INTO countries VALUES("231","VE","Venezuela","VEN","862","58");
INSERT INTO countries VALUES("232","VN","Viet Nam","VNM","704","84");
INSERT INTO countries VALUES("233","VG","Virgin Islands, British","VGB","92","1284");
INSERT INTO countries VALUES("234","VI","Virgin Islands, U.s.","VIR","850","1340");
INSERT INTO countries VALUES("235","WF","Wallis and Futuna","WLF","876","681");
INSERT INTO countries VALUES("236","EH","Western Sahara","ESH","732","212");
INSERT INTO countries VALUES("237","YE","Yemen","YEM","887","967");
INSERT INTO countries VALUES("238","ZM","Zambia","ZMB","894","260");
INSERT INTO countries VALUES("239","ZW","Zimbabwe","ZWE","716","263");





CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT 'USD',
  `symbol` char(50) NOT NULL DEFAULT '$',
  `code` varchar(100) DEFAULT '101',
  `hundreds_name` varchar(100) DEFAULT 'one thousand',
  `rate` double NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `default` enum('1','0') NOT NULL,
  `exchange_from` enum('local','api') NOT NULL DEFAULT 'local',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO currencies VALUES("1","US Dollar","$","USD","one thousand","0.05","1530362317.jpg","1","local","Active","","");
INSERT INTO currencies VALUES("2","Pound Sterling","£","GBP","one thousand","0.75","1525873787.jpg","0","api","Active","","");
INSERT INTO currencies VALUES("3","Europe","€","EUR","one thousand","0.85","1529923387.jpg","0","local","Active","","");
INSERT INTO currencies VALUES("4","Czech Republic Koruna","K?","CZK","one thousand","78","","0","local","Active","","");
INSERT INTO currencies VALUES("5","Hong Kong Dollar","HK$","HKD","one thousand","12","","0","local","Active","","");
INSERT INTO currencies VALUES("6","Hungarian Forint","Ft","HUF","one thousand","1","","0","local","Active","","");
INSERT INTO currencies VALUES("7","Indonesian Rupiah","Rp","IDR","one thousand","3","","0","local","Active","","");
INSERT INTO currencies VALUES("8","Israeli New Sheqel","?","ILS","one thousand","3.54","","0","local","Active","","");
INSERT INTO currencies VALUES("9","Japanese Yen","¥","JPY","one thousand","2","","0","local","Active","","");
INSERT INTO currencies VALUES("10","South Korean Won","?","KRW","one thousand","20","","0","local","Active","","");
INSERT INTO currencies VALUES("11","Norwegian Krone","kr","NOK","one thousand","8.13","","0","local","Active","","");
INSERT INTO currencies VALUES("12","New Zealand Dollar","$","NZD","one thousand","10","","0","local","Active","","");
INSERT INTO currencies VALUES("13","Polish Zloty","z?","PLN","one thousand","1","","0","local","Active","","");
INSERT INTO currencies VALUES("14","Russian Ruble","p","RUB","one thousand","57.58","","0","local","Active","","");
INSERT INTO currencies VALUES("15","Bangladeshi Taka","?","BDT","one thousand","84.21","","0","local","Active","","");
INSERT INTO currencies VALUES("16","Indian Rupy","?","INR","one thousand","68.59","","0","local","Active","","");
INSERT INTO currencies VALUES("17","Thai Baht","?","THB","one thousand","33.13","","0","local","Active","","");
INSERT INTO currencies VALUES("18","Turkish Lira","?","TRY","one thousand","4.71","","0","local","Active","","");
INSERT INTO currencies VALUES("19","New Taiwan Dollar","NT$","TWD","one thousand","30.52","","0","local","Active","","");
INSERT INTO currencies VALUES("20","Guinean franc","FG","GNF","one thousand","9017.4","","0","local","Active","","");





CREATE TABLE IF NOT EXISTS `currency_exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `from_wallet` int(10) unsigned DEFAULT NULL,
  `to_wallet` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Exchange)',
  `exchange_rate` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `fee` double(10,2) DEFAULT '0.00',
  `type` enum('In','Out') NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `currency_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned NOT NULL,
  `method_id` int(10) unsigned NOT NULL,
  `activated_for` varchar(100) DEFAULT NULL COMMENT 'deposit, withdrawal single, both or none',
  `method_data` varchar(255) NOT NULL COMMENT 'input field''s title and value like client_id, client_secret etc',
  `processing_time` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'time in days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_payment_methods_currency_id_index` (`currency_id`),
  KEY `currency_payment_methods_method_id_index` (`method_id`),
  CONSTRAINT `currency_payment_methods_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_payment_methods_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Deposit)',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `deposits_user_id_index` (`user_id`),
  KEY `deposits_currency_id_index` (`currency_id`),
  KEY `deposits_payment_method_id_index` (`payment_method_id`),
  KEY `deposits_bank_id_index` (`bank_id`),
  KEY `deposits_file_id_index` (`file_id`),
  CONSTRAINT `deposits_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `device_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `browser_fingerprint` varchar(40) DEFAULT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_logs_user_id_index` (`user_id`),
  CONSTRAINT `device_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `dispute_discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dispute_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `message` longtext,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dispute_discussions_dispute_id_index` (`dispute_id`),
  KEY `dispute_discussions_user_id_index` (`user_id`),
  CONSTRAINT `dispute_discussions_dispute_id_foreign` FOREIGN KEY (`dispute_id`) REFERENCES `disputes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `disputes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `claimant_id` int(10) unsigned DEFAULT NULL,
  `defendant_id` int(10) unsigned DEFAULT NULL,
  `transaction_id` int(10) unsigned DEFAULT NULL,
  `reason_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `status` enum('Open','Close','Solve') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disputes_claimant_id_index` (`claimant_id`),
  KEY `disputes_defendant_id_index` (`defendant_id`),
  KEY `disputes_transaction_id_index` (`transaction_id`),
  KEY `disputes_reason_id_index` (`reason_id`),
  CONSTRAINT `disputes_claimant_id_foreign` FOREIGN KEY (`claimant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_defendant_id_foreign` FOREIGN KEY (`defendant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `reasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `document_verifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `verification_type` enum('address','identity') DEFAULT NULL,
  `identity_type` enum('driving_license','passport','national_id') DEFAULT NULL,
  `identity_number` varchar(191) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_verifications_user_id_index` (`user_id`),
  KEY `document_verifications_file_id_index` (`file_id`),
  CONSTRAINT `document_verifications_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `email_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_protocol` varchar(191) NOT NULL,
  `email_encryption` varchar(191) NOT NULL,
  `smtp_host` varchar(191) NOT NULL,
  `smtp_port` varchar(191) NOT NULL,
  `smtp_email` varchar(191) NOT NULL,
  `smtp_username` varchar(191) NOT NULL,
  `smtp_password` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO email_configs VALUES("1","sendmail","tls","","587","","","","","","1");





CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned DEFAULT NULL,
  `temp_id` tinyint(4) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  `type` enum('email','sms') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_language_id_index` (`language_id`),
  CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

INSERT INTO email_templates VALUES("1","1","1","Notice of Transfer!","Hi {sender_id},\n                                <br><br>The funds amount equal to {amount} was transferred from your account.\n\n                                <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\n\n                                <br><br>Transfer # {uuid} was created at {created_at}.\n\n                                <br><br><b><u>Amount:</u></b> {amount}\n\n                                <br><br><b><u>Receiver:</u></b> {receiver_id}\n\n                                <br><br><b><u>Fee:</u></b> {fee}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("2","2","1","","","ar","email");
INSERT INTO email_templates VALUES("3","3","1","","","fr","email");
INSERT INTO email_templates VALUES("4","4","1","","","pt","email");
INSERT INTO email_templates VALUES("5","5","1","","","ru","email");
INSERT INTO email_templates VALUES("6","6","1","","","es","email");
INSERT INTO email_templates VALUES("7","7","1","","","tr","email");
INSERT INTO email_templates VALUES("8","8","1","","","ch","email");
INSERT INTO email_templates VALUES("9","1","3","Notice of Bank Transfer!","Hi {sender_id},\n                                <br><br>The funds amount equal to {amount} was transferred to the assigned bank.\n\n                                <br><br><b><u><i>Here’s a brief overview of your Bank Transfer:</i></u></b>\n\n                                <br><br>Bank Transfer # {uuid} was created at {created_at}.\n\n                                <br><br><b><u>Amount:</u></b> {amount}\n\n                                <br><br><b><u>Fee:</u></b> {fee}\n\n                                <br><br><b><u>Bank Name:</u></b> {bank_name}\n\n                                <br><br><b><u>Branch Name:</u></b> {branch_name}\n\n                                <br><br><b><u>Account Name:</u></b> {account_name}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("10","2","3","","","ar","email");
INSERT INTO email_templates VALUES("11","3","3","","","fr","email");
INSERT INTO email_templates VALUES("12","4","3","","","pt","email");
INSERT INTO email_templates VALUES("13","5","3","","","ru","email");
INSERT INTO email_templates VALUES("14","6","3","","","es","email");
INSERT INTO email_templates VALUES("15","7","3","","","tr","email");
INSERT INTO email_templates VALUES("16","8","3","","","ch","email");
INSERT INTO email_templates VALUES("17","1","2","Notice to Receive!","Hi {receiver_id},\n                                <br><br>The funds amount equal to {amount} was received on your account.\n\n                                <br><br>\n                                <b><u><i>Here’s a brief overview of your Received Payment:</i></u></b>\n\n                                <br><br>\n                                Transfer # {uuid} was received at {created_at}.\n\n                                <br><br>\n                                <b><u>Amount:</u></b> {amount}\n\n                                <br><br>\n                                <b><u>Sender:</u></b> {sender_id}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("18","2","2","","","ar","email");
INSERT INTO email_templates VALUES("19","3","2","","","fr","email");
INSERT INTO email_templates VALUES("20","4","2","","","pt","email");
INSERT INTO email_templates VALUES("21","5","2","","","ru","email");
INSERT INTO email_templates VALUES("22","6","2","","","es","email");
INSERT INTO email_templates VALUES("23","7","2","","","tr","email");
INSERT INTO email_templates VALUES("24","8","2","","","tr","email");
INSERT INTO email_templates VALUES("25","1","21","Notice of {Identity/Address} Verification!","Hi {user},\n                                <br><br>Your {Identity/Address} verification is <b>{approved/pending/rejected}</b>.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("26","2","21","","","ar","email");
INSERT INTO email_templates VALUES("27","3","21","","","fr","email");
INSERT INTO email_templates VALUES("28","4","21","","","pt","email");
INSERT INTO email_templates VALUES("29","5","21","","","ru","email");
INSERT INTO email_templates VALUES("30","6","21","","","es","email");
INSERT INTO email_templates VALUES("31","7","21","","","tr","email");
INSERT INTO email_templates VALUES("32","8","21","","","tr","email");
INSERT INTO email_templates VALUES("33","1","22","Notice of Voucher Activation!","Hi {user_id},\n                                <br><br>\n                                Voucher # {uuid} has been activated by {activator_id}.\n                                <br><br><b><u><i>\n                                Here’s a brief overview of the Voucher Activation:</i></u></b>\n                                <br><br>Voucher # {uuid} was activated at {created_at}.\n                                <br><br><b><u>Amount:</u></b> {amount}\n                                <br><br><b><u>Code:</u></b> {code}\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("34","2","22","","","ar","email");
INSERT INTO email_templates VALUES("35","3","22","","","fr","email");
INSERT INTO email_templates VALUES("36","4","22","","","pt","email");
INSERT INTO email_templates VALUES("37","5","22","","","ru","email");
INSERT INTO email_templates VALUES("38","6","22","","","es","email");
INSERT INTO email_templates VALUES("39","7","22","","","tr","email");
INSERT INTO email_templates VALUES("40","8","22","","","ch","email");
INSERT INTO email_templates VALUES("41","1","4","Notice of Request Creation!","Hi {acceptor},\n\n                                <br><br>Amount {amount} has been requested to your account.\n\n                                <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                <br><br>\n                                <b><u>Request #:</u></b> {uuid}\n\n                                <br><br>\n                                <b><u>Created At:</u></b> {created_at}\n\n                                <br><br>\n                                <b><u>Requested Amount:</u></b> {amount}\n\n                                <br><br>\n                                <b><u>Purpose: </u></b> {purpose}\n\n                                <br><br>\n                                <b><u>Note: </u></b> {note}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("42","2","4","","","ar","email");
INSERT INTO email_templates VALUES("43","3","4","","","fr","email");
INSERT INTO email_templates VALUES("44","4","4","","","pt","email");
INSERT INTO email_templates VALUES("45","5","4","","","ru","email");
INSERT INTO email_templates VALUES("46","6","4","","","es","email");
INSERT INTO email_templates VALUES("47","7","4","","","tr","email");
INSERT INTO email_templates VALUES("48","8","4","","","ch","email");
INSERT INTO email_templates VALUES("49","1","5","Notice of Request Acceptance!","Hi {creator},\n                                <br><br>Your request of #{uuid} has been accepted by {acceptor}.\n\n                                <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                <br><br>\n                                <b><u>Accepted Date:</u></b> {created_at}.\n\n                                <br><br>\n                                <b><u>Requested Amount:</u></b> {amount}\n\n                                <br><br>\n                                <b><u>Requested Accepted Amount:</u></b> {accept_amount}\n\n                                <br><br>\n                                <b><u>Currency:</u></b> {currency}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("50","2","5","","","ar","email");
INSERT INTO email_templates VALUES("51","3","5","","","fr","email");
INSERT INTO email_templates VALUES("52","4","5","","","pt","email");
INSERT INTO email_templates VALUES("53","5","5","","","ru","email");
INSERT INTO email_templates VALUES("54","6","5","","","es","email");
INSERT INTO email_templates VALUES("55","7","5","","","tr","email");
INSERT INTO email_templates VALUES("56","8","5","","","ch","email");
INSERT INTO email_templates VALUES("57","1","6","Status of Transaction #{uuid} has been updated!","Hi {sender_id/receiver_id},\n\n                                <br><br><b>\n                                Transaction of Transfer #{uuid} has been updated to {status} by system administrator!</b>\n\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("58","2","6","","","ar","email");
INSERT INTO email_templates VALUES("59","3","6","","","fr","email");
INSERT INTO email_templates VALUES("60","4","6","","","pt","email");
INSERT INTO email_templates VALUES("61","5","6","","","ru","email");
INSERT INTO email_templates VALUES("62","6","6","","","es","email");
INSERT INTO email_templates VALUES("63","7","6","","","tr","email");
INSERT INTO email_templates VALUES("64","8","6","","","ch","email");
INSERT INTO email_templates VALUES("65","1","7","Status of Transaction #{uuid} has been updated!","Hi {sender_id},\n                                <br><br><b>\n                                Transaction of Bank Transfer #{uuid} has been updated to {status} by system administrator!</b>\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("66","2","7","","","ar","email");
INSERT INTO email_templates VALUES("67","3","7","","","fr","email");
INSERT INTO email_templates VALUES("68","4","7","","","pt","email");
INSERT INTO email_templates VALUES("69","5","7","","","ru","email");
INSERT INTO email_templates VALUES("70","6","7","","","es","email");
INSERT INTO email_templates VALUES("71","7","7","","","tr","email");
INSERT INTO email_templates VALUES("72","8","7","","","ch","email");
INSERT INTO email_templates VALUES("73","1","7","Status of Transaction #{uuid} has been updated!","Hi {activator_id},\n\n                                <br><br><b>\n                                Transaction of Voucher #{uuid} has been updated to {status} by system administrator!</b>\n\n                                <br><br>\n                                <u><i>Voucher Code:</i></u> {code}\n\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("74","2","7","","","ar","email");
INSERT INTO email_templates VALUES("75","3","7","","","fr","email");
INSERT INTO email_templates VALUES("76","4","7","","","pt","email");
INSERT INTO email_templates VALUES("77","5","7","","","ru","email");
INSERT INTO email_templates VALUES("78","6","7","","","es","email");
INSERT INTO email_templates VALUES("79","7","7","","","tr","email");
INSERT INTO email_templates VALUES("80","8","7","","","ch","email");
INSERT INTO email_templates VALUES("81","1","8","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n\n                                <br><br><b>\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("82","2","8","","","ar","email");
INSERT INTO email_templates VALUES("83","3","8","","","fr","email");
INSERT INTO email_templates VALUES("84","4","8","","","pt","email");
INSERT INTO email_templates VALUES("85","5","8","","","ru","email");
INSERT INTO email_templates VALUES("86","6","8","","","es","email");
INSERT INTO email_templates VALUES("87","7","8","","","tr","email");
INSERT INTO email_templates VALUES("88","8","8","","","ch","email");
INSERT INTO email_templates VALUES("89","1","10","Status of Transaction #{uuid} has been updated!","Hi {user_id},\n\n                                <br><br><b>\n                                Transaction of Payout #{uuid} has been updated to {status} by system administrator!</b>\n\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("90","2","10","","","ar","email");
INSERT INTO email_templates VALUES("91","3","10","","","fr","email");
INSERT INTO email_templates VALUES("92","4","10","","","pt","email");
INSERT INTO email_templates VALUES("93","5","10","","","ru","email");
INSERT INTO email_templates VALUES("94","6","10","","","es","email");
INSERT INTO email_templates VALUES("95","7","10","","","tr","email");
INSERT INTO email_templates VALUES("96","8","10","","","ch","email");
INSERT INTO email_templates VALUES("97","1","11","Notice of Ticket!","Hi {assignee/user},\n\n                                <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\n\n                                <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\n\n                                <br><br>Ticket #{ticket_code} was created at {created_at}.\n\n                                <br><br><b><u>{Assignee:}</u></b> {assignee}\n\n                                <br><br><b><u>{User:}</u></b> {user}\n\n                                <br><br><b><u>Ticket Subject:</u></b> {subject}\n\n                                <br><br><b><u>Ticket Message:</u></b> {message}\n\n                                <br><br><b><u>Ticket Status:</u></b> {status}\n\n                                <br><br><b><u>Ticket Priority Level:</u></b> {priority}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("98","2","11","","","ar","email");
INSERT INTO email_templates VALUES("99","3","11","","","fr","email");
INSERT INTO email_templates VALUES("100","4","11","","","pt","email");
INSERT INTO email_templates VALUES("101","5","11","","","ru","email");
INSERT INTO email_templates VALUES("102","6","11","","","es","email");
INSERT INTO email_templates VALUES("103","7","11","","","tr","email");
INSERT INTO email_templates VALUES("104","8","11","","","ch","email");
INSERT INTO email_templates VALUES("105","1","12","Notice of Ticket Reply!","Hi {user},\n\n                                <br><br>A ticket reply has been sent to you by system administrator.\n\n                                <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                <br><br>This reply was initiated against ticket code #{ticket_code}.\n\n                                <br><br><b><u>Assignee:</u></b> {assignee}\n\n                                <br><br><b><u>Reply Message:</u></b> {message}\n\n                                <br><br><b><u>Reply Status:</u></b> {status}\n\n                                <br><br><b><u>Reply Priority Level:</u></b> {priority}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("106","2","12","","","ar","email");
INSERT INTO email_templates VALUES("107","3","12","","","fr","email");
INSERT INTO email_templates VALUES("108","4","12","","","pt","email");
INSERT INTO email_templates VALUES("109","5","12","","","ru","email");
INSERT INTO email_templates VALUES("110","6","12","","","es","email");
INSERT INTO email_templates VALUES("111","7","12","","","tr","email");
INSERT INTO email_templates VALUES("112","8","12","","","ch","email");
INSERT INTO email_templates VALUES("113","1","13","Notice of Dispute Reply!","Hi {user},\n\n                                <br><br>A dispute reply has been sent to you by system administrator.\n\n                                <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                <br><br>This reply was initiated at {created_at}.\n\n                                <br><br><b><u>{Claimant/Defendant:}</u></b> {claimant/defendant}\n\n                                <br><br><b><u>Transaction ID:</u></b> {transaction_id}\n\n                                <br><br><b><u>Subject:</u></b> {subject}\n\n                                <br><br><b><u>Replied Message:</u></b> {message}\n\n                                <br><br><b><u>Status:</u></b> {status}\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>\n                                ","en","email");
INSERT INTO email_templates VALUES("114","2","13","","","ar","email");
INSERT INTO email_templates VALUES("115","3","13","","","fr","email");
INSERT INTO email_templates VALUES("116","4","13","","","pt","email");
INSERT INTO email_templates VALUES("117","5","13","","","ru","email");
INSERT INTO email_templates VALUES("118","6","13","","","es","email");
INSERT INTO email_templates VALUES("119","7","13","","","tr","email");
INSERT INTO email_templates VALUES("120","8","13","","","ch","email");
INSERT INTO email_templates VALUES("121","1","14","Status of Transaction #{uuid} has been updated!","Hi {paidByUser/merchantUser},\n\n                                <br><br><b>\n                                Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n\n                                <br><br>If you have any questions, please feel free to reply to this email.\n\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("122","2","14","","","ar","email");
INSERT INTO email_templates VALUES("123","3","14","","","fr","email");
INSERT INTO email_templates VALUES("124","4","14","","","pt","email");
INSERT INTO email_templates VALUES("125","5","14","","","ru","email");
INSERT INTO email_templates VALUES("126","6","14","","","es","email");
INSERT INTO email_templates VALUES("127","7","14","","","tr","email");
INSERT INTO email_templates VALUES("128","8","14","","","ch","email");
INSERT INTO email_templates VALUES("129","1","16","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n                                <br><br><b>\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n                                <br><br>If you have any questions, please feel free to reply to this email.\n                                <br><br>Regards,\n                                <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("130","2","16","","","ar","email");
INSERT INTO email_templates VALUES("131","3","16","","","fr","email");
INSERT INTO email_templates VALUES("132","4","16","","","pt","email");
INSERT INTO email_templates VALUES("133","5","16","","","ru","email");
INSERT INTO email_templates VALUES("134","6","16","","","es","email");
INSERT INTO email_templates VALUES("135","7","16","","","tr","email");
INSERT INTO email_templates VALUES("136","8","16","","","ch","email");
INSERT INTO email_templates VALUES("137","1","17","Notice for User Verification!","Hi {user},\n                                        <br><br>\n                                        Your registered email id: {email}. Please click on the below link to verify your account,<br><br>\n                                        {verification_url}\n\n                                        <br><br>If you have any questions, please feel free to reply to this email.\n                                        <br><br>Regards,\n                                        <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("138","2","17","","","ar","email");
INSERT INTO email_templates VALUES("139","3","17","","","fr","email");
INSERT INTO email_templates VALUES("140","4","17","","","pt","email");
INSERT INTO email_templates VALUES("141","5","17","","","ru","email");
INSERT INTO email_templates VALUES("142","6","17","","","es","email");
INSERT INTO email_templates VALUES("143","7","17","","","tr","email");
INSERT INTO email_templates VALUES("144","8","17","","","ch","email");
INSERT INTO email_templates VALUES("145","1","19","Notice for 2-Factor Authentication!","Hi {user},\n                                        <br><br>\n                                        Your 2-Factor Authentication code is: {code}\n                                        <br><br>Regards,\n                                        <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("146","2","19","","","ar","email");
INSERT INTO email_templates VALUES("147","3","19","","","fr","email");
INSERT INTO email_templates VALUES("148","4","19","","","pt","email");
INSERT INTO email_templates VALUES("149","5","19","","","ru","email");
INSERT INTO email_templates VALUES("150","6","19","","","es","email");
INSERT INTO email_templates VALUES("151","7","19","","","tr","email");
INSERT INTO email_templates VALUES("152","8","19","","","ch","email");
INSERT INTO email_templates VALUES("153","1","18","Notice for Password Reset!","Hi {user},\n                                        <br><br>\n                                        Your registered email id: {email}. Please click on the below link to reset your password,<br><br>\n                                        {password_reset_url}\n                                        <br><br>If you have any questions, please feel free to reply to this email.\n                                        <br><br>Regards,\n                                        <br><b>{soft_name}</b>","en","email");
INSERT INTO email_templates VALUES("154","2","18","","","ar","email");
INSERT INTO email_templates VALUES("155","3","18","","","fr","email");
INSERT INTO email_templates VALUES("156","4","18","","","pt","email");
INSERT INTO email_templates VALUES("157","5","18","","","ru","email");
INSERT INTO email_templates VALUES("158","6","18","","","es","email");
INSERT INTO email_templates VALUES("159","7","18","","","tr","email");
INSERT INTO email_templates VALUES("160","8","18","","","ch","email");
INSERT INTO email_templates VALUES("161","1","21","Notice of {Identity/Address} Verification!","Hi {user},\n                                <br><br>Your {Identity/Address} verification is <b>{approved/pending/rejected}</b>.\n                                ","en","sms");
INSERT INTO email_templates VALUES("162","2","21","","","ar","sms");
INSERT INTO email_templates VALUES("163","3","21","","","fr","sms");
INSERT INTO email_templates VALUES("164","4","21","","","pt","sms");
INSERT INTO email_templates VALUES("165","5","21","","","ru","sms");
INSERT INTO email_templates VALUES("166","6","21","","","es","sms");
INSERT INTO email_templates VALUES("167","7","21","","","tr","sms");
INSERT INTO email_templates VALUES("168","8","21","","","tr","sms");
INSERT INTO email_templates VALUES("169","1","1","Notice of Transfer!","Hi {sender_id},\n                    <br><br>You have transferred {amount} from your account.\n                    ","en","sms");
INSERT INTO email_templates VALUES("170","2","1","","","ar","sms");
INSERT INTO email_templates VALUES("171","3","1","","","fr","sms");
INSERT INTO email_templates VALUES("172","4","1","","","pt","sms");
INSERT INTO email_templates VALUES("173","5","1","","","ru","sms");
INSERT INTO email_templates VALUES("174","6","1","","","es","sms");
INSERT INTO email_templates VALUES("175","7","1","","","tr","sms");
INSERT INTO email_templates VALUES("176","8","1","","","ch","sms");
INSERT INTO email_templates VALUES("177","1","3","Notice of Bank Transfer!","Hi {sender_id},\n                    <br><br>You have transferred {amount} to the assigned bank.\n                    ","en","sms");
INSERT INTO email_templates VALUES("178","2","3","","","ar","sms");
INSERT INTO email_templates VALUES("179","3","3","","","fr","sms");
INSERT INTO email_templates VALUES("180","4","3","","","pt","sms");
INSERT INTO email_templates VALUES("181","5","3","","","ru","sms");
INSERT INTO email_templates VALUES("182","6","3","","","es","sms");
INSERT INTO email_templates VALUES("183","7","3","","","tr","sms");
INSERT INTO email_templates VALUES("184","8","3","","","ch","sms");
INSERT INTO email_templates VALUES("185","1","2","Notice to Receive!","Hi {receiver_id},\n                                <br><br>You have received {amount} from {sender_id}.\n                                ","en","sms");
INSERT INTO email_templates VALUES("186","2","2","","","ar","sms");
INSERT INTO email_templates VALUES("187","3","2","","","fr","sms");
INSERT INTO email_templates VALUES("188","4","2","","","pt","sms");
INSERT INTO email_templates VALUES("189","5","2","","","ru","sms");
INSERT INTO email_templates VALUES("190","6","2","","","es","sms");
INSERT INTO email_templates VALUES("191","7","2","","","tr","sms");
INSERT INTO email_templates VALUES("192","8","2","","","ch","sms");
INSERT INTO email_templates VALUES("193","1","3","Notice of Voucher Activation!","Hi {user_id},\n\n                                    <br><br>Voucher # {uuid} has been activated by {activator_id}.\n                                ","en","sms");
INSERT INTO email_templates VALUES("194","2","3","","","ar","sms");
INSERT INTO email_templates VALUES("195","3","3","","","fr","sms");
INSERT INTO email_templates VALUES("196","4","3","","","pt","sms");
INSERT INTO email_templates VALUES("197","5","3","","","ru","sms");
INSERT INTO email_templates VALUES("198","6","3","","","es","sms");
INSERT INTO email_templates VALUES("199","7","3","","","tr","sms");
INSERT INTO email_templates VALUES("200","8","3","","","ch","sms");
INSERT INTO email_templates VALUES("201","1","4","Notice of Request Creation!","Hi {acceptor},\n                                <br><br>Amount {amount} has been requested by {creator} to your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("202","2","4","","","ar","sms");
INSERT INTO email_templates VALUES("203","3","4","","","fr","sms");
INSERT INTO email_templates VALUES("204","4","4","","","pt","sms");
INSERT INTO email_templates VALUES("205","5","4","","","ru","sms");
INSERT INTO email_templates VALUES("206","6","4","","","es","sms");
INSERT INTO email_templates VALUES("207","7","4","","","tr","sms");
INSERT INTO email_templates VALUES("208","8","4","","","ch","sms");
INSERT INTO email_templates VALUES("209","1","5","Notice of Request Acceptance!","Hi {creator},\n                                    <br><br>Your request of #{uuid} of amount {amount} has been accepted by {acceptor}.\n                                ","en","sms");
INSERT INTO email_templates VALUES("210","2","5","","","ar","sms");
INSERT INTO email_templates VALUES("211","3","5","","","fr","sms");
INSERT INTO email_templates VALUES("212","4","5","","","pt","sms");
INSERT INTO email_templates VALUES("213","5","5","","","ru","sms");
INSERT INTO email_templates VALUES("214","6","5","","","es","sms");
INSERT INTO email_templates VALUES("215","7","5","","","tr","sms");
INSERT INTO email_templates VALUES("216","8","5","","","ch","sms");
INSERT INTO email_templates VALUES("217","1","6","Status of Transaction #{uuid} has been updated!","Hi {sender_id/receiver_id},\n                                    <br><br><b>\n                                    Transfer #{uuid} has been updated to {status} by system administrator!</b>\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("218","2","6","","","ar","sms");
INSERT INTO email_templates VALUES("219","3","6","","","fr","sms");
INSERT INTO email_templates VALUES("220","4","6","","","pt","sms");
INSERT INTO email_templates VALUES("221","5","6","","","ru","sms");
INSERT INTO email_templates VALUES("222","6","6","","","es","sms");
INSERT INTO email_templates VALUES("223","7","6","","","tr","sms");
INSERT INTO email_templates VALUES("224","8","6","","","ch","sms");
INSERT INTO email_templates VALUES("225","1","7","Status of Transaction #{uuid} has been updated!","Hi {sender_id},\n                                    <br><br><b>\n                                    Bank Transfer #{uuid} has been updated to {status} by system administrator!</b>\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("226","2","7","","","ar","sms");
INSERT INTO email_templates VALUES("227","3","7","","","fr","sms");
INSERT INTO email_templates VALUES("228","4","7","","","pt","sms");
INSERT INTO email_templates VALUES("229","5","7","","","ru","sms");
INSERT INTO email_templates VALUES("230","6","7","","","es","sms");
INSERT INTO email_templates VALUES("231","7","7","","","tr","sms");
INSERT INTO email_templates VALUES("232","8","7","","","ch","sms");
INSERT INTO email_templates VALUES("233","1","7","Status of Transaction #{uuid} has been updated!","Hi {activator_id},\n                                <br><br><b>\n                                Transaction of Voucher #{uuid} has been updated to {status} by system administrator!</b>\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("234","2","7","","","ar","sms");
INSERT INTO email_templates VALUES("235","3","7","","","fr","sms");
INSERT INTO email_templates VALUES("236","4","7","","","pt","sms");
INSERT INTO email_templates VALUES("237","5","7","","","ru","sms");
INSERT INTO email_templates VALUES("238","6","7","","","es","sms");
INSERT INTO email_templates VALUES("239","7","7","","","tr","sms");
INSERT INTO email_templates VALUES("240","8","7","","","ch","sms");
INSERT INTO email_templates VALUES("241","1","8","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n                                <br><br><b>\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("242","2","8","","","ar","sms");
INSERT INTO email_templates VALUES("243","3","8","","","fr","sms");
INSERT INTO email_templates VALUES("244","4","8","","","pt","sms");
INSERT INTO email_templates VALUES("245","5","8","","","ru","sms");
INSERT INTO email_templates VALUES("246","6","8","","","es","sms");
INSERT INTO email_templates VALUES("247","7","8","","","tr","sms");
INSERT INTO email_templates VALUES("248","8","8","","","ch","sms");
INSERT INTO email_templates VALUES("249","1","10","Status of Transaction #{uuid} has been updated!","Hi {user_id},\n                                <br><br><b>\n                                Transaction of Payout #{uuid} has been updated to {status} by system administrator!</b>\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("250","2","10","","","ar","sms");
INSERT INTO email_templates VALUES("251","3","10","","","fr","sms");
INSERT INTO email_templates VALUES("252","4","10","","","pt","sms");
INSERT INTO email_templates VALUES("253","5","10","","","ru","sms");
INSERT INTO email_templates VALUES("254","6","10","","","es","sms");
INSERT INTO email_templates VALUES("255","7","10","","","tr","sms");
INSERT INTO email_templates VALUES("256","8","10","","","ch","sms");
INSERT INTO email_templates VALUES("257","1","14","Status of Transaction #{uuid} has been updated!","Hi {paidByUser/merchantUser},\n                                <br><br><b>\n                                Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\n                                <br><br>\n                                {amount} is {added/subtracted} {from/to} your account.\n                                ","en","sms");
INSERT INTO email_templates VALUES("258","2","14","","","ar","sms");
INSERT INTO email_templates VALUES("259","3","14","","","fr","sms");
INSERT INTO email_templates VALUES("260","4","14","","","pt","sms");
INSERT INTO email_templates VALUES("261","5","14","","","ru","sms");
INSERT INTO email_templates VALUES("262","6","14","","","es","sms");
INSERT INTO email_templates VALUES("263","7","14","","","tr","sms");
INSERT INTO email_templates VALUES("264","8","14","","","ch","sms");
INSERT INTO email_templates VALUES("265","1","16","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n                                <br><br><b>\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n                                ","en","sms");
INSERT INTO email_templates VALUES("266","2","16","","","ar","sms");
INSERT INTO email_templates VALUES("267","3","16","","","fr","sms");
INSERT INTO email_templates VALUES("268","4","16","","","pt","sms");
INSERT INTO email_templates VALUES("269","5","16","","","ru","sms");
INSERT INTO email_templates VALUES("270","6","16","","","es","sms");
INSERT INTO email_templates VALUES("271","7","16","","","tr","sms");
INSERT INTO email_templates VALUES("272","8","16","","","ch","sms");
INSERT INTO email_templates VALUES("273","1","11","Notice of Ticket!","Hi {assignee/user},\n                                <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\n                                ","en","sms");
INSERT INTO email_templates VALUES("274","2","11","","","ar","sms");
INSERT INTO email_templates VALUES("275","3","11","","","fr","sms");
INSERT INTO email_templates VALUES("276","4","11","","","pt","sms");
INSERT INTO email_templates VALUES("277","5","11","","","ru","sms");
INSERT INTO email_templates VALUES("278","6","11","","","es","sms");
INSERT INTO email_templates VALUES("279","7","11","","","tr","sms");
INSERT INTO email_templates VALUES("280","8","11","","","ch","sms");
INSERT INTO email_templates VALUES("281","1","12","Notice of Ticket Reply!","Hi {user},\n                                <br><br>The system administrator has replied to your assigned ticket # {ticket_code).\n                                ","en","sms");
INSERT INTO email_templates VALUES("282","2","12","","","ar","sms");
INSERT INTO email_templates VALUES("283","3","12","","","fr","sms");
INSERT INTO email_templates VALUES("284","4","12","","","pt","sms");
INSERT INTO email_templates VALUES("285","5","12","","","ru","sms");
INSERT INTO email_templates VALUES("286","6","12","","","es","sms");
INSERT INTO email_templates VALUES("287","7","12","","","tr","sms");
INSERT INTO email_templates VALUES("288","8","12","","","ch","sms");
INSERT INTO email_templates VALUES("289","1","13","Notice of Dispute Reply!","Hi {user},\n                                <br><br>The system administrator has replied to your dispute for transaction # {transaction_id).\n                                ","en","sms");
INSERT INTO email_templates VALUES("290","2","13","","","ar","sms");
INSERT INTO email_templates VALUES("291","3","13","","","fr","sms");
INSERT INTO email_templates VALUES("292","4","13","","","pt","sms");
INSERT INTO email_templates VALUES("293","5","13","","","ru","sms");
INSERT INTO email_templates VALUES("294","6","13","","","es","sms");
INSERT INTO email_templates VALUES("295","7","13","","","tr","sms");
INSERT INTO email_templates VALUES("296","8","13","","","ch","sms");





CREATE TABLE IF NOT EXISTS `fees_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `charge_percentage` double(10,2) NOT NULL DEFAULT '0.00',
  `charge_fixed` double(10,2) NOT NULL DEFAULT '0.00',
  `min_limit` double(10,2) NOT NULL DEFAULT '1.00',
  `max_limit` double(10,2) DEFAULT NULL,
  `processing_time` varchar(4) DEFAULT '0' COMMENT 'time in days',
  `has_transaction` enum('Yes','No') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_limits_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `fees_limits_currency_id_index` (`currency_id`),
  CONSTRAINT `fees_limits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fees_limits_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO fees_limits VALUES("1","1","1","0.00","0.00","1.00","","0","Yes","","");
INSERT INTO fees_limits VALUES("2","1","2","0.00","0.00","1.00","","0","Yes","","");
INSERT INTO fees_limits VALUES("3","1","3","0.00","0.00","1.00","","0","Yes","","");
INSERT INTO fees_limits VALUES("4","1","5","0.00","0.00","1.00","","0","Yes","","");
INSERT INTO fees_limits VALUES("5","1","10","0.00","0.00","1.00","","0","Yes","","");





CREATE TABLE IF NOT EXISTS `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `ticket_reply_id` int(10) unsigned DEFAULT NULL,
  `filename` varchar(191) DEFAULT NULL,
  `originalname` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `files_admin_id_index` (`admin_id`),
  KEY `files_user_id_index` (`user_id`),
  KEY `files_ticket_id_index` (`ticket_id`),
  KEY `files_ticket_reply_id_index` (`ticket_reply_id`),
  CONSTRAINT `files_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `files_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `files_ticket_reply_id_foreign` FOREIGN KEY (`ticket_reply_id`) REFERENCES `ticket_replies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `default` enum('1','0') NOT NULL,
  `deletable` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO languages VALUES("1","English","en","1530358989.png","1","No","Active");
INSERT INTO languages VALUES("2","????","ar","1530359409.png","0","No","Active");
INSERT INTO languages VALUES("3","Français","fr","1530359431.png","0","No","Active");
INSERT INTO languages VALUES("4","Português","pt","1530359450.png","0","No","Active");
INSERT INTO languages VALUES("5","???????","ru","1530359474.png","0","No","Active");
INSERT INTO languages VALUES("6","Español","es","1530360151.png","0","No","Active");
INSERT INTO languages VALUES("7","Türkçe","tr","1530696845.png","0","No","Active");
INSERT INTO languages VALUES("8","?? (??)","ch","1531227913.png","0","No","Active");





CREATE TABLE IF NOT EXISTS `merchant_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) unsigned NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `client_secret` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_apps_client_id_unique` (`client_id`),
  KEY `merchant_apps_merchant_id_index` (`merchant_id`),
  CONSTRAINT `merchant_apps_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `merchant_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `fee` double(10,2) DEFAULT '0.00',
  `is_default` enum('No','Yes') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO merchant_groups VALUES("1","Premium","This is the premium merchant group","0.50","No","","");
INSERT INTO merchant_groups VALUES("2","Gold","This is the gold merchant group","1.00","No","","");
INSERT INTO merchant_groups VALUES("3","Silver","This is the silver merchant group","1.50","Yes","","");
INSERT INTO merchant_groups VALUES("4","Bronze","This is the bronze merchant group","2.00","No","","");





CREATE TABLE IF NOT EXISTS `merchant_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `gateway_reference` varchar(50) DEFAULT NULL,
  `order_no` varchar(50) DEFAULT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL,
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `total` double(10,2) DEFAULT '0.00',
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL DEFAULT 'Success',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `merchant_payments_merchant_id_index` (`merchant_id`),
  KEY `merchant_payments_currency_id_index` (`currency_id`),
  KEY `merchant_payments_payment_method_id_index` (`payment_method_id`),
  KEY `merchant_payments_user_id_index` (`user_id`),
  CONSTRAINT `merchant_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `merchant_group_id` int(10) unsigned DEFAULT NULL,
  `merchant_uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID for each Merchant',
  `business_name` varchar(191) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `type` enum('standard','express') NOT NULL,
  `note` varchar(255) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `fee` double(10,2) DEFAULT '0.00',
  `status` enum('Moderation','Disapproved','Approved') NOT NULL DEFAULT 'Moderation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchants_user_id_index` (`user_id`),
  KEY `merchants_merchant_group_id_index` (`merchant_group_id`),
  CONSTRAINT `merchants_merchant_group_id_foreign` FOREIGN KEY (`merchant_group_id`) REFERENCES `merchant_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text,
  `keywords` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

INSERT INTO metas VALUES("1","help","Help","Help","");
INSERT INTO metas VALUES("2","about-us","About Us","About Us","");
INSERT INTO metas VALUES("3","contact-us","Contact Us","Contact Us","");
INSERT INTO metas VALUES("4","header","Header","Header","");
INSERT INTO metas VALUES("5","login","Login","Login","");
INSERT INTO metas VALUES("6","register","Register","Register","");
INSERT INTO metas VALUES("7","/","Home","Home","");
INSERT INTO metas VALUES("8","dashboard","Dashboard","Dashboard","");
INSERT INTO metas VALUES("9","moneytransfer","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("10","transactions","Transactions","Transactions","");
INSERT INTO metas VALUES("11","exchanges","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("12","exchange","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("13","vouchers","Voucher","Voucher","");
INSERT INTO metas VALUES("14","voucher/add","Voucher Add","Voucher Add","");
INSERT INTO metas VALUES("15","voucher/activate_code","Voucher Activation","Voucher Activation","");
INSERT INTO metas VALUES("16","merchants","Merchant","Merchant","");
INSERT INTO metas VALUES("17","merchant/add","Add Merchant","Add Merchant","");
INSERT INTO metas VALUES("18","request_payments","Request Payments","Request Payments","");
INSERT INTO metas VALUES("19","request_payment/add","Request Payment","Request Payment","");
INSERT INTO metas VALUES("20","request_payment/edit/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("21","request_payment/detail/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("22","request_payment/completes","Request Payment","Request Payment","");
INSERT INTO metas VALUES("23","exchange/view/{id}","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("24","merchant/edit/{id}","Edit Merchant","Edit Merchant","");
INSERT INTO metas VALUES("25","merchant/payments","Merchant payments","Merchant payments","");
INSERT INTO metas VALUES("26","deposit","Deposit","Deposit","");
INSERT INTO metas VALUES("27","deposit/method/{id}","Deposit Amount","Deposit Amount","");
INSERT INTO metas VALUES("28","deposit/stripe_payment","Deposit With Stripe","Deposit With Stripe","");
INSERT INTO metas VALUES("29","payout","Payout","Payout","");
INSERT INTO metas VALUES("30","withdrawal/method/{id}","Payout","Payout","");
INSERT INTO metas VALUES("31","payouts","Payouts","Payouts","");
INSERT INTO metas VALUES("32","transactions/{id}","Transactions","Transactions","");
INSERT INTO metas VALUES("33","request_payment/accept/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("34","request_payment/accept/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("35","disputes","Disputes","Disputes","");
INSERT INTO metas VALUES("36","merchant/detail/{id}","View Merchant","View Merchant","");
INSERT INTO metas VALUES("37","dispute/discussion/{id}","Dispute Details","Dispute Details","");
INSERT INTO metas VALUES("38","dispute/add/{id}","Dispute Add","Dispute Add","");
INSERT INTO metas VALUES("39","send-money","Send Money","Send Money","");
INSERT INTO metas VALUES("40","request-money","Request Money","Request Money","");
INSERT INTO metas VALUES("41","news","News","News","");
INSERT INTO metas VALUES("42","profile","User Profile","User Profile","");
INSERT INTO metas VALUES("43","tickets","Tickets","Tickets","");
INSERT INTO metas VALUES("44","ticket/add","Add Ticket","Add Ticket","");
INSERT INTO metas VALUES("45","ticket/reply/{id}","Ticket Reply","Ticket Reply","");
INSERT INTO metas VALUES("46","exchange_of_base_currency","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("47","exchange/exchange-of-base-currency-confirm","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("48","deposit/stripe_payment_store","Deposit With Stripe","Deposit With Stripe","");
INSERT INTO metas VALUES("49","payout/setting","Payout","Payout","");
INSERT INTO metas VALUES("50","send-money-confirm","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("51","exchange_to_base_currency","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("52","exchange/exchange-to-base-currency-confirm","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("53","portfolio","Portfolio","Portfolio","");
INSERT INTO metas VALUES("54","request_payment/store","Request Payment","Request Payment","");
INSERT INTO metas VALUES("55","forget-password","Forgot Password","Forgot Password","");
INSERT INTO metas VALUES("56","password/resets/{token}","Reset Password","Reset Password","");
INSERT INTO metas VALUES("57","request-money-confirm","Request Money","Request Money","");
INSERT INTO metas VALUES("58","request_payment/accepted","Request Payment","Request Payment","");
INSERT INTO metas VALUES("59","request_payment/accept-money-confirm","Request Payment","Request Payment","");
INSERT INTO metas VALUES("60","deposit/stripe_payment_store","Deposit With Stripe","Deposit With Stripe","");
INSERT INTO metas VALUES("61","policies","Policies","Policies","");
INSERT INTO metas VALUES("62","transfer","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("63","voucher/store","Voucher","Voucher","");
INSERT INTO metas VALUES("64","voucher/activated","Voucher","Voucher","");
INSERT INTO metas VALUES("65","withdrawal/confirm-transaction","Payout","Payout","");
INSERT INTO metas VALUES("66","request","Request Payment","Request Payment","");
INSERT INTO metas VALUES("67","deposit/payumoney_success","Deposit With PayUMoney","Deposit With PayUMoney","");
INSERT INTO metas VALUES("68","deposit/payment_success","Deposit Success","Deposit With PayMoney Success","");
INSERT INTO metas VALUES("69","developer","Developer","Developer Page","");
INSERT INTO metas VALUES("70","phone-verification","Verfy Phone","Verfy Phone","");
INSERT INTO metas VALUES("71","authenticate","2-Factor Authentication","2-Factor Authentication","");
INSERT INTO metas VALUES("72","profile/2fa","2-FA","2-FA","");
INSERT INTO metas VALUES("73","2fa","2-Factor Authentication","2-Factor Authentication","");
INSERT INTO metas VALUES("74","deposit/bank-payment","Deposit","Deposit","");
INSERT INTO metas VALUES("75","bank-transfer","Bank Transfer","Bank Transfer","");
INSERT INTO metas VALUES("76","bank-transfer/confirm","Bank Transfer","Bank Transfer","");
INSERT INTO metas VALUES("77","bank-transfer/success","Bank Transfer","Bank Transfer","");
INSERT INTO metas VALUES("78","google2fa","Google 2FA","Google 2FA","");
INSERT INTO metas VALUES("79","profile/personal-id","Identity Verification","Identity Verification","");
INSERT INTO metas VALUES("80","profile/personal-address","Address Verification","Address Verification","");
INSERT INTO metas VALUES("81","exchange-of-money","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("82","exchange-of-money-success","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("83","deposit/payeer/payment/success","Deposit With Payeer","Deposit With Payeer","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO migrations VALUES("1","2016_06_01_000001_create_oauth_auth_codes_table","1");
INSERT INTO migrations VALUES("2","2016_06_01_000002_create_oauth_access_tokens_table","1");
INSERT INTO migrations VALUES("3","2016_06_01_000003_create_oauth_refresh_tokens_table","1");
INSERT INTO migrations VALUES("4","2016_06_01_000004_create_oauth_clients_table","1");
INSERT INTO migrations VALUES("5","2016_06_01_000005_create_oauth_personal_access_clients_table","1");
INSERT INTO migrations VALUES("6","2017_10_12_000010_create_pages_table","1");
INSERT INTO migrations VALUES("7","2017_10_12_000016_create_socials_table","1");
INSERT INTO migrations VALUES("8","2018_01_23_054930_entrust_setup_tables","1");
INSERT INTO migrations VALUES("9","2018_01_24_000000_create_users_table","1");
INSERT INTO migrations VALUES("10","2018_01_28_073527_create_currencies_table","1");
INSERT INTO migrations VALUES("11","2018_02_01_075202_create_settings_table","1");
INSERT INTO migrations VALUES("12","2018_02_01_104705_create_languages_table","1");
INSERT INTO migrations VALUES("13","2018_02_02_121311_create_countries_table","1");
INSERT INTO migrations VALUES("14","2018_02_05_065402_create_preferences_table","1");
INSERT INTO migrations VALUES("15","2018_02_09_055248_create_backups_table","1");
INSERT INTO migrations VALUES("16","2018_02_09_104306_create_metas_table","1");
INSERT INTO migrations VALUES("17","2018_02_09_121049_create_payment_methods_table","1");
INSERT INTO migrations VALUES("18","2018_02_20_095847_create_admins_table","1");
INSERT INTO migrations VALUES("19","2018_02_26_084847_create_deposits_table","1");
INSERT INTO migrations VALUES("20","2018_02_27_060235_create_wallets_table","1");
INSERT INTO migrations VALUES("21","2018_03_03_083507_create_currency_exchanges_table","1");
INSERT INTO migrations VALUES("22","2018_03_03_083507_create_request_payments_table","1");
INSERT INTO migrations VALUES("23","2018_03_03_083507_create_transfers_table","1");
INSERT INTO migrations VALUES("24","2018_03_03_083507_create_vouchers_table","1");
INSERT INTO migrations VALUES("25","2018_03_06_115806_create_withdrawals_table","1");
INSERT INTO migrations VALUES("26","2018_03_10_075012_create_transaction_types_table","1");
INSERT INTO migrations VALUES("27","2018_03_21_190022_create_merchant_groups_table","1");
INSERT INTO migrations VALUES("28","2018_03_22_000001_create_merchants_table","1");
INSERT INTO migrations VALUES("29","2018_03_22_000002_create_merchant_payments_table","1");
INSERT INTO migrations VALUES("30","2018_03_22_060439_create_transactions_table","1");
INSERT INTO migrations VALUES("31","2018_03_23_021431_create_cointpayment_log_trxes_table","1");
INSERT INTO migrations VALUES("32","2018_03_27_095014_create_email_templates_table","1");
INSERT INTO migrations VALUES("33","2018_04_04_055813_create_activity_logs_table","1");
INSERT INTO migrations VALUES("34","2018_04_23_065520_add_picture_to_users_table","1");
INSERT INTO migrations VALUES("35","2018_04_23_072453_add_picture_to_admins_table","1");
INSERT INTO migrations VALUES("36","2018_04_24_101102_create_ticket_statuses_table","1");
INSERT INTO migrations VALUES("37","2018_04_25_064015_create_tickets_table","1");
INSERT INTO migrations VALUES("38","2018_04_25_090327_create_reasons_table","1");
INSERT INTO migrations VALUES("39","2018_04_25_102922_create_ticket_replies_table","1");
INSERT INTO migrations VALUES("40","2018_04_25_130503_create_files_table","1");
INSERT INTO migrations VALUES("41","2018_04_30_054616_create_disputes_table","1");
INSERT INTO migrations VALUES("42","2018_04_30_054950_create_dispute_discussions_table","1");
INSERT INTO migrations VALUES("43","2018_05_08_141610_create_fees_limits_table","1");
INSERT INTO migrations VALUES("44","2018_05_23_052416_create_user_details_table","1");
INSERT INTO migrations VALUES("45","2018_05_27_150035_create_email_configs_table","1");
INSERT INTO migrations VALUES("46","2018_05_28_150419_create_payout_settings_table","1");
INSERT INTO migrations VALUES("47","2018_06_06_093803_create_merchant_apps_table","1");
INSERT INTO migrations VALUES("48","2018_06_06_093953_create_app_tokens_table","1");
INSERT INTO migrations VALUES("49","2018_06_06_094213_create_app_transactions_infos_table","1");
INSERT INTO migrations VALUES("50","2018_06_12_124543_create_currency_payment_methods_table","1");
INSERT INTO migrations VALUES("51","2018_07_02_131144_create_time_zones_table","1");
INSERT INTO migrations VALUES("52","2018_07_02_163432_create_app_store_credentials_table","1");
INSERT INTO migrations VALUES("53","2018_08_12_131555_create_verify_users_table","1");
INSERT INTO migrations VALUES("54","2018_08_29_162937_create_withdrawal_details_table","1");
INSERT INTO migrations VALUES("55","2018_09_18_113040_create_device_logs_table","1");
INSERT INTO migrations VALUES("56","2018_09_21_155913_create_banks_table","1");
INSERT INTO migrations VALUES("57","2018_10_01_185845_create_qr_codes_table","1");
INSERT INTO migrations VALUES("58","2018_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("59","2018_11_11_191051_create_document_verifications_table","1");





CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oauth_clients VALUES("1","","Laravel Personal Access Client","agkL4ISxlzHE5z2zS2vwqZqqoF7ker3HMXo7De3v","http://localhost","1","0","0","","");
INSERT INTO oauth_clients VALUES("2","","Laravel Password Grant Client","TwF6YvwSCLuVejXhUQCAqMaPAqhHZ29sEhhFfsM9","http://localhost","0","1","0","","");
INSERT INTO oauth_clients VALUES("3","","Laravel Personal Access Client","YWG63Yjp0bcf7iL45MgK75Yc5Tq18KS9rcv8ltBM","http://localhost","1","0","0","","");





CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO oauth_personal_access_clients VALUES("1","1","","");
INSERT INTO oauth_personal_access_clients VALUES("2","2","","");
INSERT INTO oauth_personal_access_clients VALUES("3","3","","");





CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `position` varchar(40) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_url_unique` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO payment_methods VALUES("1","Mts","Active");
INSERT INTO payment_methods VALUES("2","Stripe","Active");
INSERT INTO payment_methods VALUES("3","Paypal","Active");
INSERT INTO payment_methods VALUES("4","2Checkout","Active");
INSERT INTO payment_methods VALUES("5","PayUmoney","Active");
INSERT INTO payment_methods VALUES("6","Bank","Active");
INSERT INTO payment_methods VALUES("7","Coinpayments","Active");





CREATE TABLE IF NOT EXISTS `payout_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(25) DEFAULT NULL,
  `bank_branch_name` varchar(25) DEFAULT NULL,
  `bank_branch_city` varchar(25) DEFAULT NULL,
  `bank_branch_address` varchar(100) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `swift_code` varchar(11) DEFAULT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `default_payout` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=not default, 1=default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `permission_role` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("1","2");
INSERT INTO permission_role VALUES("1","3");
INSERT INTO permission_role VALUES("1","4");
INSERT INTO permission_role VALUES("1","5");
INSERT INTO permission_role VALUES("1","6");
INSERT INTO permission_role VALUES("1","7");
INSERT INTO permission_role VALUES("1","8");
INSERT INTO permission_role VALUES("1","9");
INSERT INTO permission_role VALUES("1","10");
INSERT INTO permission_role VALUES("1","11");
INSERT INTO permission_role VALUES("1","12");
INSERT INTO permission_role VALUES("1","13");
INSERT INTO permission_role VALUES("1","14");
INSERT INTO permission_role VALUES("1","15");
INSERT INTO permission_role VALUES("1","16");
INSERT INTO permission_role VALUES("1","17");
INSERT INTO permission_role VALUES("1","18");
INSERT INTO permission_role VALUES("1","19");
INSERT INTO permission_role VALUES("1","20");
INSERT INTO permission_role VALUES("1","21");
INSERT INTO permission_role VALUES("1","22");
INSERT INTO permission_role VALUES("1","23");
INSERT INTO permission_role VALUES("1","24");
INSERT INTO permission_role VALUES("1","25");
INSERT INTO permission_role VALUES("1","26");
INSERT INTO permission_role VALUES("1","27");
INSERT INTO permission_role VALUES("1","28");
INSERT INTO permission_role VALUES("1","29");
INSERT INTO permission_role VALUES("1","30");
INSERT INTO permission_role VALUES("1","31");
INSERT INTO permission_role VALUES("1","32");
INSERT INTO permission_role VALUES("1","33");
INSERT INTO permission_role VALUES("1","34");
INSERT INTO permission_role VALUES("1","35");
INSERT INTO permission_role VALUES("1","36");
INSERT INTO permission_role VALUES("1","37");
INSERT INTO permission_role VALUES("1","38");
INSERT INTO permission_role VALUES("1","39");
INSERT INTO permission_role VALUES("1","40");
INSERT INTO permission_role VALUES("1","41");
INSERT INTO permission_role VALUES("1","42");
INSERT INTO permission_role VALUES("1","43");
INSERT INTO permission_role VALUES("1","44");
INSERT INTO permission_role VALUES("1","45");
INSERT INTO permission_role VALUES("1","46");
INSERT INTO permission_role VALUES("1","47");
INSERT INTO permission_role VALUES("1","48");
INSERT INTO permission_role VALUES("1","49");
INSERT INTO permission_role VALUES("1","50");
INSERT INTO permission_role VALUES("1","51");
INSERT INTO permission_role VALUES("1","52");
INSERT INTO permission_role VALUES("1","53");
INSERT INTO permission_role VALUES("1","54");
INSERT INTO permission_role VALUES("1","55");
INSERT INTO permission_role VALUES("1","56");
INSERT INTO permission_role VALUES("1","57");
INSERT INTO permission_role VALUES("1","58");
INSERT INTO permission_role VALUES("1","59");
INSERT INTO permission_role VALUES("1","60");
INSERT INTO permission_role VALUES("1","61");
INSERT INTO permission_role VALUES("1","62");
INSERT INTO permission_role VALUES("1","63");
INSERT INTO permission_role VALUES("1","64");
INSERT INTO permission_role VALUES("1","65");
INSERT INTO permission_role VALUES("1","66");
INSERT INTO permission_role VALUES("1","67");
INSERT INTO permission_role VALUES("1","68");
INSERT INTO permission_role VALUES("1","69");
INSERT INTO permission_role VALUES("1","70");
INSERT INTO permission_role VALUES("1","71");
INSERT INTO permission_role VALUES("1","72");
INSERT INTO permission_role VALUES("1","73");
INSERT INTO permission_role VALUES("1","74");
INSERT INTO permission_role VALUES("1","75");
INSERT INTO permission_role VALUES("1","76");
INSERT INTO permission_role VALUES("1","77");
INSERT INTO permission_role VALUES("1","78");
INSERT INTO permission_role VALUES("1","79");
INSERT INTO permission_role VALUES("1","80");
INSERT INTO permission_role VALUES("1","85");
INSERT INTO permission_role VALUES("1","86");
INSERT INTO permission_role VALUES("1","87");
INSERT INTO permission_role VALUES("1","88");
INSERT INTO permission_role VALUES("1","89");
INSERT INTO permission_role VALUES("1","90");
INSERT INTO permission_role VALUES("1","91");
INSERT INTO permission_role VALUES("1","92");
INSERT INTO permission_role VALUES("1","93");
INSERT INTO permission_role VALUES("1","94");
INSERT INTO permission_role VALUES("1","95");
INSERT INTO permission_role VALUES("1","96");
INSERT INTO permission_role VALUES("1","97");
INSERT INTO permission_role VALUES("1","98");
INSERT INTO permission_role VALUES("1","99");
INSERT INTO permission_role VALUES("1","100");
INSERT INTO permission_role VALUES("1","101");
INSERT INTO permission_role VALUES("1","102");
INSERT INTO permission_role VALUES("1","103");
INSERT INTO permission_role VALUES("1","104");
INSERT INTO permission_role VALUES("1","105");
INSERT INTO permission_role VALUES("1","106");
INSERT INTO permission_role VALUES("1","107");
INSERT INTO permission_role VALUES("1","108");
INSERT INTO permission_role VALUES("1","118");
INSERT INTO permission_role VALUES("1","119");
INSERT INTO permission_role VALUES("1","120");
INSERT INTO permission_role VALUES("1","121");
INSERT INTO permission_role VALUES("1","122");
INSERT INTO permission_role VALUES("1","123");
INSERT INTO permission_role VALUES("1","124");
INSERT INTO permission_role VALUES("1","125");
INSERT INTO permission_role VALUES("1","126");
INSERT INTO permission_role VALUES("1","127");
INSERT INTO permission_role VALUES("1","128");
INSERT INTO permission_role VALUES("1","129");
INSERT INTO permission_role VALUES("1","130");
INSERT INTO permission_role VALUES("1","131");
INSERT INTO permission_role VALUES("1","132");
INSERT INTO permission_role VALUES("1","133");
INSERT INTO permission_role VALUES("1","137");
INSERT INTO permission_role VALUES("1","138");
INSERT INTO permission_role VALUES("1","139");
INSERT INTO permission_role VALUES("1","140");
INSERT INTO permission_role VALUES("1","145");
INSERT INTO permission_role VALUES("1","146");
INSERT INTO permission_role VALUES("1","147");
INSERT INTO permission_role VALUES("1","148");
INSERT INTO permission_role VALUES("1","149");
INSERT INTO permission_role VALUES("1","150");
INSERT INTO permission_role VALUES("1","151");
INSERT INTO permission_role VALUES("1","152");
INSERT INTO permission_role VALUES("1","153");
INSERT INTO permission_role VALUES("1","154");
INSERT INTO permission_role VALUES("1","155");
INSERT INTO permission_role VALUES("1","156");
INSERT INTO permission_role VALUES("1","157");
INSERT INTO permission_role VALUES("1","158");
INSERT INTO permission_role VALUES("1","159");
INSERT INTO permission_role VALUES("1","160");
INSERT INTO permission_role VALUES("1","161");
INSERT INTO permission_role VALUES("1","162");
INSERT INTO permission_role VALUES("1","163");
INSERT INTO permission_role VALUES("1","164");
INSERT INTO permission_role VALUES("2","109");
INSERT INTO permission_role VALUES("2","110");
INSERT INTO permission_role VALUES("2","111");
INSERT INTO permission_role VALUES("2","112");
INSERT INTO permission_role VALUES("2","113");
INSERT INTO permission_role VALUES("2","114");
INSERT INTO permission_role VALUES("2","115");
INSERT INTO permission_role VALUES("2","134");
INSERT INTO permission_role VALUES("2","135");
INSERT INTO permission_role VALUES("2","136");
INSERT INTO permission_role VALUES("13","109");
INSERT INTO permission_role VALUES("13","110");
INSERT INTO permission_role VALUES("13","111");
INSERT INTO permission_role VALUES("13","112");
INSERT INTO permission_role VALUES("13","113");
INSERT INTO permission_role VALUES("13","114");
INSERT INTO permission_role VALUES("13","115");
INSERT INTO permission_role VALUES("13","116");
INSERT INTO permission_role VALUES("13","117");
INSERT INTO permission_role VALUES("13","134");
INSERT INTO permission_role VALUES("13","135");
INSERT INTO permission_role VALUES("13","136");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

INSERT INTO permissions VALUES("1","User","view_user","View User","View User","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("2","User","add_user","Add User","Add User","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("3","User","edit_user","Edit User","Edit User","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("4","User","delete_user","Delete User","Delete User","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("5","Transaction","view_transaction","View Transaction","View Transaction","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("6","Transaction","add_transaction","","","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("7","Transaction","edit_transaction","Edit Transaction","Edit Transaction","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("8","Transaction","delete_transaction","","","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("9","Deposit","view_deposit","View Deposit","View Deposit","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("10","Deposit","add_deposit","","","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("11","Deposit","edit_deposit","Edit Deposit","Edit Deposit","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("12","Deposit","delete_deposit","","","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("13","Withdrawal","view_withdrawal","View Withdrawal","View Withdrawal","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("14","Withdrawal","add_withdrawal","","","Admin","2018-12-17 16:38:42","2018-12-17 16:38:42");
INSERT INTO permissions VALUES("15","Withdrawal","edit_withdrawal","Edit Withdrawal","Edit Withdrawal","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("16","Withdrawal","delete_withdrawal","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("17","Transfer","view_transfer","View Transfer","View Transfer","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("18","Transfer","add_transfer","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("19","Transfer","edit_transfer","Edit Transfer","Edit Transfer","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("20","Transfer","delete_transfer","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("21","Exchange","view_exchange","View Exchange","View Exchange","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("22","Exchange","add_exchange","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("23","Exchange","edit_exchange","Edit Exchange","Edit Exchange","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("24","Exchange","delete_exchange","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("25","Voucher","view_voucher","View Voucher","View Voucher","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("26","Voucher","add_voucher","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("27","Voucher","edit_voucher","Edit Voucher","Edit Voucher","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("28","Voucher","delete_voucher","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("29","Request Payment","view_request_payment","View Request Payment","View Request Payment","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("30","Request Payment","add_request_payment","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("31","Request Payment","edit_request_payment","Edit Request Payment","Edit Request Payment","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("32","Request Payment","delete_request_payment","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("33","Revenue","view_revenue","View Revenue","View Revenue","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("34","Revenue","add_revenue","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("35","Revenue","edit_revenue","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("36","Revenue","delete_revenue","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("37","Email Template","view_email_template","View Email Template","View Email Template","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("38","Email Template","add_email_template","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("39","Email Template","edit_email_template","Edit Email Template","Edit Email Template","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("40","Email Template","delete_email_template","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("41","Activity Log","view_activity_log","View Activity Log","View Activity Log","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("42","Activity Log","add_activity_log","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("43","Activity Log","edit_activity_log","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("44","Activity Log","delete_activity_log","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("45","General Setting","view_general_setting","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("46","General Setting","add_general_setting","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("47","General Setting","edit_general_setting","Edit General Setting","Edit General Setting","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("48","General Setting","delete_general_setting","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("49","Social Links","view_social_links","View Social Links","View Social Links","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("50","Social Links","add_social_links","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("51","Social Links","edit_social_links","Edit Social Links","Edit Social Links","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("52","Social Links","delete_social_links","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("53","API Credentials","view_api_credentials","View API Credentials","View API Credentials","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("54","API Credentials","add_api_credentials","","","Admin","2018-12-17 16:38:43","2018-12-17 16:38:43");
INSERT INTO permissions VALUES("55","API Credentials","edit_api_credentials","Edit API Credentials","Edit API Credentials","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("56","API Credentials","delete_api_credentials","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("57","Payment Methods","view_payment_methods","View Payment Methods","View Payment Methods","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("58","Payment Methods","add_payment_methods","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("59","Payment Methods","edit_payment_methods","Edit Payment Methods","Edit Payment Methods","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("60","Payment Methods","delete_payment_methods","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("61","Email Setting","view_email_setting","View Email Setting","View Email Setting","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("62","Email Setting","add_email_setting","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("63","Email Setting","edit_email_setting","Edit Email Setting","Edit Email Setting","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("64","Email Setting","delete_email_setting","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("65","Currency","view_currency","View Currency","View Currency","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("66","Currency","add_currency","Add Currency","Add Currency","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("67","Currency","edit_currency","Edit Currency","Edit Currency","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("68","Currency","delete_currency","Delete Currency","Delete Currency","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("69","Country","view_country","View Country","View Country","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("70","Country","add_country","Add Country","Add Country","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("71","Country","edit_country","Edit Country","Edit Country","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("72","Country","delete_country","Delete Country","Delete Country","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("73","Language","view_language","View Language","View Language","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("74","Language","add_language","Add Language","Add Language","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("75","Language","edit_language","Edit Language","Edit Language","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("76","Language","delete_language","Delete Language","Delete Language","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("77","Role","view_role","View Role","View Role","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("78","Role","add_role","Add Role","Add Role","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("79","Role","edit_role","Edit Role","Edit Role","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("80","Role","delete_role","Delete Role","Delete Role","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("85","Database Backup","view_database_backup","View Database Backup","View Database Backup","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("86","Database Backup","add_database_backup","Add Database Backup","Add Database Backup","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("87","Database Backup","edit_database_backup","Edit Database Backup","Edit Database Backup","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("88","Database Backup","delete_database_backup","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("89","Meta","view_meta","View Meta","View Meta","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("90","Meta","add_meta","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("91","Meta","edit_meta","Edit Meta","Edit Meta","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("92","Meta","delete_meta","","","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("93","Page","view_page","View Page","View Page","Admin","2018-12-17 16:38:44","2018-12-17 16:38:44");
INSERT INTO permissions VALUES("94","Page","add_page","Add Page","Add Page","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("95","Page","edit_page","Edit Page","Edit Page","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("96","Page","delete_page","Delete Page","Delete Page","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("97","Preference","view_preference","View Preference","View Preference","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("98","Preference","add_preference","","","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("99","Preference","edit_preference","Edit Preference","Edit Preference","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("100","Preference","delete_preference","","","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("101","Merchant","view_merchant","View Merchant","View Merchant","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("102","Merchant","add_merchant","","","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("103","Merchant","edit_merchant","Edit Merchant","Edit Merchant","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("104","Merchant","delete_merchant","","","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("105","Merchant Payment","view_merchant_payment","View Merchant Payment","View Merchant Payment","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("106","Merchant Payment","add_merchant_payment","","","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("107","Merchant Payment","edit_merchant_payment","Edit Merchant Payment","Edit Merchant Payment","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("108","Merchant Payment","delete_merchant_payment","","","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("109","Transaction","manage_transaction","Manage Transaction","Manage Transaction","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("110","Deposit","manage_deposit","Manage Deposit","Manage Deposit","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("111","Withdrawal","manage_withdrawal","Manage Withdrawal","Manage Withdrawal","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("112","Transfer","manage_transfer","Manage Transfer","Manage Transfer","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("113","Exchange","manage_exchange","Manage Exchange","Manage Exchange","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("114","Voucher","manage_voucher","Manage Voucher","Manage Voucher","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("115","Request Payment","manage_request_payment","Manage Request Payment","Manage Request Payment","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("116","Merchant","manage_merchant","Manage Merchant","Manage Merchant","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("117","Merchant Payment","manage_merchant_payment","Manage Merchant Payment","Manage Merchant Payment","User","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("118","User Group","view_group","View User Group","View User Group","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("119","User Group","add_group","Add User Group","Add User Group","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("120","User Group","edit_group","Edit User Group","Edit User Group","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("121","User Group","delete_group","Delete User Group","Delete User Group","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("122","Admins","view_admins","View Admins","View Admins","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("123","Admins","add_admin","Add Admin","Add Admin","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("124","Admins","edit_admin","Edit Admin","Edit Admin","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("125","Admins","delete_admin","Delete Admin","Delete Admin","Admin","2018-12-17 16:38:45","2018-12-17 16:38:45");
INSERT INTO permissions VALUES("126","Disputes","view_disputes","View Disputes","View Disputes","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("127","Disputes","add_dispute","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("128","Disputes","edit_dispute","Edit Dispute","Edit Dispute","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("129","Disputes","delete_dispute","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("130","Tickets","view_tickets","View Tickets","View Tickets","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("131","Tickets","add_ticket","Add Ticket","Add Ticket","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("132","Tickets","edit_ticket","Edit Ticket","Edit Ticket","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("133","Tickets","delete_ticket","Delete Ticket","Delete Ticket","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("134","Dispute","manage_dispute","Manage Dispute","Manage Dispute","User","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("135","Ticket","manage_ticket","Manage Ticket","Manage Ticket","User","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("136","Settings","manage_setting","Manage Settings","Manage Settings","User","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("137","AppStore Credentials","view_appstore_credentials","View AppStore Credentials","View AppStore Credentials","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("138","AppStore Credentials","add_appstore_credentials","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("139","AppStore Credentials","edit_appstore_credentials","Edit AppStore Credentials","Edit AppStore Credentials","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("140","AppStore Credentials","delete_appstore_credentials","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("145","Merchant Groups","view_merchant_group","View Merchant Group","View Merchant Group","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("146","Merchant Groups","add_merchant_group","Add Merchant Group","Add Merchant Group","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("147","Merchant Groups","edit_merchant_group","Edit Merchant Group","Edit Merchant Group","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("148","Merchant Groups","delete_merchant_group","Delete Merchant Group","Delete Merchant Group","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("149","SMS Setting","view_sms_setting","View SMS Setting","View SMS Setting","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("150","SMS Setting","add_sms_setting","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("151","SMS Setting","edit_sms_setting","Edit SMS Setting","Edit SMS Setting","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("152","SMS Setting","delete_sms_setting","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("153","Sms Template","view_sms_template","View Sms Template","View Sms Template","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("154","Sms Template","add_sms_template","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("155","Sms Template","edit_sms_template","Edit Sms Template","Edit Sms Template","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("156","Sms Template","delete_sms_template","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("157","Identity Verificattion","view_identity_verfication","View Identity Verificattion","View Identity Verificattion","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("158","Identity Verificattion","add_identity_verfication","","","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("159","Identity Verificattion","edit_identity_verfication","Edit Identity Verificattion","Edit Identity Verificattion","Admin","2018-12-17 16:38:46","2018-12-17 16:38:46");
INSERT INTO permissions VALUES("160","Identity Verificattion","delete_identity_verfication","","","Admin","2018-12-17 16:38:47","2018-12-17 16:38:47");
INSERT INTO permissions VALUES("161","Address Verificattion","view_address_verfication","View Address Verificattion","View Address Verificattion","Admin","2018-12-17 16:38:47","2018-12-17 16:38:47");
INSERT INTO permissions VALUES("162","Address Verificattion","add_address_verfication","","","Admin","2018-12-17 16:38:47","2018-12-17 16:38:47");
INSERT INTO permissions VALUES("163","Address Verificattion","edit_address_verfication","Edit Address Verificattion","Edit Address Verificattion","Admin","2018-12-17 16:38:47","2018-12-17 16:38:47");
INSERT INTO permissions VALUES("164","Address Verificattion","delete_address_verfication","","","Admin","2018-12-17 16:38:47","2018-12-17 16:38:47");





CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO preferences VALUES("1","preference","row_per_page","50");
INSERT INTO preferences VALUES("2","preference","date_format","1");
INSERT INTO preferences VALUES("3","preference","date_sepa","-");
INSERT INTO preferences VALUES("4","preference","soft_name","Pay Money");
INSERT INTO preferences VALUES("5","company","site_short_name","PM");
INSERT INTO preferences VALUES("6","preference","percentage","2");
INSERT INTO preferences VALUES("7","preference","quantity","0");
INSERT INTO preferences VALUES("8","preference","date_format_type","mm-dd-yyyy");
INSERT INTO preferences VALUES("9","company","company_name","Pay Money");
INSERT INTO preferences VALUES("10","company","company_email","admin@techvill.net");
INSERT INTO preferences VALUES("11","company","dflt_lang","en");
INSERT INTO preferences VALUES("12","preference","default_money_format","&nbsp;&#36;");
INSERT INTO preferences VALUES("13","preference","money_format","before");
INSERT INTO preferences VALUES("14","preference","decimal_format_amount","2");
INSERT INTO preferences VALUES("15","preference","thousand_separator",",");
INSERT INTO preferences VALUES("16","preference","dflt_timezone","Asia/Dhaka");
INSERT INTO preferences VALUES("17","preference","verification_mail","Disabled");
INSERT INTO preferences VALUES("18","preference","phone_verification","Disabled");
INSERT INTO preferences VALUES("19","preference","two_step_verification","disabled");





CREATE TABLE IF NOT EXISTS `qr_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` enum('user','merchant') NOT NULL,
  `qr_code` varchar(16) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qr_codes_user_id_index` (`user_id`),
  CONSTRAINT `qr_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO reasons VALUES("1","I have not received the goods");
INSERT INTO reasons VALUES("2","Description does not match with product");





CREATE TABLE IF NOT EXISTS `request_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Payment Request)',
  `amount` double(10,2) DEFAULT '0.00',
  `accept_amount` double(10,2) DEFAULT '0.00',
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `purpose` varchar(191) DEFAULT NULL,
  `note` text,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `request_payments_user_id_index` (`user_id`),
  KEY `request_payments_receiver_id_index` (`receiver_id`),
  KEY `request_payments_currency_id_index` (`currency_id`),
  CONSTRAINT `request_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_payments_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO role_user VALUES("1","1","Admin");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  `customer_type` enum('user','merchant') NOT NULL,
  `is_default` enum('No','Yes') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO roles VALUES("1","Admin","Admin","Admin","Admin","user","No","","");
INSERT INTO roles VALUES("2","Default User","Default User","Default User","User","user","Yes","","");
INSERT INTO roles VALUES("3","Merchant Regular","Merchant Regular","Merchant Regular","User","merchant","No","","");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO settings VALUES("1","name","Pay Money","general");
INSERT INTO settings VALUES("2","logo","1532175849_logo.png","general");
INSERT INTO settings VALUES("3","favicon","1530689937_favicon.png","general");
INSERT INTO settings VALUES("4","head_code","Pay Money","general");
INSERT INTO settings VALUES("5","default_currency","1","general");
INSERT INTO settings VALUES("6","default_language","1","general");
INSERT INTO settings VALUES("7","client_id","id","PayPal");
INSERT INTO settings VALUES("8","client_secret","secrect","PayPal");
INSERT INTO settings VALUES("9","signature","sign","PayPal");
INSERT INTO settings VALUES("10","mode","sandbox","PayPal");
INSERT INTO settings VALUES("11","publishable","","Stripe");
INSERT INTO settings VALUES("12","secret","","Stripe");
INSERT INTO settings VALUES("13","driver","sendmail","email");
INSERT INTO settings VALUES("14","host","","email");
INSERT INTO settings VALUES("15","port","587","email");
INSERT INTO settings VALUES("16","from_address","","email");
INSERT INTO settings VALUES("17","from_name","","email");
INSERT INTO settings VALUES("18","encryption","tls","email");
INSERT INTO settings VALUES("19","username","","email");
INSERT INTO settings VALUES("20","password","","email");
INSERT INTO settings VALUES("21","site_key","","recaptcha");
INSERT INTO settings VALUES("22","secret_key","","recaptcha");
INSERT INTO settings VALUES("23","seller_id","","2Checkout");
INSERT INTO settings VALUES("24","mode","","2Checkout");
INSERT INTO settings VALUES("25","mode","","PayUmoney");
INSERT INTO settings VALUES("26","key","","PayUmoney");
INSERT INTO settings VALUES("27","salt","","PayUmoney");
INSERT INTO settings VALUES("28","merchant_id","","Coinpayments");
INSERT INTO settings VALUES("29","private_key","","Coinpayments");
INSERT INTO settings VALUES("30","public_key","","Coinpayments");
INSERT INTO settings VALUES("31","default_timezone","Asia/Dhaka","general");
INSERT INTO settings VALUES("32","has_captcha","Disabled","general");
INSERT INTO settings VALUES("33","Key","","Nexmo");
INSERT INTO settings VALUES("34","Secret","","Nexmo");
INSERT INTO settings VALUES("35","is_nexmo_default","No","Nexmo");
INSERT INTO settings VALUES("36","nexmo_status","Inactive","Nexmo");
INSERT INTO settings VALUES("37","default_nexmo_phone_number","","Nexmo");
INSERT INTO settings VALUES("38","login_via","email_only","general");





CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO socials VALUES("1","facebook","<i class=\"ti-facebook\" aria-hidden=\"true\"></i>","#");
INSERT INTO socials VALUES("2","google_plus","<i class=\"ti-google plus\" aria-hidden=\"true\"></i>","#");
INSERT INTO socials VALUES("3","twitter","<i class=\"ti-twitter\" aria-hidden=\"true\"></i>","#");
INSERT INTO socials VALUES("4","linkedin","<i class=\"ti-linkedin\" aria-hidden=\"true\"></i>","#");
INSERT INTO socials VALUES("5","pinterest","<i class=\"ti-pinterest\" aria-hidden=\"true\"></i>","#");
INSERT INTO socials VALUES("6","youtube","<i class=\"ti-youtube\" aria-hidden=\"true\"></i>","#");
INSERT INTO socials VALUES("7","instagram","<i class=\"ti-instagram\" aria-hidden=\"true\"></i>","#");





CREATE TABLE IF NOT EXISTS `ticket_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `message` longtext,
  `user_type` enum('admin','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ticket_replies_admin_id_index` (`admin_id`),
  KEY `ticket_replies_user_id_index` (`user_id`),
  KEY `ticket_replies_ticket_id_index` (`ticket_id`),
  CONSTRAINT `ticket_replies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `ticket_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ticket_statuses VALUES("1","Open","00a65a","0");
INSERT INTO ticket_statuses VALUES("2","In Progress","3c8dbc","1");
INSERT INTO ticket_statuses VALUES("3","Hold","f39c12","0");
INSERT INTO ticket_statuses VALUES("4","Closed","dd4b39","0");





CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_status_id` int(10) unsigned DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext,
  `code` varchar(45) DEFAULT NULL,
  `priority` enum('Low','Normal','High') NOT NULL,
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tickets_admin_id_index` (`admin_id`),
  KEY `tickets_user_id_index` (`user_id`),
  KEY `tickets_ticket_status_id_index` (`ticket_status_id`),
  CONSTRAINT `tickets_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ticket_status_id_foreign` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `time_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone` varchar(50) DEFAULT NULL,
  `gmt` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8;

INSERT INTO time_zones VALUES("1","Africa/Abidjan","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("2","Africa/Accra","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("3","Africa/Addis_Ababa","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("4","Africa/Algiers","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("5","Africa/Asmara","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("6","Africa/Bamako","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("7","Africa/Bangui","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("8","Africa/Banjul","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("9","Africa/Bissau","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("10","Africa/Blantyre","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("11","Africa/Brazzaville","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("12","Africa/Bujumbura","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("13","Africa/Cairo","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("14","Africa/Casablanca","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("15","Africa/Ceuta","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("16","Africa/Conakry","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("17","Africa/Dakar","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("18","Africa/Dar_es_Salaam","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("19","Africa/Djibouti","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("20","Africa/Douala","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("21","Africa/El_Aaiun","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("22","Africa/Freetown","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("23","Africa/Gaborone","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("24","Africa/Harare","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("25","Africa/Johannesburg","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("26","Africa/Juba","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("27","Africa/Kampala","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("28","Africa/Khartoum","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("29","Africa/Kigali","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("30","Africa/Kinshasa","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("31","Africa/Lagos","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("32","Africa/Libreville","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("33","Africa/Lome","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("34","Africa/Luanda","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("35","Africa/Lubumbashi","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("36","Africa/Lusaka","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("37","Africa/Malabo","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("38","Africa/Maputo","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("39","Africa/Maseru","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("40","Africa/Mbabane","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("41","Africa/Mogadishu","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("42","Africa/Monrovia","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("43","Africa/Nairobi","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("44","Africa/Ndjamena","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("45","Africa/Niamey","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("46","Africa/Nouakchott","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("47","Africa/Ouagadougou","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("48","Africa/Porto-Novo","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("49","Africa/Sao_Tome","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("50","Africa/Tripoli","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("51","Africa/Tunis","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("52","Africa/Windhoek","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("53","America/Adak","UTC/GMT -10:00","","");
INSERT INTO time_zones VALUES("54","America/Anchorage","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("55","America/Anguilla","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("56","America/Antigua","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("57","America/Araguaina","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("58","America/Argentina/Buenos_Aires","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("59","America/Argentina/Catamarca","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("60","America/Argentina/Cordoba","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("61","America/Argentina/Jujuy","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("62","America/Argentina/La_Rioja","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("63","America/Argentina/Mendoza","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("64","America/Argentina/Rio_Gallegos","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("65","America/Argentina/Salta","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("66","America/Argentina/San_Juan","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("67","America/Argentina/San_Luis","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("68","America/Argentina/Tucuman","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("69","America/Argentina/Ushuaia","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("70","America/Aruba","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("71","America/Asuncion","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("72","America/Atikokan","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("73","America/Bahia","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("74","America/Bahia_Banderas","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("75","America/Barbados","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("76","America/Belem","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("77","America/Belize","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("78","America/Blanc-Sablon","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("79","America/Boa_Vista","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("80","America/Bogota","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("81","America/Boise","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("82","America/Cambridge_Bay","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("83","America/Campo_Grande","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("84","America/Cancun","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("85","America/Caracas","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("86","America/Cayenne","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("87","America/Cayman","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("88","America/Chicago","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("89","America/Chihuahua","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("90","America/Costa_Rica","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("91","America/Creston","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("92","America/Cuiaba","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("93","America/Curacao","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("94","America/Danmarkshavn","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("95","America/Dawson","UTC/GMT -08:00","","");
INSERT INTO time_zones VALUES("96","America/Dawson_Creek","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("97","America/Denver","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("98","America/Detroit","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("99","America/Dominica","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("100","America/Edmonton","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("101","America/Eirunepe","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("102","America/El_Salvador","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("103","America/Fort_Nelson","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("104","America/Fortaleza","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("105","America/Glace_Bay","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("106","America/Godthab","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("107","America/Goose_Bay","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("108","America/Grand_Turk","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("109","America/Grenada","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("110","America/Guadeloupe","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("111","America/Guatemala","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("112","America/Guayaquil","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("113","America/Guyana","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("114","America/Halifax","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("115","America/Havana","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("116","America/Hermosillo","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("117","America/Indiana/Indianapolis","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("118","America/Indiana/Knox","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("119","America/Indiana/Marengo","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("120","America/Indiana/Petersburg","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("121","America/Indiana/Tell_City","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("122","America/Indiana/Vevay","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("123","America/Indiana/Vincennes","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("124","America/Indiana/Winamac","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("125","America/Inuvik","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("126","America/Iqaluit","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("127","America/Jamaica","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("128","America/Juneau","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("129","America/Kentucky/Louisville","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("130","America/Kentucky/Monticello","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("131","America/Kralendijk","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("132","America/La_Paz","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("133","America/Lima","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("134","America/Los_Angeles","UTC/GMT -08:00","","");
INSERT INTO time_zones VALUES("135","America/Lower_Princes","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("136","America/Maceio","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("137","America/Managua","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("138","America/Manaus","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("139","America/Marigot","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("140","America/Martinique","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("141","America/Matamoros","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("142","America/Mazatlan","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("143","America/Menominee","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("144","America/Merida","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("145","America/Metlakatla","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("146","America/Mexico_City","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("147","America/Miquelon","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("148","America/Moncton","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("149","America/Monterrey","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("150","America/Montevideo","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("151","America/Montserrat","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("152","America/Nassau","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("153","America/New_York","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("154","America/Nipigon","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("155","America/Nome","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("156","America/Noronha","UTC/GMT -02:00","","");
INSERT INTO time_zones VALUES("157","America/North_Dakota/Beulah","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("158","America/North_Dakota/Center","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("159","America/North_Dakota/New_Salem","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("160","America/Ojinaga","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("161","America/Panama","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("162","America/Pangnirtung","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("163","America/Paramaribo","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("164","America/Phoenix","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("165","America/Port-au-Prince","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("166","America/Port_of_Spain","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("167","America/Porto_Velho","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("168","America/Puerto_Rico","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("169","America/Punta_Arenas","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("170","America/Rainy_River","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("171","America/Rankin_Inlet","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("172","America/Recife","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("173","America/Regina","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("174","America/Resolute","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("175","America/Rio_Branco","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("176","America/Santarem","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("177","America/Santiago","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("178","America/Santo_Domingo","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("179","America/Sao_Paulo","UTC/GMT -02:00","","");
INSERT INTO time_zones VALUES("180","America/Scoresbysund","UTC/GMT -01:00","","");
INSERT INTO time_zones VALUES("181","America/Sitka","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("182","America/St_Barthelemy","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("183","America/St_Johns","UTC/GMT -03:30","","");
INSERT INTO time_zones VALUES("184","America/St_Kitts","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("185","America/St_Lucia","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("186","America/St_Thomas","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("187","America/St_Vincent","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("188","America/Swift_Current","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("189","America/Tegucigalpa","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("190","America/Thule","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("191","America/Thunder_Bay","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("192","America/Tijuana","UTC/GMT -08:00","","");
INSERT INTO time_zones VALUES("193","America/Toronto","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("194","America/Tortola","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("195","America/Vancouver","UTC/GMT -08:00","","");
INSERT INTO time_zones VALUES("196","America/Whitehorse","UTC/GMT -08:00","","");
INSERT INTO time_zones VALUES("197","America/Winnipeg","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("198","America/Yakutat","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("199","America/Yellowknife","UTC/GMT -07:00","","");
INSERT INTO time_zones VALUES("200","Antarctica/Casey","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("201","Antarctica/Davis","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("202","Antarctica/DumontDUrville","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("203","Antarctica/Macquarie","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("204","Antarctica/Mawson","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("205","Antarctica/McMurdo","UTC/GMT +13:00","","");
INSERT INTO time_zones VALUES("206","Antarctica/Palmer","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("207","Antarctica/Rothera","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("208","Antarctica/Syowa","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("209","Antarctica/Troll","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("210","Antarctica/Vostok","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("211","Arctic/Longyearbyen","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("212","Asia/Aden","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("213","Asia/Almaty","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("214","Asia/Amman","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("215","Asia/Anadyr","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("216","Asia/Aqtau","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("217","Asia/Aqtobe","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("218","Asia/Ashgabat","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("219","Asia/Atyrau","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("220","Asia/Baghdad","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("221","Asia/Bahrain","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("222","Asia/Baku","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("223","Asia/Bangkok","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("224","Asia/Barnaul","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("225","Asia/Beirut","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("226","Asia/Bishkek","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("227","Asia/Brunei","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("228","Asia/Chita","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("229","Asia/Choibalsan","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("230","Asia/Colombo","UTC/GMT +05:30","","");
INSERT INTO time_zones VALUES("231","Asia/Damascus","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("232","Asia/Dhaka","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("233","Asia/Dili","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("234","Asia/Dubai","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("235","Asia/Dushanbe","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("236","Asia/Famagusta","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("237","Asia/Gaza","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("238","Asia/Hebron","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("239","Asia/Ho_Chi_Minh","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("240","Asia/Hong_Kong","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("241","Asia/Hovd","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("242","Asia/Irkutsk","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("243","Asia/Jakarta","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("244","Asia/Jayapura","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("245","Asia/Jerusalem","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("246","Asia/Kabul","UTC/GMT +04:30","","");
INSERT INTO time_zones VALUES("247","Asia/Kamchatka","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("248","Asia/Karachi","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("249","Asia/Kathmandu","UTC/GMT +05:45","","");
INSERT INTO time_zones VALUES("250","Asia/Khandyga","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("251","Asia/Kolkata","UTC/GMT +05:30","","");
INSERT INTO time_zones VALUES("252","Asia/Krasnoyarsk","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("253","Asia/Kuala_Lumpur","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("254","Asia/Kuching","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("255","Asia/Kuwait","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("256","Asia/Macau","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("257","Asia/Magadan","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("258","Asia/Makassar","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("259","Asia/Manila","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("260","Asia/Muscat","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("261","Asia/Nicosia","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("262","Asia/Novokuznetsk","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("263","Asia/Novosibirsk","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("264","Asia/Omsk","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("265","Asia/Oral","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("266","Asia/Phnom_Penh","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("267","Asia/Pontianak","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("268","Asia/Pyongyang","UTC/GMT +08:30","","");
INSERT INTO time_zones VALUES("269","Asia/Qatar","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("270","Asia/Qyzylorda","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("271","Asia/Riyadh","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("272","Asia/Sakhalin","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("273","Asia/Samarkand","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("274","Asia/Seoul","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("275","Asia/Shanghai","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("276","Asia/Singapore","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("277","Asia/Srednekolymsk","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("278","Asia/Taipei","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("279","Asia/Tashkent","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("280","Asia/Tbilisi","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("281","Asia/Tehran","UTC/GMT +03:30","","");
INSERT INTO time_zones VALUES("282","Asia/Thimphu","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("283","Asia/Tokyo","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("284","Asia/Tomsk","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("285","Asia/Ulaanbaatar","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("286","Asia/Urumqi","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("287","Asia/Ust-Nera","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("288","Asia/Vientiane","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("289","Asia/Vladivostok","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("290","Asia/Yakutsk","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("291","Asia/Yangon","UTC/GMT +06:30","","");
INSERT INTO time_zones VALUES("292","Asia/Yekaterinburg","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("293","Asia/Yerevan","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("294","Atlantic/Azores","UTC/GMT -01:00","","");
INSERT INTO time_zones VALUES("295","Atlantic/Bermuda","UTC/GMT -04:00","","");
INSERT INTO time_zones VALUES("296","Atlantic/Canary","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("297","Atlantic/Cape_Verde","UTC/GMT -01:00","","");
INSERT INTO time_zones VALUES("298","Atlantic/Faroe","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("299","Atlantic/Madeira","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("300","Atlantic/Reykjavik","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("301","Atlantic/South_Georgia","UTC/GMT -02:00","","");
INSERT INTO time_zones VALUES("302","Atlantic/St_Helena","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("303","Atlantic/Stanley","UTC/GMT -03:00","","");
INSERT INTO time_zones VALUES("304","Australia/Adelaide","UTC/GMT +10:30","","");
INSERT INTO time_zones VALUES("305","Australia/Brisbane","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("306","Australia/Broken_Hill","UTC/GMT +10:30","","");
INSERT INTO time_zones VALUES("307","Australia/Currie","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("308","Australia/Darwin","UTC/GMT +09:30","","");
INSERT INTO time_zones VALUES("309","Australia/Eucla","UTC/GMT +08:45","","");
INSERT INTO time_zones VALUES("310","Australia/Hobart","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("311","Australia/Lindeman","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("312","Australia/Lord_Howe","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("313","Australia/Melbourne","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("314","Australia/Perth","UTC/GMT +08:00","","");
INSERT INTO time_zones VALUES("315","Australia/Sydney","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("316","Europe/Amsterdam","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("317","Europe/Andorra","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("318","Europe/Astrakhan","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("319","Europe/Athens","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("320","Europe/Belgrade","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("321","Europe/Berlin","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("322","Europe/Bratislava","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("323","Europe/Brussels","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("324","Europe/Bucharest","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("325","Europe/Budapest","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("326","Europe/Busingen","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("327","Europe/Chisinau","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("328","Europe/Copenhagen","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("329","Europe/Dublin","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("330","Europe/Gibraltar","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("331","Europe/Guernsey","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("332","Europe/Helsinki","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("333","Europe/Isle_of_Man","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("334","Europe/Istanbul","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("335","Europe/Jersey","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("336","Europe/Kaliningrad","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("337","Europe/Kiev","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("338","Europe/Kirov","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("339","Europe/Lisbon","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("340","Europe/Ljubljana","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("341","Europe/London","UTC/GMT +00:00","","");
INSERT INTO time_zones VALUES("342","Europe/Luxembourg","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("343","Europe/Madrid","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("344","Europe/Malta","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("345","Europe/Mariehamn","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("346","Europe/Minsk","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("347","Europe/Monaco","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("348","Europe/Moscow","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("349","Europe/Oslo","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("350","Europe/Paris","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("351","Europe/Podgorica","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("352","Europe/Prague","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("353","Europe/Riga","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("354","Europe/Rome","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("355","Europe/Samara","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("356","Europe/San_Marino","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("357","Europe/Sarajevo","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("358","Europe/Saratov","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("359","Europe/Simferopol","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("360","Europe/Skopje","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("361","Europe/Sofia","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("362","Europe/Stockholm","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("363","Europe/Tallinn","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("364","Europe/Tirane","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("365","Europe/Ulyanovsk","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("366","Europe/Uzhgorod","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("367","Europe/Vaduz","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("368","Europe/Vatican","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("369","Europe/Vienna","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("370","Europe/Vilnius","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("371","Europe/Volgograd","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("372","Europe/Warsaw","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("373","Europe/Zagreb","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("374","Europe/Zaporozhye","UTC/GMT +02:00","","");
INSERT INTO time_zones VALUES("375","Europe/Zurich","UTC/GMT +01:00","","");
INSERT INTO time_zones VALUES("376","Indian/Antananarivo","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("377","Indian/Chagos","UTC/GMT +06:00","","");
INSERT INTO time_zones VALUES("378","Indian/Christmas","UTC/GMT +07:00","","");
INSERT INTO time_zones VALUES("379","Indian/Cocos","UTC/GMT +06:30","","");
INSERT INTO time_zones VALUES("380","Indian/Comoro","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("381","Indian/Kerguelen","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("382","Indian/Mahe","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("383","Indian/Maldives","UTC/GMT +05:00","","");
INSERT INTO time_zones VALUES("384","Indian/Mauritius","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("385","Indian/Mayotte","UTC/GMT +03:00","","");
INSERT INTO time_zones VALUES("386","Indian/Reunion","UTC/GMT +04:00","","");
INSERT INTO time_zones VALUES("387","Pacific/Apia","UTC/GMT +14:00","","");
INSERT INTO time_zones VALUES("388","Pacific/Auckland","UTC/GMT +13:00","","");
INSERT INTO time_zones VALUES("389","Pacific/Bougainville","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("390","Pacific/Chatham","UTC/GMT +13:45","","");
INSERT INTO time_zones VALUES("391","Pacific/Chuuk","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("392","Pacific/Easter","UTC/GMT -05:00","","");
INSERT INTO time_zones VALUES("393","Pacific/Efate","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("394","Pacific/Enderbury","UTC/GMT +13:00","","");
INSERT INTO time_zones VALUES("395","Pacific/Fakaofo","UTC/GMT +13:00","","");
INSERT INTO time_zones VALUES("396","Pacific/Fiji","UTC/GMT +13:00","","");
INSERT INTO time_zones VALUES("397","Pacific/Funafuti","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("398","Pacific/Galapagos","UTC/GMT -06:00","","");
INSERT INTO time_zones VALUES("399","Pacific/Gambier","UTC/GMT -09:00","","");
INSERT INTO time_zones VALUES("400","Pacific/Guadalcanal","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("401","Pacific/Guam","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("402","Pacific/Honolulu","UTC/GMT -10:00","","");
INSERT INTO time_zones VALUES("403","Pacific/Kiritimati","UTC/GMT +14:00","","");
INSERT INTO time_zones VALUES("404","Pacific/Kosrae","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("405","Pacific/Kwajalein","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("406","Pacific/Majuro","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("407","Pacific/Marquesas","UTC/GMT -09:30","","");
INSERT INTO time_zones VALUES("408","Pacific/Midway","UTC/GMT -11:00","","");
INSERT INTO time_zones VALUES("409","Pacific/Nauru","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("410","Pacific/Niue","UTC/GMT -11:00","","");
INSERT INTO time_zones VALUES("411","Pacific/Norfolk","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("412","Pacific/Noumea","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("413","Pacific/Pago_Pago","UTC/GMT -11:00","","");
INSERT INTO time_zones VALUES("414","Pacific/Palau","UTC/GMT +09:00","","");
INSERT INTO time_zones VALUES("415","Pacific/Pitcairn","UTC/GMT -08:00","","");
INSERT INTO time_zones VALUES("416","Pacific/Pohnpei","UTC/GMT +11:00","","");
INSERT INTO time_zones VALUES("417","Pacific/Port_Moresby","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("418","Pacific/Rarotonga","UTC/GMT -10:00","","");
INSERT INTO time_zones VALUES("419","Pacific/Saipan","UTC/GMT +10:00","","");
INSERT INTO time_zones VALUES("420","Pacific/Tahiti","UTC/GMT -10:00","","");
INSERT INTO time_zones VALUES("421","Pacific/Tarawa","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("422","Pacific/Tongatapu","UTC/GMT +13:00","","");
INSERT INTO time_zones VALUES("423","Pacific/Wake","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("424","Pacific/Wallis","UTC/GMT +12:00","","");
INSERT INTO time_zones VALUES("425","UTC","UTC/GMT +00:00","","");





CREATE TABLE IF NOT EXISTS `transaction_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` enum('Deposit','Withdrawal','Transferred','Received','Exchange_From','Exchange_To','Voucher_Created','Voucher_Activated','Request_From','Request_To','Payment_Sent','Payment_Received') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO transaction_types VALUES("1","Deposit");
INSERT INTO transaction_types VALUES("2","Withdrawal");
INSERT INTO transaction_types VALUES("3","Transferred");
INSERT INTO transaction_types VALUES("4","Received");
INSERT INTO transaction_types VALUES("5","Exchange_From");
INSERT INTO transaction_types VALUES("6","Exchange_To");
INSERT INTO transaction_types VALUES("7","Voucher_Created");
INSERT INTO transaction_types VALUES("8","Voucher_Activated");
INSERT INTO transaction_types VALUES("9","Request_From");
INSERT INTO transaction_types VALUES("10","Request_To");
INSERT INTO transaction_types VALUES("11","Payment_Sent");
INSERT INTO transaction_types VALUES("12","Payment_Received");





CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `end_user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `merchant_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID',
  `refund_reference` varchar(13) DEFAULT NULL COMMENT 'Refund Reference',
  `transaction_reference_id` int(11) NOT NULL DEFAULT '0',
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `user_type` enum('registered','unregistered') NOT NULL DEFAULT 'registered',
  `email` varchar(191) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `subtotal` double(10,2) DEFAULT '0.00',
  `percentage` double(10,2) DEFAULT '0.00',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `total` double(10,2) DEFAULT '0.00',
  `note` text,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `transactions_user_id_index` (`user_id`),
  KEY `transactions_end_user_id_index` (`end_user_id`),
  KEY `transactions_currency_id_index` (`currency_id`),
  KEY `transactions_payment_method_id_index` (`payment_method_id`),
  KEY `transactions_merchant_id_index` (`merchant_id`),
  KEY `transactions_bank_id_index` (`bank_id`),
  KEY `transactions_file_id_index` (`file_id`),
  KEY `transactions_email_index` (`email`),
  KEY `transactions_phone_index` (`phone`),
  CONSTRAINT `transactions_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_end_user_id_foreign` FOREIGN KEY (`end_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `note` text,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transfers_sender_id_index` (`sender_id`),
  KEY `transfers_receiver_id_index` (`receiver_id`),
  KEY `transfers_currency_id_index` (`currency_id`),
  KEY `transfers_bank_id_index` (`bank_id`),
  KEY `transfers_file_id_index` (`file_id`),
  CONSTRAINT `transfers_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verification_code` varchar(6) DEFAULT NULL,
  `two_step_verification_type` enum('disabled','email','phone','google_authenticator') NOT NULL,
  `two_step_verification_code` varchar(6) DEFAULT NULL,
  `two_step_verification` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `address_1` text,
  `address_2` text,
  `default_currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_user_id_index` (`user_id`),
  KEY `user_details_country_id_index` (`country_id`),
  CONSTRAINT `user_details_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `type` enum('user','merchant') NOT NULL DEFAULT 'user',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `google2fa_secret` text,
  `defaultCountry` varchar(4) DEFAULT NULL,
  `carrierCode` varchar(6) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phrase` varchar(191) DEFAULT NULL,
  `address_verified` tinyint(1) NOT NULL DEFAULT '0',
  `identity_verified` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_role_id_index` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `verify_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verify_users_user_id_index` (`user_id`),
  CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `vouchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `activator_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Voucher)',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `code` varchar(50) DEFAULT NULL,
  `redeemed` enum('No','Yes') NOT NULL DEFAULT 'No',
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vouchers_user_id_index` (`user_id`),
  KEY `vouchers_activator_id_index` (`activator_id`),
  KEY `vouchers_currency_id_index` (`currency_id`),
  CONSTRAINT `vouchers_activator_id_foreign` FOREIGN KEY (`activator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vouchers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vouchers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `balance` double(10,2) DEFAULT '0.00',
  `is_default` enum('Yes','No') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_user_id_index` (`user_id`),
  KEY `wallets_currency_id_index` (`currency_id`),
  CONSTRAINT `wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `withdrawal_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `withdrawal_id` int(10) unsigned DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1=Bank, 2=Paypal',
  `email` varchar(25) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_number` varchar(25) DEFAULT NULL,
  `bank_branch_name` varchar(25) DEFAULT NULL,
  `bank_branch_city` varchar(25) DEFAULT NULL,
  `bank_branch_address` varchar(100) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `swift_code` varchar(11) DEFAULT NULL,
  `bank_name` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdrawal_details_withdrawal_id_index` (`withdrawal_id`),
  CONSTRAINT `withdrawal_details_withdrawal_id_foreign` FOREIGN KEY (`withdrawal_id`) REFERENCES `withdrawals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Withdrawal)',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `subtotal` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `payment_method_info` varchar(255) NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdrawals_user_id_index` (`user_id`),
  KEY `withdrawals_currency_id_index` (`currency_id`),
  KEY `withdrawals_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `withdrawals_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `withdrawals_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




