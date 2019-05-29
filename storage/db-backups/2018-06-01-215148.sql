

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO activity_logs VALUES("1","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 13:15:49");
INSERT INTO activity_logs VALUES("2","3","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 13:19:25");
INSERT INTO activity_logs VALUES("3","3","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 13:20:16");
INSERT INTO activity_logs VALUES("4","4","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 13:23:34");
INSERT INTO activity_logs VALUES("5","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-05-31 13:42:18");
INSERT INTO activity_logs VALUES("6","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-31 14:06:32");
INSERT INTO activity_logs VALUES("7","1","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 14:34:03");
INSERT INTO activity_logs VALUES("8","7","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-05-31 14:36:53");
INSERT INTO activity_logs VALUES("9","8","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 15:19:11");
INSERT INTO activity_logs VALUES("10","3","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 15:33:05");
INSERT INTO activity_logs VALUES("11","4","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 15:33:42");
INSERT INTO activity_logs VALUES("12","4","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 15:36:45");
INSERT INTO activity_logs VALUES("13","8","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 15:37:22");
INSERT INTO activity_logs VALUES("14","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-05-31 15:46:39");
INSERT INTO activity_logs VALUES("15","1","Admin","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-05-31 17:56:26");
INSERT INTO activity_logs VALUES("16","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 20:54:22");
INSERT INTO activity_logs VALUES("17","1","Admin","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-05-31 20:56:06");
INSERT INTO activity_logs VALUES("18","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 20:56:13");
INSERT INTO activity_logs VALUES("19","1","Admin","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-05-31 21:04:02");
INSERT INTO activity_logs VALUES("20","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 21:04:12");
INSERT INTO activity_logs VALUES("21","2","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-05-31 21:14:20");
INSERT INTO activity_logs VALUES("22","1","Admin","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-01 16:19:51");
INSERT INTO activity_logs VALUES("23","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-01 16:21:14");
INSERT INTO activity_logs VALUES("24","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-01 16:53:11");
INSERT INTO activity_logs VALUES("25","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-01 17:09:43");
INSERT INTO activity_logs VALUES("26","1","User","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-01 17:45:37");
INSERT INTO activity_logs VALUES("27","1","Admin","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-01 17:45:44");
INSERT INTO activity_logs VALUES("28","1","Admin","::1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-01 17:46:15");





CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `role_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_username_unique` (`username`),
  UNIQUE KEY `admins_email_unique` (`email`),
  KEY `admins_role_id_index` (`role_id`),
  CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO admins VALUES("1","admin","admin","techvill","admin@techvill.net","$2y$10$pJg16/2rcCvld4JD1xAlruq9ojgezeATYELkdgUOUtElGZG5r4o9m","Active","1","Tb9Y0ykwOjtrBiBVBTMz4ZkJpX76BLMkn02kkbBaGFIJpeGON2JIqtMPRKZY","2018-04-26 07:56:09","2018-05-31 14:06:19","5a54a4e82aa50.png");
INSERT INTO admins VALUES("2","tuhin.techvill","Tuhin","Hossain","tuhin.techvill@gmail.com","$2y$10$cMy9yQ0.DoVvn4kAxpM2OuqQWLfyWM4AMC1oJNNbCcZpBCxB8WlJu","Active","1","hPkuZaG4Xeb0mXj6Rdesx0CvgGoG5TcZbUnHdA5GYbsjzYD99VVaiq1S42GB","2018-05-22 09:21:25","2018-05-28 14:08:38","");
INSERT INTO admins VALUES("3","tuhin2.techvill","Tuhin","Hossain","tuhin2.techvill@gmail.com","$2y$10$2AX6J2znElQeP2kaN8rNYu5lTC4LSjTqJ35YI5XWDa.rT9f/OVPJm","Active","1","","2018-05-22 09:55:04","2018-05-24 08:41:04","");
INSERT INTO admins VALUES("4","test","test","test","test@yahoo.com","$2y$10$GpySX/cBk0Mm5z1sq74WuOWkEkTTq33zt/fqgbXxLuCrwBOyosDjq","Active","3","W4lupaLWsr4VqGP0jEAosabCqBIPmebC6NdADDRyJmaqwMkWb8NJDT3GzFik","2018-05-29 10:18:02","2018-05-29 10:18:02","");
INSERT INTO admins VALUES("7","testadmin","TEST","TEST","testadmin@gmail.com","$2y$10$P2YXw8S3OuHzi1uQVtL79.HRqfXUn74aKpyb6a75u/72pw.F0yR1.","Active","3","LygbRJA5aIeL7Z77zDwhGRB95QBaBiQt4dMTWDTcMxUl3ZwznxeYnqX4Qsws","2018-05-31 09:57:46","2018-05-31 10:00:25","");





CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `cointpayment_log_trxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

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
INSERT INTO countries VALUES("242","PP","Manchester City","MCI","999","999");





CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT 'USD',
  `symbol` char(50) NOT NULL DEFAULT '$',
  `code` varchar(100) DEFAULT '101',
  `hundreds_name` varchar(100) DEFAULT 'one thousand',
  `rate` double NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO currencies VALUES("1","Guinean franc","FG","GNF","one thousand","50","","Inactive","0","","");
INSERT INTO currencies VALUES("12","US Dollar","$","USD","one thousand","1","1526290617.jpg","Active","1","","");
INSERT INTO currencies VALUES("13","Pound Sterling","£","GBP","one thousand","0.65","1525873787.jpg","Active","0","","");
INSERT INTO currencies VALUES("14","Europe","€","EUR","one thousand","0.65","1525873805.jpg","Active","0","","");
INSERT INTO currencies VALUES("15","Czech Republic Koruna","K?","CZK","one thousand","78","","Inactive","0","","");
INSERT INTO currencies VALUES("16","Hong Kong Dollar","$","HKD","one thousand","12","","Active","0","","");
INSERT INTO currencies VALUES("17","Hungarian Forint","Ft","HUF","one thousand","1","","Active","0","","");
INSERT INTO currencies VALUES("18","Indonesian Rupiah","Rp","IDR","one thousand","0","","Active","0","","");
INSERT INTO currencies VALUES("19","Israeli New Sheke","?","ILS","one thousand","3.54","","Active","0","","");
INSERT INTO currencies VALUES("20","Japanese Yen","¥","JPY","one thousand","0","","Active","0","","");
INSERT INTO currencies VALUES("21","South Korean Won","?","KRW","one thousand","20","","Active","0","","");
INSERT INTO currencies VALUES("23","New Zealand Dollar","$","NZD","one thousand","10","","Active","0","","");
INSERT INTO currencies VALUES("24","Polish Zloty","z?","PLN","one thousand","0","","Active","0","","");
INSERT INTO currencies VALUES("25","Russian Ruble","P","RUB","one thousand","57.58","","Active","0","","");
INSERT INTO currencies VALUES("26","TAKA","BDT","BDT","one thousand","82.98","","Active","0","","");
INSERT INTO currencies VALUES("27","Indian Rupy","INR","INR","one thousand","64.91","","Active","0","","");
INSERT INTO currencies VALUES("28","Afghan Afghani","60b","AFN","one thousand","120","","Inactive","0","","");
INSERT INTO currencies VALUES("31","Lek","Lek","ALL","one thousand","106.5","","Inactive","0","","");
INSERT INTO currencies VALUES("32","Malaysian Ringgit","RM","MYR","one thousand","4.31","1526454723.jpg","Inactive","0","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO currency_exchanges VALUES("1","4","4","6","13","CDMWBVSZ4F71I","0.65","50.00","21.00","Out","Success","2018-05-31 13:54:24","2018-05-31 13:54:24");
INSERT INTO currency_exchanges VALUES("2","4","4","12","19","PTWLDKMSF3ZTX","3.54","20.00","0.00","Out","Success","2018-05-31 15:01:20","2018-05-31 15:01:20");
INSERT INTO currency_exchanges VALUES("3","1","1","11","13","OZPLXLBLVA0AU","0.65","15.00","16.10","Out","Success","2018-05-31 15:06:31","2018-05-31 15:06:31");
INSERT INTO currency_exchanges VALUES("4","1","1","13","26","K5ML1W5PWEBAZ","82.98","100.00","12.00","Out","Success","2018-05-31 15:06:52","2018-05-31 15:06:52");
INSERT INTO currency_exchanges VALUES("5","1","13","1","26","NGAKUT27URJFO","82.98","12.00","0.00","In","Success","2018-05-31 15:07:06","2018-05-31 15:07:06");
INSERT INTO currency_exchanges VALUES("6","5","5","14","26","AWEEIDM0T3UI7","82.98","15.00","10.30","Out","Success","2018-05-31 15:15:46","2018-05-31 15:15:46");
INSERT INTO currency_exchanges VALUES("7","5","14","5","26","XVTAV1KL9HD8W","82.98","2.00","0.00","In","Success","2018-05-31 15:16:04","2018-05-31 15:16:04");
INSERT INTO currency_exchanges VALUES("8","1","1","15","14","GRXJJSF1YG2NX","0.65","15.00","12.45","Out","Success","2018-05-31 15:18:41","2018-05-31 15:18:41");
INSERT INTO currency_exchanges VALUES("9","1","15","1","14","5XVGPPOHKUPVS","0.65","1.00","0.00","In","Success","2018-05-31 15:19:55","2018-05-31 15:19:55");
INSERT INTO currency_exchanges VALUES("10","1","13","1","26","ZMMACLIG8NZYV","82.98","12.00","0.00","In","Success","2018-05-31 15:20:44","2018-05-31 15:20:44");
INSERT INTO currency_exchanges VALUES("11","1","13","1","26","OA6JHCLLKBBEB","82.98","1.00","0.00","In","Success","2018-05-31 15:21:28","2018-05-31 15:21:28");
INSERT INTO currency_exchanges VALUES("12","1","13","1","26","CAZXWLMVTYK6Z","82.98","2.00","0.00","In","Success","2018-05-31 15:22:24","2018-05-31 15:22:24");
INSERT INTO currency_exchanges VALUES("13","2","2","17","26","CW2EKB3QMDZXL","82.98","1000.00","30.00","Out","Success","2018-05-31 21:14:52","2018-05-31 21:14:52");





CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
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
  CONSTRAINT `deposits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO deposits VALUES("1","2","12","2","FTPHR6HM1JLVS","3600.00","11.00","30000.00","Success","2018-05-31 13:09:43");
INSERT INTO deposits VALUES("2","4","12","2","8VRX8LD8NOAP4","60.00","11.00","500.00","Success","2018-05-31 13:52:57");
INSERT INTO deposits VALUES("3","4","12","2","8GJYLFVYB9BFD","60.00","11.00","500.00","Success","2018-05-31 13:52:58");
INSERT INTO deposits VALUES("4","4","12","2","C6WJK8TNJX89F","60.00","11.00","500.00","Success","2018-05-31 13:52:59");
INSERT INTO deposits VALUES("5","6","12","2","0OFUTX7DCJNJB","120.00","11.00","1000.00","Success","2018-05-31 14:03:03");
INSERT INTO deposits VALUES("6","5","12","2","A1OVOAMFIS1AH","60.00","11.00","500.00","Success","2018-05-31 14:30:47");
INSERT INTO deposits VALUES("7","7","12","2","R8XEOBIHMTA1H","600.00","11.00","5000.00","Success","2018-05-31 14:37:41");
INSERT INTO deposits VALUES("8","8","12","2","ODL7V7QIRNUNW","24.00","11.00","200.00","Success","2018-05-31 15:20:01");
INSERT INTO deposits VALUES("9","2","26","2","Q3SXJDRIYJLJM","31.00","5.00","274.00","Success","2018-05-31 21:22:57");





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
  `status` enum('Open','Closed') NOT NULL,
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

INSERT INTO email_configs VALUES("1","smtp","tls","mail.techvill.net","587","stockpile@techvill.net","stockpile@techvill.net","nT4HD2XEdRUX","stockpile@techvill.net","Pay Money","1");





CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` tinyint(4) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  `language_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_language_id_index` (`language_id`),
  CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

INSERT INTO email_templates VALUES("1","1","Notice of Transfer!","Hi {sender_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was transferred from your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\n\n                                    <br><br>Transfer # {uuid} was created at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Receiver:</u></b> {receiver_id}\n\n                                    <br><br><b><u>Fee:</u></b> {fee}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("2","1","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("3","1","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("4","1","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("5","1","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("6","1","Subject","Body","es","6");
INSERT INTO email_templates VALUES("7","1","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("8","2","Notice to Receive!","Hi {receiver_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was received on your account.\n\n                                    <br><br>\n                                    <b><u><i>Here’s a brief overview of your Received Payment:</i></u></b>\n\n                                    <br><br>\n                                    Transfer # {uuid} was received at {created_at}.\n\n                                    <br><br>\n                                    <b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Sender:</u></b> {sender_id}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("9","2","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("10","2","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("11","2","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("12","2","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("13","2","Subject","Body","es","6");
INSERT INTO email_templates VALUES("14","2","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("15","3","Notice of Voucher Activation!","Hi {user_id},\n\n                                    <br><br>\n                                    Voucher # {uuid} has been activated by {activator_id}.\n                                    <br><br><b><u><i>\n                                    Here’s a brief overview of the Voucher Activation:</i></u></b>\n\n                                    <br><br>Voucher # {uuid} was activated at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Code:</u></b> {code}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("16","3","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("17","3","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("18","3","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("19","3","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("20","3","Subject","Body","es","6");
INSERT INTO email_templates VALUES("21","3","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("22","4","Notice of Request Creation!","Hi {acceptor},\n\n                                    <br><br>Amount {symbol}{amount} has been requested to your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                    <br><br>\n                                    <b><u>Request #:</u></b> {uuid}\n\n                                    <br><br>\n                                    <b><u>Created At:</u></b> {created_at}\n\n                                    <br><br>\n                                    <b><u>Requested Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Purpose: </u></b> {purpose}\n\n                                    <br><br>\n                                    <b><u>Note: </u></b> {note}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("23","4","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("24","4","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("25","4","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("26","4","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("27","4","Subject","Body","es","6");
INSERT INTO email_templates VALUES("28","4","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("29","5","Notice of Request Acceptance!","Hi {creator},\n                                    <br><br>Your request of #{uuid} has been accepted by {acceptor}.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                    <br><br>\n                                    <b><u>Accepted Date:</u></b> {created_at}.\n\n                                    <br><br>\n                                    <b><u>Requested Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Requested Accepted Amount:</u></b> {symbol}{accept_amount}\n\n                                    <br><br>\n                                    <b><u>Currency:</u></b> {currency}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("30","5","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("31","5","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("32","5","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("33","5","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("34","5","Subject","Body","es","6");
INSERT INTO email_templates VALUES("35","5","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("36","6","Status of Transaction #{uuid} has been updated!","Hi {sender_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Transfer #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("37","6","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("38","6","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("39","6","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("40","6","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("41","6","Subject","Body","es","6");
INSERT INTO email_templates VALUES("42","6","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("43","7","Status of Transaction #{uuid} has been updated!","Hi {activator_id},\n\n                                    <br><br><b>\n                                    Transaction of Voucher #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    <u><i>Voucher Code:</i></u> {code}\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("44","7","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("45","7","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("46","7","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("47","7","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("48","7","Subject","Body","es","6");
INSERT INTO email_templates VALUES("49","7","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("50","8","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("51","8","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("52","8","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("53","8","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("54","8","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("55","8","Subject","Body","es","6");
INSERT INTO email_templates VALUES("56","8","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("57","9","Notice of Withdrawal!","Hi {user_id},\n\n                                    <br><br><b>\n                                    Your request of Withdrawal #{uuid} of {symbol}{amount} is being processed by system administrator!</b>\n\n                                    <br><br>\n                                    <b><u>Transaction Status:</u></b> {status}.\n\n                                    <br><br>\n                                    {symbol}{amount} is being subtracted from your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("58","9","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("59","9","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("60","9","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("61","9","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("62","9","Subject","Body","es","6");
INSERT INTO email_templates VALUES("63","9","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("64","10","Status of Transaction #{uuid} has been updated!","Hi {user_id},\n\n                                    <br><br><b>\n                                    Transaction of Withdrawal #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("65","10","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("66","10","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("67","10","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("68","10","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("69","10","Subject","Body","es","6");
INSERT INTO email_templates VALUES("70","10","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("71","11","Notice of Ticket!","Hi {assignee/user},\n\n                                    <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\n\n                                    <br><br>Ticket #{ticket_code} was created at {created_at}.\n\n                                    <br><br><b><u>{Assignee:}</u></b> {assignee}\n\n                                    <br><br><b><u>{User:}</u></b> {user}\n\n                                    <br><br><b><u>Ticket Subject:</u></b> {subject}\n\n                                    <br><br><b><u>Ticket Message:</u></b> {message}\n\n                                    <br><br><b><u>Ticket Status:</u></b> {status}\n\n                                    <br><br><b><u>Ticket Priority Level:</u></b> {priority}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("72","11","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("73","11","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("74","11","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("75","11","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("76","11","Subject","Body","es","6");
INSERT INTO email_templates VALUES("77","11","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("78","12","Notice of Ticket Reply!","Hi {user},\n\n                                    <br><br>A ticket reply has been sent to you by system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                    <br><br>This reply was initiated against ticket code #{ticket_code}.\n\n                                    <br><br><b><u>Assignee:</u></b> {assignee}\n\n                                    <br><br><b><u>Reply Message:</u></b> {message}\n\n                                    <br><br><b><u>Reply Status:</u></b> {status}\n\n                                    <br><br><b><u>Reply Priority Level:</u></b> {priority}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("79","12","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("80","12","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("81","12","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("82","12","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("83","12","Subject","Body","es","6");
INSERT INTO email_templates VALUES("84","12","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("85","13","Notice of Dispute Reply!","Hi {user},\n\n                                    <br><br>A dispute reply has been sent to you by system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                    <br><br>This reply was initiated at {created_at}.\n\n                                    <br><br><b><u>{Claimant/Defendant:}</u></b> {claimant/defendant}\n\n                                    <br><br><b><u>Transaction ID:</u></b> {transaction_id}\n\n                                    <br><br><b><u>Subject:</u></b> {subject}\n\n                                    <br><br><b><u>Replied Message:</u></b> {message}\n\n                                    <br><br><b><u>Status:</u></b> {status}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("86","13","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("87","13","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("88","13","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("89","13","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("90","13","Subject","Body","es","6");
INSERT INTO email_templates VALUES("91","13","Subject","Body","tr","7");





CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `transaction_type` enum('Deposit','Withdrawal','Merchant','Voucher','Transfer') NOT NULL,
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `fees_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `fees_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO fees VALUES("1","1","Merchant","10.00","5.00");
INSERT INTO fees VALUES("2","2","Deposit","10.00","5.00");
INSERT INTO fees VALUES("3","2","Merchant","10.00","5.00");
INSERT INTO fees VALUES("4","3","Deposit","10.00","5.00");
INSERT INTO fees VALUES("5","3","Withdrawal","10.00","5.00");
INSERT INTO fees VALUES("6","3","Merchant","10.00","5.00");
INSERT INTO fees VALUES("7","4","Deposit","10.00","5.00");
INSERT INTO fees VALUES("8","5","Deposit","10.00","5.00");
INSERT INTO fees VALUES("9","5","Merchant","10.00","5.00");
INSERT INTO fees VALUES("10","6","Withdrawal","10.00","5.00");
INSERT INTO fees VALUES("11","","Transfer","10.00","5.00");





CREATE TABLE IF NOT EXISTS `fees_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `charge_percentage` double(10,2) DEFAULT NULL,
  `charge_fixed` double(10,2) DEFAULT NULL,
  `min_limit` double(10,2) DEFAULT NULL,
  `max_limit` double(10,2) DEFAULT NULL,
  `has_transaction` enum('Yes','No') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_limits_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `fees_limits_currency_id_index` (`currency_id`),
  CONSTRAINT `fees_limits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fees_limits_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

INSERT INTO fees_limits VALUES("1","12","1","12.00","11.00","11.00","60000.00","Yes","2018-05-14 06:17:49","2018-05-31 09:27:29");
INSERT INTO fees_limits VALUES("2","12","2","2.00","12.00","2.00","90000.00","No","2018-05-14 06:18:15","2018-05-31 09:27:38");
INSERT INTO fees_limits VALUES("3","12","3","3.00","13.00","3.00","80000.00","Yes","2018-05-14 06:20:02","2018-05-31 09:27:45");
INSERT INTO fees_limits VALUES("4","12","5","4.00","14.00","4.00","20000.00","Yes","2018-05-14 06:39:37","2018-05-31 09:25:07");
INSERT INTO fees_limits VALUES("6","12","10","6.00","16.00","6.00","600.00","Yes","2018-05-14 06:40:21","2018-05-14 06:40:21");
INSERT INTO fees_limits VALUES("8","1","2","12.00","12.00","12.00","2200.00","Yes","2018-05-14 06:43:00","2018-05-14 07:06:36");
INSERT INTO fees_limits VALUES("9","20","3","0.00","0.00","1.00","","Yes","2018-05-14 06:46:36","2018-05-14 06:50:12");
INSERT INTO fees_limits VALUES("10","1","3","13.00","13.00","13.00","1300.00","Yes","2018-05-14 07:05:08","2018-05-14 07:06:44");
INSERT INTO fees_limits VALUES("11","13","5","14.00","14.00","14.00","1400.00","Yes","2018-05-14 07:05:29","2018-05-14 07:05:29");
INSERT INTO fees_limits VALUES("13","1","10","16.00","16.00","16.00","1600.00","Yes","2018-05-14 07:07:15","2018-05-14 07:07:15");
INSERT INTO fees_limits VALUES("14","12","1","11.00","11.00","11.00","100.00","Yes","2018-05-14 07:09:26","2018-05-14 07:09:26");
INSERT INTO fees_limits VALUES("15","32","1","5.00","5.00","10.00","10.00","Yes","2018-05-16 07:12:44","2018-05-16 07:15:38");
INSERT INTO fees_limits VALUES("16","26","1","10.00","5.00","1.00","30000.00","Yes","2018-05-21 08:31:13","2018-05-31 09:25:23");
INSERT INTO fees_limits VALUES("17","12","1","11.00","11.00","11.00","100.00","No","2018-05-23 09:24:32","2018-05-23 09:28:54");
INSERT INTO fees_limits VALUES("18","13","1","0.00","0.00","1.00","","No","2018-05-24 06:53:05","2018-05-28 11:11:05");
INSERT INTO fees_limits VALUES("19","14","1","5.00","0.00","10.00","80000.00","No","2018-05-27 12:27:53","2018-05-31 09:27:15");
INSERT INTO fees_limits VALUES("20","1","1","0.00","0.00","1.00","","Yes","2018-05-27 13:06:06","2018-05-27 13:06:06");
INSERT INTO fees_limits VALUES("21","16","1","0.00","0.00","0.00","500.00","Yes","2018-05-27 13:07:35","2018-05-28 12:07:37");
INSERT INTO fees_limits VALUES("22","16","2","2.00","2.00","1.00","10.00","No","2018-05-27 13:30:34","2018-05-27 13:30:58");
INSERT INTO fees_limits VALUES("23","15","3","0.00","0.00","1.00","","No","2018-05-27 14:43:18","2018-05-27 14:43:18");
INSERT INTO fees_limits VALUES("24","21","3","0.00","0.00","1.00","","No","2018-05-27 14:43:33","2018-05-27 14:43:33");
INSERT INTO fees_limits VALUES("25","14","3","5.00","5.00","1.00","50000.00","No","2018-05-27 15:06:15","2018-05-31 09:26:59");
INSERT INTO fees_limits VALUES("26","14","5","3.00","12.00","1.00","60000.00","No","2018-05-29 11:59:16","2018-05-31 09:26:49");
INSERT INTO fees_limits VALUES("27","26","5","2.00","10.00","1.00","30000.00","No","2018-05-31 09:25:42","2018-05-31 09:25:42");
INSERT INTO fees_limits VALUES("28","14","2","0.00","0.00","1.00","30000.00","No","2018-05-31 09:27:07","2018-05-31 09:27:07");
INSERT INTO fees_limits VALUES("29","21","1","5.00","2.00","1.00","50.00","Yes","2018-05-31 11:11:10","2018-05-31 11:11:10");
INSERT INTO fees_limits VALUES("30","23","1","2.00","2.00","1.00","","Yes","2018-05-31 11:27:28","2018-05-31 11:27:28");
INSERT INTO fees_limits VALUES("31","26","2","2.00","5.00","5.00","300.00","No","2018-05-31 11:56:09","2018-05-31 11:56:09");
INSERT INTO fees_limits VALUES("32","12","8","2.00","5.00","1.00","1000.00","No","2018-05-31 14:53:07","2018-05-31 14:53:34");
INSERT INTO fees_limits VALUES("33","14","8","3.00","7.00","1.00","3000.00","No","2018-05-31 14:54:12","2018-05-31 14:54:12");
INSERT INTO fees_limits VALUES("34","26","3","5.00","15.00","1.00","5000.00","No","2018-05-31 20:55:04","2018-05-31 20:55:41");





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
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default` enum('1','0') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO languages VALUES("1","English","en","Active","1");
INSERT INTO languages VALUES("2","????","ar","Active","0");
INSERT INTO languages VALUES("3","Français","fr","Active","0");
INSERT INTO languages VALUES("4","Português","pt","Active","0");
INSERT INTO languages VALUES("5","???????","ru","Active","0");
INSERT INTO languages VALUES("6","Español","es","Active","0");
INSERT INTO languages VALUES("7","Türkçe","tr","Active","0");
INSERT INTO languages VALUES("8","wew","ew","Active","0");





CREATE TABLE IF NOT EXISTS `merchant_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `gateway_reference` varchar(50) DEFAULT NULL,
  `order_no` varchar(50) DEFAULT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL,
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL DEFAULT 'Success',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `merchant_payments_merchant_id_index` (`merchant_id`),
  KEY `merchant_payments_currency_id_index` (`currency_id`),
  KEY `merchant_payments_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `merchant_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `business_name` varchar(191) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `password` varchar(191) NOT NULL,
  `note` varchar(255) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `status` enum('Moderation','Disapproved','Approved') NOT NULL DEFAULT 'Moderation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchants_user_id_index` (`user_id`),
  CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text,
  `keywords` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO metas VALUES("1","personal","Personal","Personal","");
INSERT INTO metas VALUES("2","help","Help","Help","");
INSERT INTO metas VALUES("3","about-us","About Us","About Us","");
INSERT INTO metas VALUES("4","contact-us","Contact Us","Contact Us","");
INSERT INTO metas VALUES("5","header","header","header","");
INSERT INTO metas VALUES("6","login","Login","Login","");
INSERT INTO metas VALUES("7","register","Register","Register","");
INSERT INTO metas VALUES("8","/","Home","Home","");
INSERT INTO metas VALUES("9","dashboard","Dashboard","Dashboard","");
INSERT INTO metas VALUES("10","moneytransfer","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("11","transactions","Transactions","Transactions","");
INSERT INTO metas VALUES("12","exchanges","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("13","exchange","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("14","vouchers","Voucher","Voucher","");
INSERT INTO metas VALUES("15","voucher/add","Voucher Add","Voucher Add","");
INSERT INTO metas VALUES("16","voucher/activate_code","Voucher Activation","Voucher Activation","");
INSERT INTO metas VALUES("17","merchants","Merchant","Merchant","");
INSERT INTO metas VALUES("18","merchant/add","Merchant Add","Merchant Add","");
INSERT INTO metas VALUES("19","request_payments","Request Payments","Request Payments","");
INSERT INTO metas VALUES("20","request_payment/add","Request Payment","Request Payment","");
INSERT INTO metas VALUES("21","request_payment/edit/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("22","request_payment/detail/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("23","request_payment/completes","Request Payment","Request Payment","");
INSERT INTO metas VALUES("24","exchange/view/{id}","Currency Exchange","Currency Exchange","");
INSERT INTO metas VALUES("25","merchant/edit/{id}","Edit Merchant ","Edit Merchant","");
INSERT INTO metas VALUES("26","merchant/add","Add Merchant ","Add Merchant","");
INSERT INTO metas VALUES("27","merchant/payments","Merchant payments","Merchant payments","");
INSERT INTO metas VALUES("28","deposit","Deposit","Deposit","");
INSERT INTO metas VALUES("29","deposit/method/{id}","Deposit Amount","Deposit Amount","");
INSERT INTO metas VALUES("30","deposit/stripe_payment","Deposit With Stripe","Deposit with stripe","");
INSERT INTO metas VALUES("31","withdrawal","Withdrawal","Withdrawal","");
INSERT INTO metas VALUES("32","withdrawal/method/{id}","Withdrawal","Withdrawal","");
INSERT INTO metas VALUES("33","payouts","Payouts","Payouts","");
INSERT INTO metas VALUES("34","transactions/{id}","Transactions","Transactions","");
INSERT INTO metas VALUES("35","request_payment/accept/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("36","disputes","disputes","disputes","");
INSERT INTO metas VALUES("37","merchant/detail/{id}","View Merchant ","View Merchant ","");
INSERT INTO metas VALUES("38","dispute/discussion/{id}","Dispute details","Dispute details","");
INSERT INTO metas VALUES("39","dispute/add/{id}","Dispute Add","Dispute Add","");
INSERT INTO metas VALUES("40","send-money","Send Money","Send Money","");
INSERT INTO metas VALUES("41","request-money","Request Money","Request Money","");
INSERT INTO metas VALUES("42","news","News","News","");
INSERT INTO metas VALUES("43","profile","User Profile","User Profile","");
INSERT INTO metas VALUES("44","tickets","Tickets","Tickets","");
INSERT INTO metas VALUES("45","ticket/add","Ticket Add","Ticket Add","");
INSERT INTO metas VALUES("46","ticket/reply/{id}","Ticket Reply","Ticket Reply","");
INSERT INTO metas VALUES("47","exchange_of_base_currency","Money Exchange","Exchange of base currency","");
INSERT INTO metas VALUES("48","exchange/exchange-of-base-currency-confirm","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("49","payout/setting","Withdrawal","Withdrawal","");
INSERT INTO metas VALUES("50","send-money-confirm","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("51","exchange_to_base_currency","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("52","exchange/exchange-to-base-currency-confirm","Money Exchange","Money Exchange","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;

INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2016_06_01_000001_create_oauth_auth_codes_table","1");
INSERT INTO migrations VALUES("4","2016_06_01_000002_create_oauth_access_tokens_table","1");
INSERT INTO migrations VALUES("5","2016_06_01_000003_create_oauth_refresh_tokens_table","1");
INSERT INTO migrations VALUES("6","2016_06_01_000004_create_oauth_clients_table","1");
INSERT INTO migrations VALUES("7","2016_06_01_000005_create_oauth_personal_access_clients_table","1");
INSERT INTO migrations VALUES("9","2018_01_24_134400_add_role_id_to_users","1");
INSERT INTO migrations VALUES("17","2018_02_01_075202_create_settings_table","4");
INSERT INTO migrations VALUES("18","2018_02_01_104705_create_languages_table","5");
INSERT INTO migrations VALUES("20","2018_01_28_073527_create_currencies_table","6");
INSERT INTO migrations VALUES("21","2018_02_02_121311_create_countries_table","7");
INSERT INTO migrations VALUES("22","2018_02_05_065402_create_preferences_table","8");
INSERT INTO migrations VALUES("32","2018_02_09_055248_create_backups_table","10");
INSERT INTO migrations VALUES("33","2018_02_09_104306_create_metas_table","11");
INSERT INTO migrations VALUES("52","2014_10_12_000000_create_users_table","20");
INSERT INTO migrations VALUES("53","2018_02_20_095528_create_testers_table","21");
INSERT INTO migrations VALUES("54","2018_02_20_095847_create_admins_table","21");
INSERT INTO migrations VALUES("60","2018_02_26_103220_create_wallets_table","22");
INSERT INTO migrations VALUES("64","2018_02_09_121049_create_payment_methods_table","24");
INSERT INTO migrations VALUES("88","2018_02_26_084847_create_deposits_table","33");
INSERT INTO migrations VALUES("90","2017_10_12_000010_create_pages_table","34");
INSERT INTO migrations VALUES("93","2018_03_03_083507_create_vouchers_table","36");
INSERT INTO migrations VALUES("94","2018_03_03_083507_create_request_payments_table","37");
INSERT INTO migrations VALUES("102","2018_03_22_000001_create_merchants_table","41");
INSERT INTO migrations VALUES("105","2018_03_27_095014_create_email_templates_table","42");
INSERT INTO migrations VALUES("109","2018_03_22_000002_create_merchant_payments_table","44");
INSERT INTO migrations VALUES("113","2018_04_04_055813_create_activity_logs_table","46");
INSERT INTO migrations VALUES("116","2017_10_12_000016_create_socials_table","48");
INSERT INTO migrations VALUES("118","2018_03_06_115806_create_withdrawals_table","49");
INSERT INTO migrations VALUES("119","2018_04_23_065520_add_picture_to_users_table","50");
INSERT INTO migrations VALUES("120","2018_04_23_072453_add_picture_to_admins_table","51");
INSERT INTO migrations VALUES("139","2018_04_25_101102_create_ticket_statuses_table","58");
INSERT INTO migrations VALUES("142","2018_04_25_100503_create_files_table","61");
INSERT INTO migrations VALUES("143","2018_04_25_090327_create_reasons_table","62");
INSERT INTO migrations VALUES("147","2018_02_27_101356_create_fees_table","65");
INSERT INTO migrations VALUES("151","2018_04_27_060235_create_wallets_table","68");
INSERT INTO migrations VALUES("154","2018_03_03_083507_create_transfers_table","70");
INSERT INTO migrations VALUES("157","2018_04_30_054616_create_disputes_table","73");
INSERT INTO migrations VALUES("160","2018_04_30_054950_create_dispute_discussions_table","76");
INSERT INTO migrations VALUES("166","2018_01_23_054930_entrust_setup_tables","79");
INSERT INTO migrations VALUES("169","2018_05_09_060847_add_logo_to_currencies_table","81");
INSERT INTO migrations VALUES("175","2018_05_10_075012_create_transaction_types_table","85");
INSERT INTO migrations VALUES("177","2018_05_08_141610_create_fees_limits_table","86");
INSERT INTO migrations VALUES("179","2018_04_25_102922_create_ticket_replies_table","88");
INSERT INTO migrations VALUES("181","2018_04_25_064015_create_tickets_table","89");
INSERT INTO migrations VALUES("182","2018_05_08_064513_create_unregistered_transactions_table","90");
INSERT INTO migrations VALUES("185","2018_03_23_021431_create_cointpayment_log_trxes_table","92");
INSERT INTO migrations VALUES("187","2018_03_03_083507_create_currency_exchanges_table","94");
INSERT INTO migrations VALUES("188","2018_05_23_052416_create_user_details_table","95");
INSERT INTO migrations VALUES("189","2018_05_27_150035_create_email_configs_table","96");
INSERT INTO migrations VALUES("190","2018_05_28_150419_create_payout_settings_table","97");
INSERT INTO migrations VALUES("191","2018_01_28_060439_create_transactions_table","98");





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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO oauth_personal_access_clients VALUES("1","1","2018-01-28 11:51:19","2018-01-28 11:51:19");
INSERT INTO oauth_personal_access_clients VALUES("2","3","2018-01-28 11:51:28","2018-01-28 11:51:28");





CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO oauth_refresh_tokens VALUES("1156faaec3f8721d7dfd10c88179e82cb5d945eb18772f54096392ef4b596da9501135f580f4bafe","96f8a607c71acde8d9d11e4d5295d62d70bacb06953a5b8d2d9289e7ca0658d82fbbbe306bb83a48","0","2018-02-27 11:56:27");
INSERT INTO oauth_refresh_tokens VALUES("608b002d7f9b7b7a66a53a50080075d8ff111973cf96f6e7705c349d41f45e18f3d42975a326a811","80357e7a3d7f8fd1ab961116202881a8b8e271b81f39dddfc844a7ac0225055f59a90e9e8a824281","0","2018-02-28 06:01:25");





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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO pages VALUES("1","Personal","personal","<p>Test<br></p>\n","[\"header\"]","active","2018-04-11 06:07:11","2018-04-11 06:07:11");
INSERT INTO pages VALUES("2","Help","help","<p>Help page<br></p>\n","[\"header\"]","active","2018-04-11 06:07:40","2018-04-11 06:07:40");
INSERT INTO pages VALUES("3","About Us","about-us","<p>About page<br></p>\n","[\"header\"]","active","2018-04-11 06:09:48","2018-04-11 06:09:48");
INSERT INTO pages VALUES("4","Contact Us","contact-us","<p>Contact page<br></p>\n","[\"header\"]","active","2018-04-11 06:10:25","2018-04-11 06:10:25");
INSERT INTO pages VALUES("5","News","news","<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\"><br><p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\"><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem Ipsum</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>&Acirc;&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p><p></p></h2>\n","[\"header\",\"footer\"]","active","2018-05-21 07:16:52","2018-05-21 07:22:18");





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
  `type` tinyint(4) NOT NULL COMMENT '1=Bank, 2=Paypal',
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO payout_settings VALUES("1","2","2","parvez.techvill@gmail.com","","","","","","","","","0","2018-05-31 13:33:46","2018-05-31 13:33:46");
INSERT INTO payout_settings VALUES("2","7","3","tuhin.techvill@gmail.com","","","","","","","","","0","2018-05-31 14:46:59","2018-05-31 14:46:59");
INSERT INTO payout_settings VALUES("3","4","1","borna.techvill@gmail.com","","","","","","","","","0","2018-05-31 15:11:39","2018-05-31 15:11:39");
INSERT INTO payout_settings VALUES("4","8","2","borna.techvill@gmail.com","","","","","","","","","0","2018-05-31 15:20:43","2018-05-31 15:20:43");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("1","3");
INSERT INTO permission_role VALUES("2","1");
INSERT INTO permission_role VALUES("2","3");
INSERT INTO permission_role VALUES("3","1");
INSERT INTO permission_role VALUES("3","3");
INSERT INTO permission_role VALUES("4","1");
INSERT INTO permission_role VALUES("4","3");
INSERT INTO permission_role VALUES("5","1");
INSERT INTO permission_role VALUES("5","3");
INSERT INTO permission_role VALUES("7","1");
INSERT INTO permission_role VALUES("7","3");
INSERT INTO permission_role VALUES("9","1");
INSERT INTO permission_role VALUES("9","3");
INSERT INTO permission_role VALUES("11","1");
INSERT INTO permission_role VALUES("11","3");
INSERT INTO permission_role VALUES("13","1");
INSERT INTO permission_role VALUES("13","3");
INSERT INTO permission_role VALUES("15","1");
INSERT INTO permission_role VALUES("15","3");
INSERT INTO permission_role VALUES("17","1");
INSERT INTO permission_role VALUES("17","3");
INSERT INTO permission_role VALUES("19","1");
INSERT INTO permission_role VALUES("19","3");
INSERT INTO permission_role VALUES("21","1");
INSERT INTO permission_role VALUES("21","3");
INSERT INTO permission_role VALUES("23","1");
INSERT INTO permission_role VALUES("23","3");
INSERT INTO permission_role VALUES("25","1");
INSERT INTO permission_role VALUES("25","3");
INSERT INTO permission_role VALUES("27","1");
INSERT INTO permission_role VALUES("27","3");
INSERT INTO permission_role VALUES("29","1");
INSERT INTO permission_role VALUES("29","3");
INSERT INTO permission_role VALUES("31","1");
INSERT INTO permission_role VALUES("31","3");
INSERT INTO permission_role VALUES("33","1");
INSERT INTO permission_role VALUES("33","3");
INSERT INTO permission_role VALUES("37","1");
INSERT INTO permission_role VALUES("37","3");
INSERT INTO permission_role VALUES("39","1");
INSERT INTO permission_role VALUES("39","3");
INSERT INTO permission_role VALUES("41","1");
INSERT INTO permission_role VALUES("41","3");
INSERT INTO permission_role VALUES("45","1");
INSERT INTO permission_role VALUES("45","3");
INSERT INTO permission_role VALUES("49","1");
INSERT INTO permission_role VALUES("49","3");
INSERT INTO permission_role VALUES("53","1");
INSERT INTO permission_role VALUES("53","3");
INSERT INTO permission_role VALUES("57","1");
INSERT INTO permission_role VALUES("57","3");
INSERT INTO permission_role VALUES("61","1");
INSERT INTO permission_role VALUES("61","3");
INSERT INTO permission_role VALUES("65","1");
INSERT INTO permission_role VALUES("65","3");
INSERT INTO permission_role VALUES("66","1");
INSERT INTO permission_role VALUES("66","3");
INSERT INTO permission_role VALUES("67","1");
INSERT INTO permission_role VALUES("67","3");
INSERT INTO permission_role VALUES("68","1");
INSERT INTO permission_role VALUES("68","3");
INSERT INTO permission_role VALUES("69","1");
INSERT INTO permission_role VALUES("69","3");
INSERT INTO permission_role VALUES("70","1");
INSERT INTO permission_role VALUES("70","3");
INSERT INTO permission_role VALUES("71","1");
INSERT INTO permission_role VALUES("71","3");
INSERT INTO permission_role VALUES("72","1");
INSERT INTO permission_role VALUES("72","3");
INSERT INTO permission_role VALUES("73","1");
INSERT INTO permission_role VALUES("73","3");
INSERT INTO permission_role VALUES("74","1");
INSERT INTO permission_role VALUES("74","3");
INSERT INTO permission_role VALUES("75","1");
INSERT INTO permission_role VALUES("75","3");
INSERT INTO permission_role VALUES("76","1");
INSERT INTO permission_role VALUES("76","3");
INSERT INTO permission_role VALUES("77","1");
INSERT INTO permission_role VALUES("77","3");
INSERT INTO permission_role VALUES("78","1");
INSERT INTO permission_role VALUES("78","3");
INSERT INTO permission_role VALUES("79","1");
INSERT INTO permission_role VALUES("79","3");
INSERT INTO permission_role VALUES("80","1");
INSERT INTO permission_role VALUES("80","3");
INSERT INTO permission_role VALUES("81","1");
INSERT INTO permission_role VALUES("81","3");
INSERT INTO permission_role VALUES("82","1");
INSERT INTO permission_role VALUES("82","3");
INSERT INTO permission_role VALUES("83","1");
INSERT INTO permission_role VALUES("83","3");
INSERT INTO permission_role VALUES("84","1");
INSERT INTO permission_role VALUES("84","3");
INSERT INTO permission_role VALUES("85","1");
INSERT INTO permission_role VALUES("85","3");
INSERT INTO permission_role VALUES("86","1");
INSERT INTO permission_role VALUES("86","3");
INSERT INTO permission_role VALUES("87","1");
INSERT INTO permission_role VALUES("87","3");
INSERT INTO permission_role VALUES("89","1");
INSERT INTO permission_role VALUES("89","3");
INSERT INTO permission_role VALUES("91","1");
INSERT INTO permission_role VALUES("91","3");
INSERT INTO permission_role VALUES("93","1");
INSERT INTO permission_role VALUES("93","3");
INSERT INTO permission_role VALUES("94","1");
INSERT INTO permission_role VALUES("94","3");
INSERT INTO permission_role VALUES("95","1");
INSERT INTO permission_role VALUES("95","3");
INSERT INTO permission_role VALUES("96","1");
INSERT INTO permission_role VALUES("96","3");
INSERT INTO permission_role VALUES("97","1");
INSERT INTO permission_role VALUES("97","3");
INSERT INTO permission_role VALUES("99","1");
INSERT INTO permission_role VALUES("99","3");
INSERT INTO permission_role VALUES("101","1");
INSERT INTO permission_role VALUES("101","3");
INSERT INTO permission_role VALUES("102","1");
INSERT INTO permission_role VALUES("102","3");
INSERT INTO permission_role VALUES("103","1");
INSERT INTO permission_role VALUES("103","3");
INSERT INTO permission_role VALUES("105","1");
INSERT INTO permission_role VALUES("105","3");
INSERT INTO permission_role VALUES("109","2");
INSERT INTO permission_role VALUES("109","4");
INSERT INTO permission_role VALUES("118","1");
INSERT INTO permission_role VALUES("118","3");
INSERT INTO permission_role VALUES("119","1");
INSERT INTO permission_role VALUES("119","3");
INSERT INTO permission_role VALUES("120","1");
INSERT INTO permission_role VALUES("120","3");
INSERT INTO permission_role VALUES("121","1");
INSERT INTO permission_role VALUES("121","3");





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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

INSERT INTO permissions VALUES("1","User","view_user","View User","View User","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("2","User","add_user","Add User","Add User","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("3","User","edit_user","Edit User","Edit User","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("4","User","delete_user","Delete User","Delete User","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("5","Transaction","view_transaction","View Transaction","View Transaction","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("6","Transaction","add_transaction","","","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("7","Transaction","edit_transaction","Edit Transaction","Edit Transaction","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("8","Transaction","delete_transaction","","","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("9","Deposit","view_deposit","View Deposit","View Deposit","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("10","Deposit","add_deposit","","","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("11","Deposit","edit_deposit","Edit Deposit","Edit Deposit","Admin","2018-05-14 04:37:22","2018-05-14 04:37:22");
INSERT INTO permissions VALUES("12","Deposit","delete_deposit","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("13","Withdrawal","view_withdrawal","View Withdrawal","View Withdrawal","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("14","Withdrawal","add_withdrawal","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("15","Withdrawal","edit_withdrawal","Edit Withdrawal","Edit Withdrawal","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("16","Withdrawal","delete_withdrawal","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("17","Transfer","view_transfer","View Transfer","View Transfer","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("18","Transfer","add_transfer","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("19","Transfer","edit_transfer","Edit Transfer","Edit Transfer","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("20","Transfer","delete_transfer","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("21","Exchange","view_exchange","View Exchange","View Exchange","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("22","Exchange","add_exchange","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("23","Exchange","edit_exchange","Edit Exchange","Edit Exchange","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("24","Exchange","delete_exchange","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("25","Voucher","view_voucher","View Voucher","View Voucher","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("26","Voucher","add_voucher","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("27","Voucher","edit_voucher","Edit Voucher","Edit Voucher","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("28","Voucher","delete_voucher","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("29","Request Payment","view_request_payment","View Request Payment","View Request Payment","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("30","Request Payment","add_request_payment","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("31","Request Payment","edit_request_payment","Edit Request Payment","Edit Request Payment","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("32","Request Payment","delete_request_payment","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("33","Revenue","view_revenue","View Revenue","View Revenue","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("34","Revenue","add_revenue","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("35","Revenue","edit_revenue","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("36","Revenue","delete_revenue","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("37","Email Template","view_email_template","View Email Template","View Email Template","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("38","Email Template","add_email_template","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("39","Email Template","edit_email_template","Edit Email Template","Edit Email Template","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("40","Email Template","delete_email_template","","","Admin","2018-05-14 04:37:23","2018-05-14 04:37:23");
INSERT INTO permissions VALUES("41","Activity Log","view_activity_log","View Activity Log","View Activity Log","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("42","Activity Log","add_activity_log","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("43","Activity Log","edit_activity_log","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("44","Activity Log","delete_activity_log","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("45","General Setting","view_general_setting","View General Setting","View General Setting","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("46","General Setting","add_general_setting","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("47","General Setting","edit_general_setting","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("48","General Setting","delete_general_setting","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("49","Social Links","view_social_links","View Social Links","View Social Links","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("50","Social Links","add_social_links","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("51","Social Links","edit_social_links","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("52","Social Links","delete_social_links","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("53","API Credentials","view_api_credentials","View API Credentials","View API Credentials","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("54","API Credentials","add_api_credentials","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("55","API Credentials","edit_api_credentials","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("56","API Credentials","delete_api_credentials","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("57","Payment Methods","view_payment_methods","View Payment Methods","View Payment Methods","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("58","Payment Methods","add_payment_methods","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("59","Payment Methods","edit_payment_methods","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("60","Payment Methods","delete_payment_methods","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("61","Email Setting","view_email_setting","View Email Setting","View Email Setting","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("62","Email Setting","add_email_setting","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("63","Email Setting","edit_email_setting","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("64","Email Setting","delete_email_setting","","","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("65","Currency","view_currency","View Currency","View Currency","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("66","Currency","add_currency","Add Currency","Add Currency","Admin","2018-05-14 04:37:24","2018-05-14 04:37:24");
INSERT INTO permissions VALUES("67","Currency","edit_currency","Edit Currency","Edit Currency","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("68","Currency","delete_currency","Delete Currency","Delete Currency","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("69","Country","view_country","View Country","View Country","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("70","Country","add_country","Add Country","Add Country","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("71","Country","edit_country","Edit Country","Edit Country","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("72","Country","delete_country","Delete Country","Delete Country","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("73","Language","view_language","View Language","View Language","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("74","Language","add_language","Add Language","Add Language","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("75","Language","edit_language","Edit Language","Edit Language","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("76","Language","delete_language","Delete Language","Delete Language","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("77","Role","view_role","View Role","View Role","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("78","Role","add_role","Add Role","Add Role","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("79","Role","edit_role","Edit Role","Edit Role","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("80","Role","delete_role","Delete Role","Delete Role","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("81","Fees","view_fees","View Fees","View Fees","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("82","Fees","add_fees","Add Fees","Add Fees","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("83","Fees","edit_fees","Edit Fees","Edit Fees","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("84","Fees","delete_fees","Delete Fees","Delete Fees","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("85","Database Backup","view_database_backup","View Database Backup","View Database Backup","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("86","Database Backup","add_database_backup","Add Database Backup","Add Database Backup","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("87","Database Backup","edit_database_backup","Edit Database Backup","Edit Database Backup","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("88","Database Backup","delete_database_backup","","","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("89","Meta","view_meta","View Meta","View Meta","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("90","Meta","add_meta","","","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("91","Meta","edit_meta","Edit Meta","Edit Meta","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("92","Meta","delete_meta","","","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("93","Page","view_page","View Page","View Page","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("94","Page","add_page","Add Page","Add Page","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("95","Page","edit_page","Edit Page","Edit Page","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("96","Page","delete_page","Delete Page","Delete Page","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("97","Preference","view_preference","View Preference","View Preference","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("98","Preference","add_preference","","","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("99","Preference","edit_preference","Edit Preference","Edit Preference","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("100","Preference","delete_preference","","","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("101","Merchant","view_merchant","View Merchant","View Merchant","Admin","2018-05-14 04:37:25","2018-05-14 04:37:25");
INSERT INTO permissions VALUES("102","Merchant","add_merchant","Add Merchant","Add Merchant","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("103","Merchant","edit_merchant","Edit Merchant","Edit Merchant","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("104","Merchant","delete_merchant","","","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("105","Merchant Payment","view_merchant_payment","View Merchant Payment","View Merchant Payment","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("106","Merchant Payment","add_merchant_payment","","","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("107","Merchant Payment","edit_merchant_payment","","","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("108","Merchant Payment","delete_merchant_payment","","","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("109","Transaction","manage_transaction","Manage Transaction","Manage Transaction","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("110","Deposit","manage_deposit","Manage Deposit","Manage Deposit","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("111","Withdrawal","manage_withdrawal","Manage Withdrawal","Manage Withdrawal","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("112","Transfer","manage_transfer","Manage Transfer","Manage Transfer","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("113","Exchange","manage_exchange","Manage Exchange","Manage Exchange","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("114","Voucher","manage_voucher","Manage Voucher","Manage Voucher","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("115","Request Payment","manage_request_payment","Manage Request Payment","Manage Request Payment","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("116","Merchant","manage_merchant","Manage Merchant","Manage Merchant","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("117","Merchant Payment","manage_merchant_payment","Manage Merchant Payment","Manage Merchant Payment","User","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("118","User Group","view_group","View User Group","View User Group","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("119","User Group","add_group","Add User Group","Add User Group","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("120","User Group","edit_group","Edit User Group","Edit User Group","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");
INSERT INTO permissions VALUES("121","User Group","delete_group","Delete User Group","Delete User Group","Admin","2018-05-14 04:37:26","2018-05-14 04:37:26");





CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO preferences VALUES("1","preference","row_per_page","100");
INSERT INTO preferences VALUES("2","preference","date_format","4");
INSERT INTO preferences VALUES("3","preference","date_sepa",".");
INSERT INTO preferences VALUES("4","preference","soft_name","Pay Money");
INSERT INTO preferences VALUES("5","company","site_short_name","SP");
INSERT INTO preferences VALUES("6","preference","percentage","2");
INSERT INTO preferences VALUES("7","preference","quantity","0");
INSERT INTO preferences VALUES("8","preference","date_format_type","yyyy.M.dd");
INSERT INTO preferences VALUES("9","company","company_name","Pay Money");
INSERT INTO preferences VALUES("10","company","company_email","admin@techvill.net");
INSERT INTO preferences VALUES("11","company","company_phone","123465798");
INSERT INTO preferences VALUES("12","company","company_street","City Hall Park Path");
INSERT INTO preferences VALUES("13","company","company_city","New York");
INSERT INTO preferences VALUES("14","company","company_state","New York");
INSERT INTO preferences VALUES("15","company","company_zipCode","10007");
INSERT INTO preferences VALUES("16","company","company_country_id","United States");
INSERT INTO preferences VALUES("17","company","dflt_lang","en");
INSERT INTO preferences VALUES("19","company","sates_type_id","1");
INSERT INTO preferences VALUES("20","company","logo","logo.jpg");
INSERT INTO preferences VALUES("21","company","vat_no","DE9999");
INSERT INTO preferences VALUES("22","company","stock_id","2018");
INSERT INTO preferences VALUES("23","preference","default_money_format","&nbsp;&#36;");
INSERT INTO preferences VALUES("24","preference","money_format","before");
INSERT INTO preferences VALUES("25","preference","decimal_format_amount","2");





CREATE TABLE IF NOT EXISTS `reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO reasons VALUES("1","I have not received the goods");
INSERT INTO reasons VALUES("2","Description does not matching with product");





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
  `invoice_no` varchar(50) DEFAULT NULL,
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
INSERT INTO role_user VALUES("1","2","User");
INSERT INTO role_user VALUES("2","2","User");
INSERT INTO role_user VALUES("3","2","User");
INSERT INTO role_user VALUES("4","2","User");
INSERT INTO role_user VALUES("5","2","User");
INSERT INTO role_user VALUES("6","2","User");
INSERT INTO role_user VALUES("7","2","User");
INSERT INTO role_user VALUES("8","2","User");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO roles VALUES("1","admin","Admin","Admin","Admin","2018-05-08 12:17:13","2018-05-08 12:17:13");
INSERT INTO roles VALUES("2","user","User","User","User","2018-05-08 12:17:13","2018-05-08 12:17:13");
INSERT INTO roles VALUES("3","Customer","Customer","Customer","Admin","2018-05-21 07:40:35","2018-05-21 07:40:35");
INSERT INTO roles VALUES("4","test user","test user","test user","User","2018-05-21 08:41:27","2018-05-21 08:41:27");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

INSERT INTO settings VALUES("42","name","Pay Money","general");
INSERT INTO settings VALUES("43","logo","1527566290_logo.jpg","general");
INSERT INTO settings VALUES("44","favicon","1527485297_favicon.ico","general");
INSERT INTO settings VALUES("45","head_code","Pay Money","general");
INSERT INTO settings VALUES("46","default_currency","12","general");
INSERT INTO settings VALUES("47","default_language","1","general");
INSERT INTO settings VALUES("48","email_logo","email_logo.png","general");
INSERT INTO settings VALUES("49","client_id","AXxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk","PayPal");
INSERT INTO settings VALUES("50","client_secret","EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80","PayPal");
INSERT INTO settings VALUES("51","signature","AFcWxV21C7fd0v3bYYYRCpSSRl31ABayz5pdk84jno7.Udj6-U8ffwbT","PayPal");
INSERT INTO settings VALUES("52","mode","sandbox","PayPal");
INSERT INTO settings VALUES("53","publishable","pk_test_c2TDWXsjPkimdM8PIltO6d8H","Stripe");
INSERT INTO settings VALUES("54","secret","sk_test_UWTgGYIdj8igmbVMgTi0ILPm","Stripe");
INSERT INTO settings VALUES("55","driver","smtp","email");
INSERT INTO settings VALUES("56","host","mail.techvill.net","email");
INSERT INTO settings VALUES("57","port","587","email");
INSERT INTO settings VALUES("58","from_address","stockpile@techvill.net","email");
INSERT INTO settings VALUES("59","from_name","Pay Money","email");
INSERT INTO settings VALUES("60","encryption","tls","email");
INSERT INTO settings VALUES("61","username","stockpile@techvill.net","email");
INSERT INTO settings VALUES("62","password","nT4HD2XEdRUX","email");
INSERT INTO settings VALUES("70","key","AIzaSyC2lQCpLk6SZ3U5zBaV7y4n-lXfqjsMQXM","googleMap");
INSERT INTO settings VALUES("71","client_id","B8SZ7qyNwoGkRlSlXZpZWIjy","google");
INSERT INTO settings VALUES("72","client_secret","B8SZ7qyNwoGkRlSlXZpZWIjy","google");
INSERT INTO settings VALUES("73","client_id","337273813338799","facebook");
INSERT INTO settings VALUES("74","client_secret","a678e247401b80488e7caffd48f89e32","facebook");
INSERT INTO settings VALUES("75","seller_id","901381377","2Checkout");
INSERT INTO settings VALUES("78","mode","sandbox","2Checkout");
INSERT INTO settings VALUES("79","mode","sandbox","PayUmoney");
INSERT INTO settings VALUES("80","key","rjQUPktU","PayUmoney");
INSERT INTO settings VALUES("81","salt","e5iIg1jwi8","PayUmoney");
INSERT INTO settings VALUES("82","merchant_id","95cb8822db315f03d9ec3206a3a368e6","Coinpayments");
INSERT INTO settings VALUES("83","private_key","Db7ddcee4Adcc425e6858F016027389189cA18f1c116BdE504fd67FdBe2aD571","Coinpayments");
INSERT INTO settings VALUES("84","public_key","5b72067ff7830fd8ba7dbbe94afc00831ea27a8139255f928b8171abf204f3b1","Coinpayments");





CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO socials VALUES("1","facebook","<i class=\"ti-facebook\" aria-hidden=\"true\"></i>","http://facebook.com");
INSERT INTO socials VALUES("2","google_plus","<i class=\"ti-google plus\" aria-hidden=\"true\"></i>","http://plus.google.com");
INSERT INTO socials VALUES("3","twitter","<i class=\"ti-twitter\" aria-hidden=\"true\"></i>","http://twitter.com");
INSERT INTO socials VALUES("4","linkedin","<i class=\"ti-linkedin\" aria-hidden=\"true\"></i>","http://linkedin.com");
INSERT INTO socials VALUES("5","pinterest","<i class=\"ti-pinterest\" aria-hidden=\"true\"></i>","http://pinterest.com");
INSERT INTO socials VALUES("6","youtube","<i class=\"ti-youtube\" aria-hidden=\"true\"></i>","https://youtube.com");
INSERT INTO socials VALUES("7","instagram","<i class=\"ti-instagram\" aria-hidden=\"true\"></i>","http://instagram.com");





CREATE TABLE IF NOT EXISTS `ticket_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `message` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` enum('admin','user') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_replies_admin_id_index` (`admin_id`),
  KEY `ticket_replies_user_id_index` (`user_id`),
  KEY `ticket_replies_ticket_id_index` (`ticket_id`),
  CONSTRAINT `ticket_replies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO ticket_replies VALUES("1","1","4","1","<p>hi....</p>","2018-05-31 13:34:20","user");
INSERT INTO ticket_replies VALUES("2","1","4","2","<p>Hello</p>","2018-05-31 13:42:53","user");
INSERT INTO ticket_replies VALUES("3","1","4","2","<p>Closed</p>","2018-05-31 13:44:24","user");





CREATE TABLE IF NOT EXISTS `ticket_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO ticket_statuses VALUES("1","Open","","0");
INSERT INTO ticket_statuses VALUES("2","In Progress","800000","1");
INSERT INTO ticket_statuses VALUES("3","Hold","808080","0");
INSERT INTO ticket_statuses VALUES("4","Closed","FF0000","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO tickets VALUES("1","1","4","3","Test","Test&nbsp;\n\nTest&nbsp;\n\nTest&nbsp;\n\nTest&nbsp;\n\nTest","TIC-7XZCGF","Normal","2018-05-31 13:34:20","2018-05-31 13:34:01");
INSERT INTO tickets VALUES("2","1","4","3","Test2","<p>Test2&nbsp;Test2&nbsp;Test2&nbsp;Test2</p>","TIC-ZIH5EQ","High","2018-05-31 13:44:24","2018-05-31 13:37:47");





CREATE TABLE IF NOT EXISTS `transaction_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` enum('Deposit','Withdrawal','Transferred','Received','Exchange_From','Exchange_To','Voucher_Created','Voucher_Activated','Request_Created','Request_Accepted','Payment_Sent','Payment_Received') NOT NULL,
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
INSERT INTO transaction_types VALUES("9","Request_Created");
INSERT INTO transaction_types VALUES("10","Request_Accepted");
INSERT INTO transaction_types VALUES("11","Payment_Sent");
INSERT INTO transaction_types VALUES("12","Payment_Received");





CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `end_user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `merchant_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID',
  `transaction_reference_id` int(11) NOT NULL DEFAULT '0',
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `type` enum('Deposit','Withdrawl','Transferred','Received','Exchange_From','Exchange_To','Voucher_Created','Voucher_Activated','Request_Created','Request_Accepted','Payment_Sent','Payment_Received') NOT NULL,
  `user_type` enum('registered','unregistered') NOT NULL DEFAULT 'registered',
  `email` varchar(191) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `subtotal` double(10,2) DEFAULT '0.00',
  `percentage` double(10,2) DEFAULT '0.00',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `total` double(10,2) DEFAULT '0.00',
  `note` varchar(100) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transactions_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `transactions_user_id_index` (`user_id`),
  KEY `transactions_end_user_id_index` (`end_user_id`),
  KEY `transactions_currency_id_index` (`currency_id`),
  KEY `transactions_payment_method_id_index` (`payment_method_id`),
  KEY `transactions_merchant_id_index` (`merchant_id`),
  KEY `transactions_email_index` (`email`),
  KEY `transactions_phone_index` (`phone`),
  CONSTRAINT `transactions_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_end_user_id_foreign` FOREIGN KEY (`end_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

INSERT INTO transactions VALUES("1","2","","12","2","","FTPHR6HM1JLVS","1","1","Deposit","registered","","","30000.00","0.00","3600.00","11.00","33611.00","","Success","2018-05-31 13:09:43","2018-05-31 13:09:43");
INSERT INTO transactions VALUES("2","2","1","12","","","MNHGWO3WJRCDZ","1","3","Deposit","registered","parvez.techvill@gmail.com","","3000.00","0.00","90.00","13.00","-3103.00","test","Success","2018-05-31 13:10:42","2018-05-31 13:10:42");
INSERT INTO transactions VALUES("3","1","2","12","","","MNHGWO3WJRCDZ","1","4","Deposit","registered","parvez.techvill@gmail.com","","3000.00","0.00","0.00","0.00","3000.00","test","Success","2018-05-31 13:10:42","2018-05-31 13:10:42");
INSERT INTO transactions VALUES("4","4","","12","2","","8VRX8LD8NOAP4","2","1","Deposit","registered","","","500.00","0.00","60.00","11.00","571.00","","Success","2018-05-31 13:52:57","2018-05-31 13:52:57");
INSERT INTO transactions VALUES("5","4","","12","2","","8GJYLFVYB9BFD","3","1","Deposit","registered","","","500.00","0.00","60.00","11.00","571.00","","Success","2018-05-31 13:52:58","2018-05-31 13:52:58");
INSERT INTO transactions VALUES("6","4","","12","2","","C6WJK8TNJX89F","4","1","Deposit","registered","","","500.00","0.00","60.00","11.00","571.00","","Success","2018-05-31 13:52:59","2018-05-31 13:52:59");
INSERT INTO transactions VALUES("7","4","","12","","","CDMWBVSZ4F71I","1","5","Deposit","registered","","","50.00","0.00","7.00","14.00","-71.00","","Success","2018-05-31 13:54:24","2018-05-31 13:54:24");
INSERT INTO transactions VALUES("8","4","","13","","","CDMWBVSZ4F71I","1","6","Deposit","registered","","","32.50","0.00","7.00","14.00","53.50","","Success","2018-05-31 13:54:24","2018-05-31 13:54:24");
INSERT INTO transactions VALUES("9","6","","12","2","","0OFUTX7DCJNJB","5","1","Deposit","registered","","","1000.00","12.00","120.00","11.00","1131.00","","Success","2018-05-31 14:03:03","2018-05-31 14:03:03");
INSERT INTO transactions VALUES("10","6","6","12","","","2FVORJYCY7NUL","1","7","Deposit","registered","","","10.00","0.00","0.00","0.00","-10.00","","Pending","2018-05-31 14:03:28","2018-05-31 14:04:02");
INSERT INTO transactions VALUES("11","6","6","12","","","YBTPJ8ISTBEBF","1","8","Deposit","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-05-31 14:04:02","2018-05-31 14:04:02");
INSERT INTO transactions VALUES("12","6","","12","","","VKLCNV2DC7ABH","2","3","Deposit","unregistered","lenin.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","test","Pending","2018-05-31 14:12:59","2018-05-31 14:12:59");
INSERT INTO transactions VALUES("13","","6","12","","","VKLCNV2DC7ABH","2","4","Deposit","unregistered","lenin.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","test","Pending","2018-05-31 14:12:59","2018-05-31 14:12:59");
INSERT INTO transactions VALUES("14","2","","12","2","","TWT797EON2PZP","1","2","Deposit","registered","","","200.00","0.00","4.00","12.00","-216.00","","Pending","2018-05-31 14:13:47","2018-05-31 14:13:47");
INSERT INTO transactions VALUES("15","5","","12","2","","A1OVOAMFIS1AH","6","1","Deposit","registered","","","500.00","12.00","60.00","11.00","571.00","","Success","2018-05-31 14:30:47","2018-05-31 14:30:47");
INSERT INTO transactions VALUES("16","1","2","12","","","FCPUEPOHOIZ8K","3","3","Deposit","registered","parvez.agvbd@gmail.com","","313.00","3.00","9.39","13.00","-335.39","yyy","Success","2018-05-31 14:34:26","2018-05-31 14:34:26");
INSERT INTO transactions VALUES("17","2","1","12","","","FCPUEPOHOIZ8K","3","4","Deposit","registered","parvez.agvbd@gmail.com","","313.00","0.00","0.00","0.00","313.00","yyy","Success","2018-05-31 14:34:26","2018-05-31 14:34:26");
INSERT INTO transactions VALUES("18","1","1","12","","","C0LXGF5MIH6JK","2","7","Deposit","registered","","","140.00","0.00","0.00","0.00","-140.00","","Pending","2018-05-31 14:34:35","2018-05-31 14:57:01");
INSERT INTO transactions VALUES("19","7","","12","2","","R8XEOBIHMTA1H","7","1","Deposit","registered","","","5000.00","12.00","600.00","11.00","5611.00","","Success","2018-05-31 14:37:41","2018-05-31 14:37:41");
INSERT INTO transactions VALUES("20","1","1","12","","","YARBG7JLZN8UY","2","8","Deposit","registered","","","140.00","0.00","0.00","0.00","140.00","","Success","2018-05-31 14:57:01","2018-05-31 14:57:01");
INSERT INTO transactions VALUES("21","4","","12","","","PTWLDKMSF3ZTX","2","5","Deposit","registered","","","20.00","0.00","0.00","0.00","-20.00","","Success","2018-05-31 15:01:20","2018-05-31 15:01:20");
INSERT INTO transactions VALUES("22","4","","19","","","PTWLDKMSF3ZTX","2","6","Deposit","registered","","","70.80","0.00","0.00","0.00","70.80","","Success","2018-05-31 15:01:20","2018-05-31 15:01:20");
INSERT INTO transactions VALUES("23","1","","12","","","OZPLXLBLVA0AU","3","5","Deposit","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-05-31 15:06:32","2018-05-31 15:06:32");
INSERT INTO transactions VALUES("24","1","","13","","","OZPLXLBLVA0AU","3","6","Deposit","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-05-31 15:06:32","2018-05-31 15:06:32");
INSERT INTO transactions VALUES("25","1","","12","","","K5ML1W5PWEBAZ","4","5","Deposit","registered","","","100.00","2.00","2.00","2.00","-104.00","","Success","2018-05-31 15:06:52","2018-05-31 15:06:52");
INSERT INTO transactions VALUES("26","1","","26","","","K5ML1W5PWEBAZ","4","6","Deposit","registered","","","8298.00","0.00","0.00","0.00","8298.00","","Success","2018-05-31 15:06:52","2018-05-31 15:06:52");
INSERT INTO transactions VALUES("27","1","","26","","","NGAKUT27URJFO","5","5","Deposit","registered","","","12.00","0.00","0.24","10.00","-22.24","","Success","2018-05-31 15:07:06","2018-05-31 15:07:06");
INSERT INTO transactions VALUES("28","1","","12","","","NGAKUT27URJFO","5","6","Deposit","registered","","","0.14","0.00","0.24","10.00","10.38","","Success","2018-05-31 15:07:06","2018-05-31 15:07:06");
INSERT INTO transactions VALUES("29","5","","12","","","AWEEIDM0T3UI7","6","5","Deposit","registered","","","15.00","2.00","0.30","2.00","-17.30","","Success","2018-05-31 15:15:47","2018-05-31 15:15:47");
INSERT INTO transactions VALUES("30","5","","26","","","AWEEIDM0T3UI7","6","6","Deposit","registered","","","1244.70","0.00","0.00","0.00","1244.70","","Success","2018-05-31 15:15:47","2018-05-31 15:15:47");
INSERT INTO transactions VALUES("31","5","","26","","","XVTAV1KL9HD8W","7","5","Deposit","registered","","","2.00","0.00","0.04","10.00","-12.04","","Success","2018-05-31 15:16:04","2018-05-31 15:16:04");
INSERT INTO transactions VALUES("32","5","","12","","","XVTAV1KL9HD8W","7","6","Deposit","registered","","","0.02","0.00","0.00","0.00","0.02","","Success","2018-05-31 15:16:04","2018-05-31 15:16:04");
INSERT INTO transactions VALUES("33","1","","12","","","GRXJJSF1YG2NX","8","5","Deposit","registered","","","15.00","3.00","0.45","3.00","-18.45","","Success","2018-05-31 15:18:41","2018-05-31 15:18:41");
INSERT INTO transactions VALUES("34","1","","14","","","GRXJJSF1YG2NX","8","6","Deposit","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-05-31 15:18:41","2018-05-31 15:18:41");
INSERT INTO transactions VALUES("35","1","","14","","","5XVGPPOHKUPVS","9","5","Deposit","registered","","","1.00","0.00","0.03","12.00","-13.03","","Success","2018-05-31 15:19:55","2018-05-31 15:19:55");
INSERT INTO transactions VALUES("36","1","","12","","","5XVGPPOHKUPVS","9","6","Deposit","registered","","","1.54","0.00","0.00","0.00","1.54","","Success","2018-05-31 15:19:55","2018-05-31 15:19:55");
INSERT INTO transactions VALUES("37","8","","12","2","","ODL7V7QIRNUNW","8","1","Deposit","registered","","","200.00","12.00","24.00","11.00","235.00","","Success","2018-05-31 15:20:01","2018-05-31 15:20:01");
INSERT INTO transactions VALUES("38","1","","26","","","ZMMACLIG8NZYV","10","5","Deposit","registered","","","12.00","0.00","0.24","10.00","-22.24","","Success","2018-05-31 15:20:44","2018-05-31 15:20:44");
INSERT INTO transactions VALUES("39","1","","12","","","ZMMACLIG8NZYV","10","6","Deposit","registered","","","0.14","0.00","0.00","0.00","0.14","","Success","2018-05-31 15:20:44","2018-05-31 15:20:44");
INSERT INTO transactions VALUES("40","1","","26","","","OA6JHCLLKBBEB","11","5","Deposit","registered","","","1.00","0.00","0.02","10.00","-11.02","","Success","2018-05-31 15:21:28","2018-05-31 15:21:28");
INSERT INTO transactions VALUES("41","1","","12","","","OA6JHCLLKBBEB","11","6","Deposit","registered","","","0.01","0.00","0.00","0.00","0.01","","Success","2018-05-31 15:21:28","2018-05-31 15:21:28");
INSERT INTO transactions VALUES("42","1","","26","","","CAZXWLMVTYK6Z","12","5","Deposit","registered","","","2.00","0.00","0.04","10.00","-12.04","","Success","2018-05-31 15:22:24","2018-05-31 15:22:24");
INSERT INTO transactions VALUES("43","1","","12","","","CAZXWLMVTYK6Z","12","6","Deposit","registered","","","0.02","0.00","0.00","0.00","0.02","","Success","2018-05-31 15:22:24","2018-05-31 15:22:24");
INSERT INTO transactions VALUES("44","8","","12","2","","CPOUKODUA8VDJ","2","2","Deposit","registered","","","5.00","0.00","0.10","12.00","-17.10","","Pending","2018-05-31 15:22:44","2018-05-31 15:22:44");
INSERT INTO transactions VALUES("45","1","","26","","","PEXM3QWINGCRU","3","7","Deposit","registered","","","45.00","0.00","0.00","0.00","-45.00","","Pending","2018-05-31 15:26:24","2018-05-31 15:26:24");
INSERT INTO transactions VALUES("46","8","","12","2","","PA3NBWBBPHTCB","3","2","Deposit","registered","","","5.00","0.00","0.10","12.00","-17.10","","Pending","2018-05-31 15:31:26","2018-05-31 15:31:26");
INSERT INTO transactions VALUES("47","1","2","26","","","Z7OTLJ0JI4BB4","4","3","Deposit","registered","parvez.agvbd@gmail.com","","120.00","5.00","6.00","15.00","-141.00","test","Success","2018-05-31 20:56:31","2018-05-31 20:56:31");
INSERT INTO transactions VALUES("48","2","1","26","","","Z7OTLJ0JI4BB4","4","4","Deposit","registered","parvez.agvbd@gmail.com","","120.00","0.00","0.00","0.00","120.00","test","Success","2018-05-31 20:56:31","2018-05-31 20:56:31");
INSERT INTO transactions VALUES("49","1","2","26","","","4EJGV0TIQMGK5","5","3","Deposit","registered","parvez.agvbd@gmail.com","","11.00","5.00","0.55","15.00","-26.55","jj","Success","2018-05-31 20:56:47","2018-05-31 20:56:47");
INSERT INTO transactions VALUES("50","2","1","26","","","4EJGV0TIQMGK5","5","4","Deposit","registered","parvez.agvbd@gmail.com","","11.00","0.00","0.00","0.00","11.00","jj","Success","2018-05-31 20:56:47","2018-05-31 20:56:47");
INSERT INTO transactions VALUES("51","2","","12","","","CW2EKB3QMDZXL","13","5","Deposit","registered","","","1000.00","2.00","20.00","2.00","-1022.00","","Success","2018-05-31 21:14:52","2018-05-31 21:14:52");
INSERT INTO transactions VALUES("52","2","","26","","","CW2EKB3QMDZXL","13","6","Deposit","registered","","","82980.00","0.00","0.00","0.00","82980.00","","Success","2018-05-31 21:14:52","2018-05-31 21:14:52");
INSERT INTO transactions VALUES("53","2","","26","2","","Q3SXJDRIYJLJM","9","1","Deposit","registered","","","274.00","10.00","31.00","5.00","346.00","","Success","2018-05-31 21:22:57","2018-05-31 21:22:57");
INSERT INTO transactions VALUES("54","1","2","12","","","OJNQJI31Q3NMU","6","3","Deposit","registered","parvez.agvbd@gmail.com","","133.00","3.00","3.99","13.00","-149.99","ppp","Success","2018-06-01 16:53:56","2018-06-01 16:53:56");
INSERT INTO transactions VALUES("55","2","1","12","","","OJNQJI31Q3NMU","6","4","Deposit","registered","parvez.agvbd@gmail.com","","133.00","0.00","0.00","0.00","133.00","ppp","Success","2018-06-01 16:53:56","2018-06-01 16:53:56");
INSERT INTO transactions VALUES("56","1","2","12","","","FZMI2PVTIQ8UT","7","3","Deposit","registered","parvez.agvbd@gmail.com","","23.00","3.00","0.69","13.00","-36.69","rr","Success","2018-06-01 16:55:22","2018-06-01 16:55:22");
INSERT INTO transactions VALUES("57","2","1","12","","","FZMI2PVTIQ8UT","7","4","Deposit","registered","parvez.agvbd@gmail.com","","23.00","0.00","0.00","0.00","23.00","rr","Success","2018-06-01 16:55:22","2018-06-01 16:55:22");
INSERT INTO transactions VALUES("58","1","2","12","","","QVPNT1KODWDRC","8","3","Deposit","registered","parvez.agvbd@gmail.com","","23.00","3.00","0.69","13.00","-36.69","rr","Success","2018-06-01 16:56:59","2018-06-01 16:56:59");
INSERT INTO transactions VALUES("59","2","1","12","","","QVPNT1KODWDRC","8","4","Deposit","registered","parvez.agvbd@gmail.com","","23.00","0.00","0.00","0.00","23.00","rr","Success","2018-06-01 16:56:59","2018-06-01 16:56:59");
INSERT INTO transactions VALUES("60","1","2","12","","","HSZYLIGYWKOFE","9","3","Deposit","registered","parvez.agvbd@gmail.com","","23.00","3.00","0.69","13.00","-36.69","rr","Success","2018-06-01 16:57:18","2018-06-01 16:57:18");
INSERT INTO transactions VALUES("61","2","1","12","","","HSZYLIGYWKOFE","9","4","Deposit","registered","parvez.agvbd@gmail.com","","23.00","0.00","0.00","0.00","23.00","rr","Success","2018-06-01 16:57:18","2018-06-01 16:57:18");
INSERT INTO transactions VALUES("62","1","2","12","","","55EY9LMB3NZHC","10","3","Deposit","registered","parvez.agvbd@gmail.com","","999.00","3.00","29.97","13.00","-1041.97","999","Success","2018-06-01 17:10:06","2018-06-01 17:10:06");
INSERT INTO transactions VALUES("63","2","1","12","","","55EY9LMB3NZHC","10","4","Deposit","registered","parvez.agvbd@gmail.com","","999.00","0.00","0.00","0.00","999.00","999","Success","2018-06-01 17:10:06","2018-06-01 17:10:06");
INSERT INTO transactions VALUES("64","1","2","12","","","KUHSX24DPBTL3","11","3","Deposit","registered","parvez.agvbd@gmail.com","","145.00","3.00","4.35","13.00","-162.35","145","Success","2018-06-01 17:49:02","2018-06-01 17:49:02");
INSERT INTO transactions VALUES("65","2","1","12","","","KUHSX24DPBTL3","11","4","Deposit","registered","parvez.agvbd@gmail.com","","145.00","0.00","0.00","0.00","145.00","145","Success","2018-06-01 17:49:02","2018-06-01 17:49:02");
INSERT INTO transactions VALUES("66","1","2","12","","","DBNDI1ADLML1D","12","3","Deposit","registered","parvez.agvbd@gmail.com","","145.00","3.00","4.35","13.00","-162.35","145","Success","2018-06-01 17:53:03","2018-06-01 17:53:03");
INSERT INTO transactions VALUES("67","2","1","12","","","DBNDI1ADLML1D","12","4","Deposit","registered","parvez.agvbd@gmail.com","","145.00","0.00","0.00","0.00","145.00","145","Success","2018-06-01 17:53:03","2018-06-01 17:53:03");





CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `note` varchar(191) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transfers_sender_id_index` (`sender_id`),
  KEY `transfers_receiver_id_index` (`receiver_id`),
  KEY `transfers_currency_id_index` (`currency_id`),
  CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO transfers VALUES("1","2","1","12","MNHGWO3WJRCDZ","103.00","3000.00","test","parvez.techvill@gmail.com","","Success","2018-05-31 13:10:42");
INSERT INTO transfers VALUES("2","6","","12","VKLCNV2DC7ABH","16.00","100.00","test","lenin.techvill@gmail.com","","Pending","2018-05-31 14:12:59");
INSERT INTO transfers VALUES("3","1","2","12","FCPUEPOHOIZ8K","22.39","313.00","yyy","parvez.agvbd@gmail.com","","Success","2018-05-31 14:34:25");
INSERT INTO transfers VALUES("4","1","2","26","Z7OTLJ0JI4BB4","21.00","120.00","test","parvez.agvbd@gmail.com","","Success","2018-05-31 20:56:31");
INSERT INTO transfers VALUES("5","1","2","26","4EJGV0TIQMGK5","15.55","11.00","jj","parvez.agvbd@gmail.com","","Success","2018-05-31 20:56:47");
INSERT INTO transfers VALUES("6","1","2","12","OJNQJI31Q3NMU","16.99","133.00","ppp","parvez.agvbd@gmail.com","","Success","2018-06-01 16:53:56");
INSERT INTO transfers VALUES("7","1","2","12","FZMI2PVTIQ8UT","13.69","23.00","rr","parvez.agvbd@gmail.com","","Success","2018-06-01 16:55:22");
INSERT INTO transfers VALUES("8","1","2","12","QVPNT1KODWDRC","13.69","23.00","rr","parvez.agvbd@gmail.com","","Success","2018-06-01 16:56:58");
INSERT INTO transfers VALUES("9","1","2","12","HSZYLIGYWKOFE","13.69","23.00","rr","parvez.agvbd@gmail.com","","Success","2018-06-01 16:57:18");
INSERT INTO transfers VALUES("10","1","2","12","55EY9LMB3NZHC","42.97","999.00","999","parvez.agvbd@gmail.com","","Success","2018-06-01 17:10:06");
INSERT INTO transfers VALUES("11","1","2","12","KUHSX24DPBTL3","17.35","145.00","145","parvez.agvbd@gmail.com","","Success","2018-06-01 17:49:02");
INSERT INTO transfers VALUES("12","1","2","12","DBNDI1ADLML1D","17.35","145.00","145","parvez.agvbd@gmail.com","","Success","2018-06-01 17:53:03");





CREATE TABLE IF NOT EXISTS `unregistered_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_type` enum('Transfer','Request Payment') NOT NULL,
  `transaction_reference_id` int(11) NOT NULL DEFAULT '0',
  `phone` int(11) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unregistered_transactions_transaction_reference_id_index` (`transaction_reference_id`),
  KEY `unregistered_transactions_phone_index` (`phone`),
  KEY `unregistered_transactions_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO user_details VALUES("1","1","1","","","","","","");
INSERT INTO user_details VALUES("2","2","1","","","","","","");
INSERT INTO user_details VALUES("3","3","1","","","","","","");
INSERT INTO user_details VALUES("4","4","1","","","","","","");
INSERT INTO user_details VALUES("5","5","1","","","","","","");
INSERT INTO user_details VALUES("6","6","1","","","","","","");
INSERT INTO user_details VALUES("7","7","1","","","","","","");
INSERT INTO user_details VALUES("8","8","1","","","","","","");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phrase` varchar(191) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `role_id` int(10) unsigned DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  `user_detail_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_role_id_index` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO users VALUES("1","parvez.techvill","parvez","techvill","1521108069","parvez.techvill@gmail.com","$2y$10$T/kGqKgrcMvIKLlzAy/DVukxZToa5NzSlpDASFIGW2lDUElD/nXVG","","Active","2","ZoAnKeK8KWpDuUQ3GES1CC3Nf5rYivz9FO2RTl4fE8OGvzOiXr4N6y805BeU","2018-05-31 13:07:53","2018-05-31 13:07:53","","0");
INSERT INTO users VALUES("2","parvez.agvbd","parvez","agvbd","1848363013","parvez.agvbd@gmail.com","$2y$10$LzTLzvSkQL8FTLkozMz6uuX8uUvGFbLGU4lv8BYItSPAYIzRF07eK","","Active","2","0GaLYMKEDZnDGkzkpX50Tt99FCdrkZBtYZrnVzVEPU7glzmRFsiTowtfOVs1","2018-05-31 13:08:16","2018-05-31 13:08:16","","0");
INSERT INTO users VALUES("3","borna.techvill","<script>alert(\"XSS\");<script>","Borna","168870000","borna.techvill@gmail.com","$2y$10$F2V9wC7HndHXxPEM2YA/CulxBr0yaYT13haU7DX77gTs5AOKbdqPK","","Active","2","AH07aVjm9e9RSf22ewbIaH0h2bytVKNIh6A9xupV7niyOqo4qZfm6ah4TUYS","2018-05-31 13:19:11","2018-05-31 13:19:11","","0");
INSERT INTO users VALUES("4","test1","Farzana","Borna","123456","test1@gmail.com","$2y$10$SixzSSTuvlewKFXHOVLbaejCD/EMzAB1Uw7XE0nSBqWR1kb.UWVfK","asas","Active","2","JW6AeO2LKGIkW37NLAaj5ruS8Ksu4xeOAGckyS48Gx9hGdNG2VgGEAwluksL","2018-05-31 13:22:59","2018-05-31 14:59:35","","0");
INSERT INTO users VALUES("5","aminul.techvill","Aminul","Islam","2147483647","aminul.techvill@gmail.com","$2y$10$x4oGk3ELVxG7EGy6VTREQuwoTqQfsY3krZFfEC4jz0lLo8sx3WOIK","","Active","2","jIOrsRn1tqiZwfEtYwEhfbaeAy3yon0mJzC4mAxX6143Rq2wWXnRA0tE45Yp","2018-05-31 13:41:36","2018-05-31 13:41:36","","0");
INSERT INTO users VALUES("6","lenin.rock","Tauhidul","Hasan","1717170543","lenin.rock@gmail.com","$2y$10$tokrbsyOpXEQLy45U9EkueuTxNE0vCpP7QXPCnmDPOcLa3nQQgh3W","","Active","2","","2018-05-31 13:57:24","2018-05-31 13:57:24","","0");
INSERT INTO users VALUES("7","tuhin.techvill","Tuhin","Hossain","12345","tuhin.techvill@gmail.com","$2y$10$ACkuFaVYkrhvgxjOhvFR3.UMNbyJIQxiAz.K2Qc7hNyyzgJpzToKq","","Active","2","A9PtxtZWxIMbzgBdZWdEEKWGpC1t2jnVw9kNeIv89wNAadxfFt2iokxQfnw6","2018-05-31 14:36:40","2018-05-31 14:36:40","","0");
INSERT INTO users VALUES("8","test","Test","test","1688756715","test@techvill.net","$2y$10$AnD/wQH.Cqq6nZzEJVGtEegLgQKQgmM1UgrtgHiTAfgv6NaAsbKxe","","Active","2","aMPewUs9FzxcViyUD6Kxaz4k14gGXYPlUWq0I9NIAe3ZNKhfReskVPSC0Aok","2018-05-31 15:19:00","2018-05-31 15:19:00","","0");





CREATE TABLE IF NOT EXISTS `vouchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `activator_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Voucher)',
  `amount` double(10,2) DEFAULT '0.00',
  `code` varchar(50) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vouchers_user_id_index` (`user_id`),
  KEY `vouchers_activator_id_index` (`activator_id`),
  KEY `vouchers_currency_id_index` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO vouchers VALUES("1","6","6","12","2FVORJYCY7NUL","10.00","CSC810FVTYJZVWZSSN9FXYKXRCKZCH","Success","2018-05-31 14:03:28","2018-05-31 14:04:02");
INSERT INTO vouchers VALUES("2","1","1","12","C0LXGF5MIH6JK","140.00","AXBBJM1X0LLWZCJ7YUYGQPULMWVXXO","Success","2018-05-31 14:34:35","2018-05-31 14:57:00");
INSERT INTO vouchers VALUES("3","1","","26","PEXM3QWINGCRU","45.00","PKVPCYCJLWESY6TCXOHHYSPYDTOPJY","Pending","2018-05-31 15:26:24","2018-05-31 15:26:24");





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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO wallets VALUES("1","1","12","909.73","Yes","2018-05-31 13:07:53","2018-06-01 17:53:03");
INSERT INTO wallets VALUES("2","2","12","27485.00","Yes","2018-05-31 13:08:16","2018-06-01 17:53:03");
INSERT INTO wallets VALUES("3","3","12","0.00","Yes","2018-05-31 13:19:11","2018-05-31 15:33:05");
INSERT INTO wallets VALUES("4","4","12","1430.00","Yes","2018-05-31 13:22:59","2018-05-31 15:36:45");
INSERT INTO wallets VALUES("5","5","12","485.02","Yes","2018-05-31 13:41:36","2018-05-31 15:16:04");
INSERT INTO wallets VALUES("6","4","13","32.50","No","2018-05-31 13:54:24","2018-05-31 15:36:45");
INSERT INTO wallets VALUES("7","6","12","884.00","Yes","2018-05-31 13:57:25","2018-05-31 14:12:59");
INSERT INTO wallets VALUES("8","6","24","0.00","Yes","2018-05-31 14:00:19","2018-05-31 14:00:19");
INSERT INTO wallets VALUES("9","6","14","0.00","Yes","2018-05-31 14:03:23","2018-05-31 14:03:23");
INSERT INTO wallets VALUES("10","7","12","5000.00","Yes","2018-05-31 14:36:40","2018-05-31 14:37:41");
INSERT INTO wallets VALUES("11","1","13","9.75","No","2018-05-31 14:59:17","2018-06-01 17:45:37");
INSERT INTO wallets VALUES("12","4","19","70.80","No","2018-05-31 15:01:20","2018-05-31 15:36:45");
INSERT INTO wallets VALUES("13","1","26","8058.45","No","2018-05-31 15:06:52","2018-06-01 17:45:37");
INSERT INTO wallets VALUES("14","5","26","1242.70","Yes","2018-05-31 15:15:46","2018-05-31 15:16:04");
INSERT INTO wallets VALUES("15","1","14","8.75","No","2018-05-31 15:18:41","2018-06-01 17:45:37");
INSERT INTO wallets VALUES("16","8","12","165.80","Yes","2018-05-31 15:19:01","2018-05-31 15:37:22");
INSERT INTO wallets VALUES("17","2","26","83385.00","No","2018-05-31 20:56:31","2018-05-31 21:22:58");





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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO withdrawals VALUES("1","2","12","2","TWT797EON2PZP","4.00","12.00","184.00","200.00","parvez.techvill@gmail.com","Pending","2018-05-31 14:13:47","2018-05-31 14:13:47");
INSERT INTO withdrawals VALUES("2","8","12","2","CPOUKODUA8VDJ","0.10","12.00","-7.10","5.00","borna.techvill@gmail.com","Pending","2018-05-31 15:22:44","2018-05-31 15:22:44");
INSERT INTO withdrawals VALUES("3","8","12","2","PA3NBWBBPHTCB","0.10","12.00","-7.10","5.00","borna.techvill@gmail.com","Pending","2018-05-31 15:31:26","2018-05-31 15:31:26");



