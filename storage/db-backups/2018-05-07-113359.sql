

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

INSERT INTO activity_logs VALUES("1","6","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-29 13:59:40");
INSERT INTO activity_logs VALUES("2","6","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-29 14:05:39");
INSERT INTO activity_logs VALUES("3","7","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-29 14:06:33");
INSERT INTO activity_logs VALUES("7","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-29 15:14:53");
INSERT INTO activity_logs VALUES("9","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-29 17:53:20");
INSERT INTO activity_logs VALUES("10","16","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-29 17:55:02");
INSERT INTO activity_logs VALUES("11","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-29 18:24:02");
INSERT INTO activity_logs VALUES("12","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 11:40:03");
INSERT INTO activity_logs VALUES("13","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 11:40:25");
INSERT INTO activity_logs VALUES("14","16","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 11:40:53");
INSERT INTO activity_logs VALUES("15","16","User","fe80::dd3:37d9:1241:faf3","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:01:15");
INSERT INTO activity_logs VALUES("16","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:03:47");
INSERT INTO activity_logs VALUES("17","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 12:04:42");
INSERT INTO activity_logs VALUES("18","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:14:22");
INSERT INTO activity_logs VALUES("19","17","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:16:35");
INSERT INTO activity_logs VALUES("20","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:18:06");
INSERT INTO activity_logs VALUES("21","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:18:51");
INSERT INTO activity_logs VALUES("22","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:20:51");
INSERT INTO activity_logs VALUES("23","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:21:08");
INSERT INTO activity_logs VALUES("24","18","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 12:52:50");
INSERT INTO activity_logs VALUES("25","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 12:55:06");
INSERT INTO activity_logs VALUES("26","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 13:16:57");
INSERT INTO activity_logs VALUES("27","19","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 13:25:16");
INSERT INTO activity_logs VALUES("28","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 13:59:42");
INSERT INTO activity_logs VALUES("29","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 14:03:16");
INSERT INTO activity_logs VALUES("30","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 14:04:24");
INSERT INTO activity_logs VALUES("31","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 14:08:14");
INSERT INTO activity_logs VALUES("32","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 14:34:38");
INSERT INTO activity_logs VALUES("33","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 15:56:38");
INSERT INTO activity_logs VALUES("34","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 16:04:29");
INSERT INTO activity_logs VALUES("35","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36","2018-04-30 16:19:55");
INSERT INTO activity_logs VALUES("36","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-04-30 17:14:30");
INSERT INTO activity_logs VALUES("37","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-02 10:08:35");
INSERT INTO activity_logs VALUES("38","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-02 10:10:58");
INSERT INTO activity_logs VALUES("39","21","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-02 10:13:29");
INSERT INTO activity_logs VALUES("40","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-02 14:58:39");
INSERT INTO activity_logs VALUES("41","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 11:55:20");
INSERT INTO activity_logs VALUES("42","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-05 11:56:09");
INSERT INTO activity_logs VALUES("43","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 11:57:23");
INSERT INTO activity_logs VALUES("44","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 11:59:51");
INSERT INTO activity_logs VALUES("45","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 12:08:29");
INSERT INTO activity_logs VALUES("46","20","User","192.168.0.108","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 12:43:42");
INSERT INTO activity_logs VALUES("47","1","Admin","192.168.0.108","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 13:29:06");
INSERT INTO activity_logs VALUES("48","20","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 13:31:05");
INSERT INTO activity_logs VALUES("49","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 14:33:23");
INSERT INTO activity_logs VALUES("50","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-05 15:25:35");
INSERT INTO activity_logs VALUES("51","22","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-05 16:33:02");
INSERT INTO activity_logs VALUES("52","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-05 17:59:33");
INSERT INTO activity_logs VALUES("53","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-06 11:58:51");
INSERT INTO activity_logs VALUES("54","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-06 11:59:03");
INSERT INTO activity_logs VALUES("55","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 12:00:47");
INSERT INTO activity_logs VALUES("56","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 12:11:51");
INSERT INTO activity_logs VALUES("57","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 13:40:54");
INSERT INTO activity_logs VALUES("58","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-06 17:08:21");
INSERT INTO activity_logs VALUES("59","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-06 17:08:57");
INSERT INTO activity_logs VALUES("60","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 17:09:35");
INSERT INTO activity_logs VALUES("61","7","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 18:03:12");
INSERT INTO activity_logs VALUES("62","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 18:03:16");
INSERT INTO activity_logs VALUES("63","21","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-06 19:20:30");
INSERT INTO activity_logs VALUES("64","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 10:59:29");
INSERT INTO activity_logs VALUES("65","17","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-07 11:10:32");
INSERT INTO activity_logs VALUES("66","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 11:10:41");
INSERT INTO activity_logs VALUES("67","21","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 11:58:26");
INSERT INTO activity_logs VALUES("68","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 12:45:09");
INSERT INTO activity_logs VALUES("69","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 12:47:21");
INSERT INTO activity_logs VALUES("70","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 14:09:07");
INSERT INTO activity_logs VALUES("71","20","User","192.168.0.101","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-07 14:46:31");
INSERT INTO activity_logs VALUES("72","1","Admin","192.168.0.101","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36","2018-05-07 14:47:24");
INSERT INTO activity_logs VALUES("73","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 14:55:06");
INSERT INTO activity_logs VALUES("74","7","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 16:21:24");
INSERT INTO activity_logs VALUES("75","20","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 16:27:39");
INSERT INTO activity_logs VALUES("76","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 17:19:21");
INSERT INTO activity_logs VALUES("77","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-05-07 17:31:05");





CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO admins VALUES("1","admin","admin@techvill.net","$2y$10$ScdRelLuT1q/IumhwP9WTugr8bfBE3h9vo8CAZkSeiYtGOwcRzqP2","Active","1","dG8UnDrtVs943qn1kGI2PxzCF84izcLDIcDKd8fuB1BF4XrXJCykNag3khZq","2018-04-26 07:56:09","2018-05-05 09:27:25","avatar04.png");





CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

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
  `name` varchar(100) DEFAULT 'USD',
  `symbol` char(50) NOT NULL DEFAULT '$',
  `code` varchar(100) DEFAULT '101',
  `hundreds_name` varchar(100) DEFAULT 'one thousand',
  `rate` double NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO currencies VALUES("1","Guinean franc","FG","GNF","one thousand","50","Inactive","0","","");
INSERT INTO currencies VALUES("12","US Dollar","$","USD","one thousand","1","Active","1","","");
INSERT INTO currencies VALUES("13","Pound Sterling","£","GBP","one thousand","0.65","Inactive","0","","");
INSERT INTO currencies VALUES("14","Europe","€","EUR","one thousand","0.65","Active","0","","");
INSERT INTO currencies VALUES("15","Czech Republic Koruna","K?","CZK","one thousand","78","Inactive","0","","");
INSERT INTO currencies VALUES("16","Hong Kong Dollar","&#36;","HKD","one thousand","0","","0","","");
INSERT INTO currencies VALUES("17","Hungarian Forint","Ft","HUF","one thousand","0","","0","","");
INSERT INTO currencies VALUES("18","Indonesian Rupiah","Rp","IDR","one thousand","0","","0","","");
INSERT INTO currencies VALUES("19","Israeli New Sheke","?","ILS","one thousand","3.54","Active","0","","");
INSERT INTO currencies VALUES("20","Japanese Yen","&#165;","JPY","one thousand","0","","0","","");
INSERT INTO currencies VALUES("21","South Korean Won","?","KRW","one thousand","1059","Active","0","","");
INSERT INTO currencies VALUES("23","New Zealand Dollar","&#36;","NZD","one thousand","0","","0","","");
INSERT INTO currencies VALUES("24","Polish Zloty","z&#322;","PLN","one thousand","0","","0","","");
INSERT INTO currencies VALUES("25","Russian Ruble","P","RUB","one thousand","57.58","Active","0","","");
INSERT INTO currencies VALUES("26","TAKA","BDT","BDT","one thousand","82.98","Active","0","","");
INSERT INTO currencies VALUES("27","Indian Rupy","INR","INR","one thousand","64.91","Active","0","","");





CREATE TABLE IF NOT EXISTS `currency_exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `from_wallet` int(10) unsigned DEFAULT NULL,
  `to_wallet` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Exchange)',
  `exchange_rate` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO currency_exchanges VALUES("7","7","33","40","26","MU7MLBAGSUWX6","82.98","100.00","Out","Success","2018-04-29 09:16:08","2018-05-06 11:36:00");
INSERT INTO currency_exchanges VALUES("8","17","46","47","26","C40GZQBNKGHJ2","82.98","100.00","Out","Success","2018-04-30 06:11:46","2018-04-30 06:11:46");
INSERT INTO currency_exchanges VALUES("9","19","49","50","26","UTJTIRKKGRLOJ","82.98","100.00","Out","Success","2018-04-30 08:01:59","2018-04-30 08:01:59");
INSERT INTO currency_exchanges VALUES("10","7","33","52","14","CAAHOXVPWTI3I","0.65","100.00","Out","Success","2018-04-30 10:12:17","2018-04-30 10:12:17");
INSERT INTO currency_exchanges VALUES("11","7","33","52","14","LJTVFEHHMUVGI","0.65","300.00","Out","Success","2018-04-30 10:12:26","2018-04-30 10:12:26");
INSERT INTO currency_exchanges VALUES("12","7","33","54","25","DPU1W99LH0SNY","57.58","200.00","Out","Success","2018-05-05 06:05:09","2018-05-05 06:05:09");
INSERT INTO currency_exchanges VALUES("13","7","33","57","27","1SAQTDJB9IEDY","64.91","200.00","Out","Success","2018-05-05 06:22:43","2018-05-05 06:22:43");
INSERT INTO currency_exchanges VALUES("14","20","51","58","26","RNZ6MPGEJDMXU","82.98","100.00","Out","Success","2018-05-05 07:24:41","2018-05-05 07:24:41");
INSERT INTO currency_exchanges VALUES("15","20","51","58","26","VK7JVT396TZBK","82.98","10.00","Out","Success","2018-05-05 08:53:49","2018-05-05 08:53:49");
INSERT INTO currency_exchanges VALUES("16","20","58","51","26","FVCEPJHAWMOJ9","82.98","5.00","In","Success","2018-05-05 08:56:02","2018-05-05 08:56:02");
INSERT INTO currency_exchanges VALUES("17","20","51","59","14","STQF1FQVEJPVB","0.65","5.00","Out","Success","2018-05-05 08:58:38","2018-05-05 08:58:38");
INSERT INTO currency_exchanges VALUES("18","7","33","61","21","2U4OLYUNGPX2E","1059.00","100.00","Out","Success","2018-05-05 09:47:59","2018-05-05 09:47:59");
INSERT INTO currency_exchanges VALUES("19","17","46","63","14","JOQUOV9FVSHOP","0.65","12.00","Out","Success","2018-05-05 12:23:51","2018-05-05 12:23:51");
INSERT INTO currency_exchanges VALUES("20","17","47","46","26","OXX5UNTOYF6LH","82.98","10.00","In","Success","2018-05-05 12:27:01","2018-05-05 12:27:01");





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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO deposits VALUES("4","6","12","2","QZ6WPADII4COC","10.00","15.00","44985.00","Success","2018-04-29 14:00:27");
INSERT INTO deposits VALUES("7","16","12","2","Q8GR3E3HVZR4M","10.00","15.00","4485.00","Success","2018-04-29 18:31:15");
INSERT INTO deposits VALUES("8","17","12","2","P78POQGEFJVBJ","10.00","15.00","26985.00","Success","2018-04-30 12:08:10");
INSERT INTO deposits VALUES("9","18","12","2","0BHN8VBEMYCQ2","10.00","15.00","8985.00","Success","2018-04-30 12:55:27");
INSERT INTO deposits VALUES("10","19","12","2","VJKIGSSHWZSI3","10.00","15.00","4485.00","Success","2018-04-30 13:29:05");
INSERT INTO deposits VALUES("11","20","12","2","XAF0MFR1LUDUC","10.00","15.00","4485.00","Success","2018-04-30 14:05:48");
INSERT INTO deposits VALUES("12","20","12","3","QOVQJLYO5UKY7","25.00","30.00","7.50","Success","2018-05-05 13:35:24");
INSERT INTO deposits VALUES("13","20","12","3","BDCZJJLRGLR8A","25.00","30.00","-22.50","Success","2018-05-05 13:40:48");





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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO dispute_discussions VALUES("1","1","7","User","<p>This is claimant</p>","","2018-05-07 10:29:29","2018-05-07 10:29:29");
INSERT INTO dispute_discussions VALUES("2","1","20","User","<p>This is defaenddant</p>","","2018-05-07 10:30:14","2018-05-07 10:30:14");
INSERT INTO dispute_discussions VALUES("3","1","1","Admin","<p>I am admin</p>","","2018-05-07 10:31:06","2018-05-07 10:31:06");





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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO disputes VALUES("1","7","20","163","1","This is my first dispute","<p>Payment not recieved</p>","Open","2018-05-07 10:25:51","2018-05-07 10:25:51");





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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

INSERT INTO email_templates VALUES("1","1","Notice of Transfer!","Hi {sender_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was transferred from your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\n\n                                    <br><br>Transfer # {uuid} was created at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Receiver:</u></b> {receiver_id}\n\n                                    <br><br><b><u>Fee:</u></b> {fee}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
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
INSERT INTO email_templates VALUES("15","3","Notice of Voucher Activation!","Hi {user_id},\n\n                                    <br><br>Voucher # {uuid} has been activated by {activator_id}.<br><br><b><u><i>Here’s a brief overview of the Voucher Activation:</i></u></b>\n\n                                    <br><br>Voucher # {uuid} was activated at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Code:</u></b> {code}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
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
INSERT INTO email_templates VALUES("36","6","Status of Transaction #{uuid} has been updated!","Hi {sender_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Transfer #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("37","6","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("38","6","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("39","6","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("40","6","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("41","6","Subject","Body","es","6");
INSERT INTO email_templates VALUES("42","6","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("43","7","Status of Transaction #{uuid} has been updated!","Hi {activator_id},\n\n                                    <br><br><b>\n                                    Transaction of Voucher #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    <u><i>Voucher Code:</i></u> {code}\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
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

INSERT INTO fees VALUES("1","1","Merchant","5.00","10.00");
INSERT INTO fees VALUES("2","2","Deposit","10.00","15.00");
INSERT INTO fees VALUES("3","2","Merchant","15.00","20.00");
INSERT INTO fees VALUES("4","3","Deposit","25.00","30.00");
INSERT INTO fees VALUES("5","3","Withdrawal","35.00","40.00");
INSERT INTO fees VALUES("6","3","Merchant","40.00","45.00");
INSERT INTO fees VALUES("7","4","Deposit","15.00","100.00");
INSERT INTO fees VALUES("8","5","Deposit","15.00","55.00");
INSERT INTO fees VALUES("9","5","Merchant","13.00","130.00");
INSERT INTO fees VALUES("10","6","Withdrawal","21.00","120.00");
INSERT INTO fees VALUES("11","","Transfer","12.00","70.00");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO languages VALUES("1","English","en","Active","1");
INSERT INTO languages VALUES("2","????","ar","Active","0");
INSERT INTO languages VALUES("3","Français","fr","Active","0");
INSERT INTO languages VALUES("4","Português","pt","Active","0");
INSERT INTO languages VALUES("5","???????","ru","Active","0");
INSERT INTO languages VALUES("6","Español","es","Active","0");
INSERT INTO languages VALUES("7","Türkçe","tr","Active","0");





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
  `status` enum('Moderation','Disapproved','Approved') NOT NULL DEFAULT 'Moderation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchants_user_id_index` (`user_id`),
  CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO merchants VALUES("1","17","parvezrobi","http://www.github.com/robiparvez","123456","sssss","Moderation","2018-05-06 06:05:24","2018-05-06 06:10:20");
INSERT INTO merchants VALUES("2","17","test","http://www.parvez.com","222","","Moderation","2018-05-06 06:08:48","2018-05-06 06:08:48");
INSERT INTO merchants VALUES("3","7","Apex","http://www.google.com","123456","","Moderation","2018-05-07 05:46:45","2018-05-07 05:46:45");





CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text,
  `keywords` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

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
INSERT INTO metas VALUES("32","withdrawal/method/{id}","Withdrawal ","Withdrawal","");
INSERT INTO metas VALUES("33","payouts","Payouts","Payouts","");
INSERT INTO metas VALUES("34","transactions/{id}","Transactions","Transactions","");
INSERT INTO metas VALUES("35","request_payment/accept/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("36","disputes","disputes","disputes","");
INSERT INTO metas VALUES("37","merchant/detail/{id}","View Merchant ","View Merchant ","");
INSERT INTO metas VALUES("38","dispute/discussion/{id}","Dispute details","Dispute details","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

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
INSERT INTO migrations VALUES("92","2018_03_03_083507_create_currency_exchanges_table","35");
INSERT INTO migrations VALUES("93","2018_03_03_083507_create_vouchers_table","36");
INSERT INTO migrations VALUES("94","2018_03_03_083507_create_request_payments_table","37");
INSERT INTO migrations VALUES("102","2018_03_22_000001_create_merchants_table","41");
INSERT INTO migrations VALUES("105","2018_03_27_095014_create_email_templates_table","42");
INSERT INTO migrations VALUES("109","2018_03_22_000002_create_merchant_payments_table","44");
INSERT INTO migrations VALUES("113","2018_04_04_055813_create_activity_logs_table","46");
INSERT INTO migrations VALUES("115","2018_01_28_060439_create_transactions_table","47");
INSERT INTO migrations VALUES("116","2017_10_12_000016_create_socials_table","48");
INSERT INTO migrations VALUES("118","2018_03_06_115806_create_withdrawals_table","49");
INSERT INTO migrations VALUES("119","2018_04_23_065520_add_picture_to_users_table","50");
INSERT INTO migrations VALUES("120","2018_04_23_072453_add_picture_to_admins_table","51");
INSERT INTO migrations VALUES("139","2018_04_25_101102_create_ticket_statuses_table","58");
INSERT INTO migrations VALUES("140","2018_04_25_064015_create_tickets_table","59");
INSERT INTO migrations VALUES("141","2018_04_25_102922_create_ticket_replies_table","60");
INSERT INTO migrations VALUES("142","2018_04_25_100503_create_files_table","61");
INSERT INTO migrations VALUES("143","2018_04_25_090327_create_reasons_table","62");
INSERT INTO migrations VALUES("147","2018_02_27_101356_create_fees_table","65");
INSERT INTO migrations VALUES("151","2018_04_27_060235_create_wallets_table","68");
INSERT INTO migrations VALUES("154","2018_03_03_083507_create_transfers_table","70");
INSERT INTO migrations VALUES("157","2018_04_30_054616_create_disputes_table","73");
INSERT INTO migrations VALUES("159","2018_04_30_094647_create_unregisteredtransactions_table","75");
INSERT INTO migrations VALUES("160","2018_04_30_054950_create_dispute_discussions_table","76");
INSERT INTO migrations VALUES("163","2018_01_23_054930_entrust_setup_tables","77");





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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO pages VALUES("1","Personal","personal","<p>Test<br></p>\n","[\"header\"]","active","2018-04-11 06:07:11","2018-04-11 06:07:11");
INSERT INTO pages VALUES("2","Help","help","<p>Help page<br></p>\n","[\"header\"]","active","2018-04-11 06:07:40","2018-04-11 06:07:40");
INSERT INTO pages VALUES("3","About Us","about-us","<p>About page<br></p>\n","[\"header\"]","active","2018-04-11 06:09:48","2018-04-11 06:09:48");
INSERT INTO pages VALUES("4","Contact Us","contact-us","<p>Contact page<br></p>\n","[\"header\"]","active","2018-04-11 06:10:25","2018-04-11 06:10:25");





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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO payment_methods VALUES("1","Mts","Active");
INSERT INTO payment_methods VALUES("2","Stripe","Active");
INSERT INTO payment_methods VALUES("3","Paypal","Active");
INSERT INTO payment_methods VALUES("4","2Checkout","Active");
INSERT INTO payment_methods VALUES("5","PayUmoney","Active");
INSERT INTO payment_methods VALUES("6","Bank","Active");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("2","1");
INSERT INTO permission_role VALUES("3","1");
INSERT INTO permission_role VALUES("4","1");
INSERT INTO permission_role VALUES("5","1");
INSERT INTO permission_role VALUES("6","1");
INSERT INTO permission_role VALUES("7","1");
INSERT INTO permission_role VALUES("8","1");
INSERT INTO permission_role VALUES("9","1");
INSERT INTO permission_role VALUES("10","1");
INSERT INTO permission_role VALUES("11","1");
INSERT INTO permission_role VALUES("12","1");
INSERT INTO permission_role VALUES("13","1");
INSERT INTO permission_role VALUES("14","1");
INSERT INTO permission_role VALUES("15","1");
INSERT INTO permission_role VALUES("16","1");
INSERT INTO permission_role VALUES("17","1");
INSERT INTO permission_role VALUES("18","1");
INSERT INTO permission_role VALUES("19","1");
INSERT INTO permission_role VALUES("20","1");
INSERT INTO permission_role VALUES("21","1");
INSERT INTO permission_role VALUES("22","1");
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
INSERT INTO permission_role VALUES("43","1");
INSERT INTO permission_role VALUES("44","1");
INSERT INTO permission_role VALUES("45","1");
INSERT INTO permission_role VALUES("46","1");
INSERT INTO permission_role VALUES("47","1");
INSERT INTO permission_role VALUES("48","1");
INSERT INTO permission_role VALUES("49","1");
INSERT INTO permission_role VALUES("50","1");
INSERT INTO permission_role VALUES("51","1");
INSERT INTO permission_role VALUES("52","1");
INSERT INTO permission_role VALUES("53","1");
INSERT INTO permission_role VALUES("54","1");
INSERT INTO permission_role VALUES("55","1");
INSERT INTO permission_role VALUES("56","1");
INSERT INTO permission_role VALUES("57","1");
INSERT INTO permission_role VALUES("58","1");
INSERT INTO permission_role VALUES("59","1");
INSERT INTO permission_role VALUES("60","1");
INSERT INTO permission_role VALUES("61","1");
INSERT INTO permission_role VALUES("62","1");
INSERT INTO permission_role VALUES("63","1");
INSERT INTO permission_role VALUES("64","1");
INSERT INTO permission_role VALUES("65","1");
INSERT INTO permission_role VALUES("66","1");
INSERT INTO permission_role VALUES("67","1");
INSERT INTO permission_role VALUES("68","1");
INSERT INTO permission_role VALUES("69","1");
INSERT INTO permission_role VALUES("70","1");
INSERT INTO permission_role VALUES("71","1");
INSERT INTO permission_role VALUES("72","1");
INSERT INTO permission_role VALUES("73","1");
INSERT INTO permission_role VALUES("74","1");
INSERT INTO permission_role VALUES("75","1");
INSERT INTO permission_role VALUES("76","1");
INSERT INTO permission_role VALUES("77","1");
INSERT INTO permission_role VALUES("78","1");
INSERT INTO permission_role VALUES("79","1");
INSERT INTO permission_role VALUES("80","1");
INSERT INTO permission_role VALUES("81","1");
INSERT INTO permission_role VALUES("82","1");
INSERT INTO permission_role VALUES("83","1");
INSERT INTO permission_role VALUES("84","1");
INSERT INTO permission_role VALUES("85","1");
INSERT INTO permission_role VALUES("86","1");
INSERT INTO permission_role VALUES("87","1");
INSERT INTO permission_role VALUES("88","1");
INSERT INTO permission_role VALUES("89","1");
INSERT INTO permission_role VALUES("90","1");
INSERT INTO permission_role VALUES("91","1");
INSERT INTO permission_role VALUES("92","1");
INSERT INTO permission_role VALUES("93","1");
INSERT INTO permission_role VALUES("94","1");
INSERT INTO permission_role VALUES("95","1");
INSERT INTO permission_role VALUES("96","1");
INSERT INTO permission_role VALUES("97","1");
INSERT INTO permission_role VALUES("98","1");
INSERT INTO permission_role VALUES("99","1");
INSERT INTO permission_role VALUES("100","1");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO permissions VALUES("1","User","view_user","View User","View User","2018-05-07 11:17:58","2018-05-07 11:17:58");
INSERT INTO permissions VALUES("2","User","add_user","Add User","Add User","2018-05-07 11:17:58","2018-05-07 11:17:58");
INSERT INTO permissions VALUES("3","User","edit_user","Edit User","Edit User","2018-05-07 11:17:59","2018-05-07 11:17:59");
INSERT INTO permissions VALUES("4","User","delete_user","Delete User","Delete User","2018-05-07 11:17:59","2018-05-07 11:17:59");
INSERT INTO permissions VALUES("5","Transaction","view_transaction","View Transaction","View Transaction","2018-05-07 11:17:59","2018-05-07 11:17:59");
INSERT INTO permissions VALUES("6","Transaction","add_transaction","","","2018-05-07 11:17:59","2018-05-07 11:17:59");
INSERT INTO permissions VALUES("7","Transaction","edit_transaction","Edit Transaction","Edit Transaction","2018-05-07 11:17:59","2018-05-07 11:17:59");
INSERT INTO permissions VALUES("8","Transaction","delete_transaction","","","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("9","Deposit","view_deposit","View Deposit","View Deposit","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("10","Deposit","add_deposit","","","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("11","Deposit","edit_deposit","Edit Deposit","Edit Deposit","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("12","Deposit","delete_deposit","","","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("13","Withdrawal","view_withdrawal","View Withdrawal","View Withdrawal","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("14","Withdrawal","add_withdrawal","","","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("15","Withdrawal","edit_withdrawal","Edit Withdrawal","Edit Withdrawal","2018-05-07 11:18:00","2018-05-07 11:18:00");
INSERT INTO permissions VALUES("16","Withdrawal","delete_withdrawal","","","2018-05-07 11:18:01","2018-05-07 11:18:01");
INSERT INTO permissions VALUES("17","Transfer","view_transfer","View Transfer","View Transfer","2018-05-07 11:18:01","2018-05-07 11:18:01");
INSERT INTO permissions VALUES("18","Transfer","add_transfer","","","2018-05-07 11:18:01","2018-05-07 11:18:01");
INSERT INTO permissions VALUES("19","Transfer","edit_transfer","Edit Transfer","Edit Transfer","2018-05-07 11:18:01","2018-05-07 11:18:01");
INSERT INTO permissions VALUES("20","Transfer","delete_transfer","","","2018-05-07 11:18:01","2018-05-07 11:18:01");
INSERT INTO permissions VALUES("21","Exchange","view_Exchange","View Exchange","View Exchange","2018-05-07 11:18:02","2018-05-07 11:18:02");
INSERT INTO permissions VALUES("22","Exchange","add_Exchange","","","2018-05-07 11:18:02","2018-05-07 11:18:02");
INSERT INTO permissions VALUES("23","Exchange","edit_Exchange","Edit Exchange","Edit Exchange","2018-05-07 11:18:02","2018-05-07 11:18:02");
INSERT INTO permissions VALUES("24","Exchange","delete_Exchange","","","2018-05-07 11:18:02","2018-05-07 11:18:02");
INSERT INTO permissions VALUES("25","Voucher","view_voucher","View Voucher","View Voucher","2018-05-07 11:18:02","2018-05-07 11:18:02");
INSERT INTO permissions VALUES("26","Voucher","add_voucher","","","2018-05-07 11:18:02","2018-05-07 11:18:02");
INSERT INTO permissions VALUES("27","Voucher","edit_voucher","Edit Voucher","Edit Voucher","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("28","Voucher","delete_voucher","","","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("29","Request Payment","view_request_payment","View Request Payment","View Request Payment","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("30","Request Payment","add_request_payment","","","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("31","Request Payment","edit_request_payment","Edit Request Payment","Edit Request Payment","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("32","Request Payment","delete_request_payment","","","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("33","Revenue","view_revenue","View Revenue","View Revenue","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("34","Revenue","add_revenue","","","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("35","Revenue","edit_revenue","","","2018-05-07 11:18:03","2018-05-07 11:18:03");
INSERT INTO permissions VALUES("36","Revenue","delete_revenue","","","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("37","Email Template","view_email_template","View Email Template","View Email Template","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("38","Email Template","add_email_template","","","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("39","Email Template","edit_email_template","Edit Email Template","Edit Email Template","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("40","Email Template","delete_email_template","","","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("41","Activity Log","view_activity_log","View Activity Log","View Activity Log","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("42","Activity Log","add_activity_log","","","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("43","Activity Log","edit_activity_log","","","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("44","Activity Log","delete_activity_log","","","2018-05-07 11:18:04","2018-05-07 11:18:04");
INSERT INTO permissions VALUES("45","General Setting","view_general_setting","View General Setting","View General Setting","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("46","General Setting","add_general_setting","","","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("47","General Setting","edit_general_setting","Edit General Setting","Edit General Setting","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("48","General Setting","delete_general_setting","","","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("49","Social Links","view_social_links","View Social Links","View Social Links","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("50","Social Links","add_social_links","","","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("51","Social Links","edit_social_links","Edit Social Links","Edit Social Links","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("52","Social Links","delete_social_links","","","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("53","API Credentials","view_api_credentials","View API Credentials","View API Credentials","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("54","API Credentials","add_api_credentials","","","2018-05-07 11:18:05","2018-05-07 11:18:05");
INSERT INTO permissions VALUES("55","API Credentials","edit_api_credentials","Edit API Credentials","Edit API Credentials","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("56","API Credentials","delete_api_credentials","","","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("57","Payment Methods","view_payment_methods","View Payment Methods","View Payment Methods","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("58","Payment Methods","add_payment_methods","","","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("59","Payment Methods","edit_payment_methods","Edit Payment Methods","Edit Payment Methods","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("60","Payment Methods","delete_payment_methods","","","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("61","Email Setting","view_email_setting","View Email Setting","View Email Setting","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("62","Email Setting","add_email_setting","","","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("63","Email Setting","edit_email_setting","Edit Email Setting","Edit Email Setting","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("64","Email Setting","delete_email_setting","","","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("65","Currency","view_currency","View Currency","View Currency","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("66","Currency","add_currency","Add Currency","Add Currency","2018-05-07 11:18:06","2018-05-07 11:18:06");
INSERT INTO permissions VALUES("67","Currency","edit_currency","Edit Currency","Edit Currency","2018-05-07 11:18:07","2018-05-07 11:18:07");
INSERT INTO permissions VALUES("68","Currency","delete_currency","Delete Currency","Delete Currency","2018-05-07 11:18:07","2018-05-07 11:18:07");
INSERT INTO permissions VALUES("69","Country","view_country","View Country","View Country","2018-05-07 11:18:07","2018-05-07 11:18:07");
INSERT INTO permissions VALUES("70","Country","add_country","Add Country","Add Country","2018-05-07 11:18:07","2018-05-07 11:18:07");
INSERT INTO permissions VALUES("71","Country","edit_country","Edit Country","Edit Country","2018-05-07 11:18:07","2018-05-07 11:18:07");
INSERT INTO permissions VALUES("72","Country","delete_country","Delete Country","Delete Country","2018-05-07 11:18:07","2018-05-07 11:18:07");
INSERT INTO permissions VALUES("73","Language","view_language","View Language","View Language","2018-05-07 11:18:08","2018-05-07 11:18:08");
INSERT INTO permissions VALUES("74","Language","add_language","Add Language","Add Language","2018-05-07 11:18:08","2018-05-07 11:18:08");
INSERT INTO permissions VALUES("75","Language","edit_language","Edit Language","Edit Language","2018-05-07 11:18:08","2018-05-07 11:18:08");
INSERT INTO permissions VALUES("76","Language","delete_language","Delete Language","Delete Language","2018-05-07 11:18:08","2018-05-07 11:18:08");
INSERT INTO permissions VALUES("77","Role","view_role","View Role","View Role","2018-05-07 11:18:09","2018-05-07 11:18:09");
INSERT INTO permissions VALUES("78","Role","add_role","Add Role","Add Role","2018-05-07 11:18:09","2018-05-07 11:18:09");
INSERT INTO permissions VALUES("79","Role","edit_role","Edit Role","Edit Role","2018-05-07 11:18:09","2018-05-07 11:18:09");
INSERT INTO permissions VALUES("80","Role","delete_role","Delete Role","Delete Role","2018-05-07 11:18:10","2018-05-07 11:18:10");
INSERT INTO permissions VALUES("81","Fees","view_fees","View Fees","View Fees","2018-05-07 11:18:10","2018-05-07 11:18:10");
INSERT INTO permissions VALUES("82","Fees","add_fees","Add Fees","Add Fees","2018-05-07 11:18:10","2018-05-07 11:18:10");
INSERT INTO permissions VALUES("83","Fees","edit_fees","Edit Fees","Edit Fees","2018-05-07 11:18:11","2018-05-07 11:18:11");
INSERT INTO permissions VALUES("84","Fees","delete_fees","Delete Fees","Delete Fees","2018-05-07 11:18:11","2018-05-07 11:18:11");
INSERT INTO permissions VALUES("85","Database Backup","view_database_backup","View Database Backup","View Database Backup","2018-05-07 11:18:11","2018-05-07 11:18:11");
INSERT INTO permissions VALUES("86","Database Backup","add_database_backup","Add Database Backup","Add Database Backup","2018-05-07 11:18:11","2018-05-07 11:18:11");
INSERT INTO permissions VALUES("87","Database Backup","edit_database_backup","Edit Database Backup","Edit Database Backup","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("88","Database Backup","delete_database_backup","","","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("89","Meta","view_meta","View Meta","View Meta","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("90","Meta","add_meta","","","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("91","Meta","edit_meta","Edit Meta","Edit Meta","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("92","Meta","delete_meta","","","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("93","Page","view_page","View Page","View Page","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("94","Page","add_page","Add Page","Add Page","2018-05-07 11:18:12","2018-05-07 11:18:12");
INSERT INTO permissions VALUES("95","Page","edit_page","Edit Page","Edit Page","2018-05-07 11:18:13","2018-05-07 11:18:13");
INSERT INTO permissions VALUES("96","Page","delete_page","Delete Page","Delete Page","2018-05-07 11:18:13","2018-05-07 11:18:13");
INSERT INTO permissions VALUES("97","Preference","view_preference","View Preference","View Preference","2018-05-07 11:18:13","2018-05-07 11:18:13");
INSERT INTO permissions VALUES("98","Preference","add_preference","","","2018-05-07 11:18:13","2018-05-07 11:18:13");
INSERT INTO permissions VALUES("99","Preference","edit_preference","Edit Preference","Edit Preference","2018-05-07 11:18:13","2018-05-07 11:18:13");
INSERT INTO permissions VALUES("100","Preference","delete_preference","","","2018-05-07 11:18:13","2018-05-07 11:18:13");





CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO preferences VALUES("1","preference","row_per_page","50");
INSERT INTO preferences VALUES("2","preference","date_format","1");
INSERT INTO preferences VALUES("3","preference","date_sepa","/");
INSERT INTO preferences VALUES("4","preference","soft_name","MTS");
INSERT INTO preferences VALUES("5","company","site_short_name","SP");
INSERT INTO preferences VALUES("6","preference","percentage","2");
INSERT INTO preferences VALUES("7","preference","quantity","0");
INSERT INTO preferences VALUES("8","preference","date_format_type","dd/mm/yyyy");
INSERT INTO preferences VALUES("9","company","company_name","MTS");
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO request_payments VALUES("1","17","7","12","7WB1QBTVQ0CVF","90.00","100.00","parvez.techvill@gmail.com","","","test","test","Success","2018-05-06 11:09:58","2018-05-06 11:45:58");
INSERT INTO request_payments VALUES("2","17","7","12","UVPUUFJ0RVLNJ","111.00","0.00","parvez.techvill@gmail.com","","","test","test","Blocked","2018-05-06 11:21:31","2018-05-06 11:33:14");





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





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO roles VALUES("1","admin","Admin","Admin","2018-05-07 11:17:51","2018-05-07 11:17:51");
INSERT INTO roles VALUES("2","user","User","User","2018-05-07 11:17:51","2018-05-07 11:17:51");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

INSERT INTO settings VALUES("42","name","Pay Money","general");
INSERT INTO settings VALUES("43","logo","1525612291_logo.jpg","general");
INSERT INTO settings VALUES("44","favicon","1525612291_favicon.jpg","general");
INSERT INTO settings VALUES("45","head_code","Pay Money","general");
INSERT INTO settings VALUES("46","default_currency","12","general");
INSERT INTO settings VALUES("47","default_language","1","general");
INSERT INTO settings VALUES("48","email_logo","email_logo.png","general");
INSERT INTO settings VALUES("49","username","techvillage_business_api1.gmail.com","PayPal");
INSERT INTO settings VALUES("50","password","9DDYZX2JLA6QL668","PayPal");
INSERT INTO settings VALUES("51","signature","AFcWxV21C7fd0v3bYYYRCpSSRl31ABayz5pdk84jno7.Udj6-U8ffwbT","PayPal");
INSERT INTO settings VALUES("52","mode","sandbox","PayPal");
INSERT INTO settings VALUES("53","publishable","pk_test_c2TDWXsjPkimdM8PIltO6d8H","Stripe");
INSERT INTO settings VALUES("54","secret","sk_test_UWTgGYIdj8igmbVMgTi0ILPm","Stripe");
INSERT INTO settings VALUES("55","driver","smtp","email");
INSERT INTO settings VALUES("56","host","smtp.gmail.com","email");
INSERT INTO settings VALUES("57","port","587","email");
INSERT INTO settings VALUES("58","from_address","lenin.rock@gmail.com","email");
INSERT INTO settings VALUES("59","from_name","Money Transfer System","email");
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
INSERT INTO settings VALUES("75","seller_id","901377876","2Checkout");
INSERT INTO settings VALUES("78","mode","sandbox","2Checkout");
INSERT INTO settings VALUES("79","mode","sandbox","PayUmoney");
INSERT INTO settings VALUES("80","key","rjQUPktU","PayUmoney");
INSERT INTO settings VALUES("81","salt","e5iIg1jwi8","PayUmoney");





CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO socials VALUES("1","Facebook","<i class=\"fa fa-facebook-official\" aria-hidden=\"true\"></i>","http://ww.facebook.com");
INSERT INTO socials VALUES("2","Twitter","<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>","http://twitter.com");
INSERT INTO socials VALUES("3","Linkedin","<i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i>","http://www.linkedin.com");
INSERT INTO socials VALUES("4","Google Plus","<i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i>","https://plus.google.com");





CREATE TABLE IF NOT EXISTS `ticket_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `message` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ticket_replies_admin_id_index` (`admin_id`),
  KEY `ticket_replies_user_id_index` (`user_id`),
  KEY `ticket_replies_ticket_id_index` (`ticket_id`),
  KEY `ticket_replies_file_id_index` (`file_id`),
  CONSTRAINT `ticket_replies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `ticket_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `ticket_status_id` int(10) unsigned DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext,
  `code` varchar(45) DEFAULT NULL,
  `priority` enum('Low','Normal','High') NOT NULL,
  `lastReply` timestamp NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `tickets_admin_id_index` (`admin_id`),
  KEY `tickets_user_id_index` (`user_id`),
  KEY `tickets_file_id_index` (`file_id`),
  KEY `tickets_ticket_status_id_index` (`ticket_status_id`),
  CONSTRAINT `tickets_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ticket_status_id_foreign` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Transaction)',
  `transaction_reference_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('Deposit','Transferred','Received','Exchange_From','Exchange_To','Withdrawl','Voucher_Created','Voucher_Activated','Request_Created','Request_Accepted','Payment_Sent','Payment_Received') NOT NULL,
  `subtotal` double(10,2) DEFAULT '0.00',
  `charge_percentage` double(10,2) DEFAULT '0.00',
  `charge_fixed` double(10,2) DEFAULT '0.00',
  `total` double(10,2) DEFAULT '0.00',
  `note` varchar(100) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_index` (`user_id`),
  KEY `transactions_currency_id_index` (`currency_id`),
  KEY `transactions_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `transactions_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

INSERT INTO transactions VALUES("24","6","12","2","QZ6WPADII4COC","4","Deposit","44985.00","10.00","15.00","50000.00","","Success","2018-04-29 08:00:27","2018-05-06 10:17:31");
INSERT INTO transactions VALUES("25","6","12","","273BSAQEIEVEM","7","Transferred","10000.00","1200.00","70.00","-11270.00","test","Blocked","2018-04-29 08:04:26","2018-05-06 12:38:44");
INSERT INTO transactions VALUES("26","7","12","","273BSAQEIEVEM","7","Received","10000.00","0.00","0.00","10000.00","test","Blocked","2018-04-29 08:04:27","2018-05-06 12:38:44");
INSERT INTO transactions VALUES("27","6","12","","EXAGQGMAKJ4T4","1","Voucher_Created","100.00","0.00","0.00","-100.00","","Pending","2018-04-29 08:05:19","2018-04-29 08:05:19");
INSERT INTO transactions VALUES("28","7","12","","RRJQJDRIDHXC0","1","Voucher_Activated","100.00","0.00","0.00","100.00","","Success","2018-04-29 08:06:42","2018-05-06 11:42:30");
INSERT INTO transactions VALUES("29","7","12","6","TK0YPUD4J49DC","1","Withdrawl","275.00","21.00","120.00","-500.00","","Success","2018-04-29 08:11:25","2018-05-06 09:33:14");
INSERT INTO transactions VALUES("41","7","12","","MU7MLBAGSUWX6","7","Exchange_From","100.00","0.00","0.00","-100.00","","Success","2018-04-29 09:16:08","2018-05-06 11:36:00");
INSERT INTO transactions VALUES("42","7","26","","MU7MLBAGSUWX6","7","Exchange_To","8298.00","0.00","0.00","8298.00","","Success","2018-04-29 09:16:08","2018-05-06 11:36:00");
INSERT INTO transactions VALUES("46","16","12","2","Q8GR3E3HVZR4M","7","Deposit","4485.00","10.00","15.00","5000.00","","Success","2018-04-29 12:31:15","2018-04-29 12:31:15");
INSERT INTO transactions VALUES("48","17","12","2","P78POQGEFJVBJ","8","Deposit","26985.00","10.00","15.00","30000.00","","Success","2018-04-30 06:08:10","2018-04-30 06:08:10");
INSERT INTO transactions VALUES("49","17","12","","C40GZQBNKGHJ2","8","Exchange_From","100.00","0.00","0.00","-100.00","","Success","2018-04-30 06:11:47","2018-04-30 06:11:47");
INSERT INTO transactions VALUES("50","17","26","","C40GZQBNKGHJ2","8","Exchange_To","8298.00","0.00","0.00","8298.00","","Success","2018-04-30 06:11:47","2018-04-30 06:11:47");
INSERT INTO transactions VALUES("55","18","12","2","0BHN8VBEMYCQ2","9","Deposit","8985.00","10.00","15.00","10000.00","","Success","2018-04-30 06:55:27","2018-04-30 06:55:27");
INSERT INTO transactions VALUES("58","19","12","2","VJKIGSSHWZSI3","10","Deposit","4485.00","10.00","15.00","5000.00","","Success","2018-04-30 07:29:05","2018-04-30 07:29:05");
INSERT INTO transactions VALUES("59","19","12","","UTJTIRKKGRLOJ","9","Exchange_From","100.00","0.00","0.00","-100.00","","Success","2018-04-30 08:01:59","2018-04-30 08:01:59");
INSERT INTO transactions VALUES("60","19","26","","UTJTIRKKGRLOJ","9","Exchange_To","8298.00","0.00","0.00","8298.00","","Success","2018-04-30 08:01:59","2018-04-30 08:01:59");
INSERT INTO transactions VALUES("63","20","12","2","XAF0MFR1LUDUC","11","Deposit","4485.00","10.00","15.00","5000.00","","Success","2018-04-30 08:05:48","2018-04-30 08:05:48");
INSERT INTO transactions VALUES("66","7","12","","CAAHOXVPWTI3I","10","Exchange_From","100.00","0.00","0.00","-100.00","","Success","2018-04-30 10:12:17","2018-04-30 10:12:17");
INSERT INTO transactions VALUES("67","7","14","","CAAHOXVPWTI3I","10","Exchange_To","65.00","0.00","0.00","65.00","","Success","2018-04-30 10:12:17","2018-04-30 10:12:17");
INSERT INTO transactions VALUES("68","7","12","","LJTVFEHHMUVGI","11","Exchange_From","300.00","0.00","0.00","-300.00","","Success","2018-04-30 10:12:26","2018-04-30 10:12:26");
INSERT INTO transactions VALUES("69","7","14","","LJTVFEHHMUVGI","11","Exchange_To","195.00","0.00","0.00","195.00","","Success","2018-04-30 10:12:26","2018-04-30 10:12:26");
INSERT INTO transactions VALUES("70","7","12","","06SVM82GFNOQC","8","Transferred","150.00","18.00","70.00","-238.00","This is not for transfer","Success","2018-05-02 04:11:40","2018-05-02 04:11:40");
INSERT INTO transactions VALUES("71","21","12","","06SVM82GFNOQC","8","Received","150.00","0.00","0.00","150.00","This is not for transfer","Success","2018-05-02 04:11:40","2018-05-02 04:11:40");
INSERT INTO transactions VALUES("72","21","12","","SDSPDGDJPMTEO","9","Transferred","10.00","1.20","70.00","-81.20","Testing","Success","2018-05-02 04:14:27","2018-05-02 04:14:27");
INSERT INTO transactions VALUES("73","7","12","","SDSPDGDJPMTEO","9","Received","10.00","0.00","0.00","10.00","Testing","Success","2018-05-02 04:14:27","2018-05-02 04:14:27");
INSERT INTO transactions VALUES("74","7","12","","DPU1W99LH0SNY","12","Exchange_From","200.00","0.00","0.00","-200.00","","Success","2018-05-05 06:05:09","2018-05-05 06:05:09");
INSERT INTO transactions VALUES("75","7","25","","DPU1W99LH0SNY","12","Exchange_To","11516.00","0.00","0.00","11516.00","","Success","2018-05-05 06:05:09","2018-05-05 06:05:09");
INSERT INTO transactions VALUES("78","7","12","","1SAQTDJB9IEDY","13","Exchange_From","200.00","0.00","0.00","-200.00","","Success","2018-05-05 06:22:43","2018-05-05 06:22:43");
INSERT INTO transactions VALUES("79","7","27","","1SAQTDJB9IEDY","13","Exchange_To","12982.00","0.00","0.00","12982.00","","Success","2018-05-05 06:22:43","2018-05-05 06:22:43");
INSERT INTO transactions VALUES("86","20","12","","RNZ6MPGEJDMXU","14","Exchange_From","100.00","0.00","0.00","-100.00","","Success","2018-05-05 07:24:41","2018-05-05 07:24:41");
INSERT INTO transactions VALUES("87","20","26","","RNZ6MPGEJDMXU","14","Exchange_To","8298.00","0.00","0.00","8298.00","","Success","2018-05-05 07:24:41","2018-05-05 07:24:41");
INSERT INTO transactions VALUES("88","20","26","","BOIQCE6I6VI38","10","Transferred","1.00","0.12","70.00","-71.12","test transfer","Success","2018-05-05 07:26:47","2018-05-05 07:26:47");
INSERT INTO transactions VALUES("89","7","26","","BOIQCE6I6VI38","10","Received","1.00","0.00","0.00","1.00","test transfer","Success","2018-05-05 07:26:47","2018-05-05 07:26:47");
INSERT INTO transactions VALUES("90","20","12","3","QOVQJLYO5UKY7","12","Deposit","7.50","25.00","30.00","50.00","","Success","2018-05-05 07:35:24","2018-05-05 07:35:24");
INSERT INTO transactions VALUES("91","20","12","3","BDCZJJLRGLR8A","13","Deposit","-22.50","25.00","30.00","10.00","","Success","2018-05-05 07:40:48","2018-05-05 07:40:48");
INSERT INTO transactions VALUES("92","20","12","","YSCCUEPTUOYBX","11","Transferred","10.00","1.20","70.00","-81.20","Note for recipient","Success","2018-05-05 08:50:38","2018-05-05 10:33:02");
INSERT INTO transactions VALUES("93","22","12","","YSCCUEPTUOYBX","11","Received","10.00","0.00","0.00","10.00","Note for recipient","Success","2018-05-05 08:50:38","2018-05-05 10:33:02");
INSERT INTO transactions VALUES("94","20","12","","VK7JVT396TZBK","15","Exchange_From","10.00","0.00","0.00","-10.00","","Success","2018-05-05 08:53:49","2018-05-05 08:53:49");
INSERT INTO transactions VALUES("95","20","26","","VK7JVT396TZBK","15","Exchange_To","829.80","0.00","0.00","829.80","","Success","2018-05-05 08:53:49","2018-05-05 08:53:49");
INSERT INTO transactions VALUES("96","20","26","","FVCEPJHAWMOJ9","16","Exchange_From","5.00","0.00","0.00","-5.00","","Success","2018-05-05 08:56:02","2018-05-05 08:56:02");
INSERT INTO transactions VALUES("97","20","12","","FVCEPJHAWMOJ9","16","Exchange_To","0.06","0.00","0.00","0.06","","Success","2018-05-05 08:56:02","2018-05-05 08:56:02");
INSERT INTO transactions VALUES("98","20","12","","STQF1FQVEJPVB","17","Exchange_From","5.00","0.00","0.00","-5.00","","Success","2018-05-05 08:58:38","2018-05-05 08:58:38");
INSERT INTO transactions VALUES("99","20","14","","STQF1FQVEJPVB","17","Exchange_To","3.25","0.00","0.00","3.25","","Success","2018-05-05 08:58:38","2018-05-05 08:58:38");
INSERT INTO transactions VALUES("100","20","12","","0B7QZCTBYH8YM","2","Voucher_Created","35.86","0.00","0.00","-35.86","","Pending","2018-05-05 09:07:29","2018-05-05 09:07:29");
INSERT INTO transactions VALUES("101","20","12","","SIM21D2ITJXAP","2","Voucher_Activated","35.86","0.00","0.00","35.86","","Success","2018-05-05 09:07:47","2018-05-05 09:07:47");
INSERT INTO transactions VALUES("102","20","26","","RATYI3BRORPL3","3","Voucher_Created","2.00","0.00","0.00","-2.00","","Pending","2018-05-05 09:12:38","2018-05-05 09:12:38");
INSERT INTO transactions VALUES("103","20","26","","RKXMVD0JHN7VH","3","Voucher_Activated","2.00","0.00","0.00","2.00","","Success","2018-05-05 09:13:06","2018-05-05 09:13:06");
INSERT INTO transactions VALUES("104","20","12","","GERTXWJ3YY9OB","4","Voucher_Created","1.00","0.00","0.00","-1.00","","Pending","2018-05-05 09:32:30","2018-05-05 09:32:30");
INSERT INTO transactions VALUES("105","20","12","","06JCARYAUFPVD","4","Voucher_Activated","1.00","0.00","0.00","1.00","","Pending","2018-05-05 09:33:56","2018-05-05 10:04:22");
INSERT INTO transactions VALUES("106","20","12","","X4E1GJLH6MXCH","5","Voucher_Created","3.00","0.00","0.00","-3.00","","Pending","2018-05-05 09:47:11","2018-05-05 09:47:11");
INSERT INTO transactions VALUES("107","7","12","","2U4OLYUNGPX2E","18","Exchange_From","100.00","0.00","0.00","-100.00","","Success","2018-05-05 09:47:59","2018-05-05 09:47:59");
INSERT INTO transactions VALUES("108","7","21","","2U4OLYUNGPX2E","18","Exchange_To","105900.00","0.00","0.00","105900.00","","Success","2018-05-05 09:47:59","2018-05-05 09:47:59");
INSERT INTO transactions VALUES("113","20","12","","A42LAXR9XBFV7","4","Voucher_Activated","1.00","0.00","0.00","1.00","","Success","2018-05-05 10:09:23","2018-05-05 10:09:23");
INSERT INTO transactions VALUES("114","20","12","3","NTL2OYJXSG0B8","2","Withdrawl","-18.55","35.00","40.00","-33.00","","Success","2018-05-05 10:15:03","2018-05-06 07:28:48");
INSERT INTO transactions VALUES("117","17","12","","F8CU4GYYZK0SW","12","Transferred","123.00","14.76","70.00","-207.76","asdad","Success","2018-05-05 11:09:51","2018-05-05 11:09:51");
INSERT INTO transactions VALUES("118","7","12","","F8CU4GYYZK0SW","12","Received","123.00","0.00","0.00","123.00","asdad","Success","2018-05-05 11:09:51","2018-05-05 11:09:51");
INSERT INTO transactions VALUES("119","17","12","","CXP1WKWLAISW3","13","Transferred","120.00","14.40","70.00","-204.40","awew","Success","2018-05-05 11:34:55","2018-05-05 11:34:55");
INSERT INTO transactions VALUES("120","7","12","","CXP1WKWLAISW3","13","Received","120.00","0.00","0.00","120.00","awew","Success","2018-05-05 11:34:55","2018-05-05 11:34:55");
INSERT INTO transactions VALUES("121","17","12","","BUMFFIXXQUMIA","14","Transferred","123.00","14.76","70.00","-207.76","testetetette","Success","2018-05-05 11:36:49","2018-05-05 11:36:49");
INSERT INTO transactions VALUES("122","7","12","","BUMFFIXXQUMIA","14","Received","123.00","0.00","0.00","123.00","testetetette","Success","2018-05-05 11:36:49","2018-05-05 11:36:49");
INSERT INTO transactions VALUES("123","17","12","","TLUSSSICEWH4U","15","Transferred","233.00","27.96","70.00","-330.96","asdasd","Success","2018-05-05 11:37:32","2018-05-05 11:37:32");
INSERT INTO transactions VALUES("124","7","12","","TLUSSSICEWH4U","15","Received","233.00","0.00","0.00","233.00","asdasd","Success","2018-05-05 11:37:32","2018-05-05 11:37:32");
INSERT INTO transactions VALUES("125","17","12","","CG96ERYQKJTIU","16","Transferred","12.00","1.44","70.00","-83.44","xcvxv","Success","2018-05-05 11:38:27","2018-05-05 11:38:27");
INSERT INTO transactions VALUES("126","7","12","","CG96ERYQKJTIU","16","Received","12.00","0.00","0.00","12.00","xcvxv","Success","2018-05-05 11:38:27","2018-05-05 11:38:27");
INSERT INTO transactions VALUES("127","17","12","","9VUUBBLV98NXA","17","Transferred","23.00","2.76","70.00","-95.76","dsfsdf","Success","2018-05-05 11:38:56","2018-05-05 11:38:56");
INSERT INTO transactions VALUES("128","7","12","","9VUUBBLV98NXA","17","Received","23.00","0.00","0.00","23.00","dsfsdf","Success","2018-05-05 11:38:56","2018-05-05 11:38:56");
INSERT INTO transactions VALUES("129","17","12","","W7Y9FAXCJTSTY","18","Transferred","122.00","14.64","70.00","-206.64","aser","Success","2018-05-05 11:40:00","2018-05-05 11:40:00");
INSERT INTO transactions VALUES("130","7","12","","W7Y9FAXCJTSTY","18","Received","122.00","0.00","0.00","122.00","aser","Success","2018-05-05 11:40:00","2018-05-05 11:40:00");
INSERT INTO transactions VALUES("131","17","12","","EJ8WJJUFR3LDC","19","Transferred","12.00","1.44","70.00","-83.44","asda","Success","2018-05-05 11:40:54","2018-05-05 11:40:54");
INSERT INTO transactions VALUES("132","7","12","","EJ8WJJUFR3LDC","19","Received","12.00","0.00","0.00","12.00","asda","Success","2018-05-05 11:40:54","2018-05-05 11:40:54");
INSERT INTO transactions VALUES("133","17","12","","JLVQCBLXF1J45","20","Transferred","122.00","14.64","70.00","-206.64","dsfsdf","Success","2018-05-05 11:41:18","2018-05-05 11:41:18");
INSERT INTO transactions VALUES("134","7","12","","JLVQCBLXF1J45","20","Received","122.00","0.00","0.00","122.00","dsfsdf","Success","2018-05-05 11:41:19","2018-05-05 11:41:19");
INSERT INTO transactions VALUES("135","17","12","","ARM752QYGRPSU","21","Transferred","23.00","2.76","70.00","-95.76","asda","Success","2018-05-05 11:47:13","2018-05-05 11:47:13");
INSERT INTO transactions VALUES("136","20","12","","ARM752QYGRPSU","21","Received","23.00","0.00","0.00","23.00","asda","Success","2018-05-05 11:47:13","2018-05-05 11:47:13");
INSERT INTO transactions VALUES("137","17","12","","OC6GBNMQOVBI6","22","Transferred","23.00","2.76","70.00","-95.76","test","Success","2018-05-05 11:47:42","2018-05-05 11:47:42");
INSERT INTO transactions VALUES("138","20","12","","OC6GBNMQOVBI6","22","Received","23.00","0.00","0.00","23.00","test","Success","2018-05-05 11:47:42","2018-05-05 11:47:42");
INSERT INTO transactions VALUES("139","17","12","","DBF4TMQQHCJC9","23","Transferred","12.00","1.44","70.00","-83.44","rewr","Success","2018-05-05 11:48:04","2018-05-05 11:48:04");
INSERT INTO transactions VALUES("140","20","12","","DBF4TMQQHCJC9","23","Received","12.00","0.00","0.00","12.00","rewr","Success","2018-05-05 11:48:04","2018-05-05 11:48:04");
INSERT INTO transactions VALUES("141","17","12","","FJYKF3CPKRFW0","24","Transferred","12.00","1.44","70.00","-83.44","dsfs","Success","2018-05-05 11:48:37","2018-05-05 11:48:37");
INSERT INTO transactions VALUES("142","20","12","","FJYKF3CPKRFW0","24","Received","12.00","0.00","0.00","12.00","dsfs","Success","2018-05-05 11:48:37","2018-05-05 11:48:37");
INSERT INTO transactions VALUES("143","17","12","","DR0KDOX68SR4D","25","Transferred","12.00","1.44","70.00","-83.44","asda","Success","2018-05-05 11:50:07","2018-05-05 11:50:07");
INSERT INTO transactions VALUES("144","20","12","","DR0KDOX68SR4D","25","Received","12.00","0.00","0.00","12.00","asda","Success","2018-05-05 11:50:07","2018-05-05 11:50:07");
INSERT INTO transactions VALUES("145","17","12","","0WZV3DZUTHKXD","26","Transferred","90.00","10.80","70.00","-170.80","asdasdad","Success","2018-05-05 11:50:42","2018-05-05 11:50:42");
INSERT INTO transactions VALUES("146","7","12","","0WZV3DZUTHKXD","26","Received","90.00","0.00","0.00","90.00","asdasdad","Success","2018-05-05 11:50:42","2018-05-05 11:50:42");
INSERT INTO transactions VALUES("147","17","12","","8JGM4RKRBS5ZU","27","Transferred","11.00","1.32","70.00","-82.32","sadsd","Success","2018-05-05 11:51:12","2018-05-05 11:51:12");
INSERT INTO transactions VALUES("148","20","12","","8JGM4RKRBS5ZU","27","Received","11.00","0.00","0.00","11.00","sadsd","Success","2018-05-05 11:51:12","2018-05-05 11:51:12");
INSERT INTO transactions VALUES("149","17","12","","ZCYXIAZLZ49HL","28","Transferred","12.00","1.44","70.00","-83.44","sdfsdfa","Success","2018-05-05 11:52:11","2018-05-05 11:52:11");
INSERT INTO transactions VALUES("150","20","12","","ZCYXIAZLZ49HL","28","Received","12.00","0.00","0.00","12.00","sdfsdfa","Success","2018-05-05 11:52:11","2018-05-05 11:52:11");
INSERT INTO transactions VALUES("151","17","12","","QXQBTZXLWUUD2","29","Transferred","12.00","1.44","70.00","-83.44","asdad","Success","2018-05-05 11:52:42","2018-05-05 11:52:42");
INSERT INTO transactions VALUES("152","20","12","","QXQBTZXLWUUD2","29","Received","12.00","0.00","0.00","12.00","asdad","Success","2018-05-05 11:52:42","2018-05-05 11:52:42");
INSERT INTO transactions VALUES("153","17","12","","FWHWEID4G8ZTF","30","Transferred","1.00","0.12","70.00","-71.12","asda","Success","2018-05-05 11:53:18","2018-05-05 11:53:18");
INSERT INTO transactions VALUES("154","20","12","","FWHWEID4G8ZTF","30","Received","1.00","0.00","0.00","1.00","asda","Success","2018-05-05 11:53:18","2018-05-05 11:53:18");
INSERT INTO transactions VALUES("155","17","12","","ZYFJLT881U5FV","31","Transferred","23.00","2.76","70.00","-95.76","asdasda","Success","2018-05-05 11:54:04","2018-05-05 11:54:04");
INSERT INTO transactions VALUES("156","20","12","","ZYFJLT881U5FV","31","Received","23.00","0.00","0.00","23.00","asdasda","Success","2018-05-05 11:54:04","2018-05-05 11:54:04");
INSERT INTO transactions VALUES("157","17","12","","VMDSMUWOVDIRO","32","Transferred","1.00","0.12","70.00","-71.12","asdad","Success","2018-05-05 11:54:41","2018-05-05 11:54:41");
INSERT INTO transactions VALUES("158","7","12","","VMDSMUWOVDIRO","32","Received","1.00","0.00","0.00","1.00","asdad","Success","2018-05-05 11:54:41","2018-05-05 11:54:41");
INSERT INTO transactions VALUES("159","17","12","","157VTLGBDCPDX","33","Transferred","11.00","1.32","70.00","-82.32","asdad","Pending","2018-05-05 11:55:01","2018-05-05 11:55:01");
INSERT INTO transactions VALUES("160","","12","","157VTLGBDCPDX","33","Received","11.00","0.00","0.00","11.00","asdad","Pending","2018-05-05 11:55:01","2018-05-05 11:55:01");
INSERT INTO transactions VALUES("161","17","12","","YGOJVJCDDY05L","34","Transferred","12.00","1.44","70.00","-83.44","asdad","Success","2018-05-05 11:56:55","2018-05-05 11:56:55");
INSERT INTO transactions VALUES("162","20","12","","YGOJVJCDDY05L","34","Received","12.00","0.00","0.00","12.00","asdad","Success","2018-05-05 11:56:55","2018-05-05 11:56:55");
INSERT INTO transactions VALUES("163","7","12","","H9Y4ZLJKOEVI8","35","Transferred","11.00","1.32","70.00","-82.32","fasdf","Success","2018-05-05 12:01:28","2018-05-05 12:01:28");
INSERT INTO transactions VALUES("164","20","12","","H9Y4ZLJKOEVI8","35","Received","11.00","0.00","0.00","11.00","fasdf","Success","2018-05-05 12:01:28","2018-05-05 12:01:28");
INSERT INTO transactions VALUES("165","17","12","","DMLDCDXEDU1SI","36","Transferred","100.00","12.00","70.00","-182.00","asd","Success","2018-05-05 12:08:58","2018-05-05 12:08:58");
INSERT INTO transactions VALUES("166","20","12","","DMLDCDXEDU1SI","36","Received","100.00","0.00","0.00","100.00","asd","Success","2018-05-05 12:08:58","2018-05-05 12:08:58");
INSERT INTO transactions VALUES("167","17","12","","JOQUOV9FVSHOP","19","Exchange_From","12.00","0.00","0.00","-12.00","","Success","2018-05-05 12:23:51","2018-05-05 12:23:51");
INSERT INTO transactions VALUES("168","17","14","","JOQUOV9FVSHOP","19","Exchange_To","7.80","0.00","0.00","7.80","","Success","2018-05-05 12:23:51","2018-05-06 13:23:43");
INSERT INTO transactions VALUES("169","17","26","","OXX5UNTOYF6LH","20","Exchange_From","10.00","0.00","0.00","-10.00","","Success","2018-05-05 12:27:01","2018-05-05 12:27:01");
INSERT INTO transactions VALUES("170","17","12","","OXX5UNTOYF6LH","20","Exchange_To","0.12","0.00","0.00","0.12","","Success","2018-05-05 12:27:01","2018-05-05 12:27:01");
INSERT INTO transactions VALUES("171","17","12","","Q3WQH5TYFSHQO","6","Voucher_Created","100.00","0.00","0.00","-100.00","","Pending","2018-05-05 12:30:51","2018-05-05 12:30:51");
INSERT INTO transactions VALUES("172","17","12","","CDZOMHY1QMCBA","6","Voucher_Activated","100.00","0.00","0.00","100.00","","Success","2018-05-05 12:33:32","2018-05-05 12:33:32");
INSERT INTO transactions VALUES("173","17","21","","VK9FUJFJGRGLL","7","Voucher_Created","20.00","0.00","0.00","-20.00","","Pending","2018-05-05 12:33:51","2018-05-05 12:33:51");
INSERT INTO transactions VALUES("174","17","21","","JWIY4JTW9UDQH","7","Voucher_Activated","20.00","0.00","0.00","20.00","","Success","2018-05-05 12:34:02","2018-05-05 12:34:02");
INSERT INTO transactions VALUES("175","17","12","","7WB1QBTVQ0CVF","1","Request_Created","100.00","0.00","0.00","100.00","","Success","2018-05-06 11:11:12","2018-05-06 11:45:58");
INSERT INTO transactions VALUES("176","7","12","","7WB1QBTVQ0CVF","1","Request_Accepted","18.00","12.00","70.00","-100.00","","Success","2018-05-06 11:11:12","2018-05-06 11:45:58");





CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` double(10,2) DEFAULT '0.00',
  `amount` double(10,2) DEFAULT '0.00',
  `note` varchar(191) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `transfers_sender_id_index` (`sender_id`),
  KEY `transfers_receiver_id_index` (`receiver_id`),
  KEY `transfers_currency_id_index` (`currency_id`),
  CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO transfers VALUES("7","6","7","12","273BSAQEIEVEM","1270.00","10000.00","test","Blocked","2018-04-29 14:04:26");
INSERT INTO transfers VALUES("8","7","21","12","06SVM82GFNOQC","88.00","150.00","This is not for transfer","Success","2018-05-02 10:11:40");
INSERT INTO transfers VALUES("9","21","7","12","SDSPDGDJPMTEO","71.20","10.00","Testing","Success","2018-05-02 10:14:27");
INSERT INTO transfers VALUES("10","20","7","26","BOIQCE6I6VI38","70.12","1.00","test transfer","Success","2018-05-05 13:26:47");
INSERT INTO transfers VALUES("11","20","22","12","YSCCUEPTUOYBX","71.20","10.00","Note for recipient","Success","2018-05-05 14:50:38");
INSERT INTO transfers VALUES("12","17","7","12","F8CU4GYYZK0SW","84.76","123.00","asdad","Success","2018-05-05 17:09:51");
INSERT INTO transfers VALUES("13","17","7","12","CXP1WKWLAISW3","84.40","120.00","awew","Success","2018-05-05 17:34:55");
INSERT INTO transfers VALUES("14","17","7","12","BUMFFIXXQUMIA","84.76","123.00","testetetette","Success","2018-05-05 17:36:48");
INSERT INTO transfers VALUES("15","17","7","12","TLUSSSICEWH4U","97.96","233.00","asdasd","Success","2018-05-05 17:37:32");
INSERT INTO transfers VALUES("16","17","7","12","CG96ERYQKJTIU","71.44","12.00","xcvxv","Success","2018-05-05 17:38:27");
INSERT INTO transfers VALUES("17","17","7","12","9VUUBBLV98NXA","72.76","23.00","dsfsdf","Success","2018-05-05 17:38:56");
INSERT INTO transfers VALUES("18","17","7","12","W7Y9FAXCJTSTY","84.64","122.00","aser","Success","2018-05-05 17:39:59");
INSERT INTO transfers VALUES("19","17","7","12","EJ8WJJUFR3LDC","71.44","12.00","asda","Success","2018-05-05 17:40:54");
INSERT INTO transfers VALUES("20","17","7","12","JLVQCBLXF1J45","84.64","122.00","dsfsdf","Success","2018-05-05 17:41:18");
INSERT INTO transfers VALUES("21","17","20","12","ARM752QYGRPSU","72.76","23.00","asda","Success","2018-05-05 17:47:13");
INSERT INTO transfers VALUES("22","17","20","12","OC6GBNMQOVBI6","72.76","23.00","test","Success","2018-05-05 17:47:42");
INSERT INTO transfers VALUES("23","17","20","12","DBF4TMQQHCJC9","71.44","12.00","rewr","Success","2018-05-05 17:48:04");
INSERT INTO transfers VALUES("24","17","20","12","FJYKF3CPKRFW0","71.44","12.00","dsfs","Success","2018-05-05 17:48:37");
INSERT INTO transfers VALUES("25","17","20","12","DR0KDOX68SR4D","71.44","12.00","asda","Success","2018-05-05 17:50:06");
INSERT INTO transfers VALUES("26","17","7","12","0WZV3DZUTHKXD","80.80","90.00","asdasdad","Success","2018-05-05 17:50:41");
INSERT INTO transfers VALUES("27","17","20","12","8JGM4RKRBS5ZU","71.32","11.00","sadsd","Success","2018-05-05 17:51:12");
INSERT INTO transfers VALUES("28","17","20","12","ZCYXIAZLZ49HL","71.44","12.00","sdfsdfa","Success","2018-05-05 17:52:11");
INSERT INTO transfers VALUES("29","17","20","12","QXQBTZXLWUUD2","71.44","12.00","asdad","Success","2018-05-05 17:52:42");
INSERT INTO transfers VALUES("30","17","20","12","FWHWEID4G8ZTF","70.12","1.00","asda","Success","2018-05-05 17:53:18");
INSERT INTO transfers VALUES("31","17","20","12","ZYFJLT881U5FV","72.76","23.00","asdasda","Success","2018-05-05 17:54:03");
INSERT INTO transfers VALUES("32","17","7","12","VMDSMUWOVDIRO","70.12","1.00","asdad","Success","2018-05-05 17:54:41");
INSERT INTO transfers VALUES("33","17","","12","157VTLGBDCPDX","71.32","11.00","asdad","Pending","2018-05-05 17:55:00");
INSERT INTO transfers VALUES("34","17","20","12","YGOJVJCDDY05L","71.44","12.00","asdad","Success","2018-05-05 17:56:55");
INSERT INTO transfers VALUES("35","7","20","12","H9Y4ZLJKOEVI8","71.32","11.00","fasdf","Success","2018-05-05 18:01:27");
INSERT INTO transfers VALUES("36","17","20","12","DMLDCDXEDU1SI","82.00","100.00","asd","Success","2018-05-05 18:08:58");





CREATE TABLE IF NOT EXISTS `unregisteredtransactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_type` enum('Transfer','Request Payment') NOT NULL,
  `transaction_reference_id` int(11) NOT NULL DEFAULT '0',
  `phone` int(11) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unregisteredtransactions_phone_unique` (`phone`),
  UNIQUE KEY `unregisteredtransactions_email_unique` (`email`),
  KEY `unregisteredtransactions_transaction_reference_id_index` (`transaction_reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO unregisteredtransactions VALUES("9","Transfer","33","","user@gmail.com","2018-05-05 11:55:01","2018-05-05 11:55:01");





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
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO users VALUES("6","aminul.techvill","aminul","vai","1700000000","aminul.techvill@gmail.com","$2y$10$ufknneuBBL.njm/RYp3i/uAuQ84yXsey4kaANi4M4ETjw2DMEFruK","aminultechvill","Active","","","2018-04-29 07:59:18","2018-04-29 07:59:18","");
INSERT INTO users VALUES("7","parvez.techvill","parvez","robi","1521108069","parvez.techvill@gmail.com","$2y$10$SSiOwizro/6Ze/SBQklWI.RDSBPzCmC.sBnTfKzrCGwDgtSHYpv7G","parveztechvill","Active","","436dKOMbXHro08N4F0knrK3ypaoGC7dQnc6C4pSjj42UANbJ1W3xEKMZBAHJ","2018-04-29 08:03:46","2018-04-29 08:03:46","");
INSERT INTO users VALUES("16","milon.techvill","milon","ahmed","1800063119","milon.techvill@gmail.com","$2y$10$5JUdacBPtvyjP3k2d3DcAO.ulyMW4KIwhj9wDcqFqACAZdkH9p.cO","","Active","","","2018-04-29 11:54:50","2018-04-29 11:54:50","");
INSERT INTO users VALUES("17","parvez.agvbd","parvez","agvbd","1529908069","parvez.agvbd@gmail.com","$2y$10$QGgwaKgqu4hvNrS0omP9putfXNPrdWPr0eQIjpxTq.Dvh9Z9t0ep2","parvezagvbd","Active","","fmRev25qAKAxC9hgHofsLOVXLUwoJveASpfzYX7UvB4Dcnh0wmjYHFoQJjcO","2018-04-30 06:04:31","2018-04-30 06:04:31","");
INSERT INTO users VALUES("18","amit","amit","ovi","1911111121","amit@gmail.com","$2y$10$q4wZ5SUhwVc71DzKhW25VeEwm35DkhvLhNVHqq4U.4aNLUcjG1hlK","","Active","","qptiTmYcjO6SjviGITWeqEmIpaoTwZWK1uSABnuJZUZTGGM6SwBBIPcuDoaR","2018-04-30 06:30:06","2018-04-30 06:30:06","");
INSERT INTO users VALUES("19","user1","user1","user1","1848367676","user1@gmail.com","$2y$10$56SuGHNQywbZ4NNjxgiFyu5CePZKfn6GcWj6ira3bO5LchdyM66ny","","Active","","ksLFWc03OBCrX0CRaQbCLuUicUN1ix4oGRh9EPAXxQ1gKyxqewnAS7CLFawa","2018-04-30 07:24:19","2018-04-30 07:24:19","");
INSERT INTO users VALUES("20","user2","user2","user2","1533304469","user2@gmail.com","$2y$10$7TFFpgydC9TJb7ZeV7/HbufcfUXasDwMvZfKLx0sObfq4v2lj4yby","","Active","","mQsLLL1GJLrNNohFToFtLMxHMnpHrNlE4xncsigqcWGgqVS6okNnXb5K10RH","2018-04-30 07:31:45","2018-04-30 07:31:45","");
INSERT INTO users VALUES("21","shahin.techvill","Shahin","Alam","1722113736","shahin.techvill@gmail.com","$2y$10$0e7wvaE0QrCgMOWZI3hfVeXbZmaladXzWBdDH0t1KYjzwXL7Zhmri","","Active","","WDLGqj2RgzddBtZ1JuVpF5gLH0KKgJos87FBhPPVHRYzJ1xlS5WQlO6bJRoc","2018-05-02 04:10:38","2018-05-02 04:10:38","");
INSERT INTO users VALUES("22","borna.techvill","farzana","borna","1688000000","borna.techvill@gmail.com","$2y$10$/IyzcoOgYkEl/zqMf0ovEe0I6qXLnhyoISdmqHgT5UbXpLCrS8Cqu","","Active","","","2018-05-05 10:32:33","2018-05-05 10:32:33","");
INSERT INTO users VALUES("26","ovi","amit","ovi","1700000002","ovi@gmail.com","$2y$10$02uCEE3VBVbDUmxlIfxK2eg98US/mH/UKXA8jIHR2Ggrmr4rxiFqe","ovidsfs","Active","","","2018-05-06 06:45:29","2018-05-06 07:19:53","");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO vouchers VALUES("1","6","7","12","EXAGQGMAKJ4T4","100.00","QWPMDVWXDGAR5QRCHS8PRKJBQD5B4L","Success","2018-04-29 08:05:19","2018-05-06 11:42:30");
INSERT INTO vouchers VALUES("2","20","20","12","0B7QZCTBYH8YM","35.86","ZRPRKFYIIKBBJSNCDX0ER6OP0GH23N","Success","2018-05-05 09:07:29","2018-05-05 09:07:47");
INSERT INTO vouchers VALUES("3","20","20","26","RATYI3BRORPL3","2.00","CJZRT7KRZTTPKL8BBKJEUPQEOTEBQF","Success","2018-05-05 09:12:38","2018-05-05 09:13:06");
INSERT INTO vouchers VALUES("4","20","20","12","GERTXWJ3YY9OB","1.00","IIKBSJ67FAKN0FD63BOOWGZ9JQ4HP1","Success","2018-05-05 09:32:30","2018-05-05 10:09:23");
INSERT INTO vouchers VALUES("5","20","","12","X4E1GJLH6MXCH","3.00","1PR9TUBXA8MIWQ2UJVZCUWSDXHABNK","Pending","2018-05-05 09:47:11","2018-05-05 09:47:11");
INSERT INTO vouchers VALUES("6","17","17","12","Q3WQH5TYFSHQO","100.00","Y4249WPLNZEAQ6KTVBAAWOGA605OLZ","Success","2018-05-05 12:30:51","2018-05-05 12:33:32");
INSERT INTO vouchers VALUES("7","17","17","21","VK9FUJFJGRGLL","20.00","RB3TEMNLNZOSKCA1QRVNVYWI38AHIE","Success","2018-05-05 12:33:51","2018-05-05 12:34:02");





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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

INSERT INTO wallets VALUES("32","6","12","44885.00","Yes","2018-04-29 07:59:19","2018-05-06 12:38:44");
INSERT INTO wallets VALUES("33","7","12","3581.48","Yes","2018-04-29 08:03:46","2018-05-07 10:21:24");
INSERT INTO wallets VALUES("40","7","26","8417.00","No","2018-04-29 09:16:08","2018-05-07 10:21:23");
INSERT INTO wallets VALUES("45","16","12","4485.00","Yes","2018-04-29 11:54:51","2018-05-06 11:01:34");
INSERT INTO wallets VALUES("46","17","12","22794.72","Yes","2018-04-30 06:04:31","2018-05-07 05:10:32");
INSERT INTO wallets VALUES("47","17","26","8288.00","No","2018-04-30 06:11:46","2018-05-07 05:10:32");
INSERT INTO wallets VALUES("48","18","12","8803.00","Yes","2018-04-30 06:30:06","2018-04-30 06:55:35");
INSERT INTO wallets VALUES("49","19","12","4385.00","Yes","2018-04-30 07:24:19","2018-04-30 08:01:59");
INSERT INTO wallets VALUES("50","19","26","7892.00","No","2018-04-30 07:25:16","2018-04-30 08:03:36");
INSERT INTO wallets VALUES("51","20","12","4266.86","Yes","2018-04-30 07:31:45","2018-05-07 10:27:38");
INSERT INTO wallets VALUES("52","7","14","260.00","No","2018-04-30 10:10:49","2018-05-07 10:21:23");
INSERT INTO wallets VALUES("53","21","12","68.80","Yes","2018-05-02 04:10:38","2018-05-07 05:58:23");
INSERT INTO wallets VALUES("54","7","25","11390.00","No","2018-05-05 06:03:38","2018-05-07 10:21:23");
INSERT INTO wallets VALUES("55","17","25","50.00","No","2018-05-05 06:16:10","2018-05-07 05:10:32");
INSERT INTO wallets VALUES("56","17","27","100.00","No","2018-05-05 06:21:58","2018-05-07 05:10:32");
INSERT INTO wallets VALUES("57","7","27","12800.00","No","2018-05-05 06:22:19","2018-05-07 10:21:23");
INSERT INTO wallets VALUES("58","20","26","9051.68","No","2018-05-05 07:24:41","2018-05-07 10:27:38");
INSERT INTO wallets VALUES("59","20","14","3.25","No","2018-05-05 08:58:15","2018-05-07 10:27:38");
INSERT INTO wallets VALUES("60","17","21","90.00","No","2018-05-05 09:46:26","2018-05-07 05:10:32");
INSERT INTO wallets VALUES("61","7","21","105729.20","No","2018-05-05 09:47:59","2018-05-07 10:21:23");
INSERT INTO wallets VALUES("62","22","12","-62.24","Yes","2018-05-05 10:32:33","2018-05-05 10:43:30");
INSERT INTO wallets VALUES("63","17","14","7.80","No","2018-05-05 12:23:51","2018-05-07 05:10:32");
INSERT INTO wallets VALUES("67","26","12","0.00","Yes","2018-05-06 06:45:30","2018-05-06 06:45:30");
INSERT INTO wallets VALUES("68","17","1","0.00","No","2018-05-06 11:08:21","2018-05-07 05:10:32");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO withdrawals VALUES("1","7","12","6","TK0YPUD4J49DC","21.00","120.00","275.00","500.00","test","Success","2018-04-29 08:11:25","2018-05-06 09:33:14");
INSERT INTO withdrawals VALUES("2","20","12","3","NTL2OYJXSG0B8","35.00","40.00","-18.55","33.00","borna.techvill@gmail.com","Success","2018-05-05 10:15:03","2018-05-06 07:28:48");



