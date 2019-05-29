

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=952 DEFAULT CHARSET=utf8;

INSERT INTO activity_logs VALUES("7","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-03 14:45:16");
INSERT INTO activity_logs VALUES("8","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-03 14:45:44");
INSERT INTO activity_logs VALUES("9","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-03 14:47:00");
INSERT INTO activity_logs VALUES("10","1","Admin","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-03 14:52:39");
INSERT INTO activity_logs VALUES("11","4","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-03 14:54:28");
INSERT INTO activity_logs VALUES("12","7","User","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-03 15:03:25");
INSERT INTO activity_logs VALUES("13","1","Admin","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-03 15:08:40");
INSERT INTO activity_logs VALUES("17","4","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-03 16:10:20");
INSERT INTO activity_logs VALUES("18","7","User","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-03 20:16:02");
INSERT INTO activity_logs VALUES("19","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 09:22:25");
INSERT INTO activity_logs VALUES("20","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 09:25:30");
INSERT INTO activity_logs VALUES("21","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-04 09:29:17");
INSERT INTO activity_logs VALUES("22","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-04 09:31:01");
INSERT INTO activity_logs VALUES("23","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 09:32:52");
INSERT INTO activity_logs VALUES("24","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 09:33:09");
INSERT INTO activity_logs VALUES("25","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 09:39:27");
INSERT INTO activity_logs VALUES("26","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-04 09:42:23");
INSERT INTO activity_logs VALUES("27","10","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 09:42:33");
INSERT INTO activity_logs VALUES("30","14","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-04 10:01:33");
INSERT INTO activity_logs VALUES("32","1","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:08:08");
INSERT INTO activity_logs VALUES("33","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 10:11:20");
INSERT INTO activity_logs VALUES("35","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:17:37");
INSERT INTO activity_logs VALUES("37","10","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-04 10:22:13");
INSERT INTO activity_logs VALUES("38","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 10:22:29");
INSERT INTO activity_logs VALUES("39","5","User","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:22:41");
INSERT INTO activity_logs VALUES("41","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:31:26");
INSERT INTO activity_logs VALUES("42","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 10:57:01");
INSERT INTO activity_logs VALUES("43","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 11:01:33");
INSERT INTO activity_logs VALUES("44","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-04 11:29:42");
INSERT INTO activity_logs VALUES("45","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-04 11:42:04");
INSERT INTO activity_logs VALUES("46","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-04 12:03:32");
INSERT INTO activity_logs VALUES("48","6","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 12:09:41");
INSERT INTO activity_logs VALUES("51","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 12:40:12");
INSERT INTO activity_logs VALUES("55","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 12:58:02");
INSERT INTO activity_logs VALUES("57","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 13:08:24");
INSERT INTO activity_logs VALUES("58","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 13:44:02");
INSERT INTO activity_logs VALUES("60","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 14:04:20");
INSERT INTO activity_logs VALUES("63","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-04 14:34:04");
INSERT INTO activity_logs VALUES("65","1","Admin","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 15:04:11");
INSERT INTO activity_logs VALUES("67","10","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 15:12:43");
INSERT INTO activity_logs VALUES("68","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-04 15:13:22");
INSERT INTO activity_logs VALUES("70","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 15:33:51");
INSERT INTO activity_logs VALUES("72","5","User","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 16:02:22");
INSERT INTO activity_logs VALUES("73","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 16:02:39");
INSERT INTO activity_logs VALUES("74","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 09:33:08");
INSERT INTO activity_logs VALUES("75","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 09:42:08");
INSERT INTO activity_logs VALUES("76","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 09:43:39");
INSERT INTO activity_logs VALUES("77","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-05 10:09:13");
INSERT INTO activity_logs VALUES("78","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-05 10:09:40");
INSERT INTO activity_logs VALUES("81","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-05 10:18:47");
INSERT INTO activity_logs VALUES("82","10","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 10:19:05");
INSERT INTO activity_logs VALUES("84","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 11:08:31");
INSERT INTO activity_logs VALUES("85","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:10:00");
INSERT INTO activity_logs VALUES("88","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:22:11");
INSERT INTO activity_logs VALUES("89","4","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:35:24");
INSERT INTO activity_logs VALUES("90","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:45:18");
INSERT INTO activity_logs VALUES("92","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 12:12:08");
INSERT INTO activity_logs VALUES("93","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 12:12:45");
INSERT INTO activity_logs VALUES("94","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 12:18:54");
INSERT INTO activity_logs VALUES("95","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 12:20:49");
INSERT INTO activity_logs VALUES("96","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 12:24:20");
INSERT INTO activity_logs VALUES("97","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-05 12:27:05");
INSERT INTO activity_logs VALUES("98","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 12:42:41");
INSERT INTO activity_logs VALUES("102","4","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 13:42:47");
INSERT INTO activity_logs VALUES("103","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:12:34");
INSERT INTO activity_logs VALUES("104","5","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 15:20:43");
INSERT INTO activity_logs VALUES("105","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134","2018-06-05 15:25:19");
INSERT INTO activity_logs VALUES("106","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 15:26:00");
INSERT INTO activity_logs VALUES("108","21","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:48:25");
INSERT INTO activity_logs VALUES("113","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-06 09:44:11");
INSERT INTO activity_logs VALUES("114","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 09:45:01");
INSERT INTO activity_logs VALUES("116","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-06 09:57:18");
INSERT INTO activity_logs VALUES("118","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 10:02:51");
INSERT INTO activity_logs VALUES("119","10","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-06 10:06:46");
INSERT INTO activity_logs VALUES("121","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 10:19:47");
INSERT INTO activity_logs VALUES("123","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 11:18:17");
INSERT INTO activity_logs VALUES("124","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 11:23:52");
INSERT INTO activity_logs VALUES("125","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 11:49:01");
INSERT INTO activity_logs VALUES("129","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 12:20:51");
INSERT INTO activity_logs VALUES("131","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 12:22:37");
INSERT INTO activity_logs VALUES("132","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 12:22:46");
INSERT INTO activity_logs VALUES("133","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 12:24:35");
INSERT INTO activity_logs VALUES("134","7","User","192.168.0.108","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-06 12:34:10");
INSERT INTO activity_logs VALUES("137","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 12:44:08");
INSERT INTO activity_logs VALUES("139","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 13:38:28");
INSERT INTO activity_logs VALUES("142","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 13:51:08");
INSERT INTO activity_logs VALUES("143","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 13:56:05");
INSERT INTO activity_logs VALUES("146","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 14:19:55");
INSERT INTO activity_logs VALUES("147","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 14:22:42");
INSERT INTO activity_logs VALUES("148","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 14:24:12");
INSERT INTO activity_logs VALUES("149","1","Admin","192.168.0.108","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-06 14:48:22");
INSERT INTO activity_logs VALUES("150","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 14:55:49");
INSERT INTO activity_logs VALUES("151","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 14:56:59");
INSERT INTO activity_logs VALUES("152","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-06 15:02:55");
INSERT INTO activity_logs VALUES("153","5","User","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 15:09:21");
INSERT INTO activity_logs VALUES("154","10","User","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 15:10:32");
INSERT INTO activity_logs VALUES("155","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 15:25:15");
INSERT INTO activity_logs VALUES("156","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 15:32:52");
INSERT INTO activity_logs VALUES("157","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 15:44:25");
INSERT INTO activity_logs VALUES("159","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 15:50:12");
INSERT INTO activity_logs VALUES("160","7","User","192.168.0.100","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 09:46:20");
INSERT INTO activity_logs VALUES("161","1","Admin","192.168.0.100","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 09:47:36");
INSERT INTO activity_logs VALUES("162","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 09:52:08");
INSERT INTO activity_logs VALUES("163","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 10:06:21");
INSERT INTO activity_logs VALUES("164","5","User","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 10:06:23");
INSERT INTO activity_logs VALUES("165","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 10:15:41");
INSERT INTO activity_logs VALUES("169","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 10:18:15");
INSERT INTO activity_logs VALUES("171","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 10:19:50");
INSERT INTO activity_logs VALUES("172","10","User","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 10:20:34");
INSERT INTO activity_logs VALUES("173","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 10:23:16");
INSERT INTO activity_logs VALUES("174","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 10:31:03");
INSERT INTO activity_logs VALUES("175","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 10:34:44");
INSERT INTO activity_logs VALUES("176","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-07 10:57:47");
INSERT INTO activity_logs VALUES("177","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 11:27:27");
INSERT INTO activity_logs VALUES("178","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 11:28:51");
INSERT INTO activity_logs VALUES("179","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 11:38:43");
INSERT INTO activity_logs VALUES("180","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 11:50:54");
INSERT INTO activity_logs VALUES("181","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 12:13:40");
INSERT INTO activity_logs VALUES("182","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 12:17:39");
INSERT INTO activity_logs VALUES("183","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 12:53:51");
INSERT INTO activity_logs VALUES("184","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 12:58:37");
INSERT INTO activity_logs VALUES("186","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 13:45:02");
INSERT INTO activity_logs VALUES("187","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 13:47:18");
INSERT INTO activity_logs VALUES("188","6","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-07 14:02:19");
INSERT INTO activity_logs VALUES("189","6","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-07 14:02:49");
INSERT INTO activity_logs VALUES("190","7","User","192.168.0.100","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 14:08:53");
INSERT INTO activity_logs VALUES("191","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:34:28");
INSERT INTO activity_logs VALUES("192","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:40:51");
INSERT INTO activity_logs VALUES("193","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:41:34");
INSERT INTO activity_logs VALUES("194","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:44:39");
INSERT INTO activity_logs VALUES("196","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 15:04:12");
INSERT INTO activity_logs VALUES("197","6","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-07 15:11:36");
INSERT INTO activity_logs VALUES("198","7","User","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-08 15:36:10");
INSERT INTO activity_logs VALUES("199","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 09:46:52");
INSERT INTO activity_logs VALUES("201","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:14:22");
INSERT INTO activity_logs VALUES("202","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:26:53");
INSERT INTO activity_logs VALUES("203","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:45:17");
INSERT INTO activity_logs VALUES("204","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-10 10:47:33");
INSERT INTO activity_logs VALUES("206","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 11:02:47");
INSERT INTO activity_logs VALUES("208","7","User","192.168.0.111","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-10 12:16:30");
INSERT INTO activity_logs VALUES("209","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-10 12:29:24");
INSERT INTO activity_logs VALUES("210","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 12:37:10");
INSERT INTO activity_logs VALUES("211","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 12:40:10");
INSERT INTO activity_logs VALUES("212","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-10 13:37:00");
INSERT INTO activity_logs VALUES("213","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 13:37:08");
INSERT INTO activity_logs VALUES("216","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 14:09:30");
INSERT INTO activity_logs VALUES("217","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 15:16:07");
INSERT INTO activity_logs VALUES("218","5","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 15:34:47");
INSERT INTO activity_logs VALUES("219","1","Admin","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 15:36:54");
INSERT INTO activity_logs VALUES("220","10","Admin","192.168.0.106","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 15:37:21");
INSERT INTO activity_logs VALUES("221","5","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 15:41:02");
INSERT INTO activity_logs VALUES("222","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 09:55:42");
INSERT INTO activity_logs VALUES("223","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-11 10:08:30");
INSERT INTO activity_logs VALUES("224","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-11 10:10:09");
INSERT INTO activity_logs VALUES("225","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 10:13:10");
INSERT INTO activity_logs VALUES("226","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-11 10:31:03");
INSERT INTO activity_logs VALUES("227","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-11 10:31:31");
INSERT INTO activity_logs VALUES("228","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-11 10:42:41");
INSERT INTO activity_logs VALUES("229","7","User","192.168.0.108","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-11 10:55:26");
INSERT INTO activity_logs VALUES("230","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:28:09");
INSERT INTO activity_logs VALUES("231","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:30:35");
INSERT INTO activity_logs VALUES("232","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:34:03");
INSERT INTO activity_logs VALUES("233","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:36:11");
INSERT INTO activity_logs VALUES("234","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:52:15");
INSERT INTO activity_logs VALUES("235","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:54:10");
INSERT INTO activity_logs VALUES("236","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:55:56");
INSERT INTO activity_logs VALUES("237","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 11:58:08");
INSERT INTO activity_logs VALUES("238","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 12:01:51");
INSERT INTO activity_logs VALUES("239","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 12:17:26");
INSERT INTO activity_logs VALUES("240","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 12:20:13");
INSERT INTO activity_logs VALUES("241","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 12:28:38");
INSERT INTO activity_logs VALUES("242","1","Admin","192.168.0.108","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-11 12:50:16");
INSERT INTO activity_logs VALUES("243","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-11 13:26:38");
INSERT INTO activity_logs VALUES("244","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 14:10:34");
INSERT INTO activity_logs VALUES("245","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-11 14:45:46");
INSERT INTO activity_logs VALUES("246","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-11 15:12:38");
INSERT INTO activity_logs VALUES("247","10","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-11 15:14:04");
INSERT INTO activity_logs VALUES("248","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-11 15:21:55");
INSERT INTO activity_logs VALUES("249","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-12 09:30:51");
INSERT INTO activity_logs VALUES("250","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-12 09:41:09");
INSERT INTO activity_logs VALUES("251","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-12 09:42:30");
INSERT INTO activity_logs VALUES("253","7","User","192.168.0.111","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-12 10:24:08");
INSERT INTO activity_logs VALUES("254","4","User","192.168.0.108","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-12 10:36:05");
INSERT INTO activity_logs VALUES("255","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-12 11:14:22");
INSERT INTO activity_logs VALUES("256","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-12 11:48:03");
INSERT INTO activity_logs VALUES("257","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-12 12:07:31");
INSERT INTO activity_logs VALUES("258","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-12 12:35:18");
INSERT INTO activity_logs VALUES("259","5","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-12 13:47:35");
INSERT INTO activity_logs VALUES("260","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-12 14:25:42");
INSERT INTO activity_logs VALUES("261","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-12 14:35:01");
INSERT INTO activity_logs VALUES("262","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-13 09:41:45");
INSERT INTO activity_logs VALUES("263","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-13 09:43:22");
INSERT INTO activity_logs VALUES("265","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-13 11:08:34");
INSERT INTO activity_logs VALUES("266","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-13 11:09:25");
INSERT INTO activity_logs VALUES("267","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-13 11:38:20");
INSERT INTO activity_logs VALUES("268","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-13 12:43:46");
INSERT INTO activity_logs VALUES("269","7","User","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-21 10:58:09");
INSERT INTO activity_logs VALUES("270","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 10:59:31");
INSERT INTO activity_logs VALUES("271","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 11:00:15");
INSERT INTO activity_logs VALUES("272","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 11:45:25");
INSERT INTO activity_logs VALUES("273","24","User","192.168.0.104","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-21 12:21:44");
INSERT INTO activity_logs VALUES("274","1","Admin","192.168.0.104","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-21 12:23:19");
INSERT INTO activity_logs VALUES("275","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 12:34:39");
INSERT INTO activity_logs VALUES("276","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 15:34:20");
INSERT INTO activity_logs VALUES("277","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 15:38:55");
INSERT INTO activity_logs VALUES("278","24","User","192.168.0.104","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-21 16:03:13");
INSERT INTO activity_logs VALUES("279","1","Admin","192.168.0.104","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-21 16:03:53");
INSERT INTO activity_logs VALUES("280","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 17:46:49");
INSERT INTO activity_logs VALUES("281","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-21 18:06:20");
INSERT INTO activity_logs VALUES("282","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-22 10:46:55");
INSERT INTO activity_logs VALUES("283","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-22 10:47:13");
INSERT INTO activity_logs VALUES("284","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-22 10:50:55");
INSERT INTO activity_logs VALUES("286","7","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 12:13:10");
INSERT INTO activity_logs VALUES("287","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-22 15:12:45");
INSERT INTO activity_logs VALUES("288","5","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 15:59:22");
INSERT INTO activity_logs VALUES("290","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 16:33:46");
INSERT INTO activity_logs VALUES("292","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 19:11:56");
INSERT INTO activity_logs VALUES("294","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 11:19:16");
INSERT INTO activity_logs VALUES("296","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-23 11:23:35");
INSERT INTO activity_logs VALUES("297","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-23 11:23:56");
INSERT INTO activity_logs VALUES("298","1","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 11:57:09");
INSERT INTO activity_logs VALUES("299","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 12:27:23");
INSERT INTO activity_logs VALUES("300","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 12:58:06");
INSERT INTO activity_logs VALUES("301","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 13:17:23");
INSERT INTO activity_logs VALUES("302","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 13:25:46");
INSERT INTO activity_logs VALUES("303","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 13:28:55");
INSERT INTO activity_logs VALUES("304","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-23 13:36:59");
INSERT INTO activity_logs VALUES("305","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-23 13:37:38");
INSERT INTO activity_logs VALUES("306","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 13:53:25");
INSERT INTO activity_logs VALUES("307","4","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-23 13:59:52");
INSERT INTO activity_logs VALUES("308","7","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 14:25:16");
INSERT INTO activity_logs VALUES("309","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:21:55");
INSERT INTO activity_logs VALUES("310","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-23 18:25:52");
INSERT INTO activity_logs VALUES("311","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-23 18:26:22");
INSERT INTO activity_logs VALUES("312","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:27:35");
INSERT INTO activity_logs VALUES("313","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 18:28:50");
INSERT INTO activity_logs VALUES("315","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:31:41");
INSERT INTO activity_logs VALUES("316","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 18:44:31");
INSERT INTO activity_logs VALUES("317","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:47:56");
INSERT INTO activity_logs VALUES("318","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:54:21");
INSERT INTO activity_logs VALUES("319","4","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 18:55:04");
INSERT INTO activity_logs VALUES("320","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-23 18:56:16");
INSERT INTO activity_logs VALUES("321","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-24 11:14:25");
INSERT INTO activity_logs VALUES("322","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-24 11:24:33");
INSERT INTO activity_logs VALUES("324","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-24 11:34:55");
INSERT INTO activity_logs VALUES("325","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-24 11:35:37");
INSERT INTO activity_logs VALUES("326","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-24 11:55:42");
INSERT INTO activity_logs VALUES("327","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-24 12:25:18");
INSERT INTO activity_logs VALUES("328","1","Admin","192.168.0.112","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-24 13:06:09");
INSERT INTO activity_logs VALUES("329","7","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-24 13:27:43");
INSERT INTO activity_logs VALUES("330","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-24 15:52:22");
INSERT INTO activity_logs VALUES("331","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-24 16:39:45");
INSERT INTO activity_logs VALUES("332","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-24 19:01:54");
INSERT INTO activity_logs VALUES("333","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 11:32:19");
INSERT INTO activity_logs VALUES("334","5","User","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 12:05:24");
INSERT INTO activity_logs VALUES("335","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 13:44:50");
INSERT INTO activity_logs VALUES("336","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-25 13:48:08");
INSERT INTO activity_logs VALUES("337","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 14:13:31");
INSERT INTO activity_logs VALUES("338","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-25 14:15:47");
INSERT INTO activity_logs VALUES("339","24","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 14:18:24");
INSERT INTO activity_logs VALUES("340","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 14:43:25");
INSERT INTO activity_logs VALUES("342","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 16:26:03");
INSERT INTO activity_logs VALUES("343","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 16:48:49");
INSERT INTO activity_logs VALUES("344","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 16:56:19");
INSERT INTO activity_logs VALUES("345","5","User","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 17:09:31");
INSERT INTO activity_logs VALUES("346","1","Admin","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 17:15:51");
INSERT INTO activity_logs VALUES("347","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 17:21:27");
INSERT INTO activity_logs VALUES("348","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 17:21:35");
INSERT INTO activity_logs VALUES("349","24","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 18:44:08");
INSERT INTO activity_logs VALUES("350","24","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 18:45:09");
INSERT INTO activity_logs VALUES("352","24","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 19:02:28");
INSERT INTO activity_logs VALUES("353","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 19:03:10");
INSERT INTO activity_logs VALUES("354","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-26 11:03:35");
INSERT INTO activity_logs VALUES("356","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-26 11:28:35");
INSERT INTO activity_logs VALUES("357","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-26 11:29:54");
INSERT INTO activity_logs VALUES("358","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 11:31:54");
INSERT INTO activity_logs VALUES("359","24","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 12:06:28");
INSERT INTO activity_logs VALUES("360","1","Admin","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 12:27:32");
INSERT INTO activity_logs VALUES("361","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-26 12:56:33");
INSERT INTO activity_logs VALUES("362","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 13:33:15");
INSERT INTO activity_logs VALUES("363","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 13:49:40");
INSERT INTO activity_logs VALUES("364","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 13:52:24");
INSERT INTO activity_logs VALUES("365","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-26 15:37:07");
INSERT INTO activity_logs VALUES("366","24","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 16:55:31");
INSERT INTO activity_logs VALUES("367","33","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 17:03:28");
INSERT INTO activity_logs VALUES("368","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 19:06:48");
INSERT INTO activity_logs VALUES("369","1","Admin","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 11:20:11");
INSERT INTO activity_logs VALUES("373","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 12:29:27");
INSERT INTO activity_logs VALUES("374","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 13:00:37");
INSERT INTO activity_logs VALUES("376","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:28:19");
INSERT INTO activity_logs VALUES("377","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:38:39");
INSERT INTO activity_logs VALUES("378","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:42:06");
INSERT INTO activity_logs VALUES("379","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:43:15");
INSERT INTO activity_logs VALUES("380","33","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:43:56");
INSERT INTO activity_logs VALUES("382","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:45:40");
INSERT INTO activity_logs VALUES("383","33","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:47:23");
INSERT INTO activity_logs VALUES("384","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 13:52:02");
INSERT INTO activity_logs VALUES("385","1","Admin","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 13:54:30");
INSERT INTO activity_logs VALUES("386","1","Admin","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 13:55:57");
INSERT INTO activity_logs VALUES("387","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:58:15");
INSERT INTO activity_logs VALUES("388","5","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 13:58:27");
INSERT INTO activity_logs VALUES("389","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 14:09:14");
INSERT INTO activity_logs VALUES("390","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 14:21:16");
INSERT INTO activity_logs VALUES("391","5","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 14:27:35");
INSERT INTO activity_logs VALUES("392","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 14:28:07");
INSERT INTO activity_logs VALUES("393","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 14:29:22");
INSERT INTO activity_logs VALUES("394","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 14:29:39");
INSERT INTO activity_logs VALUES("395","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 14:32:37");
INSERT INTO activity_logs VALUES("396","2","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 14:33:38");
INSERT INTO activity_logs VALUES("397","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 14:35:21");
INSERT INTO activity_logs VALUES("399","5","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 14:45:03");
INSERT INTO activity_logs VALUES("400","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 15:41:43");
INSERT INTO activity_logs VALUES("401","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 16:26:04");
INSERT INTO activity_logs VALUES("402","33","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-27 16:26:17");
INSERT INTO activity_logs VALUES("406","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 18:36:12");
INSERT INTO activity_logs VALUES("408","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 18:39:56");
INSERT INTO activity_logs VALUES("409","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 18:43:51");
INSERT INTO activity_logs VALUES("410","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 18:45:08");
INSERT INTO activity_logs VALUES("411","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 18:46:22");
INSERT INTO activity_logs VALUES("412","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-27 18:49:03");
INSERT INTO activity_logs VALUES("413","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 19:12:37");
INSERT INTO activity_logs VALUES("414","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-28 11:18:29");
INSERT INTO activity_logs VALUES("415","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-28 11:18:57");
INSERT INTO activity_logs VALUES("416","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-28 11:36:56");
INSERT INTO activity_logs VALUES("418","1","Admin","192.168.0.114","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-28 17:35:56");
INSERT INTO activity_logs VALUES("419","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-28 18:00:23");
INSERT INTO activity_logs VALUES("420","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-30 11:11:43");
INSERT INTO activity_logs VALUES("421","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-30 11:19:45");
INSERT INTO activity_logs VALUES("422","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-30 11:23:24");
INSERT INTO activity_logs VALUES("423","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-30 11:25:04");
INSERT INTO activity_logs VALUES("424","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-30 13:04:55");
INSERT INTO activity_logs VALUES("425","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-30 13:10:31");
INSERT INTO activity_logs VALUES("426","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-30 13:13:35");
INSERT INTO activity_logs VALUES("427","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-30 13:13:47");
INSERT INTO activity_logs VALUES("428","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 13:50:35");
INSERT INTO activity_logs VALUES("429","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-06-30 15:45:56");
INSERT INTO activity_logs VALUES("430","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 16:24:12");
INSERT INTO activity_logs VALUES("431","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-30 16:53:35");
INSERT INTO activity_logs VALUES("432","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:14:06");
INSERT INTO activity_logs VALUES("433","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:15:10");
INSERT INTO activity_logs VALUES("434","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:16:13");
INSERT INTO activity_logs VALUES("435","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:16:29");
INSERT INTO activity_logs VALUES("436","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:18:54");
INSERT INTO activity_logs VALUES("437","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:19:09");
INSERT INTO activity_logs VALUES("438","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:19:48");
INSERT INTO activity_logs VALUES("439","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:20:19");
INSERT INTO activity_logs VALUES("440","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:20:37");
INSERT INTO activity_logs VALUES("441","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:25:54");
INSERT INTO activity_logs VALUES("442","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:28:31");
INSERT INTO activity_logs VALUES("443","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:29:01");
INSERT INTO activity_logs VALUES("444","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-30 18:29:21");
INSERT INTO activity_logs VALUES("445","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0","2018-06-30 18:46:13");
INSERT INTO activity_logs VALUES("446","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-01 11:03:04");
INSERT INTO activity_logs VALUES("447","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 11:14:47");
INSERT INTO activity_logs VALUES("448","1","Admin","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-01 11:21:49");
INSERT INTO activity_logs VALUES("450","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 13:15:21");
INSERT INTO activity_logs VALUES("451","1","Admin","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-01 13:57:15");
INSERT INTO activity_logs VALUES("452","7","User","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-01 13:58:03");
INSERT INTO activity_logs VALUES("453","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 15:19:39");
INSERT INTO activity_logs VALUES("454","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-01 15:23:25");
INSERT INTO activity_logs VALUES("457","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 15:34:14");
INSERT INTO activity_logs VALUES("458","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 15:38:48");
INSERT INTO activity_logs VALUES("459","4","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 15:40:02");
INSERT INTO activity_logs VALUES("461","1","Admin","fe80::3cb9:f6c0:4067:8ae2","Mozilla/5.0 (Windows NT 10.0; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-01 16:36:17");
INSERT INTO activity_logs VALUES("463","1","Admin","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-01 18:03:41");
INSERT INTO activity_logs VALUES("464","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-01 18:21:47");
INSERT INTO activity_logs VALUES("465","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 11:16:24");
INSERT INTO activity_logs VALUES("466","1","Admin","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 11:16:46");
INSERT INTO activity_logs VALUES("467","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 11:21:35");
INSERT INTO activity_logs VALUES("469","35","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 11:25:14");
INSERT INTO activity_logs VALUES("470","35","User","192.168.0.109","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 11:26:59");
INSERT INTO activity_logs VALUES("471","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:31:36");
INSERT INTO activity_logs VALUES("472","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:32:09");
INSERT INTO activity_logs VALUES("473","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:35:07");
INSERT INTO activity_logs VALUES("474","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:39:08");
INSERT INTO activity_logs VALUES("475","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-02 11:41:39");
INSERT INTO activity_logs VALUES("476","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:45:59");
INSERT INTO activity_logs VALUES("477","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:46:32");
INSERT INTO activity_logs VALUES("480","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 11:55:26");
INSERT INTO activity_logs VALUES("481","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 12:04:16");
INSERT INTO activity_logs VALUES("482","1","Admin","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 12:34:49");
INSERT INTO activity_logs VALUES("483","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 13:51:07");
INSERT INTO activity_logs VALUES("484","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 16:01:17");
INSERT INTO activity_logs VALUES("485","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 16:08:08");
INSERT INTO activity_logs VALUES("486","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 16:12:57");
INSERT INTO activity_logs VALUES("487","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 16:46:24");
INSERT INTO activity_logs VALUES("488","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 16:50:48");
INSERT INTO activity_logs VALUES("489","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 16:52:39");
INSERT INTO activity_logs VALUES("490","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 16:59:05");
INSERT INTO activity_logs VALUES("491","35","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 16:59:46");
INSERT INTO activity_logs VALUES("492","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 17:02:12");
INSERT INTO activity_logs VALUES("493","1","Admin","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-02 17:10:03");
INSERT INTO activity_logs VALUES("494","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-02 17:50:06");
INSERT INTO activity_logs VALUES("495","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-02 18:42:29");
INSERT INTO activity_logs VALUES("496","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-02 20:00:45");
INSERT INTO activity_logs VALUES("498","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 10:44:23");
INSERT INTO activity_logs VALUES("499","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 11:14:52");
INSERT INTO activity_logs VALUES("500","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 11:26:01");
INSERT INTO activity_logs VALUES("501","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 11:36:02");
INSERT INTO activity_logs VALUES("502","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 11:38:24");
INSERT INTO activity_logs VALUES("503","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 11:56:37");
INSERT INTO activity_logs VALUES("504","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 12:30:15");
INSERT INTO activity_logs VALUES("505","1","Admin","192.168.0.101","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 12:37:48");
INSERT INTO activity_logs VALUES("506","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 13:09:57");
INSERT INTO activity_logs VALUES("507","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 13:14:01");
INSERT INTO activity_logs VALUES("508","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 13:19:36");
INSERT INTO activity_logs VALUES("509","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 13:45:33");
INSERT INTO activity_logs VALUES("510","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 13:46:07");
INSERT INTO activity_logs VALUES("511","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 13:54:25");
INSERT INTO activity_logs VALUES("513","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 14:31:15");
INSERT INTO activity_logs VALUES("514","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 14:59:11");
INSERT INTO activity_logs VALUES("515","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 16:25:04");
INSERT INTO activity_logs VALUES("516","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 16:48:59");
INSERT INTO activity_logs VALUES("517","24","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 17:19:34");
INSERT INTO activity_logs VALUES("518","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 17:19:58");
INSERT INTO activity_logs VALUES("519","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 17:21:21");
INSERT INTO activity_logs VALUES("520","1","Admin","192.168.0.101","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 17:24:48");
INSERT INTO activity_logs VALUES("521","24","User","192.168.0.101","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 17:25:19");
INSERT INTO activity_logs VALUES("522","35","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 17:28:42");
INSERT INTO activity_logs VALUES("523","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-03 17:46:17");
INSERT INTO activity_logs VALUES("524","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 17:53:40");
INSERT INTO activity_logs VALUES("526","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 18:29:59");
INSERT INTO activity_logs VALUES("527","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 18:39:11");
INSERT INTO activity_logs VALUES("528","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-03 18:39:41");
INSERT INTO activity_logs VALUES("529","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-03 18:40:09");
INSERT INTO activity_logs VALUES("530","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-03 18:47:00");
INSERT INTO activity_logs VALUES("531","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-04 11:26:32");
INSERT INTO activity_logs VALUES("533","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 11:30:59");
INSERT INTO activity_logs VALUES("534","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 11:35:08");
INSERT INTO activity_logs VALUES("535","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 11:44:36");
INSERT INTO activity_logs VALUES("536","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 11:53:08");
INSERT INTO activity_logs VALUES("537","35","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-04 11:56:57");
INSERT INTO activity_logs VALUES("538","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 12:05:33");
INSERT INTO activity_logs VALUES("543","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 12:28:04");
INSERT INTO activity_logs VALUES("544","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 12:28:39");
INSERT INTO activity_logs VALUES("545","24","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-04 12:35:29");
INSERT INTO activity_logs VALUES("546","4","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-04 12:41:32");
INSERT INTO activity_logs VALUES("550","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-04 16:27:18");
INSERT INTO activity_logs VALUES("551","1","Admin","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-04 16:39:30");
INSERT INTO activity_logs VALUES("552","1","Admin","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-07-04 16:56:06");
INSERT INTO activity_logs VALUES("553","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 17:01:03");
INSERT INTO activity_logs VALUES("554","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 17:04:21");
INSERT INTO activity_logs VALUES("555","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 17:22:06");
INSERT INTO activity_logs VALUES("556","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 18:06:02");
INSERT INTO activity_logs VALUES("557","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 18:28:27");
INSERT INTO activity_logs VALUES("558","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 19:03:19");
INSERT INTO activity_logs VALUES("559","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-04 19:03:28");
INSERT INTO activity_logs VALUES("560","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-04 19:15:17");
INSERT INTO activity_logs VALUES("561","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-05 11:18:54");
INSERT INTO activity_logs VALUES("562","1","Admin","fe80::3cb9:f6c0:4067:8ae2","Mozilla/5.0 (Windows NT 10.0; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-05 11:25:13");
INSERT INTO activity_logs VALUES("563","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-05 11:28:44");
INSERT INTO activity_logs VALUES("564","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-05 12:45:20");
INSERT INTO activity_logs VALUES("565","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-05 12:45:38");
INSERT INTO activity_logs VALUES("566","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-05 13:17:12");
INSERT INTO activity_logs VALUES("567","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-05 13:24:00");
INSERT INTO activity_logs VALUES("568","7","User","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-05 13:33:20");
INSERT INTO activity_logs VALUES("570","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-05 14:06:18");
INSERT INTO activity_logs VALUES("571","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-05 16:08:43");
INSERT INTO activity_logs VALUES("573","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-05 16:44:42");
INSERT INTO activity_logs VALUES("575","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-05 18:14:31");
INSERT INTO activity_logs VALUES("576","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-05 18:36:31");
INSERT INTO activity_logs VALUES("577","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-05 18:56:57");
INSERT INTO activity_logs VALUES("579","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-05 19:03:41");
INSERT INTO activity_logs VALUES("581","7","User","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-06 17:42:09");
INSERT INTO activity_logs VALUES("582","1","Admin","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-06 18:11:17");
INSERT INTO activity_logs VALUES("584","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 11:58:53");
INSERT INTO activity_logs VALUES("585","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 12:09:56");
INSERT INTO activity_logs VALUES("586","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-07 12:13:01");
INSERT INTO activity_logs VALUES("588","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 13:25:40");
INSERT INTO activity_logs VALUES("589","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 13:28:42");
INSERT INTO activity_logs VALUES("590","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 13:46:01");
INSERT INTO activity_logs VALUES("591","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-07 13:47:42");
INSERT INTO activity_logs VALUES("592","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 14:03:04");
INSERT INTO activity_logs VALUES("593","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-07 16:44:07");
INSERT INTO activity_logs VALUES("595","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-07 17:50:27");
INSERT INTO activity_logs VALUES("597","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-07 18:37:23");
INSERT INTO activity_logs VALUES("598","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 10:44:08");
INSERT INTO activity_logs VALUES("600","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 10:44:43");
INSERT INTO activity_logs VALUES("601","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 11:39:14");
INSERT INTO activity_logs VALUES("602","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 12:29:28");
INSERT INTO activity_logs VALUES("603","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 12:30:28");
INSERT INTO activity_logs VALUES("604","24","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 12:31:59");
INSERT INTO activity_logs VALUES("605","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 12:33:02");
INSERT INTO activity_logs VALUES("606","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 12:38:04");
INSERT INTO activity_logs VALUES("607","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 12:44:38");
INSERT INTO activity_logs VALUES("608","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 12:45:11");
INSERT INTO activity_logs VALUES("609","1","Admin","192.168.0.114","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 13:04:52");
INSERT INTO activity_logs VALUES("610","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 13:13:47");
INSERT INTO activity_logs VALUES("611","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 13:14:51");
INSERT INTO activity_logs VALUES("612","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 13:52:42");
INSERT INTO activity_logs VALUES("613","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 13:53:08");
INSERT INTO activity_logs VALUES("616","29","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 14:00:58");
INSERT INTO activity_logs VALUES("617","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 14:11:47");
INSERT INTO activity_logs VALUES("618","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 14:35:46");
INSERT INTO activity_logs VALUES("619","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 14:51:29");
INSERT INTO activity_logs VALUES("620","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 15:10:16");
INSERT INTO activity_logs VALUES("621","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 16:14:19");
INSERT INTO activity_logs VALUES("622","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 16:20:55");
INSERT INTO activity_logs VALUES("623","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 16:42:13");
INSERT INTO activity_logs VALUES("624","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 16:42:28");
INSERT INTO activity_logs VALUES("625","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 16:49:53");
INSERT INTO activity_logs VALUES("626","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 17:10:09");
INSERT INTO activity_logs VALUES("627","29","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-08 17:31:54");
INSERT INTO activity_logs VALUES("628","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 17:55:46");
INSERT INTO activity_logs VALUES("629","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 18:53:52");
INSERT INTO activity_logs VALUES("630","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 19:05:33");
INSERT INTO activity_logs VALUES("631","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-08 19:11:46");
INSERT INTO activity_logs VALUES("632","7","User","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-08 23:18:03");
INSERT INTO activity_logs VALUES("633","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 11:19:21");
INSERT INTO activity_logs VALUES("634","1","Admin","192.168.0.104","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 11:26:40");
INSERT INTO activity_logs VALUES("635","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 11:38:11");
INSERT INTO activity_logs VALUES("636","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 11:38:37");
INSERT INTO activity_logs VALUES("637","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 11:39:49");
INSERT INTO activity_logs VALUES("638","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 11:43:11");
INSERT INTO activity_logs VALUES("639","7","User","192.168.0.104","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 12:08:57");
INSERT INTO activity_logs VALUES("641","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 12:20:32");
INSERT INTO activity_logs VALUES("642","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 12:20:39");
INSERT INTO activity_logs VALUES("643","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 12:20:58");
INSERT INTO activity_logs VALUES("645","24","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 12:31:35");
INSERT INTO activity_logs VALUES("646","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 12:51:09");
INSERT INTO activity_logs VALUES("647","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 13:25:05");
INSERT INTO activity_logs VALUES("648","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 13:30:49");
INSERT INTO activity_logs VALUES("652","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 13:35:45");
INSERT INTO activity_logs VALUES("653","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 13:36:07");
INSERT INTO activity_logs VALUES("655","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 13:37:42");
INSERT INTO activity_logs VALUES("656","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 13:44:38");
INSERT INTO activity_logs VALUES("657","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 13:49:19");
INSERT INTO activity_logs VALUES("658","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 13:49:46");
INSERT INTO activity_logs VALUES("659","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 13:51:35");
INSERT INTO activity_logs VALUES("660","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 14:01:56");
INSERT INTO activity_logs VALUES("661","7","User","192.168.0.104","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 14:11:26");
INSERT INTO activity_logs VALUES("662","1","Admin","192.168.0.104","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 14:12:29");
INSERT INTO activity_logs VALUES("663","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 14:20:22");
INSERT INTO activity_logs VALUES("665","39","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 16:02:09");
INSERT INTO activity_logs VALUES("666","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 16:09:11");
INSERT INTO activity_logs VALUES("667","24","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 16:16:33");
INSERT INTO activity_logs VALUES("668","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 16:21:26");
INSERT INTO activity_logs VALUES("669","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 16:22:55");
INSERT INTO activity_logs VALUES("670","35","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 16:39:15");
INSERT INTO activity_logs VALUES("671","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 17:10:05");
INSERT INTO activity_logs VALUES("672","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 17:23:24");
INSERT INTO activity_logs VALUES("673","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 17:30:15");
INSERT INTO activity_logs VALUES("674","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 17:33:05");
INSERT INTO activity_logs VALUES("675","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 17:41:40");
INSERT INTO activity_logs VALUES("676","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 17:59:06");
INSERT INTO activity_logs VALUES("677","7","User","192.168.0.104","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-09 18:19:20");
INSERT INTO activity_logs VALUES("678","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 18:33:11");
INSERT INTO activity_logs VALUES("679","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0","2018-07-09 18:38:06");
INSERT INTO activity_logs VALUES("680","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0","2018-07-09 18:39:47");
INSERT INTO activity_logs VALUES("682","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-09 19:14:16");
INSERT INTO activity_logs VALUES("683","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 19:19:44");
INSERT INTO activity_logs VALUES("684","31","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 19:22:53");
INSERT INTO activity_logs VALUES("685","29","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-09 19:32:26");
INSERT INTO activity_logs VALUES("686","35","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 11:20:12");
INSERT INTO activity_logs VALUES("687","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 11:40:27");
INSERT INTO activity_logs VALUES("688","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 11:49:33");
INSERT INTO activity_logs VALUES("689","7","User","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 11:53:38");
INSERT INTO activity_logs VALUES("690","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 11:57:33");
INSERT INTO activity_logs VALUES("691","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 12:13:17");
INSERT INTO activity_logs VALUES("692","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-10 12:17:13");
INSERT INTO activity_logs VALUES("694","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-10 12:21:12");
INSERT INTO activity_logs VALUES("695","7","User","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 12:29:53");
INSERT INTO activity_logs VALUES("696","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 12:33:32");
INSERT INTO activity_logs VALUES("697","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 12:45:00");
INSERT INTO activity_logs VALUES("698","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 13:30:33");
INSERT INTO activity_logs VALUES("699","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 13:47:12");
INSERT INTO activity_logs VALUES("700","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 13:52:45");
INSERT INTO activity_logs VALUES("702","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-10 14:06:07");
INSERT INTO activity_logs VALUES("703","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-10 15:41:03");
INSERT INTO activity_logs VALUES("704","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 16:00:17");
INSERT INTO activity_logs VALUES("706","7","User","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 16:14:03");
INSERT INTO activity_logs VALUES("707","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 16:23:29");
INSERT INTO activity_logs VALUES("708","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 16:33:54");
INSERT INTO activity_logs VALUES("709","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 16:40:48");
INSERT INTO activity_logs VALUES("710","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 16:45:38");
INSERT INTO activity_logs VALUES("711","29","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 16:54:37");
INSERT INTO activity_logs VALUES("712","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 16:56:42");
INSERT INTO activity_logs VALUES("713","29","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 16:57:54");
INSERT INTO activity_logs VALUES("714","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:08:35");
INSERT INTO activity_logs VALUES("715","20","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 17:14:52");
INSERT INTO activity_logs VALUES("716","29","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 17:33:31");
INSERT INTO activity_logs VALUES("717","20","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 17:38:59");
INSERT INTO activity_logs VALUES("718","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:40:23");
INSERT INTO activity_logs VALUES("719","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:41:29");
INSERT INTO activity_logs VALUES("720","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:43:18");
INSERT INTO activity_logs VALUES("721","31","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:45:20");
INSERT INTO activity_logs VALUES("722","20","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:45:46");
INSERT INTO activity_logs VALUES("723","20","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:45:55");
INSERT INTO activity_logs VALUES("724","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:48:48");
INSERT INTO activity_logs VALUES("725","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 17:56:23");
INSERT INTO activity_logs VALUES("727","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:16:21");
INSERT INTO activity_logs VALUES("728","31","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:16:22");
INSERT INTO activity_logs VALUES("729","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 18:16:48");
INSERT INTO activity_logs VALUES("731","14","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:18:49");
INSERT INTO activity_logs VALUES("732","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:25:46");
INSERT INTO activity_logs VALUES("733","8","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:25:54");
INSERT INTO activity_logs VALUES("734","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:26:23");
INSERT INTO activity_logs VALUES("736","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:27:54");
INSERT INTO activity_logs VALUES("737","14","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:31:57");
INSERT INTO activity_logs VALUES("738","14","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 18:32:52");
INSERT INTO activity_logs VALUES("739","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:33:00");
INSERT INTO activity_logs VALUES("740","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:42:44");
INSERT INTO activity_logs VALUES("741","16","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:43:29");
INSERT INTO activity_logs VALUES("742","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-10 18:45:10");
INSERT INTO activity_logs VALUES("743","15","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-10 18:47:04");
INSERT INTO activity_logs VALUES("744","31","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-10 18:48:59");
INSERT INTO activity_logs VALUES("745","17","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 18:50:53");
INSERT INTO activity_logs VALUES("746","14","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-10 18:51:25");
INSERT INTO activity_logs VALUES("747","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 10:52:18");
INSERT INTO activity_logs VALUES("748","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 10:52:43");
INSERT INTO activity_logs VALUES("749","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 11:11:41");
INSERT INTO activity_logs VALUES("750","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 11:39:48");
INSERT INTO activity_logs VALUES("751","39","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 11:43:19");
INSERT INTO activity_logs VALUES("752","14","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 11:46:32");
INSERT INTO activity_logs VALUES("753","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:03:02");
INSERT INTO activity_logs VALUES("754","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:03:18");
INSERT INTO activity_logs VALUES("755","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:06:07");
INSERT INTO activity_logs VALUES("756","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 12:06:36");
INSERT INTO activity_logs VALUES("757","17","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 12:06:41");
INSERT INTO activity_logs VALUES("758","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:07:07");
INSERT INTO activity_logs VALUES("759","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 12:08:19");
INSERT INTO activity_logs VALUES("760","41","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 12:10:45");
INSERT INTO activity_logs VALUES("761","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 12:15:39");
INSERT INTO activity_logs VALUES("762","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 12:16:29");
INSERT INTO activity_logs VALUES("763","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 12:17:07");
INSERT INTO activity_logs VALUES("764","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 12:17:46");
INSERT INTO activity_logs VALUES("765","39","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 12:18:50");
INSERT INTO activity_logs VALUES("766","2","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:25:00");
INSERT INTO activity_logs VALUES("767","10","User","192.168.0.114","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:28:55");
INSERT INTO activity_logs VALUES("768","14","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:31:02");
INSERT INTO activity_logs VALUES("769","8","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:38:07");
INSERT INTO activity_logs VALUES("770","2","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:38:27");
INSERT INTO activity_logs VALUES("771","8","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:41:46");
INSERT INTO activity_logs VALUES("772","2","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:45:12");
INSERT INTO activity_logs VALUES("773","10","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:47:57");
INSERT INTO activity_logs VALUES("774","17","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:49:59");
INSERT INTO activity_logs VALUES("775","16","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:50:15");
INSERT INTO activity_logs VALUES("776","17","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 12:50:40");
INSERT INTO activity_logs VALUES("777","14","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 13:01:42");
INSERT INTO activity_logs VALUES("778","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 13:01:55");
INSERT INTO activity_logs VALUES("779","14","Admin","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 13:02:33");
INSERT INTO activity_logs VALUES("780","4","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 13:15:32");
INSERT INTO activity_logs VALUES("781","41","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 14:02:22");
INSERT INTO activity_logs VALUES("782","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 14:33:19");
INSERT INTO activity_logs VALUES("783","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 14:33:31");
INSERT INTO activity_logs VALUES("784","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-11 14:43:18");
INSERT INTO activity_logs VALUES("785","10","User","192.168.0.114","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 14:53:22");
INSERT INTO activity_logs VALUES("786","29","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 16:35:37");
INSERT INTO activity_logs VALUES("787","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 16:39:50");
INSERT INTO activity_logs VALUES("788","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-11 16:43:38");
INSERT INTO activity_logs VALUES("789","10","User","192.168.0.114","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 16:55:25");
INSERT INTO activity_logs VALUES("790","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 16:59:39");
INSERT INTO activity_logs VALUES("791","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 18:37:21");
INSERT INTO activity_logs VALUES("792","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-11 19:24:43");
INSERT INTO activity_logs VALUES("793","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 10:35:48");
INSERT INTO activity_logs VALUES("794","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-12 10:35:59");
INSERT INTO activity_logs VALUES("795","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-12 10:36:05");
INSERT INTO activity_logs VALUES("796","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-12 10:59:24");
INSERT INTO activity_logs VALUES("797","41","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 12:14:57");
INSERT INTO activity_logs VALUES("798","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-12 12:36:10");
INSERT INTO activity_logs VALUES("799","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-12 12:40:17");
INSERT INTO activity_logs VALUES("800","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 12:41:28");
INSERT INTO activity_logs VALUES("801","1","Admin","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 13:07:36");
INSERT INTO activity_logs VALUES("802","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 13:08:23");
INSERT INTO activity_logs VALUES("803","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 13:29:52");
INSERT INTO activity_logs VALUES("804","15","User","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-12 14:22:52");
INSERT INTO activity_logs VALUES("805","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 14:31:28");
INSERT INTO activity_logs VALUES("806","24","User","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 14:32:45");
INSERT INTO activity_logs VALUES("807","39","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 14:33:53");
INSERT INTO activity_logs VALUES("808","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-12 14:39:22");
INSERT INTO activity_logs VALUES("809","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-12 14:43:53");
INSERT INTO activity_logs VALUES("810","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0","2018-07-12 17:20:55");
INSERT INTO activity_logs VALUES("811","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 10:10:22");
INSERT INTO activity_logs VALUES("812","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-15 10:10:29");
INSERT INTO activity_logs VALUES("813","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-15 10:10:56");
INSERT INTO activity_logs VALUES("814","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 11:21:34");
INSERT INTO activity_logs VALUES("815","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 11:38:39");
INSERT INTO activity_logs VALUES("816","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 11:40:32");
INSERT INTO activity_logs VALUES("817","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 11:45:24");
INSERT INTO activity_logs VALUES("818","20","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 11:58:15");
INSERT INTO activity_logs VALUES("819","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-15 12:34:26");
INSERT INTO activity_logs VALUES("820","24","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 12:46:54");
INSERT INTO activity_logs VALUES("821","33","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 12:47:29");
INSERT INTO activity_logs VALUES("822","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 13:26:35");
INSERT INTO activity_logs VALUES("823","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 13:43:36");
INSERT INTO activity_logs VALUES("824","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 13:54:26");
INSERT INTO activity_logs VALUES("825","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 14:22:06");
INSERT INTO activity_logs VALUES("826","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 14:32:12");
INSERT INTO activity_logs VALUES("827","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 14:34:01");
INSERT INTO activity_logs VALUES("828","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 14:36:47");
INSERT INTO activity_logs VALUES("829","29","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 14:38:33");
INSERT INTO activity_logs VALUES("830","33","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 14:40:44");
INSERT INTO activity_logs VALUES("831","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0","2018-07-15 14:58:54");
INSERT INTO activity_logs VALUES("832","5","User","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 15:01:35");
INSERT INTO activity_logs VALUES("833","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 15:35:10");
INSERT INTO activity_logs VALUES("834","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-15 15:36:23");
INSERT INTO activity_logs VALUES("835","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 16:09:53");
INSERT INTO activity_logs VALUES("836","33","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 16:51:07");
INSERT INTO activity_logs VALUES("837","24","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-15 16:51:30");
INSERT INTO activity_logs VALUES("838","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 17:27:02");
INSERT INTO activity_logs VALUES("839","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-15 18:30:45");
INSERT INTO activity_logs VALUES("840","1","Admin","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-15 19:06:28");
INSERT INTO activity_logs VALUES("841","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 11:23:17");
INSERT INTO activity_logs VALUES("842","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 11:38:47");
INSERT INTO activity_logs VALUES("843","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 11:39:01");
INSERT INTO activity_logs VALUES("844","1","Admin","fe80::3cb9:f6c0:4067:8ae2","Mozilla/5.0 (Windows NT 10.0; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 11:40:13");
INSERT INTO activity_logs VALUES("845","35","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 11:50:38");
INSERT INTO activity_logs VALUES("846","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 11:52:26");
INSERT INTO activity_logs VALUES("847","1","Admin","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 11:56:33");
INSERT INTO activity_logs VALUES("848","20","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 12:19:39");
INSERT INTO activity_logs VALUES("849","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 12:33:23");
INSERT INTO activity_logs VALUES("850","4","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 12:34:04");
INSERT INTO activity_logs VALUES("851","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 12:35:33");
INSERT INTO activity_logs VALUES("852","4","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 12:44:59");
INSERT INTO activity_logs VALUES("853","24","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 12:46:18");
INSERT INTO activity_logs VALUES("854","24","User","192.168.0.111","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 13:01:49");
INSERT INTO activity_logs VALUES("855","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 13:04:59");
INSERT INTO activity_logs VALUES("856","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 13:09:19");
INSERT INTO activity_logs VALUES("857","24","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 13:26:10");
INSERT INTO activity_logs VALUES("858","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 13:34:05");
INSERT INTO activity_logs VALUES("859","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 14:14:09");
INSERT INTO activity_logs VALUES("860","29","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 14:14:16");
INSERT INTO activity_logs VALUES("861","24","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 14:15:54");
INSERT INTO activity_logs VALUES("862","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 14:17:50");
INSERT INTO activity_logs VALUES("863","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-16 14:19:44");
INSERT INTO activity_logs VALUES("864","15","User","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 14:34:54");
INSERT INTO activity_logs VALUES("865","20","User","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 14:40:12");
INSERT INTO activity_logs VALUES("866","15","User","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-16 17:32:15");
INSERT INTO activity_logs VALUES("867","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 19:01:17");
INSERT INTO activity_logs VALUES("868","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-16 19:27:25");
INSERT INTO activity_logs VALUES("869","24","User","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 11:19:04");
INSERT INTO activity_logs VALUES("870","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 11:28:22");
INSERT INTO activity_logs VALUES("871","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 11:54:28");
INSERT INTO activity_logs VALUES("872","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-17 11:54:59");
INSERT INTO activity_logs VALUES("873","15","User","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 11:56:41");
INSERT INTO activity_logs VALUES("874","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 11:57:59");
INSERT INTO activity_logs VALUES("875","15","User","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 12:34:41");
INSERT INTO activity_logs VALUES("876","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 13:02:21");
INSERT INTO activity_logs VALUES("877","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-17 13:32:32");
INSERT INTO activity_logs VALUES("878","1","Admin","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 13:36:21");
INSERT INTO activity_logs VALUES("879","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 13:37:09");
INSERT INTO activity_logs VALUES("880","24","User","192.168.0.103","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 14:02:21");
INSERT INTO activity_logs VALUES("881","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 14:25:08");
INSERT INTO activity_logs VALUES("882","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 14:54:41");
INSERT INTO activity_logs VALUES("883","15","User","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-17 15:14:25");
INSERT INTO activity_logs VALUES("884","35","User","192.168.0.104","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 15:16:54");
INSERT INTO activity_logs VALUES("885","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 15:19:45");
INSERT INTO activity_logs VALUES("886","1","Admin","192.168.0.104","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-17 15:32:47");
INSERT INTO activity_logs VALUES("887","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-18 10:31:03");
INSERT INTO activity_logs VALUES("888","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 10:31:30");
INSERT INTO activity_logs VALUES("889","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-18 12:51:28");
INSERT INTO activity_logs VALUES("890","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-18 12:54:29");
INSERT INTO activity_logs VALUES("891","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-18 15:11:38");
INSERT INTO activity_logs VALUES("892","35","User","192.168.0.108","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 16:27:37");
INSERT INTO activity_logs VALUES("893","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 16:43:12");
INSERT INTO activity_logs VALUES("894","1","Admin","192.168.0.108","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 16:46:28");
INSERT INTO activity_logs VALUES("895","1","Admin","192.168.0.108","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 16:57:25");
INSERT INTO activity_logs VALUES("896","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 17:23:21");
INSERT INTO activity_logs VALUES("897","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 17:34:05");
INSERT INTO activity_logs VALUES("898","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-18 17:36:01");
INSERT INTO activity_logs VALUES("899","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-18 17:38:27");
INSERT INTO activity_logs VALUES("900","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-18 17:49:01");
INSERT INTO activity_logs VALUES("901","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-18 18:38:41");
INSERT INTO activity_logs VALUES("902","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-19 11:11:13");
INSERT INTO activity_logs VALUES("903","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 11:13:07");
INSERT INTO activity_logs VALUES("904","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:01:42");
INSERT INTO activity_logs VALUES("905","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 12:02:32");
INSERT INTO activity_logs VALUES("906","35","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:23:53");
INSERT INTO activity_logs VALUES("907","29","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:24:40");
INSERT INTO activity_logs VALUES("908","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:25:17");
INSERT INTO activity_logs VALUES("909","35","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:29:03");
INSERT INTO activity_logs VALUES("910","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 12:42:15");
INSERT INTO activity_logs VALUES("911","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:46:43");
INSERT INTO activity_logs VALUES("912","35","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 12:47:46");
INSERT INTO activity_logs VALUES("913","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-19 13:12:24");
INSERT INTO activity_logs VALUES("914","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 13:17:52");
INSERT INTO activity_logs VALUES("915","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 13:40:00");
INSERT INTO activity_logs VALUES("916","7","User","192.168.0.115","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 13:50:48");
INSERT INTO activity_logs VALUES("917","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 14:16:51");
INSERT INTO activity_logs VALUES("918","1","Admin","192.168.0.115","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 14:39:43");
INSERT INTO activity_logs VALUES("919","24","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 15:03:03");
INSERT INTO activity_logs VALUES("920","24","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 15:04:46");
INSERT INTO activity_logs VALUES("921","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 18:01:30");
INSERT INTO activity_logs VALUES("922","35","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 18:09:20");
INSERT INTO activity_logs VALUES("923","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 18:16:46");
INSERT INTO activity_logs VALUES("924","24","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-19 18:17:08");
INSERT INTO activity_logs VALUES("925","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-19 19:39:22");
INSERT INTO activity_logs VALUES("926","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 11:02:20");
INSERT INTO activity_logs VALUES("927","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 11:02:52");
INSERT INTO activity_logs VALUES("928","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 11:03:12");
INSERT INTO activity_logs VALUES("929","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:61.0) Gecko/20100101 Firefox/61.0","2018-07-21 11:38:14");
INSERT INTO activity_logs VALUES("930","1","Admin","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 11:53:57");
INSERT INTO activity_logs VALUES("931","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 11:54:33");
INSERT INTO activity_logs VALUES("932","43","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 12:35:12");
INSERT INTO activity_logs VALUES("933","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 12:48:29");
INSERT INTO activity_logs VALUES("934","15","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 13:04:48");
INSERT INTO activity_logs VALUES("935","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 13:15:56");
INSERT INTO activity_logs VALUES("936","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 13:19:40");
INSERT INTO activity_logs VALUES("937","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 13:23:53");
INSERT INTO activity_logs VALUES("938","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 13:24:44");
INSERT INTO activity_logs VALUES("939","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 13:33:59");
INSERT INTO activity_logs VALUES("940","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 14:09:19");
INSERT INTO activity_logs VALUES("941","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 16:27:07");
INSERT INTO activity_logs VALUES("942","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 16:39:56");
INSERT INTO activity_logs VALUES("943","45","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 16:59:29");
INSERT INTO activity_logs VALUES("944","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 18:08:55");
INSERT INTO activity_logs VALUES("945","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 18:22:13");
INSERT INTO activity_logs VALUES("946","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 18:23:01");
INSERT INTO activity_logs VALUES("947","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 18:24:16");
INSERT INTO activity_logs VALUES("948","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 18:24:41");
INSERT INTO activity_logs VALUES("949","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-07-21 18:30:03");
INSERT INTO activity_logs VALUES("950","7","User","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 18:54:02");
INSERT INTO activity_logs VALUES("951","1","Admin","192.168.0.109","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36","2018-07-21 19:03:07");





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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO admins VALUES("1","admin","admin","techvill","admin@techvill.net","$2y$10$pJg16/2rcCvld4JD1xAlruq9ojgezeATYELkdgUOUtElGZG5r4o9m","Active","1","34ASISboLejGd3rGvwcAqvd0T4HOR68mDlVqBhmUUqQT9UDoeAYrQlAfoRBU","2018-04-26 07:56:09","2018-07-21 18:47:48","avatar.jpg");
INSERT INTO admins VALUES("2","tuhin.techvill","Tuhin","Hossain","tuhin.techvill@gmail.com","$2y$10$cMy9yQ0.DoVvn4kAxpM2OuqQWLfyWM4AMC1oJNNbCcZpBCxB8WlJu","Active","6","w4EIM9P0UPa9W2zpcTvRSjxA8lyz2cNVfU6tuu9emacvyTDkvlfzsh6NAfI1","2018-05-22 09:21:25","2018-07-11 12:46:59","");
INSERT INTO admins VALUES("3","tuhin2.techvill","Tuhin","Hossain","tuhin2.techvill@gmail.com","$2y$10$2AX6J2znElQeP2kaN8rNYu5lTC4LSjTqJ35YI5XWDa.rT9f/OVPJm","Active","1","","2018-05-22 09:55:04","2018-05-24 08:41:04","");
INSERT INTO admins VALUES("8","user2","Test","customer","user2@gmail.com","$2y$10$G9e2Dw.b5BML35h/XfjXW.IpR2e7KJhVx/ZIHqP4LNOORXKNvjJN6","Active","6","7sJJDEzoqzlaGi3mVFnYWELpBZLbTdPRIGDYgPdHtgqDcirIIaOTw29UFd83","2018-06-04 10:06:20","2018-06-04 10:06:20","");
INSERT INTO admins VALUES("10","parvezrobi","parvez","robi","parvezrobi@yahoo.com","$2y$10$j70ylLh3gn5Oq7ROZuJtl.nmzkcJOAxsI06alyVmHdFzHoRyq4Ob.","Active","6","0nkOJY7JJrPFf3B11CkDF0i4f1soNDVmRdTfx8fr61psKfpbML8ljimYhUHm","2018-06-10 12:27:05","2018-07-11 12:47:33","15123081_10207467743481755_1773707475555528407_o.jpg");
INSERT INTO admins VALUES("14","borna.techvill","Farzana","Borna","borna.techvill@gmail.com","$2y$10$r4bPFLJdwaqslENQnQw2Qe72NJSYrjkmIIZKfweXEfahtgUQCA6kK","Active","12","mUNZuoMJiehO3UDXTU6QH9ZlVx9XiK2akSvK5GpaqhkcrUlfcSensxwqVWnC","2018-07-10 18:17:57","2018-07-11 12:30:45","");
INSERT INTO admins VALUES("16","mahfuzasinthy","Mahfuza","sinthy","mahfuzasinthy@gmail.com","$2y$10$V/D3sIeSZyebAHK7QSq92eYwGQapqwg7ug.rZ9PZOMZMT2btBi7A6","Active","6","m6isdoyiSy5Z8RfBCZocVj2IudsDJysEHGxPaSjGnqxyEt2gUol5rR4h0IdI","2018-07-10 18:43:18","2018-07-10 18:44:40","");
INSERT INTO admins VALUES("17","borna023","Borna","Borna","borna023@gmail.com","$2y$10$vOpPtfft7fNV9fkv7D3wJe6Q21CMt4KFPVWHqRvwbyUEg/gXWHq2S","Active","6","aMUoZvdq64oNOl4wOS1gI7KO2ntFgcXzXUDzLPFbV4CHKdV1oJzTZJYlhUdY","2018-07-10 18:50:17","2018-07-11 13:01:18","");





CREATE TABLE IF NOT EXISTS `app_store_credentials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `has_app_credentials` enum('Yes','No') NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `company` enum('Google','Apple') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO app_store_credentials VALUES("1","Yes","http://store.google.com/pay-money","1531650482.png","Google","","2018-07-15 16:28:02");
INSERT INTO app_store_credentials VALUES("2","Yes","https://itunes.apple.com/bd/app/pay-money","1531134592.png","Apple","","2018-07-09 17:09:52");





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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

INSERT INTO app_tokens VALUES("1","2","LO8GMepHV3aIQuyLHBaYf5hRbI","1528279090","2018-06-06 14:58:10","2018-06-06 14:58:10");
INSERT INTO app_tokens VALUES("2","2","EqY2m6QnBMQnnXDTMDv1hLKYkH","1528279140","2018-06-06 14:59:00","2018-06-06 14:59:00");
INSERT INTO app_tokens VALUES("3","2","Fm0oPt2HOA9fZAn6exVawY5LRn","1528279264","2018-06-06 15:01:04","2018-06-06 15:01:04");
INSERT INTO app_tokens VALUES("4","2","1YMgvnOnTuxWWO9a8swZmcxA64","1528279399","2018-06-06 15:03:19","2018-06-06 15:03:19");
INSERT INTO app_tokens VALUES("5","2","wnblJrYBUaJQIuakpw5q5vfDNB","1528279556","2018-06-06 15:05:56","2018-06-06 15:05:56");
INSERT INTO app_tokens VALUES("6","2","MIXNi6Zy68dhvvrVg1QROsxOL8","1528279576","2018-06-06 15:06:16","2018-06-06 15:06:16");
INSERT INTO app_tokens VALUES("7","2","tn7S8SXK7WLbvx6hEfyCvu4xDp","1528279663","2018-06-06 15:07:43","2018-06-06 15:07:43");
INSERT INTO app_tokens VALUES("8","2","qGPpDE2woe8WAD5IEZNWyzPw3V","1528279868","2018-06-06 15:11:08","2018-06-06 15:11:08");
INSERT INTO app_tokens VALUES("9","2","9osyib2BOVk1KabTgALIjMwpgP","1528279994","2018-06-06 15:13:14","2018-06-06 15:13:14");
INSERT INTO app_tokens VALUES("10","2","5ZnnHxRqJ7z0I3WkHd5P3EDajq","1528280050","2018-06-06 15:14:10","2018-06-06 15:14:10");
INSERT INTO app_tokens VALUES("11","2","RQaxU3bKlFfFfW4QdLjFprUEhs","1528280413","2018-06-06 15:20:13","2018-06-06 15:20:13");
INSERT INTO app_tokens VALUES("12","2","fTIv5TiArDsUNfTrtYKHGq1VSu","1528280481","2018-06-06 15:21:21","2018-06-06 15:21:21");
INSERT INTO app_tokens VALUES("13","2","0CHUDCRPLqZwHCnZNvsJxCB5SK","1528282327","2018-06-06 15:52:07","2018-06-06 15:52:07");
INSERT INTO app_tokens VALUES("14","2","wFEYTga8hysXjOLEeaWFFIkcJ0","1528282669","2018-06-06 15:57:49","2018-06-06 15:57:49");
INSERT INTO app_tokens VALUES("15","2","htk9fw0m4RQSiE2qJZ0NZdMHcW","1528282715","2018-06-06 15:58:35","2018-06-06 15:58:35");
INSERT INTO app_tokens VALUES("16","2","MZCA54xmLNHAuWChRVab0VHZJU","1528282787","2018-06-06 15:59:47","2018-06-06 15:59:47");
INSERT INTO app_tokens VALUES("17","2","qgePCWntuWE0tP2TSXH7dKayR0","1528282828","2018-06-06 16:00:28","2018-06-06 16:00:28");
INSERT INTO app_tokens VALUES("18","2","sIaQkbJG54uJcIaHTjJlZbWmzu","1528283103","2018-06-06 16:05:03","2018-06-06 16:05:03");
INSERT INTO app_tokens VALUES("19","2","hUkGnAyNUKsbT1xe6Y1WkD1zuo","1528283243","2018-06-06 16:07:23","2018-06-06 16:07:23");
INSERT INTO app_tokens VALUES("20","2","oInj18pn0kRplvA0FOXxf2XQuP","1528347006","2018-06-07 09:50:06","2018-06-07 09:50:06");
INSERT INTO app_tokens VALUES("21","2","XtUV4UdFd9NsNAigvzscHd1aGN","1528610474","2018-06-10 11:01:14","2018-06-10 11:01:14");
INSERT INTO app_tokens VALUES("22","2","ZUIQN0TIOmdhUQx3IuBXyAqLIR","1528621735","2018-06-10 14:08:55","2018-06-10 14:08:55");
INSERT INTO app_tokens VALUES("23","2","oqDofRJihnDQSX0FTrtJ0Ypl3O","1528621770","2018-06-10 14:09:30","2018-06-10 14:09:30");
INSERT INTO app_tokens VALUES("24","2","Y4fiNiAcs0377cfPIF1nNI4AX4","1528621847","2018-06-10 14:10:47","2018-06-10 14:10:47");
INSERT INTO app_tokens VALUES("25","2","LgBUVzLegyTR9dK0ZzRkXdiu22","1528625708","2018-06-10 15:15:08","2018-06-10 15:15:08");
INSERT INTO app_tokens VALUES("26","2","NsG4Dkim44WsxOGi0t2feuoSQr","1528693762","2018-06-11 10:09:22","2018-06-11 10:09:22");
INSERT INTO app_tokens VALUES("27","2","rioc5vaRn0ytZdwyy1Yn5Rtkx2","1528693878","2018-06-11 10:11:18","2018-06-11 10:11:18");
INSERT INTO app_tokens VALUES("28","2","8hQBpWPuaXuiQeBKOtqnVayope","1528693933","2018-06-11 10:12:13","2018-06-11 10:12:13");
INSERT INTO app_tokens VALUES("29","2","sj9PeVNZTGkeTLFdIYmRy6rNGQ","1528792977","2018-06-12 13:42:57","2018-06-12 13:42:57");
INSERT INTO app_tokens VALUES("30","2","rPtj0BUUdfpKJBtnZ2FeiM0jwo","1528793041","2018-06-12 13:44:01","2018-06-12 13:44:01");
INSERT INTO app_tokens VALUES("31","5","hMtOI9tGRjhcw8Ngg4ilyBjUiK","1528796448","2018-06-12 14:40:48","2018-06-12 14:40:48");
INSERT INTO app_tokens VALUES("32","5","V5RJqp6VnJAdSIQRGfKg3930kp","1528796778","2018-06-12 14:46:18","2018-06-12 14:46:18");
INSERT INTO app_tokens VALUES("33","5","UYSjpdnJghiLEeiM1cdX3DCz20","1528796931","2018-06-12 14:48:51","2018-06-12 14:48:51");
INSERT INTO app_tokens VALUES("34","5","ac1ZP7cI7xY5CqQ2El9j9nK8gI","1528883807","2018-06-13 14:56:47","2018-06-13 14:56:47");





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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO app_transactions_infos VALUES("1","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","87041065","gVWPm2Z7oJrKyxlMQaLv","1528297643","pending","2018-06-06 16:07:23","2018-06-06 16:07:23");
INSERT INTO app_transactions_infos VALUES("2","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","16699884","4mqPICw6RzUrhhxrDKso","1528361406","pending","2018-06-07 09:50:06","2018-06-07 09:50:06");
INSERT INTO app_transactions_infos VALUES("3","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","82856683","QpcoqlGU6qLPHYT1vZxa","1528624875","pending","2018-06-10 11:01:15","2018-06-10 12:51:48");
INSERT INTO app_transactions_infos VALUES("4","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","46622570","G5YcoPkLUQxSoNd19U98","1528636247","success","2018-06-10 14:10:47","2018-06-10 14:57:37");
INSERT INTO app_transactions_infos VALUES("5","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","54230425","ieFxld3YiYXFI43sbbO6","1528640108","success","2018-06-10 15:15:08","2018-06-10 15:15:43");
INSERT INTO app_transactions_infos VALUES("6","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","54788816","UrLBH5miizXehUjZDl5y","1528708162","pending","2018-06-11 10:09:22","2018-06-11 10:09:22");
INSERT INTO app_transactions_infos VALUES("7","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","44278436","C81ZNFNaTQl3WDIHEb8N","1528708278","pending","2018-06-11 10:11:18","2018-06-11 10:11:18");
INSERT INTO app_transactions_infos VALUES("8","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","98677064","pi2t4PzSxrPqBRjybTNL","1528708333","success","2018-06-11 10:12:13","2018-06-11 10:12:33");
INSERT INTO app_transactions_infos VALUES("9","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","99823127","MS4a8lkkW4x5HkTBF5Sl","1528807377","pending","2018-06-12 13:42:57","2018-06-12 13:42:57");
INSERT INTO app_transactions_infos VALUES("10","2","paymoney","50","USD","http://localhost/return-url","http://localhost/cancel-url","36870658","sjjKUUHl8jBfpvJRYSZH","1528807441","success","2018-06-12 13:44:01","2018-06-12 13:45:47");
INSERT INTO app_transactions_infos VALUES("11","5","paymoney","40","USD","http://localhost/return-url","http://localhost/cancel-url","97523886","rnNi0IGVjRHhhrb89nTf","1528810848","success","2018-06-12 14:40:48","2018-06-12 14:41:26");
INSERT INTO app_transactions_infos VALUES("12","5","paymoney","20","USD","http://localhost/return-url","http://localhost/cancel-url","23436789","TzXUiUWuxVcF2WegV7RS","1528811178","success","2018-06-12 14:46:18","2018-06-12 14:46:32");
INSERT INTO app_transactions_infos VALUES("13","5","paymoney","20","USD","http://localhost/return-url","http://localhost/cancel-url","87880220","I2pj1D24Yom1vU7OqbcS","1528811332","success","2018-06-12 14:48:52","2018-06-12 14:49:13");
INSERT INTO app_transactions_infos VALUES("14","5","paymoney","20","USD","http://localhost/return-url","http://localhost/cancel-url","56787845","eHcavPN7Kq8flNKgPWXC","1528898208","pending","2018-06-13 14:56:48","2018-06-13 14:56:48");





CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO backups VALUES("1","2018-06-06-145559.sql","2018-06-06 14:55:59","");
INSERT INTO backups VALUES("2","2018-06-23-191803.sql","2018-06-23 19:18:03","");
INSERT INTO backups VALUES("3","2018-06-27-122329.sql","2018-06-27 12:23:29","");





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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO cointpayment_log_trxes VALUES("1","4","","CPCG7GZTVDBXVXDCUOCM2SKPUW","3BZG3vS5YjuL58TiEEjV9vN4RtnAS6bXnx","BTC","USD","Waiting for buyer funds...","0","2018-07-18 16:01:32","2018-07-19 07:01:32","","0.00308451","2","https://www.coinpayments.net/qrgen.php?id=CPCG7GZTVDBXVXDCUOCM2SKPUW&key=a814760e23f6f107b80db501695c078a","https://www.coinpayments.net/index.php?cmd=status&id=CPCG7GZTVDBXVXDCUOCM2SKPUW&key=a814760e23f6f107b80db501695c078a","{\"type\":\"deposit\",\"deposit_id\":109,\"transaction_id\":1415}","2018-07-18 16:01:30","2018-07-18 16:01:30");





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
INSERT INTO countries VALUES("242","MT","Malta","MLT","470","356");





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
  `exchange_from` enum('local','api') DEFAULT 'local',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO currencies VALUES("12","US Dollar","$","USD","one thousand","0.08","1530362317.jpg","Active","1","","","local");
INSERT INTO currencies VALUES("13","Pound Sterling","£","GBP","one thousand","0.78","1525873787.jpg","Active","0","","","api");
INSERT INTO currencies VALUES("14","Europe","€","EUR","one thousand","0.85","1529923387.jpg","Active","0","","","local");
INSERT INTO currencies VALUES("15","Czech Republic Koruna","K?","CZK","one thousand","78","","Active","0","","","local");
INSERT INTO currencies VALUES("16","Hong Kong Dollar","$","HKD","one thousand","12","","Active","0","","","local");
INSERT INTO currencies VALUES("17","Hungarian Forint","Ft","HUF","one thousand","1","","Active","0","","","local");
INSERT INTO currencies VALUES("18","Indonesian Rupiah","Rp","IDR","one thousand","3","","Active","0","","","local");
INSERT INTO currencies VALUES("19","Israeli New Sheke","?","ILS","one thousand","3.54","","Inactive","0","","","local");
INSERT INTO currencies VALUES("20","Japanese Yen","¥","JPY","one thousand","2","","Inactive","0","","","local");
INSERT INTO currencies VALUES("21","South Korean Won","?","KRW","one thousand","20","","Active","0","","","api");
INSERT INTO currencies VALUES("23","New Zealand Dollar","$","NZD","one thousand","10","","Inactive","0","","","local");
INSERT INTO currencies VALUES("24","Polish Zloty","z?","PLN","one thousand","1","","Inactive","0","","","local");
INSERT INTO currencies VALUES("25","Russian Ruble","P","RUB","one thousand","57.58","","Active","0","","","local");
INSERT INTO currencies VALUES("26","TAKA","BDT","BDT","one thousand","84.33","","Active","0","","","local");
INSERT INTO currencies VALUES("27","Indian Rupy","INR","INR","one thousand","67.53","","Active","0","","","local");
INSERT INTO currencies VALUES("28","Afghan Afghani","60b","AFN","one thousand","120","","Inactive","0","","","local");
INSERT INTO currencies VALUES("31","Lek","Lek","ALL","one thousand","106.5","","Active","0","","","local");
INSERT INTO currencies VALUES("32","Malaysian Ringgit","RM","MYR","one thousand","4.31","","Active","0","","","local");





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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

INSERT INTO currency_exchanges VALUES("7","5","5","7","14","FUSKJFJ8WBDXJ","0.65","6.00","12.18","Out","Success","2018-06-03 15:58:43","2018-06-03 15:58:43");
INSERT INTO currency_exchanges VALUES("8","5","5","7","14","IFBJO0MFL9HHY","0.65","6.00","12.18","Out","Success","2018-06-03 16:02:36","2018-06-03 16:02:36");
INSERT INTO currency_exchanges VALUES("9","5","5","7","14","WZ2JEZA9865KC","0.65","6.00","12.18","Out","Success","2018-06-03 16:03:54","2018-06-03 16:03:54");
INSERT INTO currency_exchanges VALUES("10","5","5","7","14","PTSP66RLR3NZ5","0.65","6.00","12.18","Out","Success","2018-06-03 16:04:59","2018-06-03 16:04:59");
INSERT INTO currency_exchanges VALUES("11","5","5","7","14","OS9HNFF8G4O3U","0.65","6.00","12.18","Out","Success","2018-06-03 16:06:33","2018-06-03 16:06:33");
INSERT INTO currency_exchanges VALUES("12","5","5","7","14","2RZEHCWD138OX","0.65","6.00","12.18","Out","Success","2018-06-03 16:06:57","2018-06-03 16:06:57");
INSERT INTO currency_exchanges VALUES("16","7","9","18","13","KDMHPLNXRHLOK","0.65","14.00","15.96","Out","Success","2018-06-04 10:58:49","2018-06-04 10:58:49");
INSERT INTO currency_exchanges VALUES("17","15","17","19","13","CQ0NRFR8PDZPF","0.65","15.00","16.10","Out","Success","2018-06-04 11:11:35","2018-06-04 11:11:35");
INSERT INTO currency_exchanges VALUES("18","15","17","19","13","XM9KNSXQLKWOC","0.65","15.00","16.10","Out","Success","2018-06-04 11:12:08","2018-06-04 11:12:08");
INSERT INTO currency_exchanges VALUES("19","15","17","19","13","GELMVBUKA2A5S","0.65","15.00","16.10","Out","Success","2018-06-04 11:13:18","2018-06-04 11:13:18");
INSERT INTO currency_exchanges VALUES("20","15","17","19","13","MSHHEGIEPCZQ9","0.65","15.00","16.10","Out","Success","2018-06-04 11:13:37","2018-06-04 11:13:37");
INSERT INTO currency_exchanges VALUES("21","15","17","19","13","FBBI2GXP9ZKHY","0.65","15.00","16.10","Out","Success","2018-06-04 11:14:31","2018-06-04 11:14:31");
INSERT INTO currency_exchanges VALUES("22","15","17","19","13","TDN8MDTMDF2Q0","0.65","15.00","16.10","Out","Success","2018-06-04 11:14:47","2018-06-04 11:14:47");
INSERT INTO currency_exchanges VALUES("23","15","17","19","13","EGJPWP0MAAQTP","0.65","15.00","16.10","Out","Success","2018-06-04 11:16:36","2018-06-04 11:16:36");
INSERT INTO currency_exchanges VALUES("24","15","17","19","13","UMJ3L68M9NQPE","0.65","15.00","16.10","Out","Success","2018-06-04 11:17:14","2018-06-04 11:17:14");
INSERT INTO currency_exchanges VALUES("25","15","17","19","13","GT495HP2HTLYV","0.65","15.00","16.10","Out","Success","2018-06-04 11:17:34","2018-06-04 11:17:34");
INSERT INTO currency_exchanges VALUES("26","15","17","19","13","ERWAW68IVB3PU","0.65","15.00","16.10","Out","Success","2018-06-04 11:18:11","2018-06-04 11:18:11");
INSERT INTO currency_exchanges VALUES("27","15","17","19","13","JQQVBPUMXKEHG","0.65","15.00","16.10","Out","Success","2018-06-04 11:19:10","2018-06-04 11:19:10");
INSERT INTO currency_exchanges VALUES("28","15","17","19","13","U7XFGJJE0ERMM","0.65","15.00","16.10","Out","Success","2018-06-04 11:19:40","2018-06-04 11:19:40");
INSERT INTO currency_exchanges VALUES("29","15","17","19","13","ZBYQVFUFTWAJR","0.65","15.00","16.10","Out","Success","2018-06-04 11:21:08","2018-06-04 11:21:08");
INSERT INTO currency_exchanges VALUES("30","15","17","19","13","WRMXCIAXTFWSJ","0.65","15.00","16.10","Out","Success","2018-06-04 11:21:34","2018-06-04 11:21:34");
INSERT INTO currency_exchanges VALUES("31","15","17","19","13","PMQQSUAPH0IOH","0.65","15.00","16.10","Out","Success","2018-06-04 11:23:39","2018-06-04 11:23:39");
INSERT INTO currency_exchanges VALUES("32","15","17","19","13","TKD5JXEC0X6TN","0.65","15.00","16.10","Out","Success","2018-06-04 11:24:03","2018-06-04 11:24:03");
INSERT INTO currency_exchanges VALUES("33","15","17","19","13","DEFCWIABRMETR","0.65","15.00","16.10","Out","Success","2018-06-04 11:24:12","2018-06-04 11:24:12");
INSERT INTO currency_exchanges VALUES("34","15","17","19","13","UMR8DGDMK5VXX","0.65","15.00","16.10","Out","Success","2018-06-04 11:25:44","2018-06-04 11:25:44");
INSERT INTO currency_exchanges VALUES("35","15","17","19","13","DKJUCETRBHUNI","0.65","15.00","16.10","Out","Success","2018-06-04 11:25:59","2018-06-04 11:25:59");
INSERT INTO currency_exchanges VALUES("36","15","17","19","13","PGLVJUSGXVVL0","0.65","15.00","16.10","Out","Success","2018-06-04 11:26:43","2018-06-04 11:26:43");
INSERT INTO currency_exchanges VALUES("37","15","17","19","13","GWVEXZUHN6KWI","0.65","15.00","16.10","Out","Success","2018-06-04 11:27:07","2018-06-04 11:27:07");
INSERT INTO currency_exchanges VALUES("38","15","17","19","13","PEY8PYM5GEQI0","0.65","15.00","16.10","Out","Success","2018-06-04 11:27:18","2018-06-04 11:27:18");
INSERT INTO currency_exchanges VALUES("50","15","17","25","14","FTEMPDZP15PWH","0.65","1400.00","54.00","Out","Success","2018-06-05 11:21:57","2018-06-05 11:21:57");
INSERT INTO currency_exchanges VALUES("51","20","24","26","14","R7YLXTRRUN9XJ","0.65","1400.00","54.00","Out","Success","2018-06-05 11:22:22","2018-06-05 11:22:22");
INSERT INTO currency_exchanges VALUES("52","5","5","30","13","PLEDX20MQC4FS","0.65","33.00","18.62","Out","Success","2018-06-05 16:03:45","2018-06-05 16:03:45");
INSERT INTO currency_exchanges VALUES("53","5","5","30","13","CCMUVZVQZJUCK","0.65","33.00","18.62","Out","Success","2018-06-05 16:03:49","2018-06-05 16:03:49");
INSERT INTO currency_exchanges VALUES("54","5","5","30","13","GQDT2CZKVDQDU","0.65","33.00","18.62","Out","Success","2018-06-05 16:04:32","2018-06-05 16:04:32");
INSERT INTO currency_exchanges VALUES("55","5","5","30","13","YB5QXNXUCBN0F","0.65","33.00","18.62","Out","Success","2018-06-05 16:04:36","2018-06-05 16:04:36");
INSERT INTO currency_exchanges VALUES("56","5","5","30","13","QN7E8KLPFE0PW","0.65","33.00","18.62","Out","Success","2018-06-05 16:04:40","2018-06-05 16:04:40");
INSERT INTO currency_exchanges VALUES("57","5","5","30","13","8T2VU7C7HQTE4","0.65","14.00","15.96","Out","Success","2018-06-06 10:19:41","2018-06-06 10:19:41");
INSERT INTO currency_exchanges VALUES("58","5","5","30","13","X9ZPH2WNYTUPU","0.65","14.00","15.96","Out","Success","2018-06-06 10:22:20","2018-06-06 10:22:20");
INSERT INTO currency_exchanges VALUES("59","5","5","30","13","Q2NGIRLV2E7PX","0.65","14.00","15.96","Out","Success","2018-06-06 10:30:14","2018-06-06 10:30:14");
INSERT INTO currency_exchanges VALUES("60","5","30","5","13","YNFPAZWNCCVSX","0.65","14.00","0.00","In","Success","2018-06-06 11:14:55","2018-06-06 11:14:55");
INSERT INTO currency_exchanges VALUES("61","5","30","5","13","WHLR56TV23QR9","0.65","14.00","0.00","In","Success","2018-06-06 11:15:00","2018-06-06 11:15:00");
INSERT INTO currency_exchanges VALUES("62","5","30","5","13","FXHNUNEUEYNUC","0.65","14.00","0.00","In","Success","2018-06-06 11:15:54","2018-06-06 11:15:54");
INSERT INTO currency_exchanges VALUES("63","5","30","5","13","DFQRZGAPCLU9D","0.65","14.00","0.00","In","Success","2018-06-06 11:16:19","2018-06-06 11:16:19");
INSERT INTO currency_exchanges VALUES("64","5","30","5","13","JBF9JCQL5XXYJ","0.65","14.00","0.00","In","Success","2018-06-06 11:18:23","2018-06-06 11:18:23");
INSERT INTO currency_exchanges VALUES("65","5","30","5","13","J12ZI6ILGM5DB","0.65","14.00","0.00","In","Success","2018-06-06 11:19:00","2018-06-06 11:19:00");
INSERT INTO currency_exchanges VALUES("66","5","30","5","13","0TZMST0UQGMNA","0.65","14.00","0.00","In","Success","2018-06-06 11:22:18","2018-06-06 11:22:18");
INSERT INTO currency_exchanges VALUES("67","5","7","5","14","QUXN6O7YHERL5","0.65","10.00","0.00","In","Success","2018-06-06 11:28:30","2018-06-06 11:28:30");
INSERT INTO currency_exchanges VALUES("68","7","9","33","14","9VKVJQQY9P8BO","0.65","2.50","12.08","Out","Success","2018-06-06 14:49:40","2018-06-06 14:49:40");
INSERT INTO currency_exchanges VALUES("69","7","9","33","14","TPFZJWBVTCSQK","0.65","100.00","15.00","Out","Success","2018-06-06 14:57:22","2018-06-06 14:57:22");
INSERT INTO currency_exchanges VALUES("70","7","33","9","14","PQYSQVBZL6ZQH","0.65","10.40","0.00","In","Success","2018-06-06 14:58:45","2018-06-06 14:58:45");
INSERT INTO currency_exchanges VALUES("71","24","35","34","14","WLCIHCTNJ1QFE","0.65","2.00","0.00","In","Success","2018-06-06 16:06:26","2018-06-06 16:06:26");
INSERT INTO currency_exchanges VALUES("72","24","34","32","13","MWLCSQWFPAVCQ","0.65","15.00","16.10","Out","Success","2018-06-07 11:07:31","2018-06-07 11:07:31");
INSERT INTO currency_exchanges VALUES("73","24","34","35","14","LJWL6WGFXU6BU","1.00","35.94","13.08","Out","Blocked","2018-06-07 12:02:15","2018-06-26 17:18:05");
INSERT INTO currency_exchanges VALUES("74","24","35","34","14","LM0G8VBXJS9HG","1.00","70.00","0.00","In","Success","2018-06-07 12:05:04","2018-06-07 12:05:04");
INSERT INTO currency_exchanges VALUES("75","24","32","34","13","ONTVK3B8WXFYC","0.65","30.00","0.00","In","Success","2018-06-07 12:22:00","2018-06-07 12:22:00");
INSERT INTO currency_exchanges VALUES("76","24","34","35","14","Q7Y5YKJ5GL4JN","0.85","10.00","12.30","Out","Blocked","2018-06-11 10:48:09","2018-06-26 17:17:55");
INSERT INTO currency_exchanges VALUES("77","4","4","51","13","NW6JY1OMEA08K","0.75","14.00","15.96","Out","Success","2018-06-21 13:13:21","2018-06-21 13:13:21");
INSERT INTO currency_exchanges VALUES("78","24","34","35","14","UM7B65ZVLTXW0","0.85","5.00","12.15","Out","Success","2018-06-23 16:14:03","2018-06-23 16:14:03");
INSERT INTO currency_exchanges VALUES("79","5","5","30","13","JHMG27WCSAT2H","0.75","33.00","18.62","Out","Success","2018-06-25 12:19:02","2018-06-25 12:19:02");
INSERT INTO currency_exchanges VALUES("80","24","34","35","14","FW5IPHVBI0BTL","0.85","10.00","12.30","Out","Success","2018-06-25 19:07:16","2018-06-25 19:07:16");
INSERT INTO currency_exchanges VALUES("81","24","35","34","14","LMX1AH6RPJ8LN","0.85","10.00","0.00","In","Blocked","2018-06-25 19:09:55","2018-06-26 17:29:44");
INSERT INTO currency_exchanges VALUES("82","4","4","51","13","W1XFRAIYYVM8M","0.75","14.00","15.96","Out","Success","2018-06-27 14:11:18","2018-06-27 14:11:18");
INSERT INTO currency_exchanges VALUES("83","33","58","61","14","FYV164AMEVBNM","0.85","2.00","12.06","Out","Success","2018-06-27 16:33:32","2018-06-27 16:33:32");
INSERT INTO currency_exchanges VALUES("84","4","4","51","13","GVUIIOAD2PWZM","0.76","14.00","15.96","Out","Success","2018-06-30 18:44:15","2018-06-30 18:44:15");
INSERT INTO currency_exchanges VALUES("85","7","9","18","13","CXCY5UR6DAZPM","0.76","15.00","16.10","Out","Success","2018-07-01 13:59:40","2018-07-01 13:59:40");
INSERT INTO currency_exchanges VALUES("86","35","69","65","12","CJ0L0KP7KINNW","0.50","5.00","0.00","In","Success","2018-07-03 12:43:39","2018-07-03 12:43:39");
INSERT INTO currency_exchanges VALUES("87","35","69","65","12","RALM5F0NSWCZQ","0.50","5.00","0.00","In","Success","2018-07-03 12:44:13","2018-07-03 12:44:13");
INSERT INTO currency_exchanges VALUES("88","35","69","65","12","NUEK0EPA98ZXL","0.50","5.00","0.00","In","Success","2018-07-03 12:44:28","2018-07-03 12:44:28");
INSERT INTO currency_exchanges VALUES("89","35","69","65","12","DWHNGQ5GRWDLU","0.50","5.00","0.00","In","Success","2018-07-03 12:44:47","2018-07-03 12:44:47");
INSERT INTO currency_exchanges VALUES("90","15","17","75","26","MJXJVTOE6HAM6","84.33","100.00","12.00","Out","Success","2018-07-05 19:52:16","2018-07-05 19:52:16");
INSERT INTO currency_exchanges VALUES("91","31","62","74","26","FUPGRABGXSMKV","84.33","15.00","10.30","Out","Success","2018-07-07 14:37:37","2018-07-07 14:37:37");
INSERT INTO currency_exchanges VALUES("92","31","62","73","14","F5TXXNKZXY3PV","0.85","15.00","12.45","Out","Success","2018-07-07 14:58:38","2018-07-07 14:58:38");
INSERT INTO currency_exchanges VALUES("93","31","74","62","26","HEIKQRMESOXG1","84.33","12.00","0.00","In","Success","2018-07-07 16:28:38","2018-07-07 16:28:38");
INSERT INTO currency_exchanges VALUES("94","24","34","32","13","DW4T09HPSBCCH","0.75","14.00","15.96","Out","Success","2018-07-07 16:32:14","2018-07-07 16:32:14");
INSERT INTO currency_exchanges VALUES("95","29","42","77","26","QBXAAPHHLPEXQ","84.33","5.00","10.10","Out","Success","2018-07-08 12:48:00","2018-07-08 12:48:00");
INSERT INTO currency_exchanges VALUES("96","31","54","78","16","HD62R4HXNLH5N","12.00","12.00","0.24","Out","Success","2018-07-08 14:54:11","2018-07-08 14:54:11");
INSERT INTO currency_exchanges VALUES("97","29","66","42","12","2924MKWPHTVAY","0.08","6.00","2.12","Out","Success","2018-07-08 18:53:42","2018-07-08 18:53:42");
INSERT INTO currency_exchanges VALUES("98","29","77","66","26","OEEHIJOANM3YF","84.33","11.00","0.00","In","Success","2018-07-08 18:54:01","2018-07-08 18:54:01");
INSERT INTO currency_exchanges VALUES("99","29","66","42","12","XBQGMX2Z7SDBG","0.08","7.57","2.15","Out","Success","2018-07-09 19:18:48","2018-07-09 19:18:48");
INSERT INTO currency_exchanges VALUES("100","29","66","42","12","59ZW0FQ9MMC3A","0.08","7.57","2.15","Out","Success","2018-07-09 19:18:52","2018-07-09 19:18:52");
INSERT INTO currency_exchanges VALUES("101","15","19","25","14","RXR275IAPXUBJ","0.85","11.00","12.33","Out","Success","2018-07-10 18:10:07","2018-07-10 18:10:07");
INSERT INTO currency_exchanges VALUES("102","41","87","85","12","CJW400BBANFIK","0.08","2.00","0.00","In","Success","2018-07-11 14:07:15","2018-07-11 14:07:15");
INSERT INTO currency_exchanges VALUES("103","41","87","85","12","KLMQZVAMRK2Y3","0.08","3.00","0.00","In","Success","2018-07-11 14:14:03","2018-07-11 14:14:03");
INSERT INTO currency_exchanges VALUES("104","41","87","85","12","RLHXESID17EUX","0.08","1.00","0.00","In","Success","2018-07-11 14:17:13","2018-07-11 14:17:13");
INSERT INTO currency_exchanges VALUES("105","41","85","88","14","FZZTZWCLMLXFQ","0.85","4.00","12.12","Out","Blocked","2018-07-11 14:26:38","2018-07-11 14:44:19");
INSERT INTO currency_exchanges VALUES("106","15","19","25","14","ECMDX6L1NZPHJ","0.85","8.00","12.24","Out","Success","2018-07-11 14:49:47","2018-07-11 14:49:47");
INSERT INTO currency_exchanges VALUES("107","15","25","19","14","YFDOKBAUJ4OKH","0.85","111.00","15.33","In","Success","2018-07-11 14:53:33","2018-07-11 14:53:33");
INSERT INTO currency_exchanges VALUES("108","15","75","19","26","2PUGRNSMVSEO4","84.33","99.00","11.98","In","Success","2018-07-11 14:59:33","2018-07-11 14:59:33");
INSERT INTO currency_exchanges VALUES("109","15","19","25","14","CUSR2BQETQHVN","0.85","11.00","12.33","Out","Success","2018-07-11 16:23:15","2018-07-11 16:47:32");
INSERT INTO currency_exchanges VALUES("110","24","34","35","14","BVJF0K7WC9WOG","0.85","2.00","12.06","Out","Success","2018-07-16 13:04:31","2018-07-16 13:04:31");
INSERT INTO currency_exchanges VALUES("111","20","24","26","14","DA1RTLL2IGXCO","0.85","1001.00","1100.80","Out","Success","2018-07-16 17:26:33","2018-07-16 17:26:33");
INSERT INTO currency_exchanges VALUES("112","20","24","26","14","ZWRJSEMCWPCDH","0.85","1001.00","1100.80","Out","Success","2018-07-16 17:30:05","2018-07-16 17:30:05");
INSERT INTO currency_exchanges VALUES("113","20","26","24","14","7FNZCIQETYQOH","0.85","900.00","1020.00","In","Success","2018-07-16 17:30:26","2018-07-16 17:30:26");
INSERT INTO currency_exchanges VALUES("114","20","24","26","14","R91G1WRZHZIDN","0.85","12.00","309.60","Out","Success","2018-07-18 17:53:23","2018-07-18 17:53:23");
INSERT INTO currency_exchanges VALUES("115","15","17","75","26","N22XBO7OEZJ8Q","84.33","14.00","10.28","Out","Success","2018-07-18 18:02:35","2018-07-18 18:02:35");
INSERT INTO currency_exchanges VALUES("116","15","17","75","26","6WOO6RBFATASP","84.33","12.00","10.24","Out","Success","2018-07-19 12:12:14","2018-07-19 12:12:14");
INSERT INTO currency_exchanges VALUES("117","15","17","75","26","P8E7ATWSQB8VU","84.33","7.00","10.14","Out","Success","2018-07-19 12:12:32","2018-07-19 12:12:32");
INSERT INTO currency_exchanges VALUES("118","15","75","17","26","YZUMC2UZF7GPG","84.33","11.00","10.22","In","Success","2018-07-19 12:23:41","2018-07-19 12:23:41");
INSERT INTO currency_exchanges VALUES("119","15","17","75","26","UGSAPKLK17ZYD","84.33","11.00","10.22","Out","Success","2018-07-19 13:49:43","2018-07-19 13:49:43");
INSERT INTO currency_exchanges VALUES("120","15","17","75","26","CS2M6KZSU4JAV","84.33","1111.00","32.22","Out","Success","2018-07-19 13:50:03","2018-07-19 13:50:03");
INSERT INTO currency_exchanges VALUES("121","15","17","75","26","OCJOSFKY6EPFY","84.33","1111.00","32.22","Out","Success","2018-07-19 13:51:55","2018-07-19 13:51:55");
INSERT INTO currency_exchanges VALUES("122","15","17","75","26","SX7XFXEYCTJER","84.33","15.00","10.30","Out","Success","2018-07-19 14:30:50","2018-07-19 14:30:50");
INSERT INTO currency_exchanges VALUES("123","15","75","17","26","DH3ZWRQGA4GMI","84.33","12.00","10.24","In","Success","2018-07-19 14:33:44","2018-07-19 14:33:44");
INSERT INTO currency_exchanges VALUES("124","15","17","75","26","HDGGIV8AEGQ3Q","84.33","3.00","10.06","Out","Success","2018-07-19 14:38:20","2018-07-19 14:38:20");
INSERT INTO currency_exchanges VALUES("125","15","17","75","26","R4PAKNKVCEPBF","84.33","3.00","10.06","Out","Success","2018-07-19 14:38:26","2018-07-19 14:38:26");
INSERT INTO currency_exchanges VALUES("126","15","17","75","26","OUHPYKYGQXEJN","84.33","3.00","10.06","Out","Success","2018-07-19 14:38:33","2018-07-19 14:38:33");
INSERT INTO currency_exchanges VALUES("127","15","17","75","26","KNOAWRHRNMFJR","84.33","12.00","10.24","Out","Success","2018-07-19 14:42:30","2018-07-19 14:42:30");
INSERT INTO currency_exchanges VALUES("128","15","17","75","26","WNZWEOLAGBHAY","84.33","22.00","10.44","Out","Success","2018-07-19 14:49:51","2018-07-19 14:49:51");
INSERT INTO currency_exchanges VALUES("129","15","75","17","26","J5RKSODL8KY7B","84.33","4.00","10.08","In","Success","2018-07-19 14:51:23","2018-07-19 14:51:23");
INSERT INTO currency_exchanges VALUES("130","15","17","75","26","BVFVV9X0F5XJD","84.33","12.00","10.24","Out","Success","2018-07-19 15:35:19","2018-07-19 15:35:19");
INSERT INTO currency_exchanges VALUES("131","15","17","75","26","FJIMJ1CR9B8SL","84.33","12.00","10.24","Out","Success","2018-07-19 15:35:22","2018-07-19 15:35:22");
INSERT INTO currency_exchanges VALUES("132","15","75","17","26","RA3GA23FQVK4D","84.33","5.00","10.10","In","Success","2018-07-19 15:35:36","2018-07-19 15:35:36");





CREATE TABLE IF NOT EXISTS `currency_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned NOT NULL,
  `method_id` int(10) unsigned NOT NULL,
  `activated_for` varchar(100) DEFAULT NULL COMMENT 'ex: deposit, withdrawal single, both or none',
  `method_data` varchar(255) NOT NULL COMMENT 'input field''s name and value like client_id, client_secret etc',
  `processing_time` tinyint(4) NOT NULL COMMENT 'time in days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_payment_methods_currency_id_index` (`currency_id`),
  KEY `currency_payment_methods_method_id_index` (`method_id`),
  CONSTRAINT `currency_payment_methods_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_payment_methods_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO currency_payment_methods VALUES("1","12","3","{\"deposit\":\"\"}","{\"client_id\":\"AXxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk\",\"client_secret\":\"EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80\",\"mode\":\"sandbox\"}","2","2018-06-12 00:00:00","2018-07-19 15:26:28");
INSERT INTO currency_payment_methods VALUES("2","12","2","{\"deposit\":\"\"}","{\"secret_key\":\"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\",\"publishable_key\":\"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","0","2018-06-12 00:00:00","2018-07-17 14:55:21");
INSERT INTO currency_payment_methods VALUES("3","13","4","{\"\":\"\"}","{\"seller_id\":\"901381377\",\"mode\":\"sandbox\"}","1","2018-06-12 00:00:00","2018-07-12 14:45:12");
INSERT INTO currency_payment_methods VALUES("4","13","5","{\"deposit\":\"\"}","{\"key\":\"rjQUPktU\",\"salt\":\"e5iIg1jwi8\",\"mode\":\"sandbox\"}","1","2018-06-12 00:00:00","2018-07-15 12:50:23");
INSERT INTO currency_payment_methods VALUES("5","12","7","{\"deposit\":\"\"}","{\"merchant_id\":\"95cb8822db315f03d9ec3206a3a368e6\",\"public_key\":\"5b72067ff7830fd8ba7dbbe94afc00831ea27a8139255f928b8171abf204f3b1\",\"private_key\":\"Db7ddcee4Adcc425e6858F016027389189cA18f1c116BdE504fd67FdBe2aD571\"}","2","2018-06-24 18:29:23","2018-07-18 13:10:04");
INSERT INTO currency_payment_methods VALUES("6","13","7","{\"deposit\":\"\"}","{\"merchant_id\":\"95cb8822db315f03d9ec3206a3a368e6\",\"public_key\":\"Db7ddcee4Adcc425e6858F016027389189cA18f1c116BdE504fd67FdBe2aD571\",\"private_key\":\"5b72067ff7830fd8ba7dbbe94afc00831ea27a8139255f928b8171abf204f3b1\"}","4","2018-06-24 18:30:41","2018-07-12 14:45:27");
INSERT INTO currency_payment_methods VALUES("7","14","7","{\"\":\"\"}","{\"merchant_id\":\"95cb8822db315f03d9ec3206a3a368e6\",\"public_key\":\"Db7ddcee4Adcc425e6858F016027389189cA18f1c116BdE504fd67FdBe2aD571\",\"private_key\":\"5b72067ff7830fd8ba7dbbe94afc00831ea27a8139255f928b8171abf204f3b1\"}","2","2018-06-24 19:21:04","2018-07-12 14:44:35");
INSERT INTO currency_payment_methods VALUES("8","14","2","{\"deposit\":\"\"}","{\"secret_key\":\"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\",\"publishable_key\":\"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","1","2018-06-25 13:08:40","2018-07-12 14:41:24");
INSERT INTO currency_payment_methods VALUES("9","13","2","{\"deposit\":\"\"}","{\"secret_key\":\"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\",\"publishable_key\":\"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","5","2018-06-25 15:40:50","2018-07-12 15:09:57");
INSERT INTO currency_payment_methods VALUES("10","13","3","{\"deposit\":\"\"}","{\"client_id\":\"techvillage_personal@gmail.com\",\"client_secret\":\"147258369\",\"mode\":\"sandbox\"}","3","2018-06-25 17:35:14","2018-07-15 16:23:28");
INSERT INTO currency_payment_methods VALUES("11","21","2","{\"deposit\": \"\"}","{\"secret_key\": \"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\", \"publishable_key\": \"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","2","2018-06-26 11:19:27","2018-06-26 11:19:27");
INSERT INTO currency_payment_methods VALUES("12","14","3","{\"deposit\":\"\"}","{\"client_id\":\"XxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk\",\"client_secret\":\"EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80\",\"mode\":\"sandbox\"}","1","2018-07-02 12:30:49","2018-07-11 17:20:42");
INSERT INTO currency_payment_methods VALUES("13","32","2","{\"deposit\":\"\"}","{\"secret_key\":\"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\",\"publishable_key\":\"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","1","2018-07-09 13:05:56","2018-07-09 13:05:56");
INSERT INTO currency_payment_methods VALUES("14","14","5","{\"\":\"\"}","{\"key\":\"rjQUPktU\",\"salt\":\"e5iIg1jwi8\",\"mode\":\"sandbox\"}","2","2018-07-10 17:11:22","2018-07-12 14:44:15");
INSERT INTO currency_payment_methods VALUES("15","12","4","{\"deposit\":\"\"}","{\"seller_id\":\"901381377\",\"mode\":\"sandbox\"}","2","2018-07-12 13:27:56","2018-07-12 13:27:56");
INSERT INTO currency_payment_methods VALUES("16","12","5","{\"deposit\":\"\"}","{\"key\":\"rjQUPktU\",\"salt\":\"e5iIg1jwi8\",\"mode\":\"sandbox\"}","1","2018-07-12 13:28:15","2018-07-12 13:28:15");
INSERT INTO currency_payment_methods VALUES("17","26","3","{\"deposit\":\"\"}","{\"client_id\":\"AXxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk\",\"client_secret\":\"EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80\",\"mode\":\"sandbox\"}","2","2018-07-19 15:27:00","2018-07-19 15:27:00");





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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

INSERT INTO deposits VALUES("1","5","12","2","2QUC9KIQSTJHZ","500.00","11.00","5000.00","Success","2018-06-03 14:46:17");
INSERT INTO deposits VALUES("2","5","14","2","HDPKIJS2ZU1HA","0.00","0.00","5000.00","Success","2018-06-03 14:48:35");
INSERT INTO deposits VALUES("3","6","12","2","GZK3TEDCLZJ0C","500.00","11.00","5000.00","Success","2018-06-03 14:48:47");
INSERT INTO deposits VALUES("4","5","26","2","87AUVQHKSBY8O","120.00","5.00","1200.00","Success","2018-06-03 14:55:55");
INSERT INTO deposits VALUES("8","7","12","2","UPHCPGYBGD9B8","100.00","11.00","1000.00","Success","2018-06-04 09:27:41");
INSERT INTO deposits VALUES("9","10","12","2","6ANTZFPKSYCB7","500.00","11.00","5000.00","Success","2018-06-04 09:43:13");
INSERT INTO deposits VALUES("10","15","12","2","R8YGIRJP3CAQR","100.00","11.00","1000.00","Success","2018-06-04 11:06:02");
INSERT INTO deposits VALUES("18","15","12","2","FMZLLLQDKDGPD","7200.00","11.00","60000.00","Success","2018-06-05 11:20:09");
INSERT INTO deposits VALUES("21","5","12","2","NOSASKHSGDV6K","6.00","11.00","50.00","Success","2018-06-05 15:23:57");
INSERT INTO deposits VALUES("22","5","12","2","KG1EAYDKJZQK6","600.00","11.00","5000.00","Success","2018-06-05 16:03:02");
INSERT INTO deposits VALUES("23","5","12","2","6DNIKYC2HAYNS","1.32","11.00","11.00","Success","2018-06-06 11:54:14");
INSERT INTO deposits VALUES("24","5","12","2","HLRVGWPVI6HDU","1.32","11.00","11.00","Success","2018-06-06 11:59:55");
INSERT INTO deposits VALUES("25","5","12","2","NOQQMWLSR4QLH","1.32","11.00","11.00","Success","2018-06-06 12:00:37");
INSERT INTO deposits VALUES("27","5","12","2","DFKE7ZOFXCJPE","4.92","11.00","41.00","Success","2018-06-06 12:01:31");
INSERT INTO deposits VALUES("28","5","12","2","DNZBAC1ESFBBF","4.92","11.00","41.00","Success","2018-06-06 12:05:25");
INSERT INTO deposits VALUES("31","24","12","3","KGSDI3PXI90SE","60.00","11.00","500.00","Success","2018-06-06 15:33:48");
INSERT INTO deposits VALUES("32","24","12","2","EBFEZQZOA5HEK","6.00","11.00","50.00","Success","2018-06-06 15:53:25");
INSERT INTO deposits VALUES("33","24","14","2","HS1ORTXUDE9CE","2.50","0.00","50.00","Success","2018-06-06 15:55:18");
INSERT INTO deposits VALUES("34","24","13","3","2ZZKUYK6XKSSW","0.00","0.00","50.00","Success","2018-06-07 12:20:40");
INSERT INTO deposits VALUES("35","24","16","3","GI0VDI77MHDKK","0.00","0.00","50.00","Success","2018-06-07 12:23:55");
INSERT INTO deposits VALUES("36","24","14","3","MVYE0IGTCJDF8","2.50","0.00","50.00","Success","2018-06-07 12:40:55");
INSERT INTO deposits VALUES("37","20","12","2","DENHBDFYSNOCF","120.00","11.00","1000.00","Success","2018-06-10 14:47:24");
INSERT INTO deposits VALUES("38","20","26","2","AQMCDVU6OHGDA","10.00","5.00","100.00","Success","2018-06-10 14:52:07");
INSERT INTO deposits VALUES("39","24","12","2","2Q5B1Q2ONUS88","12.00","11.00","100.00","Success","2018-06-11 10:38:25");
INSERT INTO deposits VALUES("40","24","14","2","4FHLSKL0M60XN","25.00","0.00","500.00","Success","2018-06-11 11:19:07");
INSERT INTO deposits VALUES("41","29","12","3","MYJXBXMLIU1FE","12.00","11.00","100.00","Success","2018-06-11 12:03:31");
INSERT INTO deposits VALUES("42","24","12","3","EGH81LOAOTLFP","12.00","11.00","100.00","Success","2018-06-12 11:35:39");
INSERT INTO deposits VALUES("43","24","12","3","YSYHCBZJQX2IM","12.00","11.00","100.00","Success","2018-06-12 13:09:01");
INSERT INTO deposits VALUES("44","4","12","3","FPXZEPZNZ9TP8","24.00","11.00","200.00","Success","2018-06-13 10:43:19");
INSERT INTO deposits VALUES("45","4","12","2","T5H2JARRAGTSN","1.32","11.00","11.00","Success","2018-06-21 11:15:45");
INSERT INTO deposits VALUES("46","4","13","4","DMIEDTZZMELB1","0.00","0.00","11.00","Success","2018-06-21 12:06:21");
INSERT INTO deposits VALUES("47","4","13","5","BSW8TTXBL7NAN","0.00","0.00","11.00","Success","2018-06-21 12:18:23");
INSERT INTO deposits VALUES("48","7","12","2","GBFZAHZ9XWPMV","12.00","11.00","100.00","Success","2018-06-24 14:16:11");
INSERT INTO deposits VALUES("49","24","12","2","UXOYGRRSLGNE1","1.32","11.00","11.00","Success","2018-06-24 18:40:01");
INSERT INTO deposits VALUES("50","24","12","2","KJSLJDRVEEIIT","1.32","11.00","11.00","Success","2018-06-25 17:26:33");
INSERT INTO deposits VALUES("51","24","12","2","2JSDDZZWHLJYM","1.32","11.00","11.00","Success","2018-06-25 18:12:39");
INSERT INTO deposits VALUES("52","4","12","3","WDHOHRFTZKAMF","24.00","11.00","200.00","Success","2018-06-25 18:14:03");
INSERT INTO deposits VALUES("53","4","21","2","XQDXBUXAHSKCL","7.20","5.00","600.00","Success","2018-06-26 11:45:13");
INSERT INTO deposits VALUES("54","15","21","2","9JOKBTJICICUO","6.00","5.00","500.00","Success","2018-06-26 11:50:59");
INSERT INTO deposits VALUES("55","15","21","2","SR2H7W6YTYJKT","7.20","5.00","600.00","Success","2018-06-26 11:52:17");
INSERT INTO deposits VALUES("56","15","21","2","JL4DPAMD6W3XP","1.20","5.00","100.00","Success","2018-06-26 11:54:02");
INSERT INTO deposits VALUES("57","33","12","2","GFCYMRBTOQVAX","1.32","11.00","11.00","Success","2018-06-27 16:29:47");
INSERT INTO deposits VALUES("58","33","12","2","H8LM095YWF4KR","12.00","11.00","100.00","Success","2018-06-27 16:38:34");
INSERT INTO deposits VALUES("59","4","12","2","XS3RBLLSN4VL4","2.40","11.00","20.00","Success","2018-06-28 14:09:19");
INSERT INTO deposits VALUES("60","4","12","2","JZKYAGK1XQJPH","120.00","11.00","1000.00","Success","2018-06-28 16:59:58");
INSERT INTO deposits VALUES("61","35","12","2","VE6WUEFUGC1KP","12.00","11.00","100.00","Success","2018-07-02 12:37:52");
INSERT INTO deposits VALUES("62","24","12","3","QHMY9SJPBQK2Y","24.00","11.00","200.00","Success","2018-07-02 12:55:32");
INSERT INTO deposits VALUES("63","29","12","3","7DOGHJJFSOQ6C","12.00","11.00","100.00","Success","2018-07-02 13:43:31");
INSERT INTO deposits VALUES("64","35","12","2","PWL34L2LBDZ4F","6.06","11.00","50.50","Success","2018-07-02 16:16:14");
INSERT INTO deposits VALUES("65","35","12","2","SVRCKGJQYX5LO","6.00","11.00","50.00","Success","2018-07-03 12:06:55");
INSERT INTO deposits VALUES("66","29","12","3","KTXTENBLXW45S","12.00","11.00","100.00","Success","2018-07-03 12:27:52");
INSERT INTO deposits VALUES("67","31","12","2","EBQKQKNKFE8RO","6960.00","11.00","58000.00","Success","2018-07-03 18:31:33");
INSERT INTO deposits VALUES("68","31","13","2","2CFXYDAMXGB8Z","0.00","0.00","17000.00","Success","2018-07-03 18:45:22");
INSERT INTO deposits VALUES("69","15","12","2","9DSBNB85CJN9H","1800.00","11.00","15000.00","Success","2018-07-05 17:58:07");
INSERT INTO deposits VALUES("70","31","12","2","TTBFUKK2CTLAO","1.32","11.00","11.00","Success","2018-07-07 13:49:19");
INSERT INTO deposits VALUES("71","29","12","2","LICQ77U2MCJTZ","12.00","11.00","100.00","Success","2018-07-08 18:18:09");
INSERT INTO deposits VALUES("72","29","13","2","81N3NV98EKWCH","0.00","0.00","50.00","Success","2018-07-08 18:45:46");
INSERT INTO deposits VALUES("73","35","32","2","TKOKY6Q3GOKQO","0.50","5.00","10.00","Success","2018-07-09 13:09:45");
INSERT INTO deposits VALUES("74","35","12","2","LP4VDCPH96FRE","1.32","11.00","11.00","Success","2018-07-09 13:10:40");
INSERT INTO deposits VALUES("75","35","12","3","WD6YZ0WSUBLJJ","1.32","11.00","11.00","Success","2018-07-09 13:21:16");
INSERT INTO deposits VALUES("76","31","13","7","HE0AQPHMEHR1G","12.00","11.00","10.51","Pending","2018-07-09 15:28:34");
INSERT INTO deposits VALUES("77","31","12","2","73C4VNBFY0MBR","1.44","11.00","12.00","Success","2018-07-09 15:29:06");
INSERT INTO deposits VALUES("78","31","13","5","FNKLVS1NLINQ5","0.00","0.00","111.00","Success","2018-07-09 15:33:52");
INSERT INTO deposits VALUES("79","31","13","5","WDGVSYXI02PO5","0.00","0.00","12.00","Success","2018-07-09 15:38:52");
INSERT INTO deposits VALUES("80","31","21","2","TMXFAL8AKIVET","0.13","5.00","11.00","Success","2018-07-09 15:48:18");
INSERT INTO deposits VALUES("81","39","12","2","8QVCHC9XDJKOW","1080.00","11.00","9000.00","Blocked","2018-07-09 16:04:03");
INSERT INTO deposits VALUES("82","35","12","3","0O8Z5CAOVWYPT","12.00","11.00","100.00","Success","2018-07-09 17:34:45");
INSERT INTO deposits VALUES("83","35","12","2","VENQOCAERPOIT","12.00","11.00","100.00","Success","2018-07-10 12:01:15");
INSERT INTO deposits VALUES("84","7","12","2","PV184JMJR1ISD","72.00","11.00","600.00","Success","2018-07-10 17:17:56");
INSERT INTO deposits VALUES("85","7","12","2","YEYAXOAIXTA2N","72.00","11.00","600.00","Success","2018-07-10 17:24:28");
INSERT INTO deposits VALUES("86","20","12","2","2KNOM1ZCCETTY","6.00","11.00","50.00","Success","2018-07-10 17:33:04");
INSERT INTO deposits VALUES("87","4","12","2","IMPDDVQWMU3DE","60.00","11.00","500.00","Success","2018-07-11 13:21:34");
INSERT INTO deposits VALUES("88","4","12","2","YVFKXDFJTYVUJ","60.00","11.00","500.00","Success","2018-07-11 13:22:31");
INSERT INTO deposits VALUES("89","41","12","3","JAVD3NRP5HJJB","12.00","11.00","100.00","Blocked","2018-07-11 13:46:57");
INSERT INTO deposits VALUES("90","4","12","2","BMYQRPFHP3UR4","60.00","11.00","500.00","Success","2018-07-11 14:04:20");
INSERT INTO deposits VALUES("91","4","12","2","KGCIF2FYIFTG5","24.00","11.00","200.00","Success","2018-07-11 14:25:51");
INSERT INTO deposits VALUES("92","7","12","2","DURVESIEW8IL4","120.00","11.00","1000.00","Success","2018-07-12 13:39:12");
INSERT INTO deposits VALUES("93","15","14","2","XQYKXXNKO4NWP","6000.00","0.00","120000.00","Blocked","2018-07-12 14:41:46");
INSERT INTO deposits VALUES("94","20","13","2","1B4TQFXWM7AW0","0.00","0.00","15000.00","Success","2018-07-12 15:10:43");
INSERT INTO deposits VALUES("95","20","14","2","YGJK3NGIORNWS","8500.00","0.00","170000.00","Success","2018-07-12 15:14:46");
INSERT INTO deposits VALUES("96","15","12","2","UZDQJYIT7DDGD","120.00","11.00","1000.00","Success","2018-07-15 10:13:27");
INSERT INTO deposits VALUES("97","35","12","3","LR9WRNJUWWFSQ","12.00","11.00","100.00","Success","2018-07-15 11:48:32");
INSERT INTO deposits VALUES("98","20","12","2","S36ZIHUL3TBS9","12.00","11.00","100.00","Success","2018-07-15 12:03:31");
INSERT INTO deposits VALUES("99","35","13","2","8EEUY3GW0OQXC","0.00","0.00","50.00","Success","2018-07-15 13:32:08");
INSERT INTO deposits VALUES("100","35","12","2","5Q7OOMZ0DEFCJ","6615.48","11.00","55129.00","Success","2018-07-15 13:37:44");
INSERT INTO deposits VALUES("101","35","12","3","JSPFMMWXAEJL1","1.32","11.00","11.00","Success","2018-07-16 12:03:50");
INSERT INTO deposits VALUES("102","15","13","2","UQ1AIED4WDGV4","0.00","0.00","10000.00","Success","2018-07-16 14:39:34");
INSERT INTO deposits VALUES("103","20","14","2","B8BDAPIHYKX3Q","1600.00","50.00","10000.00","Success","2018-07-16 15:25:23");
INSERT INTO deposits VALUES("104","20","14","2","SJONEJTOK4Y57","810.00","200.00","2700.00","Success","2018-07-16 17:28:57");
INSERT INTO deposits VALUES("105","15","12","2","TQCCVERSJICEN","5.55","6.00","111.00","Success","2018-07-18 12:18:18");
INSERT INTO deposits VALUES("106","4","12","7","ITQA2UTWXVVWB","5.00","6.00","99.45","Pending","2018-07-18 14:02:09");
INSERT INTO deposits VALUES("107","4","12","7","VJBX5PJXUTN4W","5.00","6.00","99.45","Pending","2018-07-18 14:02:24");
INSERT INTO deposits VALUES("108","15","12","2","QZKKQOGWPDR06","0.75","6.00","15.00","Success","2018-07-18 15:51:45");
INSERT INTO deposits VALUES("109","4","12","7","IHFRAXCBMKNFS","1.14","6.00","15.66","Pending","2018-07-18 16:01:30");
INSERT INTO deposits VALUES("110","15","12","2","I1NKFYYBIGZ4J","0.70","6.00","14.00","Success","2018-07-18 18:48:36");
INSERT INTO deposits VALUES("111","15","12","2","MXB41LAT5PCMC","5.55","6.00","111.00","Success","2018-07-19 13:41:27");
INSERT INTO deposits VALUES("112","15","12","2","JLQXH07KMPYCL","50.00","6.00","1000.00","Success","2018-07-19 13:42:05");
INSERT INTO deposits VALUES("113","15","12","2","E7HZXF1GYBX0C","5.00","6.00","100.00","Success","2018-07-19 14:29:44");





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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO dispute_discussions VALUES("17","27","20","User","you are wrong, the content is authentic","","2018-07-01 18:22:30","2018-07-01 18:22:30");
INSERT INTO dispute_discussions VALUES("18","27","15","User","oops, sorry...it is lol","","2018-07-01 18:22:45","2018-07-01 18:22:45");
INSERT INTO dispute_discussions VALUES("19","31","15","User","hi","","2018-07-01 18:53:48","2018-07-01 18:53:48");
INSERT INTO dispute_discussions VALUES("20","33","24","User","Hi...\nRejecting this disputes.\nThank you","1531653361_upgrade_v15_to_v17.sql","2018-07-15 17:16:01","2018-07-15 17:16:01");
INSERT INTO dispute_discussions VALUES("21","34","1","Admin","hi..","","2018-07-15 17:21:11","2018-07-15 17:21:11");
INSERT INTO dispute_discussions VALUES("22","35","20","User","asdfasdf","","2018-07-16 12:42:12","2018-07-16 12:42:12");
INSERT INTO dispute_discussions VALUES("23","36","4","User","retertert","","2018-07-16 12:45:17","2018-07-16 12:45:17");
INSERT INTO dispute_discussions VALUES("24","36","4","User","ertertert","","2018-07-16 12:45:21","2018-07-16 12:45:21");
INSERT INTO dispute_discussions VALUES("25","37","24","User","jjjjjjjjjj","","2018-07-16 12:46:32","2018-07-16 12:46:32");
INSERT INTO dispute_discussions VALUES("26","38","15","User","ggggggg","","2018-07-16 13:35:45","2018-07-16 13:35:45");
INSERT INTO dispute_discussions VALUES("27","38","15","User","ggggggggggggg","","2018-07-16 13:35:49","2018-07-16 13:35:49");





CREATE TABLE IF NOT EXISTS `disputes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `claimant_id` int(10) unsigned DEFAULT NULL,
  `defendant_id` int(10) unsigned DEFAULT NULL,
  `transaction_id` int(10) unsigned DEFAULT NULL,
  `reason_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('Open','Reject','Solve') DEFAULT 'Open',
  PRIMARY KEY (`id`),
  KEY `disputes_claimant_id_index` (`claimant_id`),
  KEY `disputes_defendant_id_index` (`defendant_id`),
  KEY `disputes_transaction_id_index` (`transaction_id`),
  KEY `disputes_reason_id_index` (`reason_id`),
  CONSTRAINT `disputes_claimant_id_foreign` FOREIGN KEY (`claimant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_defendant_id_foreign` FOREIGN KEY (`defendant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `reasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO disputes VALUES("26","15","15","874","3","The transaction has invalid uuid","invalid uuid","DIS-6ZPOYX","2018-07-01 18:18:47","2018-07-01 19:09:02","Solve");
INSERT INTO disputes VALUES("27","15","20","869","2","forgery with the content of product","forgery","DIS-ZMFV7L","2018-07-01 18:19:30","2018-07-03 11:42:34","Solve");
INSERT INTO disputes VALUES("29","15","20","852","1","goods still pending","goods still pending","DIS-ZCXU0W","2018-07-01 18:32:21","2018-07-01 18:33:14","Reject");
INSERT INTO disputes VALUES("30","15","20","852","1","resend goods","please resend goods","DIS-MSEFDD","2018-07-01 18:37:01","2018-07-01 18:37:01","Open");
INSERT INTO disputes VALUES("31","20","15","867","2","uyuuuuuuuuuuuuuuu","uuuuuuuu","DIS-FNLSBF","2018-07-01 18:52:21","2018-07-01 18:54:18","Reject");
INSERT INTO disputes VALUES("32","20","15","867","1","ooooooooooo","ooooooooo","DIS-S5UBPK","2018-07-01 18:54:53","2018-07-01 19:00:25","Reject");
INSERT INTO disputes VALUES("33","24","29","1363","2","Abput merchant payment dispute","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo semper luctus. Donec vel ultricies mauris. Duis mi metus, pulvinar ut feugiat a, semper nec orci. Proin dolor nunc, pret","DIS-1VZ5EN","2018-07-15 17:05:37","2018-07-15 17:28:08","Reject");
INSERT INTO disputes VALUES("34","24","29","1363","1","dispute","dfhdfhdgfh","DIS-R1PEUR","2018-07-15 17:19:13","2018-07-15 17:26:45","Solve");
INSERT INTO disputes VALUES("35","20","15","867","2","dispute july 16","dispute july 16","DIS-IDYJEG","2018-07-16 12:35:05","2018-07-16 12:43:33","Open");
INSERT INTO disputes VALUES("36","4","20","1370","3","hhhhhh","hhhhhh","DIS-ENCEPM","2018-07-16 12:45:08","2018-07-16 12:45:08","Open");
INSERT INTO disputes VALUES("37","24","29","1363","1","hghjghj","fghfghf","DIS-AR1LX7","2018-07-16 12:45:37","2018-07-16 12:45:37","Open");
INSERT INTO disputes VALUES("38","15","20","869","3","test for robi","test for robi","DIS-25XGV0","2018-07-16 13:35:28","2018-07-16 13:35:56","Reject");





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

INSERT INTO email_configs VALUES("1","sendmail","tls","mail.techvill.net","587","stockpile@techvill.net","stockpile@techvill.net","nT4HD2XEdRUX","stockpile@techvill.net","Pay Money","1");





CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` tinyint(4) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  `type` enum('email','sms') NOT NULL,
  `language_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_language_id_index` (`language_id`),
  CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

INSERT INTO email_templates VALUES("1","1","Notice of Transfer!","Hi {sender_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was transferred from your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\n\n                                    <br><br>Transfer # {uuid} was created at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Receiver:</u></b> {receiver_id}\n\n                                    <br><br><b><u>Fee:</u></b> {fee}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("2","1","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("3","1","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("4","1","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("5","1","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("6","1","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("7","1","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("8","2","Notice to Receive!","Hi {receiver_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was received on your account.\n\n                                    <br><br>\n                                    <b><u><i>Here’s a brief overview of your Received Payment:</i></u></b>\n\n                                    <br><br>\n                                    Transfer # {uuid} was received at {created_at}.\n\n                                    <br><br>\n                                    <b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Sender:</u></b> {sender_id}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("9","2","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("10","2","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("11","2","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("12","2","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("13","2","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("14","2","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("15","3","Notice of Voucher Activation!","Hi {user_id},\n\n                                    <br><br>\n                                    Voucher # {uuid} has been activated by {activator_id}.\n                                    <br><br><b><u><i>\n                                    Here’s a brief overview of the Voucher Activation:</i></u></b>\n\n                                    <br><br>Voucher # {uuid} was activated at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Code:</u></b> {code}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("16","3","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("17","3","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("18","3","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("19","3","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("20","3","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("21","3","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("22","4","Notice of Request Creation!","Hi {acceptor},\n\n                                    <br><br>Amount {symbol}{amount} has been requested to your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                    <br><br>\n                                    <b><u>Request #:</u></b> {uuid}\n\n                                    <br><br>\n                                    <b><u>Created At:</u></b> {created_at}\n\n                                    <br><br>\n                                    <b><u>Requested Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Purpose: </u></b> {purpose}\n\n                                    <br><br>\n                                    <b><u>Note: </u></b> {note}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("23","4","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("24","4","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("25","4","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("26","4","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("27","4","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("28","4","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("29","5","Notice of Request Acceptance!","Hi {creator},\n                                    <br><br>Your request of #{uuid} has been accepted by {acceptor}.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                    <br><br>\n                                    <b><u>Accepted Date:</u></b> {created_at}.\n\n                                    <br><br>\n                                    <b><u>Requested Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Requested Accepted Amount:</u></b> {symbol}{accept_amount}\n\n                                    <br><br>\n                                    <b><u>Currency:</u></b> {currency}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("30","5","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("31","5","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("32","5","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("33","5","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("34","5","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("35","5","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("36","6","Status of Transaction #{uuid} has been updated!","Hi {sender_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Transfer #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("37","6","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("38","6","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("39","6","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("40","6","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("41","6","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("42","6","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("43","7","Status of Transaction #{uuid} has been updated!","Hi {activator_id},\n\n                                    <br><br><b>\n                                    Transaction of Voucher #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    <u><i>Voucher Code:</i></u> {code}\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("44","7","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("45","7","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("46","7","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("47","7","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("48","7","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("49","7","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("50","8","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","email","1");
INSERT INTO email_templates VALUES("51","8","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("52","8","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("53","8","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("54","8","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("55","8","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("56","8","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("57","9","Notice of Withdrawal!","Hi {user_id},\n\n                                    <br><br><b>\n                                    Your request of Withdrawal #{uuid} of {symbol}{amount} is being processed by system administrator!</b>\n\n                                    <br><br>\n                                    <b><u>Transaction Status:</u></b> {status}.\n\n                                    <br><br>\n                                    {symbol}{amount} is being subtracted from your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","email","1");
INSERT INTO email_templates VALUES("58","9","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("59","9","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("60","9","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("61","9","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("62","9","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("63","9","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("64","10","Status of Transaction #{uuid} has been updated!","Hi {user_id},\n\n                                    <br><br><b>\n                                    Transaction of Withdrawal #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","email","1");
INSERT INTO email_templates VALUES("65","10","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("66","10","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("67","10","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("68","10","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("69","10","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("70","10","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("71","11","Notice of Ticket!","Hi {assignee/user},\n\n                                    <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\n\n                                    <br><br>Ticket #{ticket_code} was created at {created_at}.\n\n                                    <br><br><b><u>{Assignee:}</u></b> {assignee}\n\n                                    <br><br><b><u>{User:}</u></b> {user}\n\n                                    <br><br><b><u>Ticket Subject:</u></b> {subject}\n\n                                    <br><br><b><u>Ticket Message:</u></b> {message}\n\n                                    <br><br><b><u>Ticket Status:</u></b> {status}\n\n                                    <br><br><b><u>Ticket Priority Level:</u></b> {priority}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("72","11","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("73","11","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("74","11","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("75","11","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("76","11","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("77","11","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("78","12","Notice of Ticket Reply!","Hi {user},\n\n                                    <br><br>A ticket reply has been sent to you by system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                    <br><br>This reply was initiated against ticket code #{ticket_code}.\n\n                                    <br><br><b><u>Assignee:</u></b> {assignee}\n\n                                    <br><br><b><u>Reply Message:</u></b> {message}\n\n                                    <br><br><b><u>Reply Status:</u></b> {status}\n\n                                    <br><br><b><u>Reply Priority Level:</u></b> {priority}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("79","12","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("80","12","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("81","12","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("82","12","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("83","12","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("84","12","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("85","13","Notice of Dispute Reply!","Hi {user},\n\n                                    <br><br>A dispute reply has been sent to you by system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                    <br><br>This reply was initiated at {created_at}.\n\n                                    <br><br><b><u>{Claimant/Defendant:}</u></b> {claimant/defendant}\n\n                                    <br><br><b><u>Transaction ID:</u></b> {transaction_id}\n\n                                    <br><br><b><u>Subject:</u></b> {subject}\n\n                                    <br><br><b><u>Replied Message:</u></b> {message}\n\n                                    <br><br><b><u>Status:</u></b> {status}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","email","1");
INSERT INTO email_templates VALUES("86","13","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("87","13","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("88","13","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("89","13","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("90","13","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("91","13","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("92","14","Status of Transaction #{uuid} has been updated!","Hi {paidByUser/merchantUser},\n\n                                    <br><br><b>\n                                    Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","email","1");
INSERT INTO email_templates VALUES("93","14","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("94","14","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("95","14","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("96","14","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("97","14","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("98","14","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("99","15","Notice of Merchant Payment!","Hi {paidByUser/merchantUser},\n\n                                    <br><br><b>\n                                    The funds amount equal to {symbol}{amount} has been {sent/received} {from/to} your account</b>\n\n                                    <br><br><b><u><i>Here’s a brief overview of the payment:</i></u></b>\n\n                                    <br><br>Payment # {uuid} was created at {created_at}.\n\n                                    <br><br><b><u>{Merchant Id/Paid By}:</u></b> {merchant_id/user_id}\n\n                                    <br><br><b><u>Currency:</u></b> {currency_id}\n\n                                    <br><br><b><u>Payment Method:</u></b> {receiver_id}\n\n                                    <br><br><b><u>Fees:</u></b> {symbol}{fees}\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","email","1");
INSERT INTO email_templates VALUES("100","15","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("101","15","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("102","15","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("103","15","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("104","15","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("105","15","Subject","Body","tr","email","8");
INSERT INTO email_templates VALUES("106","16","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n                                    <br><br><b>\n                                    Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","email","1");
INSERT INTO email_templates VALUES("107","16","Subject","Body","ar","email","2");
INSERT INTO email_templates VALUES("108","16","Subject","Body","fr","email","4");
INSERT INTO email_templates VALUES("109","16","Subject","Body","pt","email","5");
INSERT INTO email_templates VALUES("110","16","Subject","Body","ru","email","6");
INSERT INTO email_templates VALUES("111","16","Subject","Body","es","email","7");
INSERT INTO email_templates VALUES("112","16","Subject","Body","tr","email","8");





CREATE TABLE IF NOT EXISTS `fees_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `charge_percentage` double(10,2) NOT NULL DEFAULT '0.00',
  `charge_fixed` double(10,2) NOT NULL DEFAULT '0.00',
  `min_limit` double(10,2) NOT NULL DEFAULT '1.00',
  `max_limit` double(10,2) DEFAULT NULL,
  `has_transaction` enum('Yes','No') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_limits_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `fees_limits_currency_id_index` (`currency_id`),
  CONSTRAINT `fees_limits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fees_limits_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

INSERT INTO fees_limits VALUES("1","12","1","5.00","6.00","5.00","1000.00","Yes","2018-05-14 06:17:49","2018-07-18 12:39:00");
INSERT INTO fees_limits VALUES("2","12","2","5.00","7.00","4.00","1000.00","Yes","2018-05-14 06:18:15","2018-07-17 16:00:13");
INSERT INTO fees_limits VALUES("3","20","3","0.00","0.00","1.00","","No","2018-05-14 06:20:02","2018-06-03 11:14:24");
INSERT INTO fees_limits VALUES("4","16","5","2.00","0.00","3.00","800000.00","Yes","2018-05-14 06:39:37","2018-07-10 13:54:30");
INSERT INTO fees_limits VALUES("6","12","10","80.00","300.00","6.00","","Yes","2018-05-14 06:40:21","2018-07-16 17:33:58");
INSERT INTO fees_limits VALUES("9","12","3","3.00","10.00","3.00","2000.00","Yes","2018-05-14 06:46:36","2018-07-17 16:00:25");
INSERT INTO fees_limits VALUES("10","20","3","0.00","0.00","1.00","","Yes","2018-05-14 07:05:08","2018-06-03 11:11:43");
INSERT INTO fees_limits VALUES("11","13","5","14.00","14.00","14.00","1400.00","No","2018-05-14 07:05:29","2018-07-11 13:59:15");
INSERT INTO fees_limits VALUES("15","32","1","5.00","5.00","10.00","10.00","Yes","2018-05-16 07:12:44","2018-07-09 13:00:04");
INSERT INTO fees_limits VALUES("17","12","1","11.00","11.00","11.00","100.00","No","2018-05-23 09:24:32","2018-05-23 09:28:54");
INSERT INTO fees_limits VALUES("18","13","1","0.00","0.00","1.00","","Yes","2018-05-24 06:53:05","2018-06-07 12:19:41");
INSERT INTO fees_limits VALUES("19","26","1","10.00","5.00","1.00","30000.00","Yes","2018-05-27 12:27:53","2018-06-03 10:33:38");
INSERT INTO fees_limits VALUES("21","16","1","0.00","0.00","1.00","500.00","Yes","2018-05-27 13:07:35","2018-07-09 19:28:37");
INSERT INTO fees_limits VALUES("22","16","2","2.00","2.00","1.00","10.00","No","2018-05-27 13:30:34","2018-06-07 11:44:19");
INSERT INTO fees_limits VALUES("23","15","3","0.00","0.00","1.00","","No","2018-05-27 14:43:18","2018-05-27 14:43:18");
INSERT INTO fees_limits VALUES("24","21","3","0.00","0.00","1.00","","No","2018-05-27 14:43:33","2018-05-27 14:43:33");
INSERT INTO fees_limits VALUES("25","14","3","50.00","200.00","1.00","50000.00","No","2018-05-27 15:06:15","2018-07-16 17:31:25");
INSERT INTO fees_limits VALUES("26","14","5","80.00","300.00","2.00","60000.00","Yes","2018-05-29 11:59:16","2018-07-16 17:05:08");
INSERT INTO fees_limits VALUES("27","26","5","2.00","10.00","1.00","30000.00","Yes","2018-05-31 09:25:42","2018-07-03 18:49:28");
INSERT INTO fees_limits VALUES("28","14","2","16.00","500.00","10.00","90000.00","Yes","2018-05-31 09:27:07","2018-07-16 16:55:51");
INSERT INTO fees_limits VALUES("29","21","1","1.20","5.00","1.00","700.00","Yes","2018-05-31 11:11:10","2018-06-26 11:17:57");
INSERT INTO fees_limits VALUES("30","23","1","2.00","2.00","1.00","","Yes","2018-05-31 11:27:28","2018-05-31 11:27:28");
INSERT INTO fees_limits VALUES("31","12","2","7.00","30.00","2.00","90000.00","No","2018-05-31 11:56:09","2018-06-03 10:33:16");
INSERT INTO fees_limits VALUES("32","26","8","2.00","2.00","1.00","15000.00","Yes","2018-05-31 14:53:07","2018-07-10 15:55:26");
INSERT INTO fees_limits VALUES("33","14","8","30.00","200.00","1.00","70000.00","Yes","2018-05-31 14:54:12","2018-07-16 16:59:19");
INSERT INTO fees_limits VALUES("34","26","3","0.00","0.00","1.00","300.00","Yes","2018-06-02 10:54:32","2018-07-10 14:08:49");
INSERT INTO fees_limits VALUES("35","13","2","8.00","18.00","16.00","2000.00","Yes","2018-06-02 12:13:04","2018-07-08 19:05:58");
INSERT INTO fees_limits VALUES("39","26","8","0.00","0.00","1.00","100.00","Yes","2018-06-03 10:24:55","2018-06-03 10:25:10");
INSERT INTO fees_limits VALUES("40","26","8","3.00","4.00","1.00","2000.00","Yes","2018-06-03 10:47:04","2018-06-03 10:49:47");
INSERT INTO fees_limits VALUES("41","26","8","3.00","4.00","1.00","3000.00","Yes","2018-06-03 10:51:36","2018-06-03 10:51:47");
INSERT INTO fees_limits VALUES("43","14","1","30.00","200.00","1.00","","Yes","2018-06-03 11:36:21","2018-07-16 17:28:17");
INSERT INTO fees_limits VALUES("44","12","5","2.00","2.00","1.00","","Yes","2018-06-03 12:16:29","2018-07-11 14:15:18");
INSERT INTO fees_limits VALUES("45","12","8","2.00","5.00","5.00","3000.00","Yes","2018-06-03 12:42:32","2018-07-11 16:21:59");
INSERT INTO fees_limits VALUES("46","31","1","0.00","0.00","1.00","","Yes","2018-06-06 15:45:22","2018-06-06 15:45:22");
INSERT INTO fees_limits VALUES("47","27","1","0.00","0.00","1.00","","Yes","2018-06-06 15:52:09","2018-06-06 15:52:09");
INSERT INTO fees_limits VALUES("48","25","2","0.00","0.00","1.00","","No","2018-06-07 11:44:53","2018-06-07 11:45:33");
INSERT INTO fees_limits VALUES("49","16","3","5.00","2.00","3.00","1000.00","Yes","2018-06-07 12:31:19","2018-07-10 13:55:40");
INSERT INTO fees_limits VALUES("50","18","5","0.00","0.00","1.00","","Yes","2018-06-23 13:53:00","2018-06-23 13:53:00");
INSERT INTO fees_limits VALUES("51","15","1","2.30","5.60","1.00","500.00","Yes","2018-06-26 11:13:30","2018-06-26 11:13:30");
INSERT INTO fees_limits VALUES("52","16","10","2.00","0.00","1.00","","Yes","2018-07-08 13:15:59","2018-07-08 13:15:59");
INSERT INTO fees_limits VALUES("53","32","2","2.00","0.00","2.00","","Yes","2018-07-09 17:44:28","2018-07-09 17:48:25");
INSERT INTO fees_limits VALUES("54","16","8","0.00","0.00","0.00","100.00","Yes","2018-07-09 18:07:19","2018-07-10 13:15:30");
INSERT INTO fees_limits VALUES("55","13","8","1.00","0.00","1.00","","Yes","2018-07-11 16:18:16","2018-07-11 16:25:03");
INSERT INTO fees_limits VALUES("56","13","10","1.00","1.00","1.00","","Yes","2018-07-11 19:21:51","2018-07-11 19:21:51");
INSERT INTO fees_limits VALUES("57","14","10","75.00","300.00","1.00","","Yes","2018-07-16 15:10:18","2018-07-16 17:33:19");





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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO files VALUES("1","1","","39","19","1531395083.jpg","1.jpg","jpg","2018-07-12 17:31:23");





CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default` enum('1','0') NOT NULL,
  `deletable` enum('Yes','No') DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO languages VALUES("1","English","en","1530358989.png","Active","1","No");
INSERT INTO languages VALUES("2","????","ar","1530359409.png","Active","0","No");
INSERT INTO languages VALUES("4","Français","fr","1530359431.png","Active","0","No");
INSERT INTO languages VALUES("5","Português","pt","1530359450.png","Active","0","No");
INSERT INTO languages VALUES("6","???????","ru","1530359474.png","Active","0","No");
INSERT INTO languages VALUES("7","Español","es","1530360151.png","Active","0","No");
INSERT INTO languages VALUES("8","Türkçe","tr","1530696845.png","Active","0","No");
INSERT INTO languages VALUES("9","Chinese","ch","","Active","0","Yes");





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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO merchant_apps VALUES("1","3","123456","132wer3132331s21633s6sdf64wer51sf","","");
INSERT INTO merchant_apps VALUES("2","9","KAJHnxQSS45y6AueBdEaQMF86UaE2g","$2y$10$ZARm.64QsNnmWuRZ.rGONO7853Fr2tgDfLcLBbotVhPae3Y/x6hJ2","2018-06-06 12:24:05","2018-06-06 12:24:05");
INSERT INTO merchant_apps VALUES("3","11","qtE0gQXOk99wpzb6dkZX2RBh1NdbAM","NGLQK1n4U0oiJT5Yzpp6qAKeoKzZMm1aVDcR4gasrJwuM0RREjDcn96ENIegz0HsFVtMkU7cDhDyA2rgH88e7U8QikS3NCVZOmNe","2018-06-07 15:18:49","2018-06-07 15:18:49");
INSERT INTO merchant_apps VALUES("4","14","rAPwcSiCiIxnQ9UggXJyRLosCjBm5b","c38puVB9BzZmv9D5eSUa1FnVw3fjqlfMT8K7ll9n6GDtkneeHrNW8eRHq9rr4UYtOrTG3Iy5qav28x5w5bvmk9puQSWvXgtR3cgn","2018-06-11 12:49:47","2018-06-11 12:49:47");
INSERT INTO merchant_apps VALUES("5","15","FAUjfurHvuP8v8c9BMlRfcttH1MhbR","oFFtt13bmxxb6AbAxNYiRXzlioa0H4mKE3dI7V5RAc9lVos1muzdq8IInc5jsBPW7kLLSIQspxbDHr9U2Dz1nhhxZlpVMyJ9KUf9","2018-06-12 14:24:42","2018-06-12 14:24:42");
INSERT INTO merchant_apps VALUES("6","20","EeLbGkyFR4jzuUnitks6WKaF7rrQ67","bqGtCkvlYPXggJR2bDWgJOiz10jFnpcggKDoFyYPxXzqkHExkuJ4Gy98hwdiBKw7hjMoelJGhivVX6SPBgcJC9R5hW87P7jXEFgA","2018-06-26 12:58:17","2018-06-26 12:58:17");
INSERT INTO merchant_apps VALUES("7","22","CUr1rMHyuMU7a9GmwdvfoSztYDWrTP","TpcgZMuWaGcQWgMkWQExSwIXxDaIsH9IveWfkHjt6EuqOrHAIcArJLYaCIzfORb4NhOEJ87L7Quxry9ZUhsKB0ybHUfgliGNgtf3","2018-06-26 14:29:16","2018-06-26 14:29:16");
INSERT INTO merchant_apps VALUES("8","32","oDCCrpw3h8VtNcclpjZJV2uRnkkOWA","sNalL1dO0gO73CO2IC47UfQWMks7pK1jKbOAefivmTsw41Wh46poYeYCzdSDMYyqaaRsYRitLQbOBrS1V09NBlX0ZmnJdVAgr8cI","2018-07-03 11:31:46","2018-07-03 11:31:46");
INSERT INTO merchant_apps VALUES("9","34","5nqMyVJMbJsGgPW4CfI5bAjzLtu3v4","ieoP1PrBtsZtQ3lhGfXnmPh6VLDvsjTw0yKr1WVXtzjFbcuX5nOzc88HirECb8dqoLKFGQsahtIfm4x4CetGoddhznUJM4gYBen7","2018-07-08 15:18:19","2018-07-08 15:18:19");
INSERT INTO merchant_apps VALUES("10","37","7i8msfTPMknysH8BGYvOY2o1CRfd9w","KZzpNnBah0L1ZIosKiiCN7RbwTOl0TtS1u3TyrcmaYsvoCJavxy1mdwKwW0O1iQVUeIXNTI9tIMgiuSOQS3UwncnBViOOsiXMxEI","2018-07-15 12:55:13","2018-07-15 12:55:13");
INSERT INTO merchant_apps VALUES("11","42","qMUe7fBNXj9I77EJRGM7MUR1q565JB","SW5M43VBnjW6pU1S0l2HKCR7JzZ5SMb43LCYWFkvelnCnQV7JYztyfi2a8bofAPDDaNXxgcHP4dbSkeUFri6T9ZbYqmZeizuXHUr","2018-07-19 12:49:39","2018-07-19 12:49:39");





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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO merchant_groups VALUES("1","Premium","This is the premium merchant group","0.50","No","2018-07-08 12:04:13","2018-07-15 14:18:43");
INSERT INTO merchant_groups VALUES("2","Gold","This is the gold merchant group","1.00","No","2018-07-08 12:04:59","2018-07-15 14:15:32");
INSERT INTO merchant_groups VALUES("3","Silver","This is the silver merchant group","1.50","No","2018-07-08 12:05:21","2018-07-15 17:28:58");
INSERT INTO merchant_groups VALUES("7","Bronze","This is the bronze merchant group","2.00","Yes","2018-07-08 12:46:04","2018-07-15 19:03:03");
INSERT INTO merchant_groups VALUES("9","Different merchant","Different merchant group","2.50","No","2018-07-15 14:15:26","2018-07-15 14:15:57");





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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

INSERT INTO merchant_payments VALUES("1","4","12","1","15","8O8RIDBQKQ3S2","01","shirts","8O8RIDBQKQ3S2","0.00","0.00","650.00","0.00","Success","2018-06-05 15:13:29");
INSERT INTO merchant_payments VALUES("2","1","12","1","15","AJG4ZFLVHSISR","1002","Shoes","AJG4ZFLVHSISR","0.00","0.00","30.00","0.00","Success","2018-06-05 15:14:08");
INSERT INTO merchant_payments VALUES("3","1","12","1","5","S3PVKP3E0PG0I","1001","phone","S3PVKP3E0PG0I","0.00","0.00","4.00","0.00","Success","2018-06-05 15:37:07");
INSERT INTO merchant_payments VALUES("4","1","12","2","5","ch_1CZbenDpvvQP5tMRGFCGRd8V","1001","phone","PXZHJ6T5HZ5ZS","0.00","0.00","2.00","0.00","Success","2018-06-05 15:40:16");
INSERT INTO merchant_payments VALUES("5","1","12","2","","ch_1CZbgzDpvvQP5tMRFZm0HcFE","1001","phone","TDNRAKTQXH2KC","0.00","0.00","2.00","0.00","Success","2018-06-05 15:42:31");
INSERT INTO merchant_payments VALUES("6","4","12","1","15","QA12PD069W0XA","000","pop","QA12PD069W0XA","0.00","0.00","888.00","0.00","Pending","2018-06-05 15:56:17");
INSERT INTO merchant_payments VALUES("7","4","12","2","","ch_1CZbvEDpvvQP5tMRjHTkAIru","000","pop","TUBNBZIVQLGIC","0.00","0.00","888.00","0.00","Success","2018-06-05 15:57:15");
INSERT INTO merchant_payments VALUES("8","4","12","1","4","FU2406FT9KMMM","000","pop","FU2406FT9KMMM","0.00","0.00","8.00","0.00","Success","2018-06-05 15:59:53");
INSERT INTO merchant_payments VALUES("9","4","12","2","","ch_1CZsngDpvvQP5tMRAbNnsQ1a","01","shirts","DO4FONEK7DZJG","0.00","0.00","650.00","0.00","Success","2018-06-06 09:58:34");
INSERT INTO merchant_payments VALUES("10","1","12","1","15","JXS77CGA7F8MF","1002","Shoes","JXS77CGA7F8MF","0.00","0.00","30.00","0.00","Success","2018-06-06 09:59:58");
INSERT INTO merchant_payments VALUES("11","4","12","1","20","23AMI5FK7U66S","01","pants","23AMI5FK7U66S","0.00","0.00","11.00","0.00","Success","2018-06-06 10:40:42");
INSERT INTO merchant_payments VALUES("12","4","12","1","20","MT9M2UNVMJ8NH","01","t-shirts","MT9M2UNVMJ8NH","0.00","0.00","20.00","0.00","Pending","2018-06-06 13:20:42");
INSERT INTO merchant_payments VALUES("13","9","12","2","4","ch_1CaJdJDpvvQP5tMRDCm5sJ4f","123456","test item name","2XUTUUKPNDDT4","0.00","0.00","2.00","0.00","Success","2018-06-07 14:37:38");
INSERT INTO merchant_payments VALUES("14","12","12","2","","ch_1CaKcXDpvvQP5tMRe2CbLKd3","1001","Burgers","LGIQQU2KRJQVI","0.00","0.00","7.00","0.00","Success","2018-06-07 15:40:55");
INSERT INTO merchant_payments VALUES("15","12","12","2","","ch_1CbLh1DpvvQP5tMRn4EhQulY","1001","Burgers","BRGQOCY2KIPT5","0.00","0.00","7.00","0.00","Success","2018-06-10 11:01:41");
INSERT INTO merchant_payments VALUES("16","12","12","1","20","TFQD3XMMWYLG8","1001","Burgers","TFQD3XMMWYLG8","0.00","0.00","7.00","0.00","Success","2018-06-10 11:03:16");
INSERT INTO merchant_payments VALUES("17","9","12","1","4","CDXXCYIVZPCXV","","","CDXXCYIVZPCXV","0.00","0.00","50.00","0.00","Success","2018-06-10 14:57:36");
INSERT INTO merchant_payments VALUES("18","9","12","1","6","T6TINABWVK0AA","","","T6TINABWVK0AA","0.00","0.00","50.00","0.00","Success","2018-06-10 15:15:42");
INSERT INTO merchant_payments VALUES("19","9","12","1","6","9LQ3ROBFVVW8F","","","9LQ3ROBFVVW8F","0.00","0.00","50.00","0.00","Success","2018-06-11 10:12:33");
INSERT INTO merchant_payments VALUES("20","9","12","1","24","QEG6VBBXPZYIX","","","QEG6VBBXPZYIX","0.00","0.00","50.00","0.00","Success","2018-06-12 13:45:47");
INSERT INTO merchant_payments VALUES("21","15","12","1","24","CCXYW5YA7L0YT","","","CCXYW5YA7L0YT","0.00","0.00","40.00","0.00","Success","2018-06-12 14:41:26");
INSERT INTO merchant_payments VALUES("22","15","12","1","29","JTSDFGGMPITSW","","","JTSDFGGMPITSW","0.00","0.00","20.00","0.00","Success","2018-06-12 14:46:32");
INSERT INTO merchant_payments VALUES("23","15","12","1","29","NEQQJJOZ7XCC9","","","NEQQJJOZ7XCC9","0.00","0.00","20.00","0.00","Success","2018-06-12 14:49:12");
INSERT INTO merchant_payments VALUES("24","12","12","1","20","HOHO3CWMWQBNK","1001","Burgers","HOHO3CWMWQBNK","0.00","0.00","7.00","0.00","Success","2018-06-12 16:03:22");
INSERT INTO merchant_payments VALUES("25","4","12","1","20","ACU5VPVFIVG54","991","Half shirt","ACU5VPVFIVG54","0.00","0.00","130.00","0.00","Success","2018-06-13 11:32:03");
INSERT INTO merchant_payments VALUES("26","4","12","1","20","ACU5VPVFIVG54","991","Half shirt","XG3P667VUC0YJ","0.00","0.00","130.00","0.00","Refund","2018-06-13 11:48:41");
INSERT INTO merchant_payments VALUES("27","16","12","1","5","JTY4ELNNKEJC0","1011","apples","JTY4ELNNKEJC0","0.00","0.00","7.50","0.00","Success","2018-06-13 12:19:59");
INSERT INTO merchant_payments VALUES("29","16","12","1","5","JTY4ELNNKEJC0","1011","apples","ZFWCO9QIP0F2B","0.00","0.00","7.50","0.00","Refund","2018-06-13 12:27:12");
INSERT INTO merchant_payments VALUES("30","16","12","1","5","J8JMEXHEMRMXI","1012","mangoes","J8JMEXHEMRMXI","0.00","0.00","11.24","0.00","Success","2018-06-13 12:38:40");
INSERT INTO merchant_payments VALUES("31","16","12","1","5","J8JMEXHEMRMXI","1012","mangoes","RNHGD0PJ52IPJ","0.00","0.00","11.24","0.00","Refund","2018-06-13 12:40:02");
INSERT INTO merchant_payments VALUES("32","16","12","1","5","GENMRCLEMJBTQ","1013","pineapples","GENMRCLEMJBTQ","0.00","0.00","9.24","0.00","Success","2018-06-13 14:36:24");
INSERT INTO merchant_payments VALUES("33","16","12","1","5","GENMRCLEMJBTQ","1013","pineapples","SY7ILVUZLRFCZ","0.00","0.00","9.24","0.00","Refund","2018-06-13 15:16:38");
INSERT INTO merchant_payments VALUES("34","16","12","1","5","IKVJ9KQBN2XAI","1014","rice","IKVJ9KQBN2XAI","0.00","0.00","3.33","0.00","Success","2018-06-13 15:22:36");
INSERT INTO merchant_payments VALUES("35","16","12","1","5","IKVJ9KQBN2XAI","1014","rice","0IYAPPIVIXDDE","0.00","0.00","3.33","0.00","Refund","2018-06-13 15:27:21");
INSERT INTO merchant_payments VALUES("36","9","12","2","4","ch_1CfMC7DpvvQP5tMRFrjZe0z1","wer43","test item name","LZEYC5RFKALTJ","0.00","0.00","10.00","0.00","Success","2018-06-21 12:23:00");
INSERT INTO merchant_payments VALUES("37","18","12","2","","ch_1CfMHSDpvvQP5tMRK92G9IXs","111","Television","2OAAUYKRQSOJD","0.00","0.00","2.00","0.00","Success","2018-06-21 12:28:30");
INSERT INTO merchant_payments VALUES("38","9","12","1","4","GNUDJGWVETUUK","wer43","test item name","GNUDJGWVETUUK","0.00","0.00","10.00","0.00","Success","2018-06-21 12:32:18");
INSERT INTO merchant_payments VALUES("39","18","12","2","29","ch_1CfMQuDpvvQP5tMR7Yy4swbr","111","Television","UNBKGEG4XFHTW","0.00","0.00","2.00","0.00","Success","2018-06-21 12:38:16");
INSERT INTO merchant_payments VALUES("40","18","12","1","29","J07179Z3W3DNH","111","Television","J07179Z3W3DNH","0.00","0.00","2.00","0.00","Success","2018-06-21 12:39:33");
INSERT INTO merchant_payments VALUES("41","18","12","1","24","0J0YJLIJSHHYQ","111","Television","0J0YJLIJSHHYQ","0.00","0.00","2.00","0.00","Success","2018-06-21 12:44:03");
INSERT INTO merchant_payments VALUES("43","9","12","2","4","ch_1CfMC7DpvvQP5tMRFrjZe0z1","wer43","test item name","NWUUVVGJSS3XK","0.00","0.00","10.00","0.00","Refund","2018-06-22 11:13:37");
INSERT INTO merchant_payments VALUES("44","18","12","2","","ch_1CfMHSDpvvQP5tMRK92G9IXs","111","Television","KZMFWOJKAXHNS","0.00","0.00","2.00","0.00","Refund","2018-06-22 11:39:47");
INSERT INTO merchant_payments VALUES("47","9","12","1","4","GNUDJGWVETUUK","wer43","test item name","Q1FZY2QPECM5I","0.00","0.00","10.00","0.00","Refund","2018-06-22 12:42:36");
INSERT INTO merchant_payments VALUES("48","19","12","1","29","I068YHL0Q8QRY","A-123","Panjabi","I068YHL0Q8QRY","0.00","0.00","5.00","0.00","Success","2018-06-26 12:33:25");
INSERT INTO merchant_payments VALUES("49","2","12","1","20","76YBUGJMIV9C0","9191","shampoo","76YBUGJMIV9C0","0.00","0.00","11.00","0.00","Success","2018-06-28 14:13:30");
INSERT INTO merchant_payments VALUES("50","12","12","2","20","ch_1Chvs9DpvvQP5tMRFgeQ29Qn","8912","chairs","L6L8PHXAP4MVP","0.00","0.00","1200.00","0.00","Success","2018-06-28 14:52:57");
INSERT INTO merchant_payments VALUES("51","12","12","1","15","SNGZHQL6DYIHO","8912","chairs","SNGZHQL6DYIHO","0.00","0.00","1200.00","0.00","Success","2018-06-28 14:55:31");
INSERT INTO merchant_payments VALUES("52","24","12","2","15","ch_1Chw7CDpvvQP5tMREpCEBIkr","1313","Cricket bat","KGREVJY2ACHCY","0.00","0.00","1999.00","0.00","Success","2018-06-28 15:08:31");
INSERT INTO merchant_payments VALUES("53","24","12","2","","ch_1CizAjDpvvQP5tMRWatz4Y6t","1111","shoes","9FABKIBEWMVMZ","0.00","0.00","107.00","0.00","Success","2018-07-01 12:36:34");
INSERT INTO merchant_payments VALUES("54","24","12","1","20","TQJMEUATC9HI1","666","socks","TQJMEUATC9HI1","0.00","0.00","12.00","0.00","Success","2018-07-01 12:38:46");
INSERT INTO merchant_payments VALUES("55","12","12","1","15","RFB30GH0XDTQY","8912","chairs","RFB30GH0XDTQY","0.00","0.00","1200.00","0.00","Success","2018-07-01 12:53:35");
INSERT INTO merchant_payments VALUES("56","23","13","2","20","ch_1Cj1xgDpvvQP5tMRE1x2Ndmw","993","BasketBalls","NSXPKSKQGTGGF","0.00","0.00","656.00","0.00","Success","2018-07-01 15:35:16");
INSERT INTO merchant_payments VALUES("57","23","13","1","15","EUBDNOEBBFQOD","993","BasketBalls","EUBDNOEBBFQOD","0.00","0.00","656.00","0.00","Success","2018-07-01 17:53:14");
INSERT INTO merchant_payments VALUES("58","30","13","2","29","ch_1CjL9yDpvvQP5tMRU4TR5AL3","KR001","Kurti","GUSHQPEXZCTTE","0.00","0.00","5.00","0.00","Success","2018-07-02 12:05:13");
INSERT INTO merchant_payments VALUES("59","26","13","2","4","ch_1CjifkDpvvQP5tMRxmjjEqA0","","","VTHMCSAPSDHML","0.00","0.00","10.00","10.00","Success","2018-07-03 13:11:34");
INSERT INTO merchant_payments VALUES("60","26","13","2","4","ch_1CjihqDpvvQP5tMRE9W899Kp","","","XQYMFZS8OZRBS","0.00","0.00","10.00","10.00","Success","2018-07-03 13:13:44");
INSERT INTO merchant_payments VALUES("61","26","13","3","4","PAY-5877225961639160PLM5SLUY","","","LNUWCTJ2DV9JR","0.20","0.00","9.80","10.00","Success","2018-07-03 13:30:26");
INSERT INTO merchant_payments VALUES("62","26","13","3","4","PAY-67M85842B3749130YLM5SN7Q","","","R2LA6FDZA481R","0.20","0.00","9.80","10.00","Success","2018-07-03 13:34:42");
INSERT INTO merchant_payments VALUES("63","33","13","2","29","ch_1CjjLmDpvvQP5tMRzQ31gUA8","xvzxvzv","Jewellary","MKNRCXHGYP27G","0.00","0.00","2.00","2.00","Success","2018-07-03 13:55:00");
INSERT INTO merchant_payments VALUES("64","23","12","2","15","ch_1ClEkEDpvvQP5tMRELY4jwp3","333","rubbers","GGUAZMWYDKNYA","0.00","0.00","13.00","13.00","Success","2018-07-07 17:38:24");
INSERT INTO merchant_payments VALUES("65","23","12","1","20","RV697WSB71F7R","333","rubbers","RV697WSB71F7R","0.00","0.00","13.00","13.00","Success","2018-07-07 18:07:59");
INSERT INTO merchant_payments VALUES("66","23","12","1","20","JQN2JWGCJACBO","333","rubbers","JQN2JWGCJACBO","0.00","0.00","13.00","13.00","Success","2018-07-07 18:26:13");
INSERT INTO merchant_payments VALUES("67","34","13","2","20","ch_1Clak7DpvvQP5tMRWxNJSHWg","1","56 inch fans","FOIERQIRWNQL6","24.80","0.00","1575.20","1600.00","Success","2018-07-08 17:07:52");
INSERT INTO merchant_payments VALUES("68","24","13","1","31","GEKIGJ47W7QSE","333","gloves","GEKIGJ47W7QSE","1.53","0.00","97.47","99.00","Success","2018-07-08 17:14:16");
INSERT INTO merchant_payments VALUES("69","33","13","2","29","ch_1ClcEmDpvvQP5tMRaoW1QXs6","1111","jeans","53KAOROBPFVK1","0.00","0.00","3.00","3.00","Success","2018-07-08 18:43:37");
INSERT INTO merchant_payments VALUES("70","33","13","3","29","PAY-2AB053363U960861BLNBAPJQ","1111","jeans","2DFWCZSKYBPWU","0.00","0.00","3.00","3.00","Success","2018-07-08 18:47:09");
INSERT INTO merchant_payments VALUES("74","38","12","3","29","PAY-52M63744YU3082942LNFSBUY","ss","jeans","ATWKKC12U7EN9","0.03","0.00","1.97","2.00","Success","2018-07-15 16:24:52");
INSERT INTO merchant_payments VALUES("75","38","12","1","24","XB0G8ZVBTLYB7","ss","jeans","XB0G8ZVBTLYB7","0.03","0.00","1.97","2.00","Success","2018-07-15 17:04:20");
INSERT INTO merchant_payments VALUES("76","39","12","1","20","OZW3EZOIMYLD3","1","paint box","OZW3EZOIMYLD3","3.00","0.00","117.00","120.00","Success","2018-07-16 12:10:00");
INSERT INTO merchant_payments VALUES("77","29","12","1","4","LL1GZRFNJ5RGK","sdf","sdfsd","LL1GZRFNJ5RGK","0.00","0.00","3.00","3.00","Success","2018-07-16 12:21:18");
INSERT INTO merchant_payments VALUES("78","28","12","1","15","NUZW8HEKBDWNX","101","medium shoes","NUZW8HEKBDWNX","0.00","0.00","700.00","700.00","Success","2018-07-18 18:38:04");
INSERT INTO merchant_payments VALUES("79","28","12","1","15","KTXODQIADUGRN","101","medium shoes","KTXODQIADUGRN","0.00","0.00","700.00","700.00","Success","2018-07-19 13:16:37");
INSERT INTO merchant_payments VALUES("80","28","12","2","20","ch_1CpY1JDpvvQP5tMR6UP5aTXv","101","medium shoes","7Y5EEJC0BQK9J","0.00","0.00","30.00","30.00","Success","2018-07-19 15:01:52");
INSERT INTO merchant_payments VALUES("81","28","12","1","24","SQQJO3ZERMA4O","101","medium shoes","SQQJO3ZERMA4O","0.00","0.00","30.00","30.00","Success","2018-07-19 15:02:49");





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
  KEY `merchant_group_id_index` (`merchant_group_id`),
  CONSTRAINT `merchants_group_id_foreign` FOREIGN KEY (`merchant_group_id`) REFERENCES `merchant_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO merchants VALUES("1","15","","GZK3TEDCLZJ0B","Ecstasy","http://ecstasy.com","standard","test","1528086141.jpg","0.00","Approved","2018-06-04 10:22:21","2018-06-04 14:59:26");
INSERT INTO merchants VALUES("2","4","","","Portfolio","http://tuhinhossain.info","standard","No comments","","0.00","Approved","2018-06-04 10:23:57","2018-06-30 19:06:49");
INSERT INTO merchants VALUES("3","4","","","test","http://test1.com","express","123we","","0.00","Approved","2018-06-04 10:38:48","2018-06-06 11:28:58");
INSERT INTO merchants VALUES("4","15","","HDPKIJS2ZU1HB","SilkRoad","http://silkroadbd.com","standard","SilkRoad","1528178740.jpg","0.00","Approved","2018-06-05 12:05:40","2018-06-05 12:05:56");
INSERT INTO merchants VALUES("8","7","","","techvill","http://techvill.net","standard","test","","0.00","Approved","2018-06-05 14:53:39","2018-06-06 13:08:27");
INSERT INTO merchants VALUES("9","4","","","ECom","http://ecom.com","express","This is note","","0.00","Approved","2018-06-06 12:24:05","2018-06-06 13:01:45");
INSERT INTO merchants VALUES("10","24","","","LG","http://www.walton.com","standard","hjgjg","","0.00","Moderation","2018-06-07 11:30:21","2018-06-07 11:30:21");
INSERT INTO merchants VALUES("11","4","","","test","http://test.com","express","test","","0.00","Moderation","2018-06-07 15:18:49","2018-06-07 15:18:49");
INSERT INTO merchants VALUES("12","20","","S3PVKP3E0PG0P","Food Panda","http://food-panda-bd.com","standard","test","1528364213.png","0.00","Approved","2018-06-07 15:36:53","2018-06-07 15:37:20");
INSERT INTO merchants VALUES("13","24","","","Foring","http://catseye.net","standard","test","","0.00","Moderation","2018-06-10 11:05:49","2018-06-10 11:05:49");
INSERT INTO merchants VALUES("14","7","","","Tecvhill","http://techvill.net","express","test","","0.00","Approved","2018-06-11 12:49:46","2018-06-11 12:50:38");
INSERT INTO merchants VALUES("15","24","","","Aarong","http://www.aarong.com","express","Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ","","0.00","Approved","2018-06-12 14:24:41","2018-06-12 14:26:09");
INSERT INTO merchants VALUES("16","15","","2QUC9KIQSTJHL","Agora","http://agora-bd.com","standard","agora-bd","1530362244.jpg","0.00","Approved","2018-06-13 12:17:42","2018-06-30 18:37:24");
INSERT INTO merchants VALUES("17","4","","","ECom","http://test.com","standard","asdf","","0.00","Moderation","2018-06-21 12:23:48","2018-06-30 19:14:42");
INSERT INTO merchants VALUES("18","24","","","LG","http://www.Lg.com","standard","test","","0.00","Approved","2018-06-21 12:24:17","2018-06-21 12:25:30");
INSERT INTO merchants VALUES("19","24","","","Aarong","http://www.aarong.com","standard","This is aarong","1529994270.png","0.00","Approved","2018-06-26 12:24:31","2018-06-26 12:28:24");
INSERT INTO merchants VALUES("20","24","","","Ecstasy","http://www.ecstasy.com","express","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su","1529996297.jpg","0.00","Moderation","2018-06-26 12:58:17","2018-06-26 12:58:17");
INSERT INTO merchants VALUES("21","24","","","Techvillage","http://techvill.net","standard","test","","0.00","Moderation","2018-06-26 14:27:50","2018-06-26 14:27:50");
INSERT INTO merchants VALUES("22","24","","","Techvillage","http://techvill.net","express","test","","0.00","Approved","2018-06-26 14:29:16","2018-06-26 14:29:37");
INSERT INTO merchants VALUES("23","15","","2QUC9KIQSTJYY","KiwiSports","http://www.kiwisports.com","standard","KiwiSports","","0.00","Approved","2018-06-28 14:59:52","2018-07-01 15:32:51");
INSERT INTO merchants VALUES("24","15","","MJ97UYZNCRVZW","NeoCrickets","http://www.neo-crickets.com","standard","NeoCrickets","1530176859.png","1.55","Approved","2018-06-28 15:04:08","2018-07-08 17:12:22");
INSERT INTO merchants VALUES("25","4","","XXTFE4RFBZWOF","newmerchant","http://newmerchant.com","standard","asdf","","0.00","Approved","2018-06-28 17:14:50","2018-06-28 17:15:23");
INSERT INTO merchants VALUES("26","4","","XXMHBP6XJ8WVV","merchant2","http://merchant2.com","standard","asdf","","2.00","Approved","2018-06-28 17:27:09","2018-06-28 17:27:20");
INSERT INTO merchants VALUES("27","20","","RMW9CXNPTAQBF","shopno-bd","http://www.shopno-bd.com","standard","shopno-bd","","0.00","Approved","2018-06-28 18:02:58","2018-06-28 18:03:48");
INSERT INTO merchants VALUES("28","20","","EBKFBKSP7OKB8","bata-bd","http://www.bata-bd.com","standard","bata-bd","","0.00","Approved","2018-06-28 18:03:25","2018-06-28 18:03:43");
INSERT INTO merchants VALUES("29","20","","Z6J1J3R9YOCBI","milon-shoes","http://www.milon-shoes.com","standard","milon-shoes","","0.00","Approved","2018-06-28 18:16:44","2018-06-28 18:16:56");
INSERT INTO merchants VALUES("30","35","","OP5MWYXMMHOQP","Walton","http://www.walton.com","standard","walton product","1530511690.png","0.00","Approved","2018-07-02 11:30:38","2018-07-02 12:08:11");
INSERT INTO merchants VALUES("31","24","","QULPLASLWIRLH","Techvillage","http://merchant2.com","standard","cvxcv","","0.00","Moderation","2018-07-02 17:28:04","2018-07-02 17:28:33");
INSERT INTO merchants VALUES("32","35","","6J4C12RXSE0H1","Foring","http://www.forings.com","express","test","","0.00","Approved","2018-07-03 11:31:46","2018-07-03 13:46:16");
INSERT INTO merchants VALUES("33","35","","4O60PSXIXODLQ","Aarong","http://www.aarong.com","standard","Description on Aarong","","0.00","Approved","2018-07-03 13:49:15","2018-07-03 13:49:25");
INSERT INTO merchants VALUES("34","31","","V8ANAM0MFINSZ","SuperStar","http://ww.superstar-bd.com","standard","SuperStar","1531041499.png","1.55","Approved","2018-07-08 15:18:19","2018-07-08 16:50:04");
INSERT INTO merchants VALUES("35","31","","0VCGJR0CDSL4W","Pran RFL BD","http://pran-rfl-bd.com","standard","pran-rfl-bd","1531136119.jpg","1.50","Approved","2018-07-09 17:35:19","2018-07-09 17:36:23");
INSERT INTO merchants VALUES("36","29","","EJ1CS6JPP7ZK2","Lorem ipsum dolor sit amet, consectetur adipiscing elit.","http://www.aarong.com","standard","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo semper luctus. Donec vel ultricies mauris. Duis mi metus, pulvinar ut feugiat a, semper nec orci. Proin dolor nunc, pretium et risus nec, malesuada porta nisl. Duis feugiat, risus quis","1531637656.jpg","1.50","Moderation","2018-07-15 12:54:16","2018-07-15 12:54:16");
INSERT INTO merchants VALUES("37","29","","J5GAZYM6OR4DG","Lorem ipsum dolor sit amet.","http://www.aarong.com","standard","gfhmghmghghjh,hj,gkghkhjlhklkj;klj;kl\';l;l\';l\';l\'ljghjghjghjghkj","","3.00","Approved","2018-07-15 12:55:13","2018-07-15 14:25:01");
INSERT INTO merchants VALUES("38","29","","GFX36ZOT2K6ER","bvvb","http://www.catseye.com","standard","ddgdsgdsgsg","","1.50","Approved","2018-07-15 13:01:14","2018-07-15 14:29:48");
INSERT INTO merchants VALUES("39","15","7","PVKNRNJ5AQ623","Berger Paints Bangladesh Ltd.","http://www.bergerbd.com","standard","Berger Paints Bangladesh Ltd.","1531659709.jpg","2.50","Approved","2018-07-15 17:31:42","2018-07-15 19:02:50");
INSERT INTO merchants VALUES("40","24","7","QRFEK9HIYGWQO","Walton","http://www.walton.com","standard","dfgdfhdfhdfh","","2.00","Moderation","2018-07-16 17:04:17","2018-07-16 17:04:17");
INSERT INTO merchants VALUES("41","15","7","YFQX2PKHZOPD6","milon-paints","http://www.milon-paints.com","standard","milon-paints","1531901648.jpg","2.00","Moderation","2018-07-18 14:14:09","2018-07-18 14:14:09");
INSERT INTO merchants VALUES("42","35","7","ETHRI4AXKN9CH","Singer","http://www.singer.com","express","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce convallis orci risus, nec molestie tellus lacinia eget. Etiam in lectus libero. In hac habitasse platea dictumst. Pellentesque mauris libero, tincidunt eget tristique sit amet, rhoncus ut just","1531982979.jpg","2.00","Moderation","2018-07-19 12:49:39","2018-07-19 12:49:39");





CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text,
  `keywords` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

INSERT INTO metas VALUES("2","help","Help","Help","");
INSERT INTO metas VALUES("3","about-us","About Us","About Us","");
INSERT INTO metas VALUES("4","contact-us","Contact Us","Contact Us","");
INSERT INTO metas VALUES("5","header","Header","Header","");
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
INSERT INTO metas VALUES("24","exchange/view/{id}","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("25","merchant/edit/{id}","Edit Merchant ","Edit Merchant","");
INSERT INTO metas VALUES("26","merchant/add","Add Merchant ","Add Merchant","");
INSERT INTO metas VALUES("27","merchant/payments","Merchant payments","Merchant payments","");
INSERT INTO metas VALUES("28","deposit","Deposit","Deposit","");
INSERT INTO metas VALUES("29","deposit/method/{id}","Deposit Amount","Deposit Amount","");
INSERT INTO metas VALUES("30","deposit/stripe_payment","Deposit With Stripe","Deposit with stripe","");
INSERT INTO metas VALUES("31","payout","Payout","Payout","");
INSERT INTO metas VALUES("32","withdrawal/method/{id}","Withdrawal","Withdrawal","");
INSERT INTO metas VALUES("33","payouts","Payouts","Payouts","");
INSERT INTO metas VALUES("34","transactions/{id}","Transactions","Transactions","");
INSERT INTO metas VALUES("35","request_payment/accept/{id}","Request Payment","Request Payment","");
INSERT INTO metas VALUES("36","disputes","Disputes","Disputes","Disputes");
INSERT INTO metas VALUES("37","merchant/detail/{id}","View Merchant ","View Merchant ","");
INSERT INTO metas VALUES("38","dispute/discussion/{id}","Dispute Details","Dispute Details","Dispute Details");
INSERT INTO metas VALUES("39","dispute/add/{id}","Dispute Add","Dispute Add","");
INSERT INTO metas VALUES("40","send-money","Send Money","Send Money","");
INSERT INTO metas VALUES("41","request-money","Request Money","Request Money","");
INSERT INTO metas VALUES("42","news","News","News","");
INSERT INTO metas VALUES("43","profile","User Profile","User Profile","");
INSERT INTO metas VALUES("44","tickets","Tickets","Tickets","");
INSERT INTO metas VALUES("45","ticket/add","Ticket Add","Ticket Add","");
INSERT INTO metas VALUES("46","ticket/reply/{id}","Ticket Reply","Ticket Reply","");
INSERT INTO metas VALUES("47","exchange_of_base_currency","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("48","exchange/exchange-of-base-currency-confirm","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("49","payout/setting","Withdrawal","Withdrawal","");
INSERT INTO metas VALUES("50","send-money-confirm","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("51","exchange_to_base_currency","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("52","exchange/exchange-to-base-currency-confirm","Money Exchange","Money Exchange","");
INSERT INTO metas VALUES("54","request_payment/store","Request Payment","Request Payment","");
INSERT INTO metas VALUES("55","forget-password","Forgot Password","Forgot Password","");
INSERT INTO metas VALUES("56","password/resets/{id}","Reset Password","Reset Password","");
INSERT INTO metas VALUES("57","request-money-confirm","Request Money","Request Money","");
INSERT INTO metas VALUES("58","request_payment/accepted","Request Payment","Request Payment","");
INSERT INTO metas VALUES("59","request_payment/accept-money-confirm","Request Payment","Request Payment","");
INSERT INTO metas VALUES("60","deposit/stripe_payment_store","Deposit With Stripe","Deposit With Stripe","");
INSERT INTO metas VALUES("64","policies","Policies","Policies","");
INSERT INTO metas VALUES("69","transfer","Money Transfer","Money Transfer","");
INSERT INTO metas VALUES("70","voucher/store","Voucher","Voucher","");
INSERT INTO metas VALUES("71","voucher/activated","Voucher","Voucher","");
INSERT INTO metas VALUES("72","withdrawal/confirm-transaction","Withdrawal","Withdrawal","");
INSERT INTO metas VALUES("73","request","Request Payment","Request Payment","");
INSERT INTO metas VALUES("74","deposit/payumoney_success","Deposit With PayUMoney","Deposit With PayUMoney","");
INSERT INTO metas VALUES("75","deposit/payment_success","Deposit Success","Deposit Success","");
INSERT INTO metas VALUES("78","developer","Developer","Developer Page","");
INSERT INTO metas VALUES("79","portfolio","Portfolio","Portfolio","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

INSERT INTO migrations VALUES("1","2017_10_12_000010_create_pages_table","1");
INSERT INTO migrations VALUES("2","2017_10_12_000016_create_socials_table","1");
INSERT INTO migrations VALUES("3","2018_01_23_054930_entrust_setup_tables","1");
INSERT INTO migrations VALUES("4","2018_01_24_000000_create_users_table","1");
INSERT INTO migrations VALUES("5","2018_01_28_073527_create_currencies_table","1");
INSERT INTO migrations VALUES("6","2018_02_01_075202_create_settings_table","1");
INSERT INTO migrations VALUES("7","2018_02_01_104705_create_languages_table","1");
INSERT INTO migrations VALUES("8","2018_02_02_121311_create_countries_table","1");
INSERT INTO migrations VALUES("9","2018_02_05_065402_create_preferences_table","1");
INSERT INTO migrations VALUES("10","2018_02_09_055248_create_backups_table","1");
INSERT INTO migrations VALUES("11","2018_02_09_104306_create_metas_table","1");
INSERT INTO migrations VALUES("12","2018_02_09_121049_create_payment_methods_table","1");
INSERT INTO migrations VALUES("13","2018_02_20_095847_create_admins_table","1");
INSERT INTO migrations VALUES("14","2018_02_26_084847_create_deposits_table","1");
INSERT INTO migrations VALUES("15","2018_02_27_060235_create_wallets_table","1");
INSERT INTO migrations VALUES("16","2018_02_27_101356_create_fees_table","1");
INSERT INTO migrations VALUES("17","2018_03_03_083507_create_currency_exchanges_table","1");
INSERT INTO migrations VALUES("18","2018_03_03_083507_create_request_payments_table","1");
INSERT INTO migrations VALUES("19","2018_03_03_083507_create_transfers_table","1");
INSERT INTO migrations VALUES("20","2018_03_03_083507_create_vouchers_table","1");
INSERT INTO migrations VALUES("21","2018_03_06_115806_create_withdrawals_table","1");
INSERT INTO migrations VALUES("22","2018_03_10_075012_create_transaction_types_table","1");
INSERT INTO migrations VALUES("23","2018_03_22_000001_create_merchants_table","1");
INSERT INTO migrations VALUES("24","2018_03_22_000002_create_merchant_payments_table","1");
INSERT INTO migrations VALUES("25","2018_03_22_060439_create_transactions_table","1");
INSERT INTO migrations VALUES("26","2018_03_23_021431_create_cointpayment_log_trxes_table","1");
INSERT INTO migrations VALUES("27","2018_03_27_095014_create_email_templates_table","1");
INSERT INTO migrations VALUES("28","2018_04_04_055813_create_activity_logs_table","1");
INSERT INTO migrations VALUES("29","2018_04_23_065520_add_picture_to_users_table","1");
INSERT INTO migrations VALUES("30","2018_04_23_072453_add_picture_to_admins_table","1");
INSERT INTO migrations VALUES("31","2018_04_24_101102_create_ticket_statuses_table","1");
INSERT INTO migrations VALUES("32","2018_04_25_064015_create_tickets_table","1");
INSERT INTO migrations VALUES("33","2018_04_25_090327_create_reasons_table","1");
INSERT INTO migrations VALUES("34","2018_04_25_102922_create_ticket_replies_table","1");
INSERT INTO migrations VALUES("35","2018_04_25_130503_create_files_table","1");
INSERT INTO migrations VALUES("36","2018_04_30_054616_create_disputes_table","1");
INSERT INTO migrations VALUES("37","2018_04_30_054950_create_dispute_discussions_table","1");
INSERT INTO migrations VALUES("38","2018_05_08_064513_create_unregistered_transactions_table","1");
INSERT INTO migrations VALUES("39","2018_05_08_141610_create_fees_limits_table","1");
INSERT INTO migrations VALUES("40","2018_05_23_052416_create_user_details_table","1");
INSERT INTO migrations VALUES("41","2018_05_27_150035_create_email_configs_table","1");
INSERT INTO migrations VALUES("42","2018_05_28_150419_create_payout_settings_table","1");
INSERT INTO migrations VALUES("43","2018_06_06_093803_create_merchant_apps_table","1");
INSERT INTO migrations VALUES("44","2018_06_06_093953_create_app_tokens_table","1");
INSERT INTO migrations VALUES("45","2018_06_06_094213_create_app_transactions_infos_table","1");
INSERT INTO migrations VALUES("46","2018_06_12_124543_create_currency_payment_methods_table","1");
INSERT INTO migrations VALUES("47","2018_07_02_131144_create_time_zones_table","1");
INSERT INTO migrations VALUES("48","2018_07_02_163432_create_app_store_credentials_table","1");
INSERT INTO migrations VALUES("49","2018_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("50","2016_06_01_000001_create_oauth_auth_codes_table","2");
INSERT INTO migrations VALUES("51","2016_06_01_000002_create_oauth_access_tokens_table","2");
INSERT INTO migrations VALUES("52","2016_06_01_000003_create_oauth_refresh_tokens_table","2");
INSERT INTO migrations VALUES("53","2016_06_01_000004_create_oauth_clients_table","2");
INSERT INTO migrations VALUES("54","2016_06_01_000005_create_oauth_personal_access_clients_table","2");
INSERT INTO migrations VALUES("55","2018_07_07_190022_create_merchant_groups_table","3");





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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO pages VALUES("2","Help","help","<p><span style=\"font-size: 18px;\"><b style=\"\"><font face=\"Helvetica\">Help</font></b></span><p><span style=\"font-size: 18px;\"><b style=\"\"><font face=\"Helvetica\"><br></font></b></span></p><h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit, arcu eu blandit aliquam, nisi purus posuere lectus, varius facilisis tellus ligula nec lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquam diam ut convallis suscipit. Mauris elementum viverra nunc non suscipit. Donec a nulla maximus, dictum lorem sed, laoreet felis. Cras consectetur, lorem at sagittis dictum, arcu lectus posuere orci, eu placerat nulla nisl ut sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae gravida orci. Donec venenatis metus non ligula hendrerit, ut fermentum augue ultricies. Etiam justo tellus, semper sollicitudin urna nec, luctus venenatis diam. Cras a fermentum felis, pellentesque vulputate libero.</p><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Vivamus pretium purus suscipit turpis dapibus, pretium viverra ipsum euismod. Phasellus malesuada augue id nunc tristique, vitae gravida velit dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a sapien ipsum. Vestibulum in cursus velit, vel fermentum nunc. Pellentesque a varius risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam eget condimentum ex. Morbi hendrerit lorem ac ligula dapibus, nec tristique libero posuere. In eget massa eget dolor efficitur dignissim. Nullam iaculis nisi neque, mollis efficitur nisi ultrices in.</p><p></p><p></p><p></p><p></p><p></p></p>\n","[\"footer\"]","active","2018-04-11 06:07:40","2018-07-18 17:10:46");
INSERT INTO pages VALUES("3","About Us","about-us","<p><b>About Us</b><h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit, arcu eu blandit aliquam, nisi purus posuere lectus, varius facilisis tellus ligula nec lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquam diam ut convallis suscipit. Mauris elementum viverra nunc non suscipit. Donec a nulla maximus, dictum lorem sed, laoreet felis. Cras consectetur, lorem at sagittis dictum, arcu lectus posuere orci, eu placerat nulla nisl ut sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae gravida orci. Donec venenatis metus non ligula hendrerit, ut fermentum augue ultricies. Etiam justo tellus, semper sollicitudin urna nec, luctus venenatis diam. Cras a fermentum felis, pellentesque vulputate libero.</p><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Vivamus pretium purus suscipit turpis dapibus, pretium viverra ipsum euismod. Phasellus malesuada augue id nunc tristique, vitae gravida velit dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a sapien ipsum. Vestibulum in cursus velit, vel fermentum nunc. Pellentesque a varius risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam eget condimentum ex. Morbi hendrerit lorem ac ligula dapibus, nec tristique libero posuere. In eget massa eget dolor efficitur dignissim. Nullam iaculis nisi neque, mollis efficitur nisi ultrices in.</p><p></p><p></p></p>\n","[\"footer\"]","active","2018-04-11 06:09:48","2018-07-18 17:03:51");
INSERT INTO pages VALUES("4","Contact Us","contact-us","<p><b><span style=\"font-size: 18px;\">Conatct Us</span></b><p><b><span style=\"font-size: 18px;\"><br></span></b></p><h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit, arcu eu blandit aliquam, nisi purus posuere lectus, varius facilisis tellus ligula nec lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquam diam ut convallis suscipit. Mauris elementum viverra nunc non suscipit. Donec a nulla maximus, dictum lorem sed, laoreet felis. Cras consectetur, lorem at sagittis dictum, arcu lectus posuere orci, eu placerat nulla nisl ut sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae gravida orci. Donec venenatis metus non ligula hendrerit, ut fermentum augue ultricies. Etiam justo tellus, semper sollicitudin urna nec, luctus venenatis diam. Cras a fermentum felis, pellentesque vulputate libero.</p><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Vivamus pretium purus suscipit turpis dapibus, pretium viverra ipsum euismod. Phasellus malesuada augue id nunc tristique, vitae gravida velit dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a sapien ipsum. Vestibulum in cursus velit, vel fermentum nunc. Pellentesque a varius risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam eget condimentum ex. Morbi hendrerit lorem ac ligula dapibus, nec tristique libero posuere. In eget massa eget dolor efficitur dignissim. Nullam iaculis nisi neque, mollis efficitur nisi ultrices in.</p><p></p><p></p></p>\n","[\"footer\"]","active","2018-04-11 06:10:25","2018-07-18 17:09:39");
INSERT INTO pages VALUES("5","News","news","<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\"><b>News</b><h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\"><br></h2><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit, arcu eu blandit aliquam, nisi purus posuere lectus, varius facilisis tellus ligula nec lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquam diam ut convallis suscipit. Mauris elementum viverra nunc non suscipit. Donec a nulla maximus, dictum lorem sed, laoreet felis. Cras consectetur, lorem at sagittis dictum, arcu lectus posuere orci, eu placerat nulla nisl ut sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae gravida orci. Donec venenatis metus non ligula hendrerit, ut fermentum augue ultricies. Etiam justo tellus, semper sollicitudin urna nec, luctus venenatis diam. Cras a fermentum felis, pellentesque vulputate libero.</p><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Vivamus pretium purus suscipit turpis dapibus, pretium viverra ipsum euismod. Phasellus malesuada augue id nunc tristique, vitae gravida velit dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a sapien ipsum. Vestibulum in cursus velit, vel fermentum nunc. Pellentesque a varius risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam eget condimentum ex. Morbi hendrerit lorem ac ligula dapibus, nec tristique libero posuere. In eget massa eget dolor efficitur dignissim. Nullam iaculis nisi neque, mollis efficitur nisi ultrices in.</p><p></p></h2>\n","[\"header\",\"footer\"]","active","2018-05-21 07:16:52","2018-07-18 17:03:30");
INSERT INTO pages VALUES("11","Policies","policies","<h4><b>Policy</b><h4></h4><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit, arcu eu blandit aliquam, nisi purus posuere lectus, varius facilisis tellus ligula nec lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquam diam ut convallis suscipit. Mauris elementum viverra nunc non suscipit. Donec a nulla maximus, dictum lorem sed, laoreet felis. Cras consectetur, lorem at sagittis dictum, arcu lectus posuere orci, eu placerat nulla nisl ut sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae gravida orci. Donec venenatis metus non ligula hendrerit, ut fermentum augue ultricies. Etiam justo tellus, semper sollicitudin urna nec, luctus venenatis diam. Cras a fermentum felis, pellentesque vulputate libero.</p><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px;\'>Vivamus pretium purus suscipit turpis dapibus, pretium viverra ipsum euismod. Phasellus malesuada augue id nunc tristique, vitae gravida velit dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a sapien ipsum. Vestibulum in cursus velit, vel fermentum nunc. Pellentesque a varius risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam eget condimentum ex. Morbi hendrerit lorem ac ligula dapibus, nec tristique libero posuere. In eget massa eget dolor efficitur dignissim. Nullam iaculis nisi neque, mollis efficitur nisi ultrices in.</p><span style=\"background-color: rgb(255, 255, 0);\"><u><i></i></u></span><h4><span style=\"background-color: rgb(255, 255, 0);\"><u><i><br></i></u></span></h4><h4><span style=\"background-color: rgb(255, 156, 0);\"><u><br></u></span><br></h4></h4>\n","[\"header\"]","active","2018-06-28 13:08:47","2018-07-18 17:02:48");
INSERT INTO pages VALUES("14","Portfolio","portfolio","<p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'><b><span style=\"font-size: 18px;\">Portfolio</span></b><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam suscipit, arcu eu blandit aliquam, nisi purus posuere lectus, varius facilisis tellus ligula nec lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis aliquam diam ut convallis suscipit. Mauris elementum viverra nunc non suscipit. Donec a nulla maximus, dictum lorem sed, laoreet felis. Cras consectetur, lorem at sagittis dictum, arcu lectus posuere orci, eu placerat nulla nisl ut sapien. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae gravida orci. Donec venenatis metus non ligula hendrerit, ut fermentum augue ultricies. Etiam justo tellus, semper sollicitudin urna nec, luctus venenatis diam. Cras a fermentum felis, pellentesque vulputate libero.<br></p><p style=\'margin-bottom: 15px; padding: 0px; text-align: justify; font-family: \"Open Sans\", Arial, sans-serif;\'>Vivamus pretium purus suscipit turpis dapibus, pretium viverra ipsum euismod. Phasellus malesuada augue id nunc tristique, vitae gravida velit dignissim. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus a sapien ipsum. Vestibulum in cursus velit, vel fermentum nunc. Pellentesque a varius risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nullam eget condimentum ex. Morbi hendrerit lorem ac ligula dapibus, nec tristique libero posuere. In eget massa eget dolor efficitur dignissim. Nullam iaculis nisi neque, mollis efficitur nisi ultrices in.</p><p></p><p></p></p>\n","[\"header\"]","active","2018-07-18 17:08:11","2018-07-18 17:09:02");





CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO payout_settings VALUES("3","8","6","","borna","123","Uttara","Dhaka","Uttara, Dhaka","18","1234","Al falah","0","2018-06-03 16:03:11","2018-06-03 16:03:11");
INSERT INTO payout_settings VALUES("4","8","2","borna.techvill@gmail.com","","","","","","","","","0","2018-06-04 13:44:06","2018-06-04 13:44:06");
INSERT INTO payout_settings VALUES("5","19","1","borna.techvill@gmail.com","","","","","","","","","0","2018-06-04 15:31:46","2018-06-04 15:31:46");
INSERT INTO payout_settings VALUES("6","4","1","tuhin.techvill@gmail.com","","","","","","","","","0","2018-06-04 16:02:58","2018-06-04 16:02:58");
INSERT INTO payout_settings VALUES("7","7","3","lenin.rock@gmail.com","","","","","","","","","0","2018-06-05 14:21:50","2018-06-05 14:21:50");
INSERT INTO payout_settings VALUES("8","8","1","borna.techvill@gmail.com","","","","","","","","","0","2018-06-06 10:18:25","2018-06-06 10:18:25");
INSERT INTO payout_settings VALUES("9","24","3","borna@yahoo.com","","","","","","","","","0","2018-06-07 10:05:35","2018-06-07 10:05:35");
INSERT INTO payout_settings VALUES("10","7","3","lenin.rock@gmail.com","","","","","","","","","0","2018-06-12 11:58:50","2018-06-12 11:58:50");
INSERT INTO payout_settings VALUES("11","5","3","aminul.techvill@gmail.com","","","","","","","","","0","2018-06-25 12:06:04","2018-06-25 12:06:04");
INSERT INTO payout_settings VALUES("12","35","1","borna.techvill@gmail.com","","","","","","","","","0","2018-07-02 16:40:42","2018-07-02 16:40:42");
INSERT INTO payout_settings VALUES("13","35","3","borna.techvill@gmail.com","","","","","","","","","0","2018-07-02 16:41:39","2018-07-02 16:41:39");
INSERT INTO payout_settings VALUES("14","4","3","tuhin.techvill@gmail.com","","","","","","","","","0","2018-07-02 16:55:33","2018-07-02 16:55:33");
INSERT INTO payout_settings VALUES("17","31","3","milon.techvill@gmail.com","","","","","","","","","0","2018-07-07 14:11:50","2018-07-07 14:11:50");
INSERT INTO payout_settings VALUES("18","29","3","mahfuzasinthy@gmail.com","","","","","","","","","0","2018-07-08 17:16:48","2018-07-08 17:16:48");
INSERT INTO payout_settings VALUES("19","29","6","","mahfuza","wqegqwrewq11212","City BAnk","Dhaka","123/A","18","111","City BAnk","0","2018-07-08 17:20:53","2018-07-08 17:21:14");
INSERT INTO payout_settings VALUES("20","15","3","parvez.techvill@gmail.com","","","","","","","","","0","2018-07-08 17:55:31","2018-07-08 17:55:31");
INSERT INTO payout_settings VALUES("21","31","3","parvez.techvill@gmail.com","","","","","","","","","0","2018-07-08 18:45:17","2018-07-08 18:45:17");
INSERT INTO payout_settings VALUES("22","41","3","borna.techvill@gmail.com","","","","","","","","","0","2018-07-11 17:25:00","2018-07-11 17:25:00");
INSERT INTO payout_settings VALUES("23","41","6","","Borna","0212345678","Dhaka, Nikunjo","Dhaka","Dhaka, Nikunjo","30","Dhaka, Niku","BANK ASIA","0","2018-07-11 17:50:41","2018-07-11 17:50:41");
INSERT INTO payout_settings VALUES("24","20","6","","test","11111111","test","dhaka","dhaka","18","11111111","test","0","2018-07-16 14:50:58","2018-07-16 14:50:58");





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
INSERT INTO permission_role VALUES("101","1");
INSERT INTO permission_role VALUES("102","1");
INSERT INTO permission_role VALUES("103","1");
INSERT INTO permission_role VALUES("104","1");
INSERT INTO permission_role VALUES("105","1");
INSERT INTO permission_role VALUES("106","1");
INSERT INTO permission_role VALUES("107","1");
INSERT INTO permission_role VALUES("108","1");
INSERT INTO permission_role VALUES("110","1");
INSERT INTO permission_role VALUES("111","1");
INSERT INTO permission_role VALUES("112","1");
INSERT INTO permission_role VALUES("113","1");
INSERT INTO permission_role VALUES("114","1");
INSERT INTO permission_role VALUES("115","1");
INSERT INTO permission_role VALUES("116","1");
INSERT INTO permission_role VALUES("117","1");
INSERT INTO permission_role VALUES("118","1");
INSERT INTO permission_role VALUES("119","1");
INSERT INTO permission_role VALUES("120","1");
INSERT INTO permission_role VALUES("121","1");
INSERT INTO permission_role VALUES("122","1");
INSERT INTO permission_role VALUES("123","1");
INSERT INTO permission_role VALUES("124","1");
INSERT INTO permission_role VALUES("125","1");
INSERT INTO permission_role VALUES("126","1");
INSERT INTO permission_role VALUES("127","1");
INSERT INTO permission_role VALUES("128","1");
INSERT INTO permission_role VALUES("129","1");
INSERT INTO permission_role VALUES("130","1");
INSERT INTO permission_role VALUES("131","1");
INSERT INTO permission_role VALUES("132","1");
INSERT INTO permission_role VALUES("133","1");
INSERT INTO permission_role VALUES("137","1");
INSERT INTO permission_role VALUES("138","1");
INSERT INTO permission_role VALUES("139","1");
INSERT INTO permission_role VALUES("140","1");
INSERT INTO permission_role VALUES("145","1");
INSERT INTO permission_role VALUES("146","1");
INSERT INTO permission_role VALUES("147","1");
INSERT INTO permission_role VALUES("148","1");
INSERT INTO permission_role VALUES("109","2");
INSERT INTO permission_role VALUES("110","2");
INSERT INTO permission_role VALUES("111","2");
INSERT INTO permission_role VALUES("112","2");
INSERT INTO permission_role VALUES("113","2");
INSERT INTO permission_role VALUES("114","2");
INSERT INTO permission_role VALUES("115","2");
INSERT INTO permission_role VALUES("134","2");
INSERT INTO permission_role VALUES("135","2");
INSERT INTO permission_role VALUES("136","2");





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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

INSERT INTO permissions VALUES("1","User","view_user","View User","View User","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("2","User","add_user","Add User","Add User","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("3","User","edit_user","Edit User","Edit User","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("4","User","delete_user","Delete User","Delete User","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("5","Transaction","view_transaction","View Transaction","View Transaction","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("6","Transaction","add_transaction","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("7","Transaction","edit_transaction","Edit Transaction","Edit Transaction","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("8","Transaction","delete_transaction","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("9","Deposit","view_deposit","View Deposit","View Deposit","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("10","Deposit","add_deposit","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("11","Deposit","edit_deposit","Edit Deposit","Edit Deposit","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("12","Deposit","delete_deposit","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("13","Withdrawal","view_withdrawal","View Withdrawal","View Withdrawal","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("14","Withdrawal","add_withdrawal","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("15","Withdrawal","edit_withdrawal","Edit Withdrawal","Edit Withdrawal","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("16","Withdrawal","delete_withdrawal","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("17","Transfer","view_transfer","View Transfer","View Transfer","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("18","Transfer","add_transfer","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("19","Transfer","edit_transfer","Edit Transfer","Edit Transfer","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("20","Transfer","delete_transfer","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("21","Exchange","view_exchange","View Exchange","View Exchange","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("22","Exchange","add_exchange","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("23","Exchange","edit_exchange","Edit Exchange","Edit Exchange","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("24","Exchange","delete_exchange","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("25","Voucher","view_voucher","View Voucher","View Voucher","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("26","Voucher","add_voucher","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("27","Voucher","edit_voucher","Edit Voucher","Edit Voucher","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("28","Voucher","delete_voucher","","","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("29","Request Payment","view_request_payment","View Request Payment","View Request Payment","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("30","Request Payment","add_request_payment","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("31","Request Payment","edit_request_payment","Edit Request Payment","Edit Request Payment","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("32","Request Payment","delete_request_payment","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("33","Revenue","view_revenue","View Revenue","View Revenue","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("34","Revenue","add_revenue","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("35","Revenue","edit_revenue","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("36","Revenue","delete_revenue","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("37","Email Template","view_email_template","View Email Template","View Email Template","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("38","Email Template","add_email_template","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("39","Email Template","edit_email_template","Edit Email Template","Edit Email Template","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("40","Email Template","delete_email_template","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("41","Activity Log","view_activity_log","View Activity Log","View Activity Log","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("42","Activity Log","add_activity_log","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("43","Activity Log","edit_activity_log","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("44","Activity Log","delete_activity_log","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("45","General Setting","view_general_setting","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("46","General Setting","add_general_setting","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("47","General Setting","edit_general_setting","Edit General Setting","Edit General Setting","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("48","General Setting","delete_general_setting","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("49","Social Links","view_social_links","View Social Links","View Social Links","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("50","Social Links","add_social_links","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("51","Social Links","edit_social_links","Edit Social Links","Edit Social Links","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("52","Social Links","delete_social_links","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("53","API Credentials","view_api_credentials","View API Credentials","View API Credentials","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("54","API Credentials","add_api_credentials","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("55","API Credentials","edit_api_credentials","Edit API Credentials","Edit API Credentials","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("56","API Credentials","delete_api_credentials","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("57","Payment Methods","view_payment_methods","View Payment Methods","View Payment Methods","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("58","Payment Methods","add_payment_methods","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("59","Payment Methods","edit_payment_methods","Edit Payment Methods","Edit Payment Methods","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("60","Payment Methods","delete_payment_methods","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("61","Email Setting","view_email_setting","View Email Setting","View Email Setting","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("62","Email Setting","add_email_setting","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("63","Email Setting","edit_email_setting","Edit Email Setting","Edit Email Setting","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("64","Email Setting","delete_email_setting","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("65","Currency","view_currency","View Currency","View Currency","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("66","Currency","add_currency","Add Currency","Add Currency","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("67","Currency","edit_currency","Edit Currency","Edit Currency","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("68","Currency","delete_currency","Delete Currency","Delete Currency","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("69","Country","view_country","View Country","View Country","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("70","Country","add_country","Add Country","Add Country","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("71","Country","edit_country","Edit Country","Edit Country","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("72","Country","delete_country","Delete Country","Delete Country","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("73","Language","view_language","View Language","View Language","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("74","Language","add_language","Add Language","Add Language","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("75","Language","edit_language","Edit Language","Edit Language","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("76","Language","delete_language","Delete Language","Delete Language","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("77","Role","view_role","View Role","View Role","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("78","Role","add_role","Add Role","Add Role","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("79","Role","edit_role","Edit Role","Edit Role","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("80","Role","delete_role","Delete Role","Delete Role","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("85","Database Backup","view_database_backup","View Database Backup","View Database Backup","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("86","Database Backup","add_database_backup","Add Database Backup","Add Database Backup","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("87","Database Backup","edit_database_backup","Edit Database Backup","Edit Database Backup","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("88","Database Backup","delete_database_backup","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("89","Meta","view_meta","View Meta","View Meta","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("90","Meta","add_meta","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("91","Meta","edit_meta","Edit Meta","Edit Meta","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("92","Meta","delete_meta","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("93","Page","view_page","View Page","View Page","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("94","Page","add_page","Add Page","Add Page","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("95","Page","edit_page","Edit Page","Edit Page","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("96","Page","delete_page","Delete Page","Delete Page","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("97","Preference","view_preference","View Preference","View Preference","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("98","Preference","add_preference","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("99","Preference","edit_preference","Edit Preference","Edit Preference","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("100","Preference","delete_preference","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("101","Merchant","view_merchant","View Merchant","View Merchant","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("102","Merchant","add_merchant","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("103","Merchant","edit_merchant","Edit Merchant","Edit Merchant","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("104","Merchant","delete_merchant","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("105","Merchant Payment","view_merchant_payment","View Merchant Payment","View Merchant Payment","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("106","Merchant Payment","add_merchant_payment","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("107","Merchant Payment","edit_merchant_payment","Edit Merchant Payment","Edit Merchant Payment","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("108","Merchant Payment","delete_merchant_payment","","","Admin","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("109","Transaction","manage_transaction","Manage Transaction","Manage Transaction","User","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("110","Deposit","manage_deposit","Manage Deposit","Manage Deposit","User","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("111","Withdrawal","manage_withdrawal","Manage Withdrawal","Manage Withdrawal","User","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("112","Transfer","manage_transfer","Manage Transfer","Manage Transfer","User","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("113","Exchange","manage_exchange","Manage Exchange","Manage Exchange","User","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("114","Voucher","manage_voucher","Manage Voucher","Manage Voucher","User","2018-06-27 16:28:59","2018-06-27 16:28:59");
INSERT INTO permissions VALUES("115","Request Payment","manage_request_payment","Manage Request Payment","Manage Request Payment","User","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("116","Merchant","manage_merchant","Manage Merchant","Manage Merchant","User","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("117","Merchant Payment","manage_merchant_payment","Manage Merchant Payment","Manage Merchant Payment","User","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("118","User Group","view_group","View User Group","View User Group","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("119","User Group","add_group","Add User Group","Add User Group","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("120","User Group","edit_group","Edit User Group","Edit User Group","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("121","User Group","delete_group","Delete User Group","Delete User Group","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("122","Admins","view_admins","View Admins","View Admins","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("123","Admins","add_admin","Add Admin","Add Admin","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("124","Admins","edit_admin","Edit Admin","Edit Admin","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("125","Admins","delete_admin","Delete Admin","Delete Admin","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("126","Disputes","view_disputes","View Disputes","View Disputes","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("127","Disputes","add_dispute","","","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("128","Disputes","edit_dispute","Edit Dispute","Edit Dispute","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("129","Disputes","delete_dispute","","","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("130","Tickets","view_tickets","View Tickets","View Tickets","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("131","Tickets","add_ticket","Add Ticket","Add Ticket","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("132","Tickets","edit_ticket","Edit Ticket","Edit Ticket","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("133","Tickets","delete_ticket","Delete Ticket","Delete Ticket","Admin","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("134","Dispute","manage_dispute","Manage Dispute","Manage Dispute","User","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("135","Ticket","manage_ticket","Manage Ticket","Manage Ticket","User","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("136","Settings","manage_setting","Manage Settings","Manage Settings","User","2018-06-27 16:29:00","2018-06-27 16:29:00");
INSERT INTO permissions VALUES("137","AppStore Credentials","view_appstore_credentials","View AppStore Credentials","View AppStore Credentials","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("138","AppStore Credentials","add_appstore_credentials","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("139","AppStore Credentials","edit_appstore_credentials","Edit AppStore Credentials","Edit AppStore Credentials","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("140","AppStore Credentials","delete_appstore_credentials","","","Admin","2018-06-27 16:28:58","2018-06-27 16:28:58");
INSERT INTO permissions VALUES("145","Merchant Groups","view_merchant_group","View Merchant Group","View Merchant Group","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("146","Merchant Groups","add_merchant_group","Add Merchant Group","Add Merchant Group","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("147","Merchant Groups","edit_merchant_group","Edit Merchant Group","Edit Merchant Group","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");
INSERT INTO permissions VALUES("148","Merchant Groups","delete_merchant_group","Delete Merchant Group","Delete Merchant Group","Admin","2018-06-27 16:28:57","2018-06-27 16:28:57");





CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO preferences VALUES("1","preference","row_per_page","25");
INSERT INTO preferences VALUES("2","preference","date_format","0");
INSERT INTO preferences VALUES("3","preference","date_sepa","-");
INSERT INTO preferences VALUES("4","preference","soft_name","Pay Money");
INSERT INTO preferences VALUES("5","company","site_short_name","PM");
INSERT INTO preferences VALUES("6","preference","percentage","2");
INSERT INTO preferences VALUES("7","preference","quantity","0");
INSERT INTO preferences VALUES("8","preference","date_format_type","yyyy-mm-dd");
INSERT INTO preferences VALUES("9","company","company_name","Pay Money");
INSERT INTO preferences VALUES("10","company","company_email","admin@techvill.net");
INSERT INTO preferences VALUES("11","company","dflt_lang","en");
INSERT INTO preferences VALUES("12","preference","default_money_format","&nbsp;&#36;");
INSERT INTO preferences VALUES("13","preference","money_format","before");
INSERT INTO preferences VALUES("14","preference","decimal_format_amount","2");
INSERT INTO preferences VALUES("15","preference","thousand_separator",".");
INSERT INTO preferences VALUES("16","preference","dflt_timezone","Asia/Dhaka");





CREATE TABLE IF NOT EXISTS `reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO reasons VALUES("1","I have not received the goods");
INSERT INTO reasons VALUES("2","Description does not match with product");
INSERT INTO reasons VALUES("3","wrong uuid");
INSERT INTO reasons VALUES("4","invalid transaction");





CREATE TABLE IF NOT EXISTS `request_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Payment Request)',
  `amount` double(10,2) DEFAULT '0.00',
  `accept_amount` double(10,2) DEFAULT '0.00',
  `email` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

INSERT INTO request_payments VALUES("1","5","10","12","3XSONKEPZVFEU","20.00","20.00","shakil.techvill@gmail.com","","","Test Notes","Success","2018-06-04 09:43:37","2018-06-04 12:01:16");
INSERT INTO request_payments VALUES("2","5","10","12","8GA4F3PSU6MMB","10.00","6.00","shakil.techvill@gmail.com","","","Test Notes goes here.","Success","2018-06-04 15:16:31","2018-06-04 15:20:35");
INSERT INTO request_payments VALUES("3","5","10","12","BY9AYR1URCIN6","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here.","Pending","2018-06-04 15:26:40","2018-06-04 15:26:40");
INSERT INTO request_payments VALUES("4","5","10","12","NYCKCNRS29BSP","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here.","Pending","2018-06-04 15:28:10","2018-06-04 15:28:10");
INSERT INTO request_payments VALUES("5","5","10","12","AGXCYJCPQNUGU","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here.","Pending","2018-06-04 15:28:19","2018-06-04 15:28:19");
INSERT INTO request_payments VALUES("6","5","10","12","HMGZANJFDMNDN","10.00","10.00","shakil.techvill@gmail.com","","","asdfdsafdsafdsa","Success","2018-06-04 15:29:01","2018-06-05 10:33:37");
INSERT INTO request_payments VALUES("7","5","10","12","WJXGSFX2TTEZP","100.00","6.00","shakil.techvill@gmail.com","","","Test Note goes here.","Success","2018-06-05 10:38:14","2018-06-05 10:38:59");
INSERT INTO request_payments VALUES("12","7","5","24","58GL6RAIJWEKW","100.00","0.00","aminul.techvill@gmail.com","","","need some money","Pending","2018-06-05 14:21:08","2018-06-05 14:21:08");
INSERT INTO request_payments VALUES("13","7","5","24","MFEMZFOKFWCHY","100.00","0.00","aminul.techvill@gmail.com","","","need some money","Pending","2018-06-05 14:21:18","2018-06-05 14:21:18");
INSERT INTO request_payments VALUES("14","5","10","12","IIR4HUURSRBPW","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:50:57","2018-06-06 09:50:57");
INSERT INTO request_payments VALUES("15","5","10","12","ZNNZLSTTOVCBH","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:51:03","2018-06-06 09:51:03");
INSERT INTO request_payments VALUES("16","5","10","12","LG4YYROQ38VNY","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:51:48","2018-06-06 09:51:48");
INSERT INTO request_payments VALUES("17","5","10","12","71RCDCEFI7XJF","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:51:57","2018-06-06 09:51:57");
INSERT INTO request_payments VALUES("18","5","10","12","JTVMAZYLGX7HN","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:52:28","2018-06-06 09:52:28");
INSERT INTO request_payments VALUES("19","5","10","12","4LLLAWAGAZTWG","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:53:39","2018-06-06 09:53:39");
INSERT INTO request_payments VALUES("20","5","10","12","MOUVDDCMPRN8T","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:55:10","2018-06-06 09:55:10");
INSERT INTO request_payments VALUES("21","5","10","12","IHLHX7TAPKL7V","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 09:59:32","2018-06-06 09:59:32");
INSERT INTO request_payments VALUES("22","5","10","12","LTXJXESLR2JIS","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 10:01:34","2018-06-06 10:01:34");
INSERT INTO request_payments VALUES("23","5","10","12","ILFKIFD3L91TL","10.00","10.00","shakil.techvill@gmail.com","","","Test Notes goes here","Success","2018-06-06 10:04:01","2018-06-06 10:07:39");
INSERT INTO request_payments VALUES("24","5","10","12","KI2ID2ENZNFXY","10.00","0.00","shakil.techvill@gmail.com","","","Test Notes goes here","Pending","2018-06-06 10:15:57","2018-06-06 10:15:57");
INSERT INTO request_payments VALUES("25","5","10","12","ITZMORZBVAZYM","3.00","0.00","shakil.techvill@gmail.com","","","Test","Pending","2018-06-07 10:22:29","2018-06-07 10:22:29");
INSERT INTO request_payments VALUES("26","5","10","12","LPYI6PSYOESVO","3.00","0.00","shakil.techvill@gmail.com","","","Test","Pending","2018-06-07 10:32:55","2018-06-07 10:32:55");
INSERT INTO request_payments VALUES("27","10","","12","NUQYPZMT7QJLI","3.00","0.00","admin@techvill.net","","","1","Pending","2018-06-07 10:37:09","2018-06-07 10:37:09");
INSERT INTO request_payments VALUES("28","10","5","12","KFMMZLIF6LRFT","3.00","0.00","aminul.techvill@gmail.com","","","1","Pending","2018-06-07 10:37:39","2018-06-07 12:14:34");
INSERT INTO request_payments VALUES("29","10","5","12","BGOLTE11HR5RK","3.00","6.00","aminul.techvill@gmail.com","","","1","Success","2018-06-07 10:42:06","2018-06-07 12:16:19");
INSERT INTO request_payments VALUES("30","15","6","12","VHY1OI8JLWUYN","50.00","0.00","shahin.techvill@gmail.com","","","Test","Pending","2018-06-07 14:01:31","2018-06-07 14:01:31");
INSERT INTO request_payments VALUES("31","15","20","12","YINIDBXCYUHTP","199.00","0.00","parvez.agvbd@gmail.com","","","yyyyy","Pending","2018-06-07 14:35:33","2018-06-07 14:35:33");
INSERT INTO request_payments VALUES("32","15","20","12","4FGPR6HWNQVSK","199.00","0.00","parvez.agvbd@gmail.com","","","yyyyy","Pending","2018-06-07 14:37:03","2018-06-07 14:37:03");
INSERT INTO request_payments VALUES("33","15","20","12","COZOPQALDPMGU","199.00","0.00","parvez.agvbd@gmail.com","","","yyyyy","Pending","2018-06-07 14:38:06","2018-06-07 14:38:06");
INSERT INTO request_payments VALUES("34","15","20","12","JUWON0XS10WNT","199.00","0.00","parvez.agvbd@gmail.com","","","yyyyy","Pending","2018-06-07 14:39:51","2018-06-07 14:39:51");
INSERT INTO request_payments VALUES("35","20","15","12","HX9CLQ2MAIBLS","99.00","0.00","parvez.techvill@gmail.com","","","99","Pending","2018-06-07 14:43:08","2018-06-07 14:43:08");
INSERT INTO request_payments VALUES("36","20","15","12","IGPDSRS2F8ZKN","99.00","0.00","parvez.techvill@gmail.com","","","99","Pending","2018-06-07 14:43:17","2018-06-07 14:43:17");
INSERT INTO request_payments VALUES("37","20","15","12","BSW17SN6C5IQV","99.00","0.00","parvez.techvill@gmail.com","","","99","Pending","2018-06-07 14:43:22","2018-06-07 14:43:22");
INSERT INTO request_payments VALUES("38","20","15","12","FI6BU2MMJEFK9","99.00","99.00","parvez.techvill@gmail.com","","","99","Success","2018-06-07 14:44:31","2018-06-07 14:51:03");
INSERT INTO request_payments VALUES("39","20","15","12","LL6OLQDJ42H4A","77.00","77.00","parvez.techvill@gmail.com","","","77","Success","2018-06-07 15:07:56","2018-06-07 15:08:22");
INSERT INTO request_payments VALUES("40","24","29","26","AHDBZKM6RYPEX","20.00","0.00","mahfuzasinthy@gmail.com","","","test","Blocked","2018-06-10 12:35:49","2018-06-10 15:17:01");
INSERT INTO request_payments VALUES("41","24","29","14","DBUT00QWJUIZQ","10.00","0.00","mahfuzasinthy@gmail.com","","","Give 10 EUR","Pending","2018-06-10 15:27:17","2018-06-10 15:27:17");
INSERT INTO request_payments VALUES("42","24","29","14","FSRESYZMS7X58","2.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-06-10 15:27:46","2018-06-10 15:27:46");
INSERT INTO request_payments VALUES("43","24","29","20","Z6GVATHFGALWR","1.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-06-10 15:29:01","2018-06-10 15:29:01");
INSERT INTO request_payments VALUES("44","24","5","23","3NMXDK1XXEUU7","3.00","0.00","aminul.techvill@gmail.com","","","test","Pending","2018-06-10 15:33:59","2018-06-10 15:33:59");
INSERT INTO request_payments VALUES("45","5","","12","TBKNSKKUE1MHG","23.00","0.00","ashraf.techvill@gmail.com","","","sdasdafsda","Pending","2018-06-10 15:41:34","2018-06-10 15:41:34");
INSERT INTO request_payments VALUES("46","24","29","19","FFBZDY55MDH2Y","5.00","0.00","mahfuzasinthy@gmail.com","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Pending","2018-06-11 11:27:24","2018-06-11 11:27:24");
INSERT INTO request_payments VALUES("47","24","29","12","RFZYV4AW6EISL","5.00","6.00","mahfuzasinthy@gmail.com","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Success","2018-06-11 11:52:11","2018-06-11 12:00:54");
INSERT INTO request_payments VALUES("48","24","29","12","31YTEMEDRGXWH","10.00","0.00","mahfuzasinthy@gmail.com","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Pending","2018-06-11 12:06:26","2018-06-11 12:06:26");
INSERT INTO request_payments VALUES("49","24","29","12","OCFVHJHZZU4CQ","2.00","8.00","mahfuzasinthy@gmail.com","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Success","2018-06-11 12:13:42","2018-06-11 12:15:53");
INSERT INTO request_payments VALUES("50","24","29","14","OJED7FSW4VGGN","5.00","0.00","mahfuzasinthy@gmail.com","","","after sending request","Pending","2018-06-11 12:24:43","2018-06-11 12:24:43");
INSERT INTO request_payments VALUES("51","24","29","16","1UWBCNSRNLZZF","5.00","5.00","mahfuzasinthy@gmail.com","","","test","Blocked","2018-06-11 12:26:12","2018-07-03 19:02:14");
INSERT INTO request_payments VALUES("52","24","","15","YMUEG1M2WU2HF","100.00","0.00","irish@gmail.com","","","Please send money for buying books","Pending","2018-06-13 14:33:40","2018-06-22 18:14:43");
INSERT INTO request_payments VALUES("53","24","29","12","IHC7GOGTFZW3K","2.00","8.00","mahfuzasinthy@gmail.com","","","tt","Refund","2018-06-22 15:18:47","2018-06-22 15:18:47");
INSERT INTO request_payments VALUES("54","5","15","12","JABR11TZ3T3H7","10.00","7.00","parvez.techvill@gmail.com","","","Test Request","Success","2018-06-22 15:59:49","2018-06-22 16:00:55");
INSERT INTO request_payments VALUES("55","5","15","12","X08SWI5XKWYS4","10.00","7.00","parvez.techvill@gmail.com","","","Test Request","Refund","2018-06-22 16:16:28","2018-06-22 16:16:28");
INSERT INTO request_payments VALUES("56","20","15","12","OUCPELNHAWBOW","45.00","41.00","parvez.techvill@gmail.com","","","test","Success","2018-06-22 16:34:10","2018-06-22 18:15:42");
INSERT INTO request_payments VALUES("57","20","15","12","70H20UZQJZO88","45.00","41.00","parvez.techvill@gmail.com","","","test","Refund","2018-06-22 18:17:47","2018-06-22 18:17:47");
INSERT INTO request_payments VALUES("58","15","20","12","OOXSH09K1XGKN","23.00","17.00","parvez.agvbd@gmail.com","","","ggg","Success","2018-06-22 18:27:57","2018-06-22 19:12:29");
INSERT INTO request_payments VALUES("59","15","20","12","TQAPDTXREXFY3","23.00","17.00","parvez.agvbd@gmail.com","","","ggg","Refund","2018-06-22 19:15:05","2018-06-22 19:15:05");
INSERT INTO request_payments VALUES("60","20","15","12","T2PNB8KCSWMXJ","17.00","16.00","parvez.techvill@gmail.com","","","ttt","Success","2018-06-22 19:19:01","2018-06-22 19:19:38");
INSERT INTO request_payments VALUES("65","20","15","12","RCUSU7BB0JO0O","17.00","16.00","parvez.techvill@gmail.com","","","ttt","Refund","2018-06-23 12:50:48","2018-06-23 12:50:48");
INSERT INTO request_payments VALUES("66","15","20","12","X4GWKZA1NB8F5","41.00","37.00","parvez.agvbd@gmail.com","","","41","Success","2018-06-23 13:05:45","2018-06-23 13:26:16");
INSERT INTO request_payments VALUES("67","15","20","12","XDN46JZLDHTMP","41.00","37.00","parvez.agvbd@gmail.com","","","41","Refund","2018-06-23 13:38:59","2018-06-23 13:38:59");
INSERT INTO request_payments VALUES("68","15","20","12","HTKDPOXZEYK43","13.00","11.00","parvez.agvbd@gmail.com","","","test","Success","2018-06-23 13:41:17","2018-06-23 13:48:46");
INSERT INTO request_payments VALUES("70","15","20","12","VE5KYU7EPYATC","13.00","11.00","parvez.agvbd@gmail.com","","","test","Refund","2018-06-23 15:19:01","2018-06-23 15:19:01");
INSERT INTO request_payments VALUES("71","15","20","12","BKPVHHXGCLJVM","21.00","19.00","parvez.agvbd@gmail.com","","","tty","Success","2018-06-23 15:28:25","2018-06-23 15:28:48");
INSERT INTO request_payments VALUES("72","15","5","12","EGRKZW4ERZDKH","23.00","0.00","aminul.techvill@gmail.com","","","test","Pending","2018-06-23 15:29:30","2018-06-24 11:54:00");
INSERT INTO request_payments VALUES("73","7","24","12","MDR9FKZM2UBNA","20.00","0.00","borna.techvill@gmail.com","","","test","Pending","2018-06-24 13:49:05","2018-06-24 13:49:05");
INSERT INTO request_payments VALUES("74","5","10","12","WAOHSWDIW3QMP","3.00","0.00","shakil.techvill@gmail.com","","","asdfdsafdsa","Pending","2018-06-24 16:20:54","2018-06-24 16:20:54");
INSERT INTO request_payments VALUES("75","24","29","17","C4JIYVKLG4VQT","10.00","0.00","mahfuzasinthy@gmail.com","","","test request","Pending","2018-06-24 17:21:49","2018-06-24 17:21:49");
INSERT INTO request_payments VALUES("76","24","29","17","QQPTZKH5GUEUY","10.00","0.00","mahfuzasinthy@gmail.com","","","test request","Pending","2018-06-24 17:22:03","2018-06-24 17:22:03");
INSERT INTO request_payments VALUES("77","24","29","17","LTLEMZFO1AX7D","10.00","0.00","mahfuzasinthy@gmail.com","","","test request","Pending","2018-06-24 17:22:37","2018-06-24 17:22:37");
INSERT INTO request_payments VALUES("78","24","29","17","2RCXSJGAP5I7G","10.00","0.00","mahfuzasinthy@gmail.com","","","test request","Pending","2018-06-24 18:06:36","2018-06-24 18:06:36");
INSERT INTO request_payments VALUES("79","24","","12","XCNBH6W8FGAZF","10.00","0.00","admin@techvill.net","","","test request","Pending","2018-06-24 18:15:48","2018-06-24 18:15:48");
INSERT INTO request_payments VALUES("80","24","","12","P9NJ0OVLCIMYS","10.00","0.00","admin@techvill.net","","","test request","Pending","2018-06-24 18:15:52","2018-06-24 18:15:52");
INSERT INTO request_payments VALUES("81","24","","12","BGSVALCIN4BIZ","10.00","0.00","admin@techvill.net","","","test request","Pending","2018-06-24 18:16:30","2018-06-24 18:16:30");
INSERT INTO request_payments VALUES("82","24","29","12","JBNSDTUWAIJHC","10.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-06-25 15:36:14","2018-06-25 15:36:14");
INSERT INTO request_payments VALUES("83","4","24","12","IARP0JQT3BTP5","20.00","0.00","borna.techvill@gmail.com","","","asdf","Pending","2018-06-25 18:43:28","2018-06-25 18:43:28");
INSERT INTO request_payments VALUES("84","24","","14","ZYYVEWC27Z5QC","10.00","0.00","test@techvill.net","","","test","Blocked","2018-06-25 18:49:44","2018-06-25 18:49:58");
INSERT INTO request_payments VALUES("85","24","","12","OAGVWCQPKDBX4","5.00","0.00","test@techvill.net","","","test","Pending","2018-06-25 18:53:27","2018-06-25 18:53:27");
INSERT INTO request_payments VALUES("86","24","29","26","QFZ4NUVBMWPKH","5.00","0.00","mahfuzasinthy@gmail.com","","","request money for buying books","Pending","2018-06-26 17:00:20","2018-06-26 17:00:20");
INSERT INTO request_payments VALUES("87","33","29","19","7AG0EFWYIVAXY","2.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-06-26 17:04:31","2018-06-26 17:04:31");
INSERT INTO request_payments VALUES("88","33","29","14","9SQ97CSVRBVX4","2.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-06-27 16:41:18","2018-06-27 16:41:18");
INSERT INTO request_payments VALUES("89","4","24","12","5BVR7GPTJF0XQ","20.00","0.00","borna.techvill@gmail.com","","","20","Blocked","2018-06-28 16:39:34","2018-07-03 17:35:28");
INSERT INTO request_payments VALUES("90","4","24","12","OUNWXRMJ4MOBD","15.00","14.00","borna.techvill@gmail.com","","","15","Success","2018-06-28 16:44:14","2018-07-03 17:28:37");
INSERT INTO request_payments VALUES("91","35","29","18","EIK5L8HO4QOH2","5.00","0.00","mahfuzasinthy@gmail.com","","","Hello Mahfuza,\nI need some money for buying book.\nThank you","Blocked","2018-07-02 12:40:35","2018-07-02 12:43:00");
INSERT INTO request_payments VALUES("92","35","29","12","VJ7FODDFUEKDP","3.00","6.00","mahfuzasinthy@gmail.com","","","test request","Success","2018-07-02 12:49:21","2018-07-02 13:03:41");
INSERT INTO request_payments VALUES("93","35","29","12","YFBGYVG8C1L6G","10.00","8.00","mahfuzasinthy@gmail.com","","","hello","Success","2018-07-02 13:09:58","2018-07-02 13:26:04");
INSERT INTO request_payments VALUES("94","35","29","12","WRE7GG2YNBIIS","5.00","6.00","mahfuzasinthy@gmail.com","","","hi","Success","2018-07-02 13:45:25","2018-07-02 14:03:59");
INSERT INTO request_payments VALUES("95","35","29","12","EYURF6SHMZVYH","15.50","0.00","mahfuzasinthy@gmail.com","","","sgdfhdfghjgf","Pending","2018-07-02 15:53:12","2018-07-02 15:53:12");
INSERT INTO request_payments VALUES("96","4","24","12","SXJ2V0DDT5LDE","14.00","14.00","borna.techvill@gmail.com","","","asdf","Success","2018-07-02 16:13:51","2018-07-02 16:46:44");
INSERT INTO request_payments VALUES("97","35","29","12","MKBFZQVPAFMYU","3.00","6.00","mahfuzasinthy@gmail.com","","","fdjgfjghkgljhjlhklkhl;lkj","Success","2018-07-02 16:38:53","2018-07-03 12:13:51");
INSERT INTO request_payments VALUES("98","35","29","12","BN8VLXTTQXAFU","5.00","6.00","mahfuzasinthy@gmail.com","","","test","Success","2018-07-03 11:37:49","2018-07-03 11:39:04");
INSERT INTO request_payments VALUES("99","35","29","12","6S8D5TDYGGWKK","5.00","6.00","mahfuzasinthy@gmail.com","","","mbvnmvgh","Success","2018-07-03 12:03:48","2018-07-03 12:04:39");
INSERT INTO request_payments VALUES("100","35","29","16","M3ACT7AKZPEN8","5.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-07-03 17:20:30","2018-07-03 17:20:30");
INSERT INTO request_payments VALUES("101","35","29","18","NKKAONTYWKQUC","5.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-07-03 17:22:08","2018-07-03 17:22:08");
INSERT INTO request_payments VALUES("102","24","","13","BRDANQ8VWIZOS","10.00","0.00","lenin.techvill@gmail.com","","","test","Blocked","2018-07-03 17:58:42","2018-07-03 19:01:25");
INSERT INTO request_payments VALUES("103","31","15","12","XAHLRU5WTDZ3O","14.00","0.00","parvez.techvill@gmail.com","","","test","Pending","2018-07-04 12:07:24","2018-07-04 12:07:24");
INSERT INTO request_payments VALUES("104","31","15","12","A3JTW03N6YJJH","14.00","14.00","parvez.techvill@gmail.com","","","test","Success","2018-07-04 12:10:18","2018-07-04 12:11:27");
INSERT INTO request_payments VALUES("105","4","24","12","HSSJUFU5CL4NI","25.00","0.00","borna.techvill@gmail.com","","","321","Pending","2018-07-04 12:35:13","2018-07-04 12:35:13");
INSERT INTO request_payments VALUES("106","31","15","12","234WK4JZALOAK","124.00","124.00","parvez.techvill@gmail.com","","","test","Success","2018-07-05 18:33:04","2018-07-05 19:13:46");
INSERT INTO request_payments VALUES("107","31","15","12","QJWC5YXLNRTPC","13.00","13.00","parvez.techvill@gmail.com","","","ggg","Blocked","2018-07-05 19:04:55","2018-07-07 13:45:03");
INSERT INTO request_payments VALUES("108","31","15","26","UTE64DF7PAUEZ","12.00","12.00","parvez.techvill@gmail.com","","","dgggggggggggggg","Success","2018-07-05 19:48:53","2018-07-05 19:52:32");
INSERT INTO request_payments VALUES("109","35","29","26","JJ8MXA7EGJ7AQ","2.00","2.00","mahfuzasinthy@gmail.com","","","test","Blocked","2018-07-08 12:46:07","2018-07-08 12:53:42");
INSERT INTO request_payments VALUES("110","35","29","12","HWEFXK5NGNMAT","5.00","6.00","mahfuzasinthy@gmail.com","","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Vivamus non nulla in quam porttitor commodo. Sed ac elit euismod, dictum eros sed, molestie elit. Praesent luctus blandit quam vitae bibendum. Praesent tristique mollis facilisis. Cras rhoncus eros non dignissim ultrices. Quisque vehicula lorem non cursus aliquam. Nunc commodo massa a justo iaculis, blandit maximus ipsum pulvinar. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris sit amet nisi scelerisque, molestie magna vitae, aliquet lectus.","Success","2018-07-08 13:12:24","2018-07-08 13:21:19");
INSERT INTO request_payments VALUES("111","35","29","16","YQSTG1M4EUMYG","2.00","2.00","mahfuzasinthy@gmail.com","","","test","Success","2018-07-08 13:16:23","2018-07-08 13:41:39");
INSERT INTO request_payments VALUES("112","35","29","12","JO6ZETOTPYR3C","7.00","8.00","mahfuzasinthy@gmail.com","","","dfhfd","Success","2018-07-08 13:32:49","2018-07-08 13:33:09");
INSERT INTO request_payments VALUES("113","35","29","16","U2NEJBECMU3YR","5.00","6.00","mahfuzasinthy@gmail.com","","","test","Success","2018-07-08 13:34:30","2018-07-08 13:36:21");
INSERT INTO request_payments VALUES("114","35","29","16","UPVHAUL6I5LHG","2.00","2.00","mahfuzasinthy@gmail.com","","","test","Success","2018-07-08 13:42:12","2018-07-08 13:43:35");
INSERT INTO request_payments VALUES("115","35","29","12","OW0FZ9N7RCF6Q","2.00","6.00","mahfuzasinthy@gmail.com","","","tyrtyrt","Success","2018-07-08 14:17:36","2018-07-08 16:30:16");
INSERT INTO request_payments VALUES("116","35","29","12","RS4VD537DOPGI","10.00","0.00","mahfuzasinthy@gmail.com","","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Vivamus non nulla in quam porttitor commodo. Sed ac elit euismod, dictum eros sed, molestie elit. Praesent luctus blandit quam vitae bibendum. Praesent tristique mollis facilisis. Cras rhoncus eros non dignissim ultrices. Quisque vehicula lorem non cursus aliquam. Nunc commodo massa a justo iaculis, blandit maximus ipsum pulvinar. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris sit amet nisi scelerisque, molestie magna vitae, aliquet lectus.","Pending","2018-07-08 16:27:30","2018-07-08 16:27:30");
INSERT INTO request_payments VALUES("117","29","5","12","MYESGIQ7UNCQU","2.00","0.00","aminul.techvill@gmail.com","","","ffdgdf","Pending","2018-07-08 18:58:05","2018-07-08 18:58:05");
INSERT INTO request_payments VALUES("118","29","","12","MUABADEKCFRX6","5.00","0.00","mariamm@gmail.com","","","Test description.","Pending","2018-07-08 18:59:48","2018-07-08 18:59:48");
INSERT INTO request_payments VALUES("119","31","15","13","WI7BYEHCWPJPX","13.00","13.00","parvez.techvill@gmail.com","","","hello parvez","Success","2018-07-09 15:09:54","2018-07-09 15:11:23");
INSERT INTO request_payments VALUES("120","15","31","12","QRHJK9KSGJGXO","12.00","12.00","milon.techvill@gmail.com","","","12 usd to robi","Success","2018-07-09 15:50:00","2018-07-10 18:16:32");
INSERT INTO request_payments VALUES("121","31","39","12","UU14RWEQJGVSK","12.00","12.00","amit@gmail.com","","","amit","Success","2018-07-09 15:53:22","2018-07-09 16:07:09");
INSERT INTO request_payments VALUES("122","35","15","12","QGSDCPDGYYRKR","10.00","10.00","parvez.techvill@gmail.com","","","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ornare tortor ipsum, sed cursus eros efficitur a. Aenean cursus augue a placerat ornare. Aliquam erat volutpat. Proin pulvinar ex sit amet dignissim ultrices. Praesent vitae urna a tortor laoreet iaculis nec at odio. Mauris varius accumsan magna vitae molestie. Vestibulum ante ipsum primis in faucibus o","Success","2018-07-09 17:12:07","2018-07-10 15:30:50");
INSERT INTO request_payments VALUES("123","35","29","14","72PFPXY8LS6XU","20.00","0.00","mahfuzasinthy@gmail.com","","","test","Pending","2018-07-09 18:33:58","2018-07-09 18:33:58");
INSERT INTO request_payments VALUES("124","29","24","12","HU4JAUZLXBKIZ","5.00","0.00","borna.techvill@gmail.com","","","sdgdfsgdf","Blocked","2018-07-09 19:16:19","2018-07-11 11:41:52");
INSERT INTO request_payments VALUES("125","29","24","12","66I5LW5Q6Q8X7","5.00","0.00","borna.techvill@gmail.com","","","sdgdfsgdf","Pending","2018-07-09 19:16:23","2018-07-09 19:16:23");
INSERT INTO request_payments VALUES("126","15","","12","YMGWRWG0VQ2LQ","130.00","0.00","ashraf.techvill@gmail.com","","","ashraf.techvill@gmail.com","Pending","2018-07-10 15:12:31","2018-07-10 15:12:31");
INSERT INTO request_payments VALUES("127","35","29","14","8D77NV18KXUZD","15.00","0.00","mahfuzasinthy@gmail.com","","","oioo","Pending","2018-07-10 16:41:22","2018-07-10 16:41:22");
INSERT INTO request_payments VALUES("128","4","29","12","G5QPI4SEMN8PT","10.00","0.00","mahfuzasinthy@gmail.com","","","10","Pending","2018-07-10 16:54:19","2018-07-10 16:54:19");
INSERT INTO request_payments VALUES("129","4","29","13","FOC7SB4OQLFWN","25.00","0.00","mahfuzasinthy@gmail.com","","","25","Pending","2018-07-10 16:57:40","2018-07-10 16:57:40");
INSERT INTO request_payments VALUES("130","20","","12","X8RK0KCKTXI6V","33.00","0.00","ashraf.techvill@gmail.com","","","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Pending","2018-07-10 17:02:19","2018-07-11 19:26:38");
INSERT INTO request_payments VALUES("131","20","15","12","M9Q8VVD0YNVRL","33.00","33.00","parvez.techvill@gmail.com","","","33","Success","2018-07-10 18:14:01","2018-07-10 18:15:37");
INSERT INTO request_payments VALUES("132","41","29","31","1O3ZNMZJX3JTW","10.00","0.00","mahfuzasinthy@gmail.com","","","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? \noooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum","Blocked","2018-07-11 18:55:36","2018-07-11 18:56:42");
INSERT INTO request_payments VALUES("133","41","29","31","P8LSKWZFBFGIK","2.00","0.00","mahfuzasinthy@gmail.com","","","fwefew","Blocked","2018-07-11 19:02:34","2018-07-11 19:03:16");
INSERT INTO request_payments VALUES("134","20","15","12","9BXQGSSOQ9RG4","33.00","33.00","parvez.techvill@gmail.com","","","33","Refund","2018-07-11 19:09:49","2018-07-11 19:09:49");
INSERT INTO request_payments VALUES("135","20","15","12","EGFNBURH3K9OV","8.00","6.00","parvez.techvill@gmail.com","","","8","Success","2018-07-11 19:21:30","2018-07-11 19:25:02");
INSERT INTO request_payments VALUES("136","41","29","13","U6ZSVJQ4ZZWTY","5.00","5.00","mahfuzasinthy@gmail.com","","","ewgrewgreghehrthrthrt","Success","2018-07-11 19:22:13","2018-07-11 19:26:03");
INSERT INTO request_payments VALUES("137","41","29","13","SBUQQMM1PEF6S","5.00","5.00","mahfuzasinthy@gmail.com","","","ewgrewgreghehrthrthrt","Refund","2018-07-11 19:28:55","2018-07-11 19:28:55");
INSERT INTO request_payments VALUES("138","20","15","14","WMLKMFUF82DQB","9.00","0.00","parvez.techvill@gmail.com","","","9","Blocked","2018-07-11 19:37:39","2018-07-11 19:43:30");
INSERT INTO request_payments VALUES("139","20","15","14","NXUS9TU6KIRR7","11.00","0.00","parvez.techvill@gmail.com","","","11","Blocked","2018-07-11 19:48:20","2018-07-11 19:48:27");
INSERT INTO request_payments VALUES("140","20","15","12","LONSZWUOL2BW9","21.00","0.00","parvez.techvill@gmail.com","","","21","Blocked","2018-07-11 19:49:54","2018-07-11 19:50:03");
INSERT INTO request_payments VALUES("141","20","15","14","Y3BHXJU8IGMYD","31.00","31.00","parvez.techvill@gmail.com","","","31","Success","2018-07-11 19:51:02","2018-07-11 19:51:27");
INSERT INTO request_payments VALUES("142","15","20","12","UXYXMNCTNGOZE","10.00","10.00","parvez.agvbd@gmail.com","","","test","Success","2018-07-11 19:52:09","2018-07-11 19:53:48");
INSERT INTO request_payments VALUES("143","15","20","12","6X7321QDQMA6F","10.00","10.00","parvez.agvbd@gmail.com","","","test","Refund","2018-07-11 20:07:01","2018-07-11 20:07:01");
INSERT INTO request_payments VALUES("144","41","","12","DW4ZRNV67HDWV","11.00","0.00","mm@gmail.com","","","cvnvn","Pending","2018-07-12 13:11:19","2018-07-12 13:11:19");
INSERT INTO request_payments VALUES("145","41","29","12","YCK6WVPQVHYKW","10.00","10.00","mahfuzasinthy@gmail.com","","","request payment","Success","2018-07-12 16:53:38","2018-07-12 16:54:43");
INSERT INTO request_payments VALUES("146","41","29","12","89GHCBUOBLSL0","10.00","10.00","mahfuzasinthy@gmail.com","","","tests","Success","2018-07-12 16:57:42","2018-07-12 16:58:29");
INSERT INTO request_payments VALUES("147","41","29","12","IVPKG5FLKYUV7","10.00","10.00","mahfuzasinthy@gmail.com","","","tests","Refund","2018-07-12 17:00:56","2018-07-12 17:00:56");
INSERT INTO request_payments VALUES("148","15","20","12","3FZYZDLAM0IRC","1000.00","0.00","parvez.agvbd@gmail.com","","","1000","Pending","2018-07-12 17:12:46","2018-07-12 17:12:46");
INSERT INTO request_payments VALUES("149","41","29","12","PM0WQKHJ8I6MT","5.00","0.00","mahfuzasinthy@gmail.com","","","vcv","Pending","2018-07-12 17:16:25","2018-07-12 17:19:20");
INSERT INTO request_payments VALUES("150","15","20","12","ORCNSR5FNSPYI","30.00","0.00","parvez.agvbd@gmail.com","","","30","Blocked","2018-07-12 17:34:35","2018-07-12 17:37:33");
INSERT INTO request_payments VALUES("151","15","20","12","6KQPOTEYLA84L","11.00","0.00","parvez.agvbd@gmail.com","","","11","Blocked","2018-07-12 17:39:42","2018-07-12 17:40:17");
INSERT INTO request_payments VALUES("152","20","15","12","B6ZCD77GUJ5NW","33.00","0.00","parvez.techvill@gmail.com","","","33","Blocked","2018-07-12 18:03:56","2018-07-12 18:05:29");
INSERT INTO request_payments VALUES("153","15","20","12","MS52RFVRUDXHZ","21.00","0.00","parvez.agvbd@gmail.com","","","21","Blocked","2018-07-12 18:10:41","2018-07-12 18:14:24");
INSERT INTO request_payments VALUES("154","20","15","12","WKW3QG14TJQLR","31.00","0.00","parvez.techvill@gmail.com","","","31","Blocked","2018-07-12 18:17:46","2018-07-12 18:18:08");
INSERT INTO request_payments VALUES("155","20","15","14","EHNA6TRAISHFJ","7.00","0.00","parvez.techvill@gmail.com","","","7","Blocked","2018-07-12 18:25:10","2018-07-12 18:25:22");
INSERT INTO request_payments VALUES("156","15","20","12","KDGBPRZKQOB4G","13.00","0.00","parvez.agvbd@gmail.com","","","13","Blocked","2018-07-12 18:40:13","2018-07-12 18:41:20");
INSERT INTO request_payments VALUES("157","15","20","14","DZ6VLEV2T9SYB","30000.00","0.00","parvez.agvbd@gmail.com","","","30000","Blocked","2018-07-12 18:40:50","2018-07-12 18:41:13");
INSERT INTO request_payments VALUES("158","15","20","14","DWCPMFDH6TTHW","25000.00","25000.00","parvez.agvbd@gmail.com","","","25000","Success","2018-07-12 18:42:57","2018-07-12 18:46:18");
INSERT INTO request_payments VALUES("159","15","20","12","ORES3OG2JILWL","1000.00","0.00","parvez.agvbd@gmail.com","","","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum culpa tempora deleniti voluptates repudiandae consequatur, quam ipsum harum saepe dignissimos, obcaecati modi aperiam illo distinctio ut, ipsa ducimus illum aliquam eveniet voluptatum enim, doloremque error. Nihil temporibus asperiores deserunt suscipit, ad itaque magni commodi atus est accusantium, sequi quibusdam, omnis at sed ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttuuuuuuuuu","Pending","2018-07-15 10:43:57","2018-07-15 10:43:57");
INSERT INTO request_payments VALUES("160","35","29","16","BDZXJ6QYS1OYW","10.00","0.00","mahfuzasinthy@gmail.com","","","gdfgdfsg","Blocked","2018-07-15 11:57:07","2018-07-15 11:57:21");
INSERT INTO request_payments VALUES("161","35","29","16","YEC0TL3MH4AEZ","10.00","10.00","mahfuzasinthy@gmail.com","","","wfewf","Success","2018-07-15 11:58:14","2018-07-15 11:58:39");
INSERT INTO request_payments VALUES("162","35","29","16","PZ0UY4FUASSMB","10.00","10.00","mahfuzasinthy@gmail.com","","","wfewf","Blocked","2018-07-15 12:01:34","2018-07-15 12:02:40");
INSERT INTO request_payments VALUES("163","35","29","12","DCQY6NI7URADY","5.00","7.00","mahfuzasinthy@gmail.com","","","hghk","Success","2018-07-15 12:04:48","2018-07-15 12:11:33");
INSERT INTO request_payments VALUES("164","35","29","12","EIYQ9Z0Z5NRW6","5.00","7.00","mahfuzasinthy@gmail.com","","","hghk","Refund","2018-07-15 12:17:07","2018-07-15 12:17:07");
INSERT INTO request_payments VALUES("165","29","35","12","TMHUHRZMOMWL9","10000.00","0.00","test@gmail.com","","","fhdgfhdgfhgf","Pending","2018-07-15 13:49:51","2018-07-15 13:49:51");
INSERT INTO request_payments VALUES("166","15","20","14","94E96EEBNM9YQ","40000.00","10000.00","parvez.agvbd@gmail.com","","","40000","Success","2018-07-16 15:07:19","2018-07-16 15:13:12");
INSERT INTO request_payments VALUES("167","20","15","12","C1LXK3B2X6BPU","3000.00","1000.00","parvez.techvill@gmail.com","","","3000","Success","2018-07-16 17:32:44","2018-07-16 17:34:13");
INSERT INTO request_payments VALUES("168","20","15","12","9S890JU4EOWTR","3000.00","3000.00","parvez.techvill@gmail.com","","","3000","Success","2018-07-16 17:33:35","2018-07-16 17:34:39");
INSERT INTO request_payments VALUES("169","20","15","12","OSCA00ATA3QV9","3000.00","3000.00","parvez.techvill@gmail.com","","","3000","Refund","2018-07-18 15:12:07","2018-07-18 15:12:07");
INSERT INTO request_payments VALUES("170","20","15","12","H1EL7PYBQHSHM","15.00","0.00","parvez.techvill@gmail.com","","","15","Pending","2018-07-18 18:11:59","2018-07-18 18:11:59");
INSERT INTO request_payments VALUES("171","15","20","12","SS84DB4ETHQ2Y","11.00","11.00","parvez.agvbd@gmail.com","","","11","Success","2018-07-19 12:42:24","2018-07-19 12:42:40");
INSERT INTO request_payments VALUES("172","15","20","12","GZRRPIXC20UYJ","15.00","0.00","parvez.agvbd@gmail.com","","","15","Pending","2018-07-19 14:55:08","2018-07-19 14:55:08");
INSERT INTO request_payments VALUES("173","15","20","12","KCAULLLTTEWGN","15.00","15.00","parvez.agvbd@gmail.com","","","15","Success","2018-07-19 14:55:12","2018-07-19 14:56:01");





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
INSERT INTO role_user VALUES("4","2","User");
INSERT INTO role_user VALUES("5","2","User");
INSERT INTO role_user VALUES("6","2","User");
INSERT INTO role_user VALUES("7","2","User");
INSERT INTO role_user VALUES("8","6","Admin");
INSERT INTO role_user VALUES("10","2","User");
INSERT INTO role_user VALUES("10","6","Admin");
INSERT INTO role_user VALUES("14","5","User");
INSERT INTO role_user VALUES("14","12","Admin");
INSERT INTO role_user VALUES("15","2","User");
INSERT INTO role_user VALUES("16","6","Admin");
INSERT INTO role_user VALUES("17","6","Admin");
INSERT INTO role_user VALUES("20","2","User");
INSERT INTO role_user VALUES("21","2","User");
INSERT INTO role_user VALUES("22","2","User");
INSERT INTO role_user VALUES("24","2","User");
INSERT INTO role_user VALUES("29","2","User");
INSERT INTO role_user VALUES("31","2","User");
INSERT INTO role_user VALUES("33","2","User");
INSERT INTO role_user VALUES("35","2","User");
INSERT INTO role_user VALUES("36","2","User");
INSERT INTO role_user VALUES("37","2","User");
INSERT INTO role_user VALUES("38","4","User");
INSERT INTO role_user VALUES("39","8","User");
INSERT INTO role_user VALUES("40","2","User");
INSERT INTO role_user VALUES("41","2","User");
INSERT INTO role_user VALUES("42","2","User");
INSERT INTO role_user VALUES("43","2","User");
INSERT INTO role_user VALUES("45","2","User");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` enum('No','Yes') DEFAULT 'No',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO roles VALUES("1","admin","Admin","Admin","Admin","2018-05-08 12:17:13","2018-05-08 12:17:13","No");
INSERT INTO roles VALUES("2","Default User","Default User","Default User","User","2018-05-08 12:17:13","2018-07-08 12:42:56","Yes");
INSERT INTO roles VALUES("4","test user","test user","test user","User","2018-05-21 08:41:27","2018-07-02 13:29:22","No");
INSERT INTO roles VALUES("5","User Role","User Role","User Role","User","2018-06-04 09:55:14","2018-07-02 13:31:39","No");
INSERT INTO roles VALUES("6","customer","customer","customer","Admin","2018-06-04 10:05:33","2018-06-04 10:05:33","No");
INSERT INTO roles VALUES("8","admin","admin","admin","User","2018-07-11 11:41:22","2018-07-11 11:41:22","No");
INSERT INTO roles VALUES("9","Default User","Default User","Default User","Admin","2018-07-11 11:45:16","2018-07-11 11:45:16","No");
INSERT INTO roles VALUES("10","Test user","Test user","Test user","Admin","2018-07-11 12:14:30","2018-07-11 12:14:30","No");
INSERT INTO roles VALUES("11","milon","milon","milon","User","2018-07-11 12:22:45","2018-07-11 12:22:45","No");
INSERT INTO roles VALUES("12","milons","milons","milons","Admin","2018-07-11 12:23:43","2018-07-11 12:44:51","No");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

INSERT INTO settings VALUES("42","name","Pay Money","general");
INSERT INTO settings VALUES("43","logo","1532175849_logo.png","general");
INSERT INTO settings VALUES("44","favicon","1530689937_favicon.png","general");
INSERT INTO settings VALUES("45","head_code","Pay Money","general");
INSERT INTO settings VALUES("46","default_currency","12","general");
INSERT INTO settings VALUES("47","default_language","1","general");
INSERT INTO settings VALUES("49","client_id","AXxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk","PayPal");
INSERT INTO settings VALUES("50","client_secret","EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80","PayPal");
INSERT INTO settings VALUES("51","signature","AFcWxV21C7fd0v3bYYYRCpSSRl31ABayz5pdk84jno7.Udj6-U8ffwbT","PayPal");
INSERT INTO settings VALUES("52","mode","sandbox","PayPal");
INSERT INTO settings VALUES("53","publishable","pk_test_c2TDWXsjPkimdM8PIltO6d8H","Stripe");
INSERT INTO settings VALUES("54","secret","sk_test_UWTgGYIdj8igmbVMgTi0ILPm","Stripe");
INSERT INTO settings VALUES("55","driver","sendmail","email");
INSERT INTO settings VALUES("56","host","mail.techvill.net","email");
INSERT INTO settings VALUES("57","port","587","email");
INSERT INTO settings VALUES("58","from_address","stockpile@techvill.net","email");
INSERT INTO settings VALUES("59","from_name","Pay Money","email");
INSERT INTO settings VALUES("60","encryption","tls","email");
INSERT INTO settings VALUES("61","username","stockpile@techvill.net","email");
INSERT INTO settings VALUES("62","password","nT4HD2XEdRUX","email");
INSERT INTO settings VALUES("71","site_key","6LevSFYUAAAAACNxgrCGb3t7Vm6aED2eOtVdL7VN","recaptcha");
INSERT INTO settings VALUES("72","secret_key","6LevSFYUAAAAAE_ellY2piJ_72xlhObZp8A4Two0","recaptcha");
INSERT INTO settings VALUES("75","seller_id","901381377","2Checkout");
INSERT INTO settings VALUES("78","mode","sandbox","2Checkout");
INSERT INTO settings VALUES("79","mode","sandbox","PayUmoney");
INSERT INTO settings VALUES("80","key","rjQUPktU","PayUmoney");
INSERT INTO settings VALUES("81","salt","e5iIg1jwi8","PayUmoney");
INSERT INTO settings VALUES("82","merchant_id","95cb8822db315f03d9ec3206a3a368e6","Coinpayments");
INSERT INTO settings VALUES("83","private_key","Db7ddcee4Adcc425e6858F016027389189cA18f1c116BdE504fd67FdBe2aD571","Coinpayments");
INSERT INTO settings VALUES("84","public_key","5b72067ff7830fd8ba7dbbe94afc00831ea27a8139255f928b8171abf204f3b1","Coinpayments");
INSERT INTO settings VALUES("85","default_timezone","Asia/Dhaka","general");





CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO socials VALUES("1","facebook","<i class=\"ti-facebook\" aria-hidden=\"true\"></i>","");
INSERT INTO socials VALUES("2","google_plus","<i class=\"ti-google plus\" aria-hidden=\"true\"></i>","");
INSERT INTO socials VALUES("3","twitter","<i class=\"ti-twitter\" aria-hidden=\"true\"></i>","");
INSERT INTO socials VALUES("4","linkedin","<i class=\"ti-linkedin\" aria-hidden=\"true\"></i>","");
INSERT INTO socials VALUES("5","pinterest","<i class=\"ti-pinterest\" aria-hidden=\"true\"></i>","");
INSERT INTO socials VALUES("6","youtube","<i class=\"ti-youtube\" aria-hidden=\"true\"></i>","");
INSERT INTO socials VALUES("7","instagram","<i class=\"ti-instagram\" aria-hidden=\"true\"></i>","");





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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO ticket_replies VALUES("6","1","7","3","<p>Hello,</p>\n\n<p>What was the main issues ?&nbsp;</p>","2018-06-04 11:42:17","user");
INSERT INTO ticket_replies VALUES("14","1","4","5","test ticket","2018-06-05 12:09:12","admin");
INSERT INTO ticket_replies VALUES("15","1","7","8","<p>Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.</p>","2018-06-05 14:44:24","user");
INSERT INTO ticket_replies VALUES("16","1","15","20","<p>sdfsdfsdf</p>","2018-06-10 14:47:36","user");
INSERT INTO ticket_replies VALUES("17","1","4","34","replying on june 26","2018-06-26 17:36:52","admin");
INSERT INTO ticket_replies VALUES("18","1","41","39","<b>hello,</b><div>&nbsp;safsdgkdfhkdfhjkgfkmhj dfhgfhgfj   gfhfghjgfjgfj fgjfgjfjfjddhk ghkhdhdgkjdfhkgf gfjgfj<div>\n\nsafsdgkdfhkdfhjkgfkmhj dfhgfhgfj   gfhfghjgfjgfj fgjfgjfjfjddhk ghkhdhdgkjdfhkgf gfjgfj\n\n<br></div></div><div>\n\nsafsdgkdfhkdfhjkgfkmhj dfhgfhgfj   gfhfghjgfjgfj fgjfgjfjfjddhk ghkhdhdgkjdfhkgf gfjgfj\n\n<br></div><div><br></div><div><i>Thank you</i></div>","2018-07-12 17:30:21","admin");
INSERT INTO ticket_replies VALUES("19","1","41","39","Hello, \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi feugiat pharetra tincidunt. Nulla quis purus tincidunt, bibendum velit et, rutrum nulla. Duis malesuada ornare nunc, nec fringilla nulla sollicitudin ac. Nam venenatis tincidunt quam in egestas. Sed imperdiet mollis ipsum, a mollis est auctor vel. Nulla augue mi,","2018-07-12 17:31:23","user");
INSERT INTO ticket_replies VALUES("20","1","41","39","Hello user,\nThis ticket is hold from now\n\nThank you..","2018-07-12 17:34:10","admin");
INSERT INTO ticket_replies VALUES("21","1","41","39","mmmmmmmmmmmmmmmmmmmmmm","2018-07-12 17:34:56","user");
INSERT INTO ticket_replies VALUES("22","1","41","39","nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn","2018-07-12 17:35:13","admin");
INSERT INTO ticket_replies VALUES("24","1","15","37","adasd23123","2018-07-12 18:28:22","user");
INSERT INTO ticket_replies VALUES("25","1","15","41","asdasdasdasdasd","2018-07-12 18:34:51","user");
INSERT INTO ticket_replies VALUES("26","1","15","41","asdasdasdasdasdasdasdassadasd","2018-07-12 18:34:57","user");
INSERT INTO ticket_replies VALUES("27","1","15","41","Lorem ipsum dolor sit amet, consectetur adipisicing elit. ","2018-07-12 18:35:12","user");
INSERT INTO ticket_replies VALUES("29","1","33","43","hi...","2018-07-15 12:46:08","admin");
INSERT INTO ticket_replies VALUES("30","16","33","43","hhhjfdhgd","2018-07-15 12:47:55","user");
INSERT INTO ticket_replies VALUES("31","1","24","45","ghgfjhgfjg","2018-07-15 16:52:15","user");
INSERT INTO ticket_replies VALUES("32","1","15","47","ok","2018-07-16 13:37:42","user");
INSERT INTO ticket_replies VALUES("33","1","15","47","please jump again","2018-07-16 13:37:51","user");
INSERT INTO ticket_replies VALUES("34","1","15","47","jump jump jump","2018-07-16 13:39:31","user");
INSERT INTO ticket_replies VALUES("35","1","24","49","nvbnvbn","2018-07-19 15:04:23","user");





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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

INSERT INTO tickets VALUES("3","1","7","1","Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.","<p>Total Users<br />\nTotal Merchants<br />\nTotal Tickets<br />\nTotal Dispute</p>\n\n<p>Latest Tickets<br />\nLatest Dispute</p>","TIC-NUJNU9","Normal","2018-06-04 11:42:17","2018-06-04 11:41:15");
INSERT INTO tickets VALUES("5","2","4","3","Test ticket","Test ticket","TIC-RZTGC5","Low","2018-06-05 12:09:12","2018-06-05 12:08:24");
INSERT INTO tickets VALUES("6","1","7","1","Hosting service is down","<p>test</p>","TIC-IHRHCP","Low","","2018-06-05 14:34:22");
INSERT INTO tickets VALUES("7","1","7","1","Hosting service is down","<p>asdfasdf</p>","TIC-VTI0TD","Low","","2018-06-05 14:35:03");
INSERT INTO tickets VALUES("8","1","7","2","Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.","<p>Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.</p>\n\n<p>&nbsp;</p>\n\n<p>Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.</p>","TIC-5MLFEL","Low","2018-06-05 14:44:24","2018-06-05 14:43:51");
INSERT INTO tickets VALUES("12","1","7","1","Hosting service is down","<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>\n\n<p>Hosting service is downHosting service is down</p>","TIC-VQGMYV","Low","","2018-06-06 12:57:22");
INSERT INTO tickets VALUES("13","1","7","1","I dont find my purchase order once i edit it. Also items do not follow its order.","<p>I dont find my purchase order once i edit it. Also items do not follow its order.</p>\n\n<p>&nbsp;</p>\n\n<p>I dont find my purchase order once i edit it. Also items do not follow its order.</p>\n\n<p>&nbsp;</p>\n\n<p>I dont find my purchase order once i edit it. Also items do not follow its order.</p>","TIC-3QV8OQ","Low","","2018-06-07 14:26:02");
INSERT INTO tickets VALUES("14","1","7","1","I dont find my purchase order once i edit it. Also items do not follow its order.","<p>I dont find my purchase order once i edit it. Also items do not follow its order.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>I dont find my purchase order once i edit it. Also items do not follow its order.</strong></p>","TIC-TMCJFM","Low","","2018-06-07 14:26:22");
INSERT INTO tickets VALUES("15","1","24","1","New ticket","<p>New ticket</p>","TIC-NO6R4R","Low","","2018-06-10 10:15:09");
INSERT INTO tickets VALUES("16","1","15","1","Hello","<p>This is a ticket</p>","TIC-ZJVRX9","Low","","2018-06-10 10:32:30");
INSERT INTO tickets VALUES("17","1","15","1","dsfasdf","<p>asdf asdf</p>","TIC-2FNCYT","Low","","2018-06-10 10:33:24");
INSERT INTO tickets VALUES("18","1","24","1","Test","<p>gdfgdfh</p>","TIC-XJ4DOL","Low","","2018-06-10 11:14:41");
INSERT INTO tickets VALUES("19","1","15","1","dfgdfg","<p>dfgdgf</p>","TIC-10QFFA","Low","","2018-06-10 14:33:46");
INSERT INTO tickets VALUES("20","1","15","1","dsfsdf","<p>dsfsdfsdf</p>","TIC-HGXYOS","Low","2018-06-10 14:47:36","2018-06-10 14:34:52");
INSERT INTO tickets VALUES("21","1","15","1","ssssssssssss","<p>ffffffffffffff</p>","TIC-C1PQAK","Low","","2018-06-10 14:41:37");
INSERT INTO tickets VALUES("22","1","4","1","asdf","asdf","TIC-MLW4AX","Low","","2018-06-21 12:35:42");
INSERT INTO tickets VALUES("23","1","4","1","asfwer","wer","TIC-JJY0SE","Low","","2018-06-21 12:35:51");
INSERT INTO tickets VALUES("24","1","4","1","asdf","asdf","TIC-3LGC93","Normal","","2018-06-21 12:36:01");
INSERT INTO tickets VALUES("25","1","4","1","werwer","w3","TIC-D392XQ","High","","2018-06-21 12:36:11");
INSERT INTO tickets VALUES("26","1","4","1","asdf","asdf","TIC-HB35CA","Normal","","2018-06-21 12:36:20");
INSERT INTO tickets VALUES("27","1","4","1","asdf","asdf","TIC-JOEN0F","Normal","","2018-06-21 12:36:25");
INSERT INTO tickets VALUES("28","1","4","1","asdf","asdf","TIC-U0PXKI","Normal","","2018-06-21 12:36:28");
INSERT INTO tickets VALUES("29","1","4","1","asdf","asdf","TIC-ICZQUK","Normal","","2018-06-21 12:36:32");
INSERT INTO tickets VALUES("30","1","4","1","asdf","asdf","TIC-JCXHIB","Normal","","2018-06-21 12:36:36");
INSERT INTO tickets VALUES("31","1","4","1","asdf","asdf","TIC-SULXNF","Normal","","2018-06-21 12:36:39");
INSERT INTO tickets VALUES("32","1","4","1","asdf","asdf","TIC-6TYJQR","Normal","","2018-06-21 12:36:42");
INSERT INTO tickets VALUES("33","1","4","1","asdf","asdf","TIC-3N1VKI","Normal","","2018-06-21 12:36:46");
INSERT INTO tickets VALUES("34","1","4","2","asdf","asdf","TIC-5H89MS","Normal","2018-06-26 17:36:52","2018-06-21 12:36:49");
INSERT INTO tickets VALUES("35","1","35","1","Test","Test","TIC-IL50CM","Low","","2018-07-03 14:54:27");
INSERT INTO tickets VALUES("36","1","15","1","test ticket 1","test ticket 1","TIC-JTHQZR","Low","","2018-07-07 11:59:53");
INSERT INTO tickets VALUES("37","1","15","1","test ticket 1","ggg","TIC-GJ3RDP","Normal","2018-07-12 18:28:22","2018-07-07 12:05:39");
INSERT INTO tickets VALUES("38","1","35","1","Test","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Vivamus non nulla in quam porttitor commodo. Sed ac elit euismod, dictum eros sed, molestie elit. Praesent luctus blandit quam vitae bibendum. Praesent tristique mollis facilisis. Cras rhoncus eros non dignissim ultrices. Quisque vehicula lorem non cursus aliquam. Nunc commodo massa a justo iaculis, blandit maximus ipsum pulvinar. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris sit amet nisi scelerisque, molestie magna vitae, aliquet lectus.","TIC-UBBIZL","Normal","","2018-07-08 12:40:54");
INSERT INTO tickets VALUES("39","1","41","3","Test","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi feugiat pharetra tincidunt. Nulla quis purus tincidunt, bibendum velit et, rutrum nulla. Duis malesuada ornare nunc, nec fringilla nulla sollicitudin ac. Nam venenatis tincidunt quam in egestas. Sed imperdiet mollis ipsum, a mollis est auctor vel. Nulla augue mi, semper non aliquam eu, congue et magna. Cras ultrices arcu eros, a facilisis lacus pellentesque in. Etiam egestas a ipsum quis vulputate.","TIC-VPBU21","Low","2018-07-12 17:36:00","2018-07-12 17:24:43");
INSERT INTO tickets VALUES("40","1","15","1","parvez test ticket 1","parvez test ticket 1","TIC-YUV8AD","High","","2018-07-12 18:29:06");
INSERT INTO tickets VALUES("41","1","15","4","parvez test tkt 2","parvez test tkt 2","TIC-TLT2OQ","High","2018-07-12 18:35:12","2018-07-12 18:30:29");
INSERT INTO tickets VALUES("42","1","35","3","\"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it i","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo semper luctus. Donec vel ultricies mauris. Duis mi metus, pulvinar ut feugiat a, semper nec orci. Proin dolor nunc, pretium et risus nec, malesuada porta nisl. Duis feugiat, risus quis porta elementum, est tellus luctus ante, eu mollis arcu neque sit amet purus. Duis vehicula fermentum placerat. Sed id purus at augue fermentum blandit. Integer id leo a dolor lacinia scelerisque condimentum at metus. Quisque interdum interdum tincidunt. Suspendisse blandit dictum lorem ac faucibus.","TIC-JPPATL","High","2018-07-15 12:38:28","2018-07-15 12:36:12");
INSERT INTO tickets VALUES("43","16","33","1","Lorem Ipsum","<p>\n\n<p><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo semper luctus. Donec vel ultricies mauris. Duis mi metus, pulvinar ut feugiat a, semper nec orci. Proin dolor nunc, pretium et risus nec, malesuada porta nisl. Duis feugiat, risus quis porta elementum, est tellus luctus ante, eu mollis arcu neque sit amet purus. Duis vehicula fermentum placerat. Sed id purus at augue fermentum blandit. Integer id leo a dolor lacinia scelerisque condimentum at metus. Quisque interdum interdum tincidunt. Suspendisse blandit dictum lorem ac faucibus. Fusce egestas dui vitae nisl dictum, nec egestas ligula consectetur. Duis ac sapien ac neque egestas finibus vitae ut velit. Pellentesque ac ultricies erat. Integer lobortis vehicula nisi, non tincidunt nulla. Pellentesque purus odio, rutrum ac aliquam vitae, viverra ac velit.</b></p><p><i><u>Suspendisse accumsan bibendum elit. Cras sodales magna ac ligula blandit placerat. Nulla molestie pulvinar tempor. Donec nec risus dui. Nullam sagittis odio non justo consequat, dictum accumsan magna interdum. Pellentesque nulla arcu, ornare quis aliquam non, facilisis eget leo. Morbi vestibulum maximus purus in tristique. Quisque eleifend tellus ut convallis ultricies. Phasellus porta, nulla a lobortis vestibulum, nisi nibh facilisis nunc, vel condimentum tellus eros ac leo. Proin facilisis, dui eu pharetra pellentesque, purus sapien malesuada augue, id suscipit diam justo quis mauris.</u></i></p>\n\n<br></p>","TIC-2RTOSB","Normal","2018-07-15 12:47:55","2018-07-15 12:44:20");
INSERT INTO tickets VALUES("44","1","29","1","Test","gdfhdfhdfh","TIC-4ZO2X3","Normal","","2018-07-15 16:49:45");
INSERT INTO tickets VALUES("45","1","24","3","test","sdfgdfhdfhdfhgdf","TIC-DDPAQI","Low","2018-07-15 16:52:15","2018-07-15 16:51:53");
INSERT INTO tickets VALUES("46","1","15","1","test ticket july 16","test ticket july 16","TIC-PILTHF","Normal","","2018-07-16 13:36:45");
INSERT INTO tickets VALUES("47","1","15","1","jump","jump","TIC-DTF6SK","Low","2018-07-16 13:39:31","2018-07-16 13:37:35");
INSERT INTO tickets VALUES("48","1","24","1","testnnn","testnnn","TIC-PHRFVR","Low","","2018-07-19 15:04:00");
INSERT INTO tickets VALUES("49","1","24","1","jjj","jjjj","TIC-5YBW74","Low","2018-07-19 15:04:23","2018-07-19 15:04:16");





CREATE TABLE IF NOT EXISTS `time_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone` varchar(50) DEFAULT NULL,
  `gmt` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8;

INSERT INTO time_zones VALUES("1","Africa/Abidjan","0","","");
INSERT INTO time_zones VALUES("2","Africa/Accra","0","","");
INSERT INTO time_zones VALUES("3","Africa/Addis_Ababa","+3","","");
INSERT INTO time_zones VALUES("4","Africa/Algiers","+1","","");
INSERT INTO time_zones VALUES("5","Africa/Asmara","+3","","");
INSERT INTO time_zones VALUES("6","Africa/Bamako","0","","");
INSERT INTO time_zones VALUES("7","Africa/Bangui","+1","","");
INSERT INTO time_zones VALUES("8","Africa/Banjul","0","","");
INSERT INTO time_zones VALUES("9","Africa/Bissau","0","","");
INSERT INTO time_zones VALUES("10","Africa/Blantyre","+2","","");
INSERT INTO time_zones VALUES("11","Africa/Brazzaville","+1","","");
INSERT INTO time_zones VALUES("12","Africa/Bujumbura","+2","","");
INSERT INTO time_zones VALUES("13","Africa/Cairo","+2","","");
INSERT INTO time_zones VALUES("14","Africa/Casablanca","0","","");
INSERT INTO time_zones VALUES("15","Africa/Ceuta","1","","");
INSERT INTO time_zones VALUES("16","Africa/Conakry","0","","");
INSERT INTO time_zones VALUES("17","Africa/Dakar","0","","");
INSERT INTO time_zones VALUES("18","Africa/Dar_es_Salaam","+3","","");
INSERT INTO time_zones VALUES("19","Africa/Djibouti","+3","","");
INSERT INTO time_zones VALUES("20","Africa/Douala","+1","","");
INSERT INTO time_zones VALUES("21","Africa/El_Aaiun","0","","");
INSERT INTO time_zones VALUES("22","Africa/Freetown","0","","");
INSERT INTO time_zones VALUES("23","Africa/Gaborone","+2","","");
INSERT INTO time_zones VALUES("24","Africa/Harare","+2","","");
INSERT INTO time_zones VALUES("25","Africa/Johannesburg","+2","","");
INSERT INTO time_zones VALUES("26","Africa/Juba","+3","","");
INSERT INTO time_zones VALUES("27","Africa/Kampala","+3","","");
INSERT INTO time_zones VALUES("28","Africa/Khartoum","+2","","");
INSERT INTO time_zones VALUES("29","Africa/Kigali","+2","","");
INSERT INTO time_zones VALUES("30","Africa/Kinshasa","+1","","");
INSERT INTO time_zones VALUES("31","Africa/Lagos","+1","","");
INSERT INTO time_zones VALUES("32","Africa/Libreville","+1","","");
INSERT INTO time_zones VALUES("33","Africa/Lome","0","","");
INSERT INTO time_zones VALUES("34","Africa/Luanda","+1","","");
INSERT INTO time_zones VALUES("35","Africa/Lubumbashi","+2","","");
INSERT INTO time_zones VALUES("36","Africa/Lusaka","+2","","");
INSERT INTO time_zones VALUES("37","Africa/Malabo","+1","","");
INSERT INTO time_zones VALUES("38","Africa/Maputo","+2","","");
INSERT INTO time_zones VALUES("39","Africa/Maseru","+2","","");
INSERT INTO time_zones VALUES("40","Africa/Mbabane","+2","","");
INSERT INTO time_zones VALUES("41","Africa/Mogadishu","+3","","");
INSERT INTO time_zones VALUES("42","Africa/Monrovia","0","","");
INSERT INTO time_zones VALUES("43","Africa/Nairobi","+3","","");
INSERT INTO time_zones VALUES("44","Africa/Ndjamena","+1","","");
INSERT INTO time_zones VALUES("45","Africa/Niamey","+1","","");
INSERT INTO time_zones VALUES("46","Africa/Nouakchott","0","","");
INSERT INTO time_zones VALUES("47","Africa/Ouagadougou","0","","");
INSERT INTO time_zones VALUES("48","Africa/Porto-Novo","+1","","");
INSERT INTO time_zones VALUES("49","Africa/Sao_Tome","+1","","");
INSERT INTO time_zones VALUES("50","Africa/Tripoli","+2","","");
INSERT INTO time_zones VALUES("51","Africa/Tunis","+1","","");
INSERT INTO time_zones VALUES("52","Africa/Windhoek","+2","","");
INSERT INTO time_zones VALUES("53","America/Adak","-10","","");
INSERT INTO time_zones VALUES("54","America/Anchorage","-9","","");
INSERT INTO time_zones VALUES("55","America/Anguilla","-4","","");
INSERT INTO time_zones VALUES("56","America/Antigua","-4","","");
INSERT INTO time_zones VALUES("57","America/Araguaina","-3","","");
INSERT INTO time_zones VALUES("58","America/Argentina/Buenos_Aires","-3","","");
INSERT INTO time_zones VALUES("59","America/Argentina/Catamarca","-3","","");
INSERT INTO time_zones VALUES("60","America/Argentina/Cordoba","-3","","");
INSERT INTO time_zones VALUES("61","America/Argentina/Jujuy","-3","","");
INSERT INTO time_zones VALUES("62","America/Argentina/La_Rioja","-3","","");
INSERT INTO time_zones VALUES("63","America/Argentina/Mendoza","-3","","");
INSERT INTO time_zones VALUES("64","America/Argentina/Rio_Gallegos","-3","","");
INSERT INTO time_zones VALUES("65","America/Argentina/Salta","-3","","");
INSERT INTO time_zones VALUES("66","America/Argentina/San_Juan","-3","","");
INSERT INTO time_zones VALUES("67","America/Argentina/San_Luis","-3","","");
INSERT INTO time_zones VALUES("68","America/Argentina/Tucuman","-3","","");
INSERT INTO time_zones VALUES("69","America/Argentina/Ushuaia","-3","","");
INSERT INTO time_zones VALUES("70","America/Aruba","-4","","");
INSERT INTO time_zones VALUES("71","America/Asuncion","-4","","");
INSERT INTO time_zones VALUES("72","America/Atikokan","-5","","");
INSERT INTO time_zones VALUES("73","America/Bahia","-3","","");
INSERT INTO time_zones VALUES("74","America/Bahia_Banderas","-6","","");
INSERT INTO time_zones VALUES("75","America/Barbados","-4","","");
INSERT INTO time_zones VALUES("76","America/Belem","-3","","");
INSERT INTO time_zones VALUES("77","America/Belize","-6","","");
INSERT INTO time_zones VALUES("78","America/Blanc-Sablon","-4","","");
INSERT INTO time_zones VALUES("79","America/Boa_Vista","-4","","");
INSERT INTO time_zones VALUES("80","America/Bogota","-5","","");
INSERT INTO time_zones VALUES("81","America/Boise","-7","","");
INSERT INTO time_zones VALUES("82","America/Cambridge_Bay","-7","","");
INSERT INTO time_zones VALUES("83","America/Campo_Grande","-4","","");
INSERT INTO time_zones VALUES("84","America/Cancun","-5","","");
INSERT INTO time_zones VALUES("85","America/Caracas","-4","","");
INSERT INTO time_zones VALUES("86","America/Cayenne","-3","","");
INSERT INTO time_zones VALUES("87","America/Cayman","-5","","");
INSERT INTO time_zones VALUES("88","America/Chicago","-6","","");
INSERT INTO time_zones VALUES("89","America/Chihuahua","-7","","");
INSERT INTO time_zones VALUES("90","America/Costa_Rica","-6","","");
INSERT INTO time_zones VALUES("91","America/Creston","-7","","");
INSERT INTO time_zones VALUES("92","America/Cuiaba","-4","","");
INSERT INTO time_zones VALUES("93","America/Curacao","-4","","");
INSERT INTO time_zones VALUES("94","America/Danmarkshavn","0","","");
INSERT INTO time_zones VALUES("95","America/Dawson","-8","","");
INSERT INTO time_zones VALUES("96","America/Dawson_Creek","-7","","");
INSERT INTO time_zones VALUES("97","America/Denver","-7","","");
INSERT INTO time_zones VALUES("98","America/Detroit","-5","","");
INSERT INTO time_zones VALUES("99","America/Dominica","-4","","");
INSERT INTO time_zones VALUES("100","America/Edmonton","","","");
INSERT INTO time_zones VALUES("101","America/Eirunepe","","","");
INSERT INTO time_zones VALUES("102","America/El_Salvador","","","");
INSERT INTO time_zones VALUES("103","America/Fort_Nelson","","","");
INSERT INTO time_zones VALUES("104","America/Fortaleza","","","");
INSERT INTO time_zones VALUES("105","America/Glace_Bay","","","");
INSERT INTO time_zones VALUES("106","America/Godthab","","","");
INSERT INTO time_zones VALUES("107","America/Goose_Bay","","","");
INSERT INTO time_zones VALUES("108","America/Grand_Turk","","","");
INSERT INTO time_zones VALUES("109","America/Grenada","","","");
INSERT INTO time_zones VALUES("110","America/Guadeloupe","","","");
INSERT INTO time_zones VALUES("111","America/Guatemala","","","");
INSERT INTO time_zones VALUES("112","America/Guayaquil","","","");
INSERT INTO time_zones VALUES("113","America/Guyana","","","");
INSERT INTO time_zones VALUES("114","America/Halifax","","","");
INSERT INTO time_zones VALUES("115","America/Havana","","","");
INSERT INTO time_zones VALUES("116","America/Hermosillo","","","");
INSERT INTO time_zones VALUES("117","America/Indiana/Indianapolis","","","");
INSERT INTO time_zones VALUES("118","America/Indiana/Knox","","","");
INSERT INTO time_zones VALUES("119","America/Indiana/Marengo","","","");
INSERT INTO time_zones VALUES("120","America/Indiana/Petersburg","","","");
INSERT INTO time_zones VALUES("121","America/Indiana/Tell_City","","","");
INSERT INTO time_zones VALUES("122","America/Indiana/Vevay","","","");
INSERT INTO time_zones VALUES("123","America/Indiana/Vincennes","","","");
INSERT INTO time_zones VALUES("124","America/Indiana/Winamac","","","");
INSERT INTO time_zones VALUES("125","America/Inuvik","","","");
INSERT INTO time_zones VALUES("126","America/Iqaluit","","","");
INSERT INTO time_zones VALUES("127","America/Jamaica","","","");
INSERT INTO time_zones VALUES("128","America/Juneau","","","");
INSERT INTO time_zones VALUES("129","America/Kentucky/Louisville","","","");
INSERT INTO time_zones VALUES("130","America/Kentucky/Monticello","","","");
INSERT INTO time_zones VALUES("131","America/Kralendijk","","","");
INSERT INTO time_zones VALUES("132","America/La_Paz","","","");
INSERT INTO time_zones VALUES("133","America/Lima","","","");
INSERT INTO time_zones VALUES("134","America/Los_Angeles","","","");
INSERT INTO time_zones VALUES("135","America/Lower_Princes","","","");
INSERT INTO time_zones VALUES("136","America/Maceio","","","");
INSERT INTO time_zones VALUES("137","America/Managua","","","");
INSERT INTO time_zones VALUES("138","America/Manaus","","","");
INSERT INTO time_zones VALUES("139","America/Marigot","","","");
INSERT INTO time_zones VALUES("140","America/Martinique","","","");
INSERT INTO time_zones VALUES("141","America/Matamoros","","","");
INSERT INTO time_zones VALUES("142","America/Mazatlan","","","");
INSERT INTO time_zones VALUES("143","America/Menominee","","","");
INSERT INTO time_zones VALUES("144","America/Merida","","","");
INSERT INTO time_zones VALUES("145","America/Metlakatla","","","");
INSERT INTO time_zones VALUES("146","America/Mexico_City","","","");
INSERT INTO time_zones VALUES("147","America/Miquelon","","","");
INSERT INTO time_zones VALUES("148","America/Moncton","","","");
INSERT INTO time_zones VALUES("149","America/Monterrey","","","");
INSERT INTO time_zones VALUES("150","America/Montevideo","","","");
INSERT INTO time_zones VALUES("151","America/Montserrat","","","");
INSERT INTO time_zones VALUES("152","America/Nassau","","","");
INSERT INTO time_zones VALUES("153","America/New_York","","","");
INSERT INTO time_zones VALUES("154","America/Nipigon","","","");
INSERT INTO time_zones VALUES("155","America/Nome","","","");
INSERT INTO time_zones VALUES("156","America/Noronha","","","");
INSERT INTO time_zones VALUES("157","America/North_Dakota/Beulah","","","");
INSERT INTO time_zones VALUES("158","America/North_Dakota/Center","","","");
INSERT INTO time_zones VALUES("159","America/North_Dakota/New_Salem","","","");
INSERT INTO time_zones VALUES("160","America/Ojinaga","","","");
INSERT INTO time_zones VALUES("161","America/Panama","","","");
INSERT INTO time_zones VALUES("162","America/Pangnirtung","","","");
INSERT INTO time_zones VALUES("163","America/Paramaribo","","","");
INSERT INTO time_zones VALUES("164","America/Phoenix","","","");
INSERT INTO time_zones VALUES("165","America/Port-au-Prince","","","");
INSERT INTO time_zones VALUES("166","America/Port_of_Spain","","","");
INSERT INTO time_zones VALUES("167","America/Porto_Velho","","","");
INSERT INTO time_zones VALUES("168","America/Puerto_Rico","","","");
INSERT INTO time_zones VALUES("169","America/Punta_Arenas","","","");
INSERT INTO time_zones VALUES("170","America/Rainy_River","","","");
INSERT INTO time_zones VALUES("171","America/Rankin_Inlet","","","");
INSERT INTO time_zones VALUES("172","America/Recife","","","");
INSERT INTO time_zones VALUES("173","America/Regina","","","");
INSERT INTO time_zones VALUES("174","America/Resolute","","","");
INSERT INTO time_zones VALUES("175","America/Rio_Branco","","","");
INSERT INTO time_zones VALUES("176","America/Santarem","","","");
INSERT INTO time_zones VALUES("177","America/Santiago","","","");
INSERT INTO time_zones VALUES("178","America/Santo_Domingo","","","");
INSERT INTO time_zones VALUES("179","America/Sao_Paulo","","","");
INSERT INTO time_zones VALUES("180","America/Scoresbysund","","","");
INSERT INTO time_zones VALUES("181","America/Sitka","","","");
INSERT INTO time_zones VALUES("182","America/St_Barthelemy","","","");
INSERT INTO time_zones VALUES("183","America/St_Johns","","","");
INSERT INTO time_zones VALUES("184","America/St_Kitts","","","");
INSERT INTO time_zones VALUES("185","America/St_Lucia","","","");
INSERT INTO time_zones VALUES("186","America/St_Thomas","","","");
INSERT INTO time_zones VALUES("187","America/St_Vincent","","","");
INSERT INTO time_zones VALUES("188","America/Swift_Current","","","");
INSERT INTO time_zones VALUES("189","America/Tegucigalpa","","","");
INSERT INTO time_zones VALUES("190","America/Thule","","","");
INSERT INTO time_zones VALUES("191","America/Thunder_Bay","","","");
INSERT INTO time_zones VALUES("192","America/Tijuana","","","");
INSERT INTO time_zones VALUES("193","America/Toronto","","","");
INSERT INTO time_zones VALUES("194","America/Tortola","","","");
INSERT INTO time_zones VALUES("195","America/Vancouver","","","");
INSERT INTO time_zones VALUES("196","America/Whitehorse","","","");
INSERT INTO time_zones VALUES("197","America/Winnipeg","","","");
INSERT INTO time_zones VALUES("198","America/Yakutat","","","");
INSERT INTO time_zones VALUES("199","America/Yellowknife","","","");
INSERT INTO time_zones VALUES("200","Antarctica/Casey","","","");
INSERT INTO time_zones VALUES("201","Antarctica/Davis","","","");
INSERT INTO time_zones VALUES("202","Antarctica/DumontDUrville","","","");
INSERT INTO time_zones VALUES("203","Antarctica/Macquarie","","","");
INSERT INTO time_zones VALUES("204","Antarctica/Mawson","","","");
INSERT INTO time_zones VALUES("205","Antarctica/McMurdo","","","");
INSERT INTO time_zones VALUES("206","Antarctica/Palmer","","","");
INSERT INTO time_zones VALUES("207","Antarctica/Rothera","","","");
INSERT INTO time_zones VALUES("208","Antarctica/Syowa","","","");
INSERT INTO time_zones VALUES("209","Antarctica/Troll","","","");
INSERT INTO time_zones VALUES("210","Antarctica/Vostok","","","");
INSERT INTO time_zones VALUES("211","Arctic/Longyearbyen","","","");
INSERT INTO time_zones VALUES("212","Asia/Aden","","","");
INSERT INTO time_zones VALUES("213","Asia/Almaty","","","");
INSERT INTO time_zones VALUES("214","Asia/Amman","","","");
INSERT INTO time_zones VALUES("215","Asia/Anadyr","","","");
INSERT INTO time_zones VALUES("216","Asia/Aqtau","","","");
INSERT INTO time_zones VALUES("217","Asia/Aqtobe","","","");
INSERT INTO time_zones VALUES("218","Asia/Ashgabat","","","");
INSERT INTO time_zones VALUES("219","Asia/Atyrau","","","");
INSERT INTO time_zones VALUES("220","Asia/Baghdad","","","");
INSERT INTO time_zones VALUES("221","Asia/Bahrain","","","");
INSERT INTO time_zones VALUES("222","Asia/Baku","","","");
INSERT INTO time_zones VALUES("223","Asia/Bangkok","","","");
INSERT INTO time_zones VALUES("224","Asia/Barnaul","","","");
INSERT INTO time_zones VALUES("225","Asia/Beirut","","","");
INSERT INTO time_zones VALUES("226","Asia/Bishkek","","","");
INSERT INTO time_zones VALUES("227","Asia/Brunei","","","");
INSERT INTO time_zones VALUES("228","Asia/Chita","","","");
INSERT INTO time_zones VALUES("229","Asia/Choibalsan","","","");
INSERT INTO time_zones VALUES("230","Asia/Colombo","","","");
INSERT INTO time_zones VALUES("231","Asia/Damascus","","","");
INSERT INTO time_zones VALUES("232","Asia/Dhaka","+6","","");
INSERT INTO time_zones VALUES("233","Asia/Dili","","","");
INSERT INTO time_zones VALUES("234","Asia/Dubai","","","");
INSERT INTO time_zones VALUES("235","Asia/Dushanbe","","","");
INSERT INTO time_zones VALUES("236","Asia/Famagusta","","","");
INSERT INTO time_zones VALUES("237","Asia/Gaza","","","");
INSERT INTO time_zones VALUES("238","Asia/Hebron","","","");
INSERT INTO time_zones VALUES("239","Asia/Ho_Chi_Minh","","","");
INSERT INTO time_zones VALUES("240","Asia/Hong_Kong","","","");
INSERT INTO time_zones VALUES("241","Asia/Hovd","","","");
INSERT INTO time_zones VALUES("242","Asia/Irkutsk","","","");
INSERT INTO time_zones VALUES("243","Asia/Jakarta","","","");
INSERT INTO time_zones VALUES("244","Asia/Jayapura","","","");
INSERT INTO time_zones VALUES("245","Asia/Jerusalem","","","");
INSERT INTO time_zones VALUES("246","Asia/Kabul","","","");
INSERT INTO time_zones VALUES("247","Asia/Kamchatka","","","");
INSERT INTO time_zones VALUES("248","Asia/Karachi","","","");
INSERT INTO time_zones VALUES("249","Asia/Kathmandu","","","");
INSERT INTO time_zones VALUES("250","Asia/Khandyga","","","");
INSERT INTO time_zones VALUES("251","Asia/Kolkata","","","");
INSERT INTO time_zones VALUES("252","Asia/Krasnoyarsk","","","");
INSERT INTO time_zones VALUES("253","Asia/Kuala_Lumpur","","","");
INSERT INTO time_zones VALUES("254","Asia/Kuching","","","");
INSERT INTO time_zones VALUES("255","Asia/Kuwait","","","");
INSERT INTO time_zones VALUES("256","Asia/Macau","","","");
INSERT INTO time_zones VALUES("257","Asia/Magadan","","","");
INSERT INTO time_zones VALUES("258","Asia/Makassar","","","");
INSERT INTO time_zones VALUES("259","Asia/Manila","","","");
INSERT INTO time_zones VALUES("260","Asia/Muscat","","","");
INSERT INTO time_zones VALUES("261","Asia/Nicosia","","","");
INSERT INTO time_zones VALUES("262","Asia/Novokuznetsk","","","");
INSERT INTO time_zones VALUES("263","Asia/Novosibirsk","","","");
INSERT INTO time_zones VALUES("264","Asia/Omsk","","","");
INSERT INTO time_zones VALUES("265","Asia/Oral","","","");
INSERT INTO time_zones VALUES("266","Asia/Phnom_Penh","","","");
INSERT INTO time_zones VALUES("267","Asia/Pontianak","","","");
INSERT INTO time_zones VALUES("268","Asia/Pyongyang","","","");
INSERT INTO time_zones VALUES("269","Asia/Qatar","","","");
INSERT INTO time_zones VALUES("270","Asia/Qyzylorda","","","");
INSERT INTO time_zones VALUES("271","Asia/Riyadh","","","");
INSERT INTO time_zones VALUES("272","Asia/Sakhalin","","","");
INSERT INTO time_zones VALUES("273","Asia/Samarkand","","","");
INSERT INTO time_zones VALUES("274","Asia/Seoul","","","");
INSERT INTO time_zones VALUES("275","Asia/Shanghai","","","");
INSERT INTO time_zones VALUES("276","Asia/Singapore","","","");
INSERT INTO time_zones VALUES("277","Asia/Srednekolymsk","","","");
INSERT INTO time_zones VALUES("278","Asia/Taipei","","","");
INSERT INTO time_zones VALUES("279","Asia/Tashkent","","","");
INSERT INTO time_zones VALUES("280","Asia/Tbilisi","","","");
INSERT INTO time_zones VALUES("281","Asia/Tehran","","","");
INSERT INTO time_zones VALUES("282","Asia/Thimphu","","","");
INSERT INTO time_zones VALUES("283","Asia/Tokyo","","","");
INSERT INTO time_zones VALUES("284","Asia/Tomsk","","","");
INSERT INTO time_zones VALUES("285","Asia/Ulaanbaatar","","","");
INSERT INTO time_zones VALUES("286","Asia/Urumqi","","","");
INSERT INTO time_zones VALUES("287","Asia/Ust-Nera","","","");
INSERT INTO time_zones VALUES("288","Asia/Vientiane","","","");
INSERT INTO time_zones VALUES("289","Asia/Vladivostok","","","");
INSERT INTO time_zones VALUES("290","Asia/Yakutsk","","","");
INSERT INTO time_zones VALUES("291","Asia/Yangon","","","");
INSERT INTO time_zones VALUES("292","Asia/Yekaterinburg","","","");
INSERT INTO time_zones VALUES("293","Asia/Yerevan","","","");
INSERT INTO time_zones VALUES("294","Atlantic/Azores","","","");
INSERT INTO time_zones VALUES("295","Atlantic/Bermuda","","","");
INSERT INTO time_zones VALUES("296","Atlantic/Canary","","","");
INSERT INTO time_zones VALUES("297","Atlantic/Cape_Verde","","","");
INSERT INTO time_zones VALUES("298","Atlantic/Faroe","","","");
INSERT INTO time_zones VALUES("299","Atlantic/Madeira","","","");
INSERT INTO time_zones VALUES("300","Atlantic/Reykjavik","","","");
INSERT INTO time_zones VALUES("301","Atlantic/South_Georgia","","","");
INSERT INTO time_zones VALUES("302","Atlantic/St_Helena","","","");
INSERT INTO time_zones VALUES("303","Atlantic/Stanley","","","");
INSERT INTO time_zones VALUES("304","Australia/Adelaide","","","");
INSERT INTO time_zones VALUES("305","Australia/Brisbane","","","");
INSERT INTO time_zones VALUES("306","Australia/Broken_Hill","","","");
INSERT INTO time_zones VALUES("307","Australia/Currie","","","");
INSERT INTO time_zones VALUES("308","Australia/Darwin","","","");
INSERT INTO time_zones VALUES("309","Australia/Eucla","","","");
INSERT INTO time_zones VALUES("310","Australia/Hobart","","","");
INSERT INTO time_zones VALUES("311","Australia/Lindeman","","","");
INSERT INTO time_zones VALUES("312","Australia/Lord_Howe","","","");
INSERT INTO time_zones VALUES("313","Australia/Melbourne","","","");
INSERT INTO time_zones VALUES("314","Australia/Perth","","","");
INSERT INTO time_zones VALUES("315","Australia/Sydney","","","");
INSERT INTO time_zones VALUES("316","Europe/Amsterdam","","","");
INSERT INTO time_zones VALUES("317","Europe/Andorra","","","");
INSERT INTO time_zones VALUES("318","Europe/Astrakhan","","","");
INSERT INTO time_zones VALUES("319","Europe/Athens","","","");
INSERT INTO time_zones VALUES("320","Europe/Belgrade","","","");
INSERT INTO time_zones VALUES("321","Europe/Berlin","","","");
INSERT INTO time_zones VALUES("322","Europe/Bratislava","","","");
INSERT INTO time_zones VALUES("323","Europe/Brussels","","","");
INSERT INTO time_zones VALUES("324","Europe/Bucharest","","","");
INSERT INTO time_zones VALUES("325","Europe/Budapest","","","");
INSERT INTO time_zones VALUES("326","Europe/Busingen","","","");
INSERT INTO time_zones VALUES("327","Europe/Chisinau","","","");
INSERT INTO time_zones VALUES("328","Europe/Copenhagen","","","");
INSERT INTO time_zones VALUES("329","Europe/Dublin","","","");
INSERT INTO time_zones VALUES("330","Europe/Gibraltar","","","");
INSERT INTO time_zones VALUES("331","Europe/Guernsey","","","");
INSERT INTO time_zones VALUES("332","Europe/Helsinki","","","");
INSERT INTO time_zones VALUES("333","Europe/Isle_of_Man","","","");
INSERT INTO time_zones VALUES("334","Europe/Istanbul","","","");
INSERT INTO time_zones VALUES("335","Europe/Jersey","","","");
INSERT INTO time_zones VALUES("336","Europe/Kaliningrad","","","");
INSERT INTO time_zones VALUES("337","Europe/Kiev","","","");
INSERT INTO time_zones VALUES("338","Europe/Kirov","","","");
INSERT INTO time_zones VALUES("339","Europe/Lisbon","","","");
INSERT INTO time_zones VALUES("340","Europe/Ljubljana","","","");
INSERT INTO time_zones VALUES("341","Europe/London","","","");
INSERT INTO time_zones VALUES("342","Europe/Luxembourg","","","");
INSERT INTO time_zones VALUES("343","Europe/Madrid","","","");
INSERT INTO time_zones VALUES("344","Europe/Malta","","","");
INSERT INTO time_zones VALUES("345","Europe/Mariehamn","","","");
INSERT INTO time_zones VALUES("346","Europe/Minsk","","","");
INSERT INTO time_zones VALUES("347","Europe/Monaco","","","");
INSERT INTO time_zones VALUES("348","Europe/Moscow","","","");
INSERT INTO time_zones VALUES("349","Europe/Oslo","","","");
INSERT INTO time_zones VALUES("350","Europe/Paris","","","");
INSERT INTO time_zones VALUES("351","Europe/Podgorica","","","");
INSERT INTO time_zones VALUES("352","Europe/Prague","","","");
INSERT INTO time_zones VALUES("353","Europe/Riga","","","");
INSERT INTO time_zones VALUES("354","Europe/Rome","","","");
INSERT INTO time_zones VALUES("355","Europe/Samara","","","");
INSERT INTO time_zones VALUES("356","Europe/San_Marino","","","");
INSERT INTO time_zones VALUES("357","Europe/Sarajevo","","","");
INSERT INTO time_zones VALUES("358","Europe/Saratov","","","");
INSERT INTO time_zones VALUES("359","Europe/Simferopol","","","");
INSERT INTO time_zones VALUES("360","Europe/Skopje","","","");
INSERT INTO time_zones VALUES("361","Europe/Sofia","","","");
INSERT INTO time_zones VALUES("362","Europe/Stockholm","","","");
INSERT INTO time_zones VALUES("363","Europe/Tallinn","","","");
INSERT INTO time_zones VALUES("364","Europe/Tirane","","","");
INSERT INTO time_zones VALUES("365","Europe/Ulyanovsk","","","");
INSERT INTO time_zones VALUES("366","Europe/Uzhgorod","","","");
INSERT INTO time_zones VALUES("367","Europe/Vaduz","","","");
INSERT INTO time_zones VALUES("368","Europe/Vatican","","","");
INSERT INTO time_zones VALUES("369","Europe/Vienna","","","");
INSERT INTO time_zones VALUES("370","Europe/Vilnius","","","");
INSERT INTO time_zones VALUES("371","Europe/Volgograd","","","");
INSERT INTO time_zones VALUES("372","Europe/Warsaw","","","");
INSERT INTO time_zones VALUES("373","Europe/Zagreb","","","");
INSERT INTO time_zones VALUES("374","Europe/Zaporozhye","","","");
INSERT INTO time_zones VALUES("375","Europe/Zurich","","","");
INSERT INTO time_zones VALUES("376","Indian/Antananarivo","","","");
INSERT INTO time_zones VALUES("377","Indian/Chagos","","","");
INSERT INTO time_zones VALUES("378","Indian/Christmas","","","");
INSERT INTO time_zones VALUES("379","Indian/Cocos","","","");
INSERT INTO time_zones VALUES("380","Indian/Comoro","","","");
INSERT INTO time_zones VALUES("381","Indian/Kerguelen","","","");
INSERT INTO time_zones VALUES("382","Indian/Mahe","","","");
INSERT INTO time_zones VALUES("383","Indian/Maldives","","","");
INSERT INTO time_zones VALUES("384","Indian/Mauritius","","","");
INSERT INTO time_zones VALUES("385","Indian/Mayotte","","","");
INSERT INTO time_zones VALUES("386","Indian/Reunion","","","");
INSERT INTO time_zones VALUES("387","Pacific/Apia","","","");
INSERT INTO time_zones VALUES("388","Pacific/Auckland","","","");
INSERT INTO time_zones VALUES("389","Pacific/Bougainville","","","");
INSERT INTO time_zones VALUES("390","Pacific/Chatham","","","");
INSERT INTO time_zones VALUES("391","Pacific/Chuuk","","","");
INSERT INTO time_zones VALUES("392","Pacific/Easter","","","");
INSERT INTO time_zones VALUES("393","Pacific/Efate","","","");
INSERT INTO time_zones VALUES("394","Pacific/Enderbury","","","");
INSERT INTO time_zones VALUES("395","Pacific/Fakaofo","","","");
INSERT INTO time_zones VALUES("396","Pacific/Fiji","","","");
INSERT INTO time_zones VALUES("397","Pacific/Funafuti","","","");
INSERT INTO time_zones VALUES("398","Pacific/Galapagos","","","");
INSERT INTO time_zones VALUES("399","Pacific/Gambier","","","");
INSERT INTO time_zones VALUES("400","Pacific/Guadalcanal","","","");
INSERT INTO time_zones VALUES("401","Pacific/Guam","","","");
INSERT INTO time_zones VALUES("402","Pacific/Honolulu","","","");
INSERT INTO time_zones VALUES("403","Pacific/Kiritimati","","","");
INSERT INTO time_zones VALUES("404","Pacific/Kosrae","","","");
INSERT INTO time_zones VALUES("405","Pacific/Kwajalein","","","");
INSERT INTO time_zones VALUES("406","Pacific/Majuro","","","");
INSERT INTO time_zones VALUES("407","Pacific/Marquesas","","","");
INSERT INTO time_zones VALUES("408","Pacific/Midway","","","");
INSERT INTO time_zones VALUES("409","Pacific/Nauru","","","");
INSERT INTO time_zones VALUES("410","Pacific/Niue","","","");
INSERT INTO time_zones VALUES("411","Pacific/Norfolk","","","");
INSERT INTO time_zones VALUES("412","Pacific/Noumea","","","");
INSERT INTO time_zones VALUES("413","Pacific/Pago_Pago","","","");
INSERT INTO time_zones VALUES("414","Pacific/Palau","","","");
INSERT INTO time_zones VALUES("415","Pacific/Pitcairn","","","");
INSERT INTO time_zones VALUES("416","Pacific/Pohnpei","","","");
INSERT INTO time_zones VALUES("417","Pacific/Port_Moresby","","","");
INSERT INTO time_zones VALUES("418","Pacific/Rarotonga","","","");
INSERT INTO time_zones VALUES("419","Pacific/Saipan","","","");
INSERT INTO time_zones VALUES("420","Pacific/Tahiti","","","");
INSERT INTO time_zones VALUES("421","Pacific/Tarawa","","","");
INSERT INTO time_zones VALUES("422","Pacific/Tongatapu","","","");
INSERT INTO time_zones VALUES("423","Pacific/Wake","","","");
INSERT INTO time_zones VALUES("424","Pacific/Wallis","","","");
INSERT INTO time_zones VALUES("425","UTC","","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=1496 DEFAULT CHARSET=utf8;

INSERT INTO transactions VALUES("1","5","","12","2","","2QUC9KIQSTJHZ","","1","1","registered","","","5000.00","10.00","500.00","11.00","5511.00","","Success","2018-06-03 14:46:18","2018-06-03 14:46:18");
INSERT INTO transactions VALUES("2","5","","14","2","","HDPKIJS2ZU1HA","","2","1","registered","","","5000.00","0.00","0.00","0.00","5000.00","","Success","2018-06-03 14:48:35","2018-06-03 14:48:35");
INSERT INTO transactions VALUES("3","6","","12","2","","GZK3TEDCLZJ0C","","3","1","registered","","","5000.00","10.00","500.00","11.00","5511.00","","Success","2018-06-03 14:48:47","2018-06-03 14:48:47");
INSERT INTO transactions VALUES("4","6","4","12","","","GRUBF8A1KIQRF","","1","3","registered","tuhin.techvill@gmail.com","","150.00","3.00","4.50","13.00","-167.50","Test","Success","2018-06-03 14:53:02","2018-06-03 14:53:02");
INSERT INTO transactions VALUES("5","4","6","12","","","GRUBF8A1KIQRF","","1","4","registered","tuhin.techvill@gmail.com","","150.00","0.00","0.00","0.00","150.00","Test","Success","2018-06-03 14:53:02","2018-06-03 14:53:02");
INSERT INTO transactions VALUES("10","5","","26","2","","87AUVQHKSBY8O","","4","1","registered","","","1200.00","10.00","120.00","5.00","1325.00","","Success","2018-06-03 14:55:55","2018-06-03 14:55:55");
INSERT INTO transactions VALUES("31","5","","12","","","FUSKJFJ8WBDXJ","","7","5","registered","","","6.00","3.00","0.18","3.00","-9.18","","Success","2018-06-03 15:58:43","2018-06-03 15:58:43");
INSERT INTO transactions VALUES("32","5","","14","","","FUSKJFJ8WBDXJ","","7","6","registered","","","3.90","0.00","0.00","0.00","3.90","","Success","2018-06-03 15:58:43","2018-06-03 15:58:43");
INSERT INTO transactions VALUES("34","5","","12","","","IFBJO0MFL9HHY","","8","5","registered","","","6.00","3.00","0.18","3.00","-9.18","","Success","2018-06-03 16:02:36","2018-06-03 16:02:36");
INSERT INTO transactions VALUES("35","5","","14","","","IFBJO0MFL9HHY","","8","6","registered","","","3.90","0.00","0.00","0.00","3.90","","Success","2018-06-03 16:02:36","2018-06-03 16:02:36");
INSERT INTO transactions VALUES("36","5","","12","","","WZ2JEZA9865KC","","9","5","registered","","","6.00","3.00","0.18","3.00","-9.18","","Success","2018-06-03 16:03:54","2018-06-03 16:03:54");
INSERT INTO transactions VALUES("37","5","","14","","","WZ2JEZA9865KC","","9","6","registered","","","3.90","0.00","0.00","0.00","3.90","","Success","2018-06-03 16:03:54","2018-06-03 16:03:54");
INSERT INTO transactions VALUES("39","5","","12","","","2RZEHCWD138OX","","12","5","registered","","","6.00","3.00","0.18","12.00","-18.18","","Success","2018-06-03 16:06:57","2018-06-03 16:06:57");
INSERT INTO transactions VALUES("40","5","","14","","","2RZEHCWD138OX","","12","6","registered","","","3.90","0.00","0.00","0.00","3.90","","Success","2018-06-03 16:06:57","2018-06-03 16:06:57");
INSERT INTO transactions VALUES("47","7","","12","2","","UPHCPGYBGD9B8","","8","1","registered","","","1000.00","10.00","100.00","11.00","1111.00","","Success","2018-06-04 09:27:41","2018-06-04 09:27:41");
INSERT INTO transactions VALUES("48","10","","12","2","","6ANTZFPKSYCB7","","9","1","registered","","","5000.00","10.00","500.00","11.00","5511.00","","Success","2018-06-04 09:43:13","2018-06-04 09:43:13");
INSERT INTO transactions VALUES("49","5","10","12","","","3XSONKEPZVFEU","","1","10","registered","","","20.00","6.00","1.20","16.00","-37.20","Test Notes","Success","2018-06-04 09:43:37","2018-06-04 15:08:52");
INSERT INTO transactions VALUES("50","10","5","12","","","3XSONKEPZVFEU","","1","10","registered","","","20.00","6.00","1.20","16.00","-37.20","Test Notes","Success","2018-06-04 09:43:37","2018-06-04 15:08:52");
INSERT INTO transactions VALUES("51","7","","12","","","KDMHPLNXRHLOK","","16","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-06-04 10:58:49","2018-06-04 10:58:49");
INSERT INTO transactions VALUES("52","7","","13","","","KDMHPLNXRHLOK","","16","6","registered","","","9.10","0.00","0.00","0.00","9.10","","Success","2018-06-04 10:58:49","2018-06-04 10:58:49");
INSERT INTO transactions VALUES("53","7","6","12","","","DHL2YXTLRQX6N","","3","3","registered","shahin.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-04 10:59:55","2018-06-04 10:59:55");
INSERT INTO transactions VALUES("54","6","7","12","","","DHL2YXTLRQX6N","","3","4","registered","shahin.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-04 10:59:55","2018-06-04 10:59:55");
INSERT INTO transactions VALUES("55","15","","12","2","","R8YGIRJP3CAQR","","10","1","registered","","","1000.00","10.00","100.00","11.00","1111.00","","Success","2018-06-04 11:06:02","2018-06-04 11:06:02");
INSERT INTO transactions VALUES("56","15","","12","","","CQ0NRFR8PDZPF","","17","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:11:35","2018-06-04 11:11:35");
INSERT INTO transactions VALUES("57","15","","13","","","CQ0NRFR8PDZPF","","17","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:11:35","2018-06-04 11:11:35");
INSERT INTO transactions VALUES("58","15","","12","","","XM9KNSXQLKWOC","","18","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:12:08","2018-06-04 11:12:08");
INSERT INTO transactions VALUES("59","15","","13","","","XM9KNSXQLKWOC","","18","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:12:08","2018-06-04 11:12:08");
INSERT INTO transactions VALUES("60","15","","12","","","GELMVBUKA2A5S","","19","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:13:18","2018-06-04 11:13:18");
INSERT INTO transactions VALUES("61","15","","13","","","GELMVBUKA2A5S","","19","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:13:18","2018-06-04 11:13:18");
INSERT INTO transactions VALUES("63","15","","12","","","MSHHEGIEPCZQ9","","20","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:13:37","2018-06-04 11:13:37");
INSERT INTO transactions VALUES("64","15","","13","","","MSHHEGIEPCZQ9","","20","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:13:37","2018-06-04 11:13:37");
INSERT INTO transactions VALUES("65","15","","12","","","FBBI2GXP9ZKHY","","21","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:14:31","2018-06-04 11:14:31");
INSERT INTO transactions VALUES("66","15","","13","","","FBBI2GXP9ZKHY","","21","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:14:31","2018-06-04 11:14:31");
INSERT INTO transactions VALUES("67","15","","12","","","TDN8MDTMDF2Q0","","22","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:14:48","2018-06-04 11:14:48");
INSERT INTO transactions VALUES("68","15","","13","","","TDN8MDTMDF2Q0","","22","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:14:48","2018-06-04 11:14:48");
INSERT INTO transactions VALUES("69","15","","12","","","EGJPWP0MAAQTP","","23","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:16:36","2018-06-04 11:16:36");
INSERT INTO transactions VALUES("70","15","","13","","","EGJPWP0MAAQTP","","23","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:16:36","2018-06-04 11:16:36");
INSERT INTO transactions VALUES("71","15","","12","","","UMJ3L68M9NQPE","","24","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:17:14","2018-06-04 11:17:14");
INSERT INTO transactions VALUES("72","15","","13","","","UMJ3L68M9NQPE","","24","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:17:14","2018-06-04 11:17:14");
INSERT INTO transactions VALUES("73","15","","12","","","GT495HP2HTLYV","","25","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:17:34","2018-06-04 11:17:34");
INSERT INTO transactions VALUES("74","15","","13","","","GT495HP2HTLYV","","25","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:17:34","2018-06-04 11:17:34");
INSERT INTO transactions VALUES("75","15","","12","","","ERWAW68IVB3PU","","26","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:18:11","2018-06-04 11:18:11");
INSERT INTO transactions VALUES("76","15","","13","","","ERWAW68IVB3PU","","26","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:18:11","2018-06-04 11:18:11");
INSERT INTO transactions VALUES("77","15","","12","","","JQQVBPUMXKEHG","","27","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:19:10","2018-06-04 11:19:10");
INSERT INTO transactions VALUES("78","15","","13","","","JQQVBPUMXKEHG","","27","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:19:10","2018-06-04 11:19:10");
INSERT INTO transactions VALUES("79","15","","12","","","U7XFGJJE0ERMM","","28","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:19:40","2018-06-04 11:19:40");
INSERT INTO transactions VALUES("80","15","","13","","","U7XFGJJE0ERMM","","28","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:19:40","2018-06-04 11:19:40");
INSERT INTO transactions VALUES("81","15","","12","","","ZBYQVFUFTWAJR","","29","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:21:08","2018-06-04 11:21:08");
INSERT INTO transactions VALUES("82","15","","13","","","ZBYQVFUFTWAJR","","29","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:21:08","2018-06-04 11:21:08");
INSERT INTO transactions VALUES("83","15","","12","","","WRMXCIAXTFWSJ","","30","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:21:34","2018-06-04 11:21:34");
INSERT INTO transactions VALUES("84","15","","13","","","WRMXCIAXTFWSJ","","30","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:21:34","2018-06-04 11:21:34");
INSERT INTO transactions VALUES("85","15","","12","","","PMQQSUAPH0IOH","","31","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:23:39","2018-06-04 11:23:39");
INSERT INTO transactions VALUES("86","15","","13","","","PMQQSUAPH0IOH","","31","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:23:39","2018-06-04 11:23:39");
INSERT INTO transactions VALUES("87","15","","12","","","TKD5JXEC0X6TN","","32","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:24:03","2018-06-04 11:24:03");
INSERT INTO transactions VALUES("88","15","","13","","","TKD5JXEC0X6TN","","32","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:24:03","2018-06-04 11:24:03");
INSERT INTO transactions VALUES("89","15","","12","","","DEFCWIABRMETR","","33","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:24:12","2018-06-04 11:24:12");
INSERT INTO transactions VALUES("90","15","","13","","","DEFCWIABRMETR","","33","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:24:12","2018-06-04 11:24:12");
INSERT INTO transactions VALUES("92","15","","12","","","UMR8DGDMK5VXX","","34","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:25:44","2018-06-04 11:25:44");
INSERT INTO transactions VALUES("93","15","","13","","","UMR8DGDMK5VXX","","34","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:25:44","2018-06-04 11:25:44");
INSERT INTO transactions VALUES("94","15","","12","","","DKJUCETRBHUNI","","35","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:25:59","2018-06-04 11:25:59");
INSERT INTO transactions VALUES("95","15","","13","","","DKJUCETRBHUNI","","35","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:25:59","2018-06-04 11:25:59");
INSERT INTO transactions VALUES("96","15","","12","","","PGLVJUSGXVVL0","","36","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:26:43","2018-06-04 11:26:43");
INSERT INTO transactions VALUES("97","15","","13","","","PGLVJUSGXVVL0","","36","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:26:43","2018-06-04 11:26:43");
INSERT INTO transactions VALUES("98","15","","12","","","GWVEXZUHN6KWI","","37","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:27:07","2018-06-04 11:27:07");
INSERT INTO transactions VALUES("99","15","","13","","","GWVEXZUHN6KWI","","37","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:27:07","2018-06-04 11:27:07");
INSERT INTO transactions VALUES("100","15","","12","","","PEY8PYM5GEQI0","","38","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-04 11:27:18","2018-06-04 11:27:18");
INSERT INTO transactions VALUES("101","15","","13","","","PEY8PYM5GEQI0","","38","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-04 11:27:18","2018-06-04 11:27:18");
INSERT INTO transactions VALUES("102","7","6","12","","","DXPRGOPUTYD44","","4","3","registered","shahin.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-04 11:32:24","2018-06-04 11:32:24");
INSERT INTO transactions VALUES("103","6","7","12","","","DXPRGOPUTYD44","","4","4","registered","shahin.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-04 11:32:24","2018-06-04 11:32:24");
INSERT INTO transactions VALUES("104","10","5","12","","","3XSONKEPZVFEU","","1","10","registered","","","13.00","0.00","2.00","5.00","-20.00","","Success","2018-06-04 12:01:17","2018-06-04 12:01:17");
INSERT INTO transactions VALUES("107","7","15","12","","","PAKLGR47LAZ5N","","5","3","registered","parvez.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-04 13:15:59","2018-06-04 13:15:59");
INSERT INTO transactions VALUES("108","15","7","12","","","PAKLGR47LAZ5N","","5","4","registered","parvez.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-04 13:15:59","2018-06-04 13:15:59");
INSERT INTO transactions VALUES("109","7","15","12","","","TL7GKWHJRUD7Q","","6","3","registered","parvez.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-04 13:16:19","2018-06-04 13:16:19");
INSERT INTO transactions VALUES("110","15","7","12","","","TL7GKWHJRUD7Q","","6","4","registered","parvez.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-04 13:16:19","2018-06-04 13:16:19");
INSERT INTO transactions VALUES("122","5","10","12","","","CJVK7EVM9QAKN","","9","3","registered","shakil.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","Test Notes goes here","Success","2018-06-04 15:15:23","2018-06-04 15:15:23");
INSERT INTO transactions VALUES("123","10","5","12","","","CJVK7EVM9QAKN","","9","4","registered","shakil.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Success","2018-06-04 15:15:23","2018-06-04 15:15:23");
INSERT INTO transactions VALUES("124","5","10","12","","","8GA4F3PSU6MMB","","2","10","registered","","","6.00","6.00","0.36","16.00","-22.36","Test Notes goes here.","Success","2018-06-04 15:16:31","2018-06-04 15:20:35");
INSERT INTO transactions VALUES("125","10","5","12","","","8GA4F3PSU6MMB","","2","10","registered","","","6.00","6.00","0.36","16.00","-22.36","Test Notes goes here.","Success","2018-06-04 15:16:31","2018-06-04 15:20:35");
INSERT INTO transactions VALUES("127","5","10","12","","","BY9AYR1URCIN6","","3","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here.","Pending","2018-06-04 15:26:40","2018-06-04 15:26:40");
INSERT INTO transactions VALUES("128","10","5","12","","","BY9AYR1URCIN6","","3","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here.","Pending","2018-06-04 15:26:40","2018-06-07 13:12:10");
INSERT INTO transactions VALUES("130","5","10","12","","","NYCKCNRS29BSP","","4","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here.","Pending","2018-06-04 15:28:10","2018-06-04 15:28:10");
INSERT INTO transactions VALUES("131","10","5","12","","","NYCKCNRS29BSP","","4","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here.","Pending","2018-06-04 15:28:10","2018-06-07 13:14:20");
INSERT INTO transactions VALUES("132","5","10","12","","","AGXCYJCPQNUGU","","5","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here.","Pending","2018-06-04 15:28:19","2018-06-04 15:28:19");
INSERT INTO transactions VALUES("133","10","5","12","","","AGXCYJCPQNUGU","","5","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here.","Pending","2018-06-04 15:28:19","2018-06-07 13:14:33");
INSERT INTO transactions VALUES("135","5","10","12","","","HMGZANJFDMNDN","","6","9","registered","","","10.00","6.00","0.60","16.00","-26.60","asdfdsafdsafdsa","Success","2018-06-04 15:29:01","2018-06-05 10:33:37");
INSERT INTO transactions VALUES("136","10","5","12","","","HMGZANJFDMNDN","","6","10","registered","","","10.00","6.00","0.60","16.00","-26.60","asdfdsafdsafdsa","Success","2018-06-04 15:29:01","2018-06-07 13:14:46");
INSERT INTO transactions VALUES("159","5","10","12","","","WJXGSFX2TTEZP","","7","9","registered","","","6.00","6.00","0.36","16.00","-22.36","Test Note goes here.","Success","2018-06-05 10:38:14","2018-06-05 10:38:59");
INSERT INTO transactions VALUES("160","10","5","12","","","WJXGSFX2TTEZP","","7","10","registered","","","6.00","6.00","0.36","16.00","-22.36","Test Note goes here.","Success","2018-06-05 10:38:14","2018-06-07 13:15:01");
INSERT INTO transactions VALUES("169","15","","12","2","","FMZLLLQDKDGPD","","18","1","registered","","","60000.00","12.00","7200.00","11.00","67211.00","","Success","2018-06-05 11:20:09","2018-06-05 11:20:09");
INSERT INTO transactions VALUES("170","15","20","12","","","LLPDVYPHCK2KQ","","11","3","registered","parvez.agvbd@gmail.com","","15000.00","3.00","450.00","13.00","-15463.00","xx","Success","2018-06-05 11:21:14","2018-06-05 11:21:14");
INSERT INTO transactions VALUES("171","20","15","12","","","LLPDVYPHCK2KQ","","11","4","registered","parvez.agvbd@gmail.com","","15000.00","0.00","0.00","0.00","15000.00","xx","Success","2018-06-05 11:21:14","2018-06-05 11:21:14");
INSERT INTO transactions VALUES("172","15","","12","","","FTEMPDZP15PWH","","50","5","registered","","","1400.00","3.00","42.00","12.00","-1454.00","","Success","2018-06-05 11:21:57","2018-06-05 11:21:57");
INSERT INTO transactions VALUES("173","15","","14","","","FTEMPDZP15PWH","","50","6","registered","","","910.00","0.00","0.00","0.00","910.00","","Success","2018-06-05 11:21:57","2018-06-05 11:21:57");
INSERT INTO transactions VALUES("174","20","","12","","","R7YLXTRRUN9XJ","","51","5","registered","","","1400.00","3.00","42.00","12.00","-1454.00","","Success","2018-06-05 11:22:22","2018-06-05 11:22:22");
INSERT INTO transactions VALUES("175","20","","14","","","R7YLXTRRUN9XJ","","51","6","registered","","","910.00","0.00","0.00","0.00","910.00","","Success","2018-06-05 11:22:22","2018-06-05 11:22:22");
INSERT INTO transactions VALUES("193","15","4","12","","","PLSSARP18G0XN","","4","7","registered","","","25.00","0.00","2.00","2.00","-27.50","","Success","2018-06-05 13:42:24","2018-06-05 13:47:45");
INSERT INTO transactions VALUES("194","4","15","12","","","UWPHXWIAGEK8J","","4","8","registered","","","25.00","0.00","0.00","0.00","25.00","","Success","2018-06-05 13:42:54","2018-06-05 13:42:54");
INSERT INTO transactions VALUES("195","5","10","12","","","7CSCPFUPJTQGD","","13","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:46:12","2018-06-05 13:46:12");
INSERT INTO transactions VALUES("196","10","5","12","","","7CSCPFUPJTQGD","","13","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:46:12","2018-06-05 13:46:12");
INSERT INTO transactions VALUES("197","15","4","12","","","SQPMCVQJ7BSMT","","5","7","registered","","","20.00","0.00","2.00","2.00","-22.40","","Success","2018-06-05 13:46:52","2018-06-05 13:47:09");
INSERT INTO transactions VALUES("198","4","15","12","","","BPCEVZD7POBGV","","5","8","registered","","","20.00","0.00","0.00","0.00","20.00","","Success","2018-06-05 13:47:10","2018-06-05 13:47:10");
INSERT INTO transactions VALUES("201","5","10","12","","","UDAR5BUGNDDG0","","14","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:53:52","2018-06-05 13:53:52");
INSERT INTO transactions VALUES("202","10","5","12","","","UDAR5BUGNDDG0","","14","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:53:52","2018-06-05 13:53:52");
INSERT INTO transactions VALUES("203","5","10","12","","","DFHQYFPVEKVJH","","15","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:54:13","2018-06-05 13:54:13");
INSERT INTO transactions VALUES("204","10","5","12","","","DFHQYFPVEKVJH","","15","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:54:13","2018-06-05 13:54:13");
INSERT INTO transactions VALUES("205","5","10","12","","","SKGPXT5PPQNCT","","16","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:54:33","2018-06-05 13:54:33");
INSERT INTO transactions VALUES("206","10","5","12","","","SKGPXT5PPQNCT","","16","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:54:33","2018-06-05 13:54:33");
INSERT INTO transactions VALUES("207","5","10","12","","","PZ46HBDHCEPSF","","17","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:54:58","2018-06-05 13:54:58");
INSERT INTO transactions VALUES("208","10","5","12","","","PZ46HBDHCEPSF","","17","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:54:58","2018-06-05 13:54:58");
INSERT INTO transactions VALUES("211","5","10","12","","","N8R7ETBFBOPJB","","18","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:55:44","2018-06-05 13:55:44");
INSERT INTO transactions VALUES("212","10","5","12","","","N8R7ETBFBOPJB","","18","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:55:44","2018-06-05 13:55:44");
INSERT INTO transactions VALUES("213","5","10","12","","","4JH39TZWIHWHF","","19","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:57:47","2018-06-05 13:57:47");
INSERT INTO transactions VALUES("214","10","5","12","","","4JH39TZWIHWHF","","19","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:57:47","2018-06-05 13:57:47");
INSERT INTO transactions VALUES("217","5","10","12","","","C0FOPPKIYAIII","","20","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 13:58:02","2018-06-05 13:58:02");
INSERT INTO transactions VALUES("218","10","5","12","","","C0FOPPKIYAIII","","20","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 13:58:02","2018-06-05 13:58:02");
INSERT INTO transactions VALUES("230","7","5","12","","","AMJZENGEGYUKZ","","23","3","registered","aminul.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","Test payment","Success","2018-06-05 14:18:29","2018-06-05 14:18:29");
INSERT INTO transactions VALUES("231","5","7","12","","","AMJZENGEGYUKZ","","23","4","registered","aminul.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","Test payment","Success","2018-06-05 14:18:29","2018-06-05 14:18:29");
INSERT INTO transactions VALUES("234","7","5","12","","","OFQWV7DJJMJSR","","24","3","registered","aminul.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","Test payment","Refund","2018-06-05 14:18:43","2018-06-05 14:27:18");
INSERT INTO transactions VALUES("235","5","7","12","","","OFQWV7DJJMJSR","","24","4","registered","aminul.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","Test payment","Refund","2018-06-05 14:18:43","2018-06-05 14:27:18");
INSERT INTO transactions VALUES("236","7","5","24","","","58GL6RAIJWEKW","","12","9","registered","","","100.00","0.00","0.00","0.00","100.00","need some money","Pending","2018-06-05 14:21:08","2018-06-05 14:21:08");
INSERT INTO transactions VALUES("237","5","7","24","","","58GL6RAIJWEKW","","12","10","registered","","","100.00","0.00","0.00","0.00","-100.00","need some money","Pending","2018-06-05 14:21:08","2018-06-07 13:15:15");
INSERT INTO transactions VALUES("238","7","5","24","","","MFEMZFOKFWCHY","","13","9","registered","","","100.00","0.00","0.00","0.00","100.00","need some money","Pending","2018-06-05 14:21:18","2018-06-05 14:21:18");
INSERT INTO transactions VALUES("239","5","7","24","","","MFEMZFOKFWCHY","","13","10","registered","","","100.00","0.00","0.00","0.00","-100.00","need some money","Pending","2018-06-05 14:21:18","2018-06-07 13:15:39");
INSERT INTO transactions VALUES("240","7","","12","3","","FW4XCP3GXR5KM","","4","2","registered","","","20.00","5.00","1.00","10.00","-31.00","","Pending","2018-06-05 14:22:12","2018-06-05 14:22:12");
INSERT INTO transactions VALUES("241","7","","12","","","SNHTSUTGHURUT","","6","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Pending","2018-06-05 14:23:28","2018-06-05 14:23:28");
INSERT INTO transactions VALUES("242","5","10","12","","","ZNEQWTGINKPTW","","25","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 14:42:54","2018-06-05 14:42:54");
INSERT INTO transactions VALUES("243","10","5","12","","","ZNEQWTGINKPTW","","25","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 14:42:54","2018-06-05 14:42:54");
INSERT INTO transactions VALUES("244","5","10","12","","","EVVF6BWESYPNN","","26","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 14:55:11","2018-06-05 14:55:11");
INSERT INTO transactions VALUES("245","10","5","12","","","EVVF6BWESYPNN","","26","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 14:55:11","2018-06-05 14:55:11");
INSERT INTO transactions VALUES("246","5","10","12","","","3SSY1IWVOGMDZ","","27","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 14:59:25","2018-06-05 14:59:25");
INSERT INTO transactions VALUES("247","10","5","12","","","3SSY1IWVOGMDZ","","27","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 14:59:25","2018-06-05 14:59:25");
INSERT INTO transactions VALUES("248","5","10","12","","","P57QS4EAH1EOJ","","28","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 15:01:06","2018-06-05 15:01:06");
INSERT INTO transactions VALUES("249","10","5","12","","","P57QS4EAH1EOJ","","28","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 15:01:06","2018-06-05 15:01:06");
INSERT INTO transactions VALUES("250","5","10","12","","","ZLQOKGACXAVUG","","29","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 15:02:12","2018-06-05 15:02:12");
INSERT INTO transactions VALUES("251","10","5","12","","","ZLQOKGACXAVUG","","29","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 15:02:12","2018-06-05 15:02:12");
INSERT INTO transactions VALUES("252","5","10","12","","","MDGOEZYNE0SQX","","30","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test notes here.","Success","2018-06-05 15:02:26","2018-06-05 15:02:26");
INSERT INTO transactions VALUES("253","10","5","12","","","MDGOEZYNE0SQX","","30","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test notes here.","Success","2018-06-05 15:02:26","2018-06-05 15:02:26");
INSERT INTO transactions VALUES("254","5","10","12","","","99SQF5GHREERE","","31","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:03:03","2018-06-05 15:03:03");
INSERT INTO transactions VALUES("255","10","5","12","","","99SQF5GHREERE","","31","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:03:03","2018-06-05 15:03:03");
INSERT INTO transactions VALUES("256","5","10","12","","","TS0OP0KOSFOPZ","","32","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:03:09","2018-06-05 15:03:09");
INSERT INTO transactions VALUES("257","10","5","12","","","TS0OP0KOSFOPZ","","32","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:03:09","2018-06-05 15:03:09");
INSERT INTO transactions VALUES("258","5","10","12","","","36YL4GANSFCW2","","33","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:04:44","2018-06-05 15:04:44");
INSERT INTO transactions VALUES("259","10","5","12","","","36YL4GANSFCW2","","33","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:04:44","2018-06-05 15:04:44");
INSERT INTO transactions VALUES("260","5","10","12","","","K9GEXWD46MW01","","34","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:06:52","2018-06-05 15:06:52");
INSERT INTO transactions VALUES("261","10","5","12","","","K9GEXWD46MW01","","34","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:06:52","2018-06-05 15:06:52");
INSERT INTO transactions VALUES("262","5","10","12","","","9SOPWI6T35VJO","","35","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:09:06","2018-06-05 15:09:06");
INSERT INTO transactions VALUES("263","10","5","12","","","9SOPWI6T35VJO","","35","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:09:06","2018-06-05 15:09:06");
INSERT INTO transactions VALUES("264","5","10","12","","","7LJEDXQZ2BZPN","","36","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:09:50","2018-06-05 15:09:50");
INSERT INTO transactions VALUES("265","10","5","12","","","7LJEDXQZ2BZPN","","36","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:09:50","2018-06-05 15:09:50");
INSERT INTO transactions VALUES("266","15","15","12","1","4","8O8RIDBQKQ3S2","","1","11","registered","","","650.00","0.00","0.00","0.00","-650.00","","Success","2018-06-05 15:13:29","2018-06-05 15:13:29");
INSERT INTO transactions VALUES("267","15","15","12","1","4","8O8RIDBQKQ3S2","","1","12","registered","","","650.00","0.00","0.00","0.00","650.00","","Success","2018-06-05 15:13:30","2018-06-05 15:13:30");
INSERT INTO transactions VALUES("268","15","15","12","1","1","AJG4ZFLVHSISR","","2","11","registered","","","30.00","0.00","0.00","0.00","-30.00","","Success","2018-06-05 15:14:08","2018-06-05 15:14:08");
INSERT INTO transactions VALUES("269","15","15","12","1","1","AJG4ZFLVHSISR","","2","12","registered","","","30.00","0.00","0.00","0.00","30.00","","Success","2018-06-05 15:14:09","2018-06-05 15:14:09");
INSERT INTO transactions VALUES("270","5","10","12","","","0CVQ17VYQPPXD","","37","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:14:11","2018-06-05 15:14:11");
INSERT INTO transactions VALUES("271","10","5","12","","","0CVQ17VYQPPXD","","37","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:14:11","2018-06-05 15:14:11");
INSERT INTO transactions VALUES("272","5","10","12","","","NZ3ZQHW4QMHZP","","38","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:14:27","2018-06-05 15:14:27");
INSERT INTO transactions VALUES("273","10","5","12","","","NZ3ZQHW4QMHZP","","38","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:14:27","2018-06-05 15:14:27");
INSERT INTO transactions VALUES("274","5","10","12","","","I3GE2M3D54FZE","","39","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:14:36","2018-06-05 15:14:36");
INSERT INTO transactions VALUES("275","10","5","12","","","I3GE2M3D54FZE","","39","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:14:36","2018-06-05 15:14:36");
INSERT INTO transactions VALUES("276","5","10","12","","","GQOEVUOREFGAP","","40","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:15:18","2018-06-05 15:15:18");
INSERT INTO transactions VALUES("277","10","5","12","","","GQOEVUOREFGAP","","40","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:15:18","2018-06-05 15:15:18");
INSERT INTO transactions VALUES("278","5","10","12","","","LQ4I2DXEQILK4","","41","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:15:30","2018-06-05 15:15:30");
INSERT INTO transactions VALUES("279","10","5","12","","","LQ4I2DXEQILK4","","41","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:15:30","2018-06-05 15:15:30");
INSERT INTO transactions VALUES("280","5","10","12","","","ZODO6BQQR6RHH","","42","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:16:42","2018-06-05 15:16:42");
INSERT INTO transactions VALUES("281","10","5","12","","","ZODO6BQQR6RHH","","42","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:16:42","2018-06-05 15:16:42");
INSERT INTO transactions VALUES("282","5","10","12","","","BWSQLMKZKYCZS","","43","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfgfdsgfds","Success","2018-06-05 15:18:21","2018-06-05 15:18:21");
INSERT INTO transactions VALUES("283","10","5","12","","","BWSQLMKZKYCZS","","43","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfgfdsgfds","Success","2018-06-05 15:18:21","2018-06-05 15:18:21");
INSERT INTO transactions VALUES("284","5","10","12","","","S2FFVEL6ZSXR8","","44","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsgfdsgfdsgfds","Success","2018-06-05 15:18:48","2018-06-05 15:18:48");
INSERT INTO transactions VALUES("285","10","5","12","","","S2FFVEL6ZSXR8","","44","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsgfdsgfdsgfds","Success","2018-06-05 15:18:48","2018-06-05 15:18:48");
INSERT INTO transactions VALUES("286","5","10","12","","","4SXIMFCBW3YO4","","45","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:19:43","2018-06-05 15:19:43");
INSERT INTO transactions VALUES("287","10","5","12","","","4SXIMFCBW3YO4","","45","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:19:43","2018-06-05 15:19:43");
INSERT INTO transactions VALUES("288","5","","12","","","GQWPGZPBDLZOR","","46","3","unregistered","shakil.techvill@gmai.com","","10.00","3.00","0.30","13.00","-23.30","Test","Pending","2018-06-05 15:21:20","2018-06-05 15:21:20");
INSERT INTO transactions VALUES("289","","5","12","","","GQWPGZPBDLZOR","","46","4","unregistered","shakil.techvill@gmai.com","","10.00","0.00","0.00","0.00","10.00","Test","Pending","2018-06-05 15:21:20","2018-06-05 15:21:20");
INSERT INTO transactions VALUES("290","5","","12","2","","NOSASKHSGDV6K","","21","1","registered","","","50.00","12.00","6.00","11.00","67.00","","Success","2018-06-05 15:23:57","2018-06-05 15:23:57");
INSERT INTO transactions VALUES("291","5","10","12","","","JHU2HV0MNOZAN","","47","3","registered","shakil.techvill@gmail.com","","23.00","3.00","0.69","13.00","-36.69","fsdafsdafdsfsdf","Success","2018-06-05 15:25:39","2018-06-05 15:25:39");
INSERT INTO transactions VALUES("292","10","5","12","","","JHU2HV0MNOZAN","","47","4","registered","shakil.techvill@gmail.com","","23.00","0.00","0.00","0.00","23.00","fsdafsdafdsfsdf","Success","2018-06-05 15:25:39","2018-06-05 15:25:39");
INSERT INTO transactions VALUES("293","5","","12","","","W30RDMLKYSVK8","","48","3","unregistered","shakil.techvill@gmai.com","","10.00","3.00","0.30","13.00","-23.30","Test Notes","Pending","2018-06-05 15:26:56","2018-06-05 15:26:56");
INSERT INTO transactions VALUES("294","","5","12","","","W30RDMLKYSVK8","","48","4","unregistered","shakil.techvill@gmai.com","","10.00","0.00","0.00","0.00","10.00","Test Notes","Pending","2018-06-05 15:26:56","2018-06-05 15:26:56");
INSERT INTO transactions VALUES("295","5","10","12","","","LFMFD8DHIEYKM","","49","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:28:27","2018-06-05 15:28:27");
INSERT INTO transactions VALUES("296","10","5","12","","","LFMFD8DHIEYKM","","49","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:28:27","2018-06-05 15:28:27");
INSERT INTO transactions VALUES("297","5","10","12","","","5FRJKAVVPTJIE","","50","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:28:57","2018-06-05 15:28:57");
INSERT INTO transactions VALUES("298","10","5","12","","","5FRJKAVVPTJIE","","50","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:28:57","2018-06-05 15:28:57");
INSERT INTO transactions VALUES("299","5","10","12","","","IAAPEJUTXQUKA","","51","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:29:17","2018-06-05 15:29:17");
INSERT INTO transactions VALUES("300","10","5","12","","","IAAPEJUTXQUKA","","51","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:29:17","2018-06-05 15:29:17");
INSERT INTO transactions VALUES("301","5","10","12","","","AH8DUUTSBJVPH","","52","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:34:39","2018-06-05 15:34:39");
INSERT INTO transactions VALUES("302","10","5","12","","","AH8DUUTSBJVPH","","52","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:34:39","2018-06-05 15:34:39");
INSERT INTO transactions VALUES("303","5","10","12","","","3HWP9WDMMJCON","","53","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:34:43","2018-06-05 15:34:43");
INSERT INTO transactions VALUES("304","10","5","12","","","3HWP9WDMMJCON","","53","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:34:43","2018-06-05 15:34:43");
INSERT INTO transactions VALUES("305","5","10","12","","","GNSSNOHUBMLOZ","","54","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:35:47","2018-06-05 15:35:47");
INSERT INTO transactions VALUES("306","10","5","12","","","GNSSNOHUBMLOZ","","54","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:35:47","2018-06-05 15:35:47");
INSERT INTO transactions VALUES("307","5","10","12","","","AUMN6YPMAUWWF","","55","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:36:02","2018-06-05 15:36:02");
INSERT INTO transactions VALUES("308","10","5","12","","","AUMN6YPMAUWWF","","55","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:36:02","2018-06-05 15:36:02");
INSERT INTO transactions VALUES("309","5","10","12","","","RHRVG7Z2LVKRF","","56","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","fdsfgsdfgfds","Success","2018-06-05 15:37:05","2018-06-05 15:37:05");
INSERT INTO transactions VALUES("310","10","5","12","","","RHRVG7Z2LVKRF","","56","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","fdsfgsdfgfds","Success","2018-06-05 15:37:05","2018-06-05 15:37:05");
INSERT INTO transactions VALUES("311","5","15","12","1","1","S3PVKP3E0PG0I","","3","11","registered","","","4.00","0.00","0.00","0.00","-4.00","","Success","2018-06-05 15:37:07","2018-06-05 15:37:07");
INSERT INTO transactions VALUES("312","15","5","12","1","1","S3PVKP3E0PG0I","","3","12","registered","","","4.00","0.00","0.00","0.00","4.00","","Success","2018-06-05 15:37:08","2018-06-05 15:37:08");
INSERT INTO transactions VALUES("313","5","10","12","","","LGQ4KKSQIPCTW","","57","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfadsafdsa","Success","2018-06-05 15:38:40","2018-06-05 15:38:40");
INSERT INTO transactions VALUES("314","10","5","12","","","LGQ4KKSQIPCTW","","57","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfadsafdsa","Success","2018-06-05 15:38:40","2018-06-05 15:38:40");
INSERT INTO transactions VALUES("315","5","10","12","","","QHOMDGOLVUJFC","","58","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfadsafdsa","Success","2018-06-05 15:39:10","2018-06-05 15:39:10");
INSERT INTO transactions VALUES("316","10","5","12","","","QHOMDGOLVUJFC","","58","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfadsafdsa","Success","2018-06-05 15:39:10","2018-06-05 15:39:10");
INSERT INTO transactions VALUES("317","5","10","12","","","C650U5W8KIGTX","","59","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfadsafdsa","Success","2018-06-05 15:39:55","2018-06-05 15:39:55");
INSERT INTO transactions VALUES("318","10","5","12","","","C650U5W8KIGTX","","59","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfadsafdsa","Success","2018-06-05 15:39:55","2018-06-05 15:39:55");
INSERT INTO transactions VALUES("319","15","5","12","2","1","PXZHJ6T5HZ5ZS","","4","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-05 15:40:16","2018-06-05 15:40:16");
INSERT INTO transactions VALUES("320","5","10","12","","","7FK5DF7ECPHZR","","60","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfadsafdsa","Success","2018-06-05 15:40:45","2018-06-05 15:40:45");
INSERT INTO transactions VALUES("321","10","5","12","","","7FK5DF7ECPHZR","","60","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfadsafdsa","Success","2018-06-05 15:40:45","2018-06-05 15:40:45");
INSERT INTO transactions VALUES("322","7","5","12","","","YF4ZKL38B1CKL","","61","3","registered","aminul.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","test","Success","2018-06-05 15:42:24","2018-06-05 15:42:24");
INSERT INTO transactions VALUES("323","5","7","12","","","YF4ZKL38B1CKL","","61","4","registered","aminul.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","test","Success","2018-06-05 15:42:24","2018-06-05 15:42:24");
INSERT INTO transactions VALUES("324","15","","12","2","1","TDNRAKTQXH2KC","","5","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-05 15:42:32","2018-06-05 15:42:32");
INSERT INTO transactions VALUES("325","5","10","12","","","QSNA96VAIUSD9","","62","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:45:35","2018-06-05 15:45:35");
INSERT INTO transactions VALUES("326","10","5","12","","","QSNA96VAIUSD9","","62","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:45:35","2018-06-05 15:45:35");
INSERT INTO transactions VALUES("327","5","10","12","","","NLDQTGGOY9HKY","","63","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:45:37","2018-06-05 15:45:37");
INSERT INTO transactions VALUES("328","10","5","12","","","NLDQTGGOY9HKY","","63","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:45:37","2018-06-05 15:45:37");
INSERT INTO transactions VALUES("329","5","10","12","","","W7OAGKETACIRE","","64","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:45:40","2018-06-05 15:45:40");
INSERT INTO transactions VALUES("330","10","5","12","","","W7OAGKETACIRE","","64","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:45:40","2018-06-05 15:45:40");
INSERT INTO transactions VALUES("331","5","","12","","","HDTEK4VZEWWRM","","65","3","unregistered","shakil.techvill@gmai.com","","10.00","3.00","0.30","13.00","-23.30","Test Notes","Pending","2018-06-05 15:46:23","2018-06-05 15:46:23");
INSERT INTO transactions VALUES("332","","5","12","","","HDTEK4VZEWWRM","","65","4","unregistered","shakil.techvill@gmai.com","","10.00","0.00","0.00","0.00","10.00","Test Notes","Pending","2018-06-05 15:46:23","2018-06-05 15:46:23");
INSERT INTO transactions VALUES("333","5","10","12","","","BIRT3B6RWDHTM","","66","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:52:31","2018-06-05 15:52:31");
INSERT INTO transactions VALUES("334","10","5","12","","","BIRT3B6RWDHTM","","66","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:52:31","2018-06-05 15:52:31");
INSERT INTO transactions VALUES("335","5","10","12","","","R73CRQVMQHZUW","","67","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:52:33","2018-06-05 15:52:33");
INSERT INTO transactions VALUES("336","10","5","12","","","R73CRQVMQHZUW","","67","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:52:34","2018-06-05 15:52:34");
INSERT INTO transactions VALUES("337","5","10","12","","","9GJLMHXMJ0M74","","68","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:52:44","2018-06-05 15:52:44");
INSERT INTO transactions VALUES("338","10","5","12","","","9GJLMHXMJ0M74","","68","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:52:44","2018-06-05 15:52:44");
INSERT INTO transactions VALUES("339","5","10","12","","","W4QRQGYP2RBOE","","69","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Blocked","2018-06-05 15:52:47","2018-06-12 15:48:03");
INSERT INTO transactions VALUES("340","10","5","12","","","W4QRQGYP2RBOE","","69","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Blocked","2018-06-05 15:52:47","2018-06-12 15:48:03");
INSERT INTO transactions VALUES("341","5","10","12","","","73BJVGPP18VV7","","70","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:53:10","2018-06-05 15:53:10");
INSERT INTO transactions VALUES("342","10","5","12","","","73BJVGPP18VV7","","70","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:53:10","2018-06-05 15:53:10");
INSERT INTO transactions VALUES("343","5","10","12","","","87C524KKGRFVV","","71","3","registered","shakil.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","sdfdsafsdfsda","Success","2018-06-05 15:53:14","2018-06-05 15:53:14");
INSERT INTO transactions VALUES("344","10","5","12","","","87C524KKGRFVV","","71","4","registered","shakil.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","sdfdsafsdfsda","Success","2018-06-05 15:53:14","2018-06-05 15:53:14");
INSERT INTO transactions VALUES("347","15","15","12","1","4","QA12PD069W0XA","","6","11","registered","","","888.00","0.00","0.00","0.00","-888.00","","Pending","2018-06-05 15:56:17","2018-06-05 16:39:41");
INSERT INTO transactions VALUES("348","15","15","12","1","4","QA12PD069W0XA","","6","12","registered","","","888.00","0.00","0.00","0.00","888.00","","Pending","2018-06-05 15:56:17","2018-06-05 16:39:41");
INSERT INTO transactions VALUES("349","15","","12","2","4","TUBNBZIVQLGIC","","7","12","registered","","","888.00","0.00","0.00","0.00","888.00","","Success","2018-06-05 15:57:15","2018-06-05 15:57:15");
INSERT INTO transactions VALUES("350","4","15","12","1","4","FU2406FT9KMMM","","8","11","registered","","","8.00","0.00","0.00","0.00","-8.00","","Success","2018-06-05 15:59:53","2018-06-05 15:59:53");
INSERT INTO transactions VALUES("351","15","4","12","1","4","FU2406FT9KMMM","","8","12","registered","","","8.00","0.00","0.00","0.00","8.00","","Success","2018-06-05 15:59:53","2018-06-05 15:59:53");
INSERT INTO transactions VALUES("352","5","","12","2","","KG1EAYDKJZQK6","","22","1","registered","","","5000.00","12.00","600.00","11.00","5611.00","","Success","2018-06-05 16:03:02","2018-06-05 16:03:02");
INSERT INTO transactions VALUES("353","5","","12","","","PLEDX20MQC4FS","","52","5","registered","","","33.00","14.00","4.62","14.00","-51.62","","Success","2018-06-05 16:03:45","2018-06-05 16:03:45");
INSERT INTO transactions VALUES("354","5","","13","","","PLEDX20MQC4FS","","52","6","registered","","","21.45","0.00","0.00","0.00","21.45","","Success","2018-06-05 16:03:45","2018-06-05 16:03:45");
INSERT INTO transactions VALUES("355","5","","12","","","CCMUVZVQZJUCK","","53","5","registered","","","33.00","14.00","4.62","14.00","-51.62","","Success","2018-06-05 16:03:49","2018-06-05 16:03:49");
INSERT INTO transactions VALUES("356","5","","13","","","CCMUVZVQZJUCK","","53","6","registered","","","21.45","0.00","0.00","0.00","21.45","","Success","2018-06-05 16:03:49","2018-06-05 16:03:49");
INSERT INTO transactions VALUES("357","5","","12","","","GQDT2CZKVDQDU","","54","5","registered","","","33.00","14.00","4.62","14.00","-51.62","","Success","2018-06-05 16:04:32","2018-06-05 16:04:32");
INSERT INTO transactions VALUES("358","5","","13","","","GQDT2CZKVDQDU","","54","6","registered","","","21.45","0.00","0.00","0.00","21.45","","Success","2018-06-05 16:04:32","2018-06-05 16:04:32");
INSERT INTO transactions VALUES("359","5","","12","","","YB5QXNXUCBN0F","","55","5","registered","","","33.00","14.00","4.62","14.00","-51.62","","Success","2018-06-05 16:04:36","2018-06-05 16:04:36");
INSERT INTO transactions VALUES("360","5","","13","","","YB5QXNXUCBN0F","","55","6","registered","","","21.45","0.00","0.00","0.00","21.45","","Success","2018-06-05 16:04:36","2018-06-05 16:04:36");
INSERT INTO transactions VALUES("361","5","","12","","","QN7E8KLPFE0PW","","56","5","registered","","","33.00","14.00","4.62","14.00","-51.62","","Success","2018-06-05 16:04:40","2018-06-05 16:04:40");
INSERT INTO transactions VALUES("362","5","","13","","","QN7E8KLPFE0PW","","56","6","registered","","","21.45","0.00","0.00","0.00","21.45","","Success","2018-06-05 16:04:40","2018-06-05 16:04:40");
INSERT INTO transactions VALUES("363","5","10","12","","","SM0AAEOXHXMJZ","","73","3","registered","shakil.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","Test Notes goes here.","Success","2018-06-06 09:45:41","2018-06-06 09:45:41");
INSERT INTO transactions VALUES("364","10","5","12","","","SM0AAEOXHXMJZ","","73","4","registered","shakil.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here.","Success","2018-06-06 09:45:41","2018-06-06 09:45:41");
INSERT INTO transactions VALUES("365","5","10","12","","","OSMQ2T2QI5KHR","","74","3","registered","shakil.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","Test Notes goes here.","Success","2018-06-06 09:46:11","2018-06-06 09:46:11");
INSERT INTO transactions VALUES("366","10","5","12","","","OSMQ2T2QI5KHR","","74","4","registered","shakil.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here.","Success","2018-06-06 09:46:11","2018-06-06 09:46:11");
INSERT INTO transactions VALUES("367","5","10","12","","","IIR4HUURSRBPW","","14","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:50:57","2018-06-06 09:50:57");
INSERT INTO transactions VALUES("368","10","5","12","","","IIR4HUURSRBPW","","14","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:50:57","2018-06-07 13:15:53");
INSERT INTO transactions VALUES("369","5","10","12","","","ZNNZLSTTOVCBH","","15","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:51:03","2018-06-06 09:51:03");
INSERT INTO transactions VALUES("370","10","5","12","","","ZNNZLSTTOVCBH","","15","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:51:03","2018-06-07 13:19:25");
INSERT INTO transactions VALUES("371","5","10","12","","","LG4YYROQ38VNY","","16","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:51:49","2018-06-06 09:51:49");
INSERT INTO transactions VALUES("372","10","5","12","","","LG4YYROQ38VNY","","16","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:51:49","2018-06-07 13:19:39");
INSERT INTO transactions VALUES("373","5","10","12","","","71RCDCEFI7XJF","","17","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:51:58","2018-06-06 09:51:58");
INSERT INTO transactions VALUES("374","10","5","12","","","71RCDCEFI7XJF","","17","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:51:58","2018-06-07 13:19:48");
INSERT INTO transactions VALUES("375","5","10","12","","","JTVMAZYLGX7HN","","18","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:52:28","2018-06-06 09:52:28");
INSERT INTO transactions VALUES("376","10","5","12","","","JTVMAZYLGX7HN","","18","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:52:28","2018-06-07 13:19:58");
INSERT INTO transactions VALUES("377","5","10","12","","","4LLLAWAGAZTWG","","19","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:53:39","2018-06-06 09:53:39");
INSERT INTO transactions VALUES("378","10","5","12","","","4LLLAWAGAZTWG","","19","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:53:39","2018-06-07 13:20:07");
INSERT INTO transactions VALUES("379","5","10","12","","","MOUVDDCMPRN8T","","20","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:55:10","2018-06-06 09:55:10");
INSERT INTO transactions VALUES("380","10","5","12","","","MOUVDDCMPRN8T","","20","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:55:10","2018-06-07 13:20:15");
INSERT INTO transactions VALUES("381","15","","12","2","4","DO4FONEK7DZJG","","9","12","registered","","","650.00","0.00","0.00","0.00","650.00","","Success","2018-06-06 09:58:35","2018-06-06 09:58:35");
INSERT INTO transactions VALUES("382","5","10","12","","","IHLHX7TAPKL7V","","21","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 09:59:32","2018-06-06 09:59:32");
INSERT INTO transactions VALUES("383","10","5","12","","","IHLHX7TAPKL7V","","21","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 09:59:32","2018-06-07 13:20:24");
INSERT INTO transactions VALUES("384","15","15","12","1","1","JXS77CGA7F8MF","","10","11","registered","","","30.00","0.00","0.00","0.00","-30.00","","Success","2018-06-06 09:59:58","2018-06-06 09:59:58");
INSERT INTO transactions VALUES("385","15","15","12","1","1","JXS77CGA7F8MF","","10","12","registered","","","30.00","0.00","0.00","0.00","30.00","","Success","2018-06-06 09:59:58","2018-06-06 09:59:58");
INSERT INTO transactions VALUES("386","5","10","12","","","LTXJXESLR2JIS","","22","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 10:01:34","2018-06-06 10:01:34");
INSERT INTO transactions VALUES("387","10","5","12","","","LTXJXESLR2JIS","","22","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 10:01:34","2018-06-07 13:14:09");
INSERT INTO transactions VALUES("388","5","10","12","","","ILFKIFD3L91TL","","23","9","registered","","","10.00","6.00","0.60","16.00","26.60","Test Notes goes here","Success","2018-06-06 10:04:01","2018-06-06 10:07:39");
INSERT INTO transactions VALUES("389","10","5","12","","","ILFKIFD3L91TL","","23","10","registered","","","10.00","6.00","0.60","16.00","-26.60","Test Notes goes here","Success","2018-06-06 10:04:01","2018-06-07 13:13:57");
INSERT INTO transactions VALUES("390","5","10","12","","","KI2ID2ENZNFXY","","24","9","registered","","","10.00","0.00","0.00","0.00","10.00","Test Notes goes here","Pending","2018-06-06 10:15:57","2018-06-06 10:15:57");
INSERT INTO transactions VALUES("391","10","5","12","","","KI2ID2ENZNFXY","","24","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Test Notes goes here","Pending","2018-06-06 10:15:57","2018-06-07 13:13:24");
INSERT INTO transactions VALUES("395","5","","12","","","8T2VU7C7HQTE4","","57","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-06-06 10:19:41","2018-06-06 10:19:41");
INSERT INTO transactions VALUES("396","5","","13","","","8T2VU7C7HQTE4","","57","6","registered","","","9.10","0.00","0.00","0.00","9.10","","Success","2018-06-06 10:19:41","2018-06-06 10:19:41");
INSERT INTO transactions VALUES("397","5","","12","","","X9ZPH2WNYTUPU","","58","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-06-06 10:22:20","2018-06-06 10:22:20");
INSERT INTO transactions VALUES("398","5","","13","","","X9ZPH2WNYTUPU","","58","6","registered","","","9.10","0.00","0.00","0.00","9.10","","Success","2018-06-06 10:22:20","2018-06-06 10:22:20");
INSERT INTO transactions VALUES("401","20","15","12","1","4","23AMI5FK7U66S","","11","11","registered","","","11.00","0.00","0.00","0.00","-11.00","","Success","2018-06-06 10:40:42","2018-06-06 13:19:19");
INSERT INTO transactions VALUES("402","15","20","12","1","4","23AMI5FK7U66S","","11","12","registered","","","11.00","0.00","0.00","0.00","11.00","","Success","2018-06-06 10:40:42","2018-06-06 13:19:19");
INSERT INTO transactions VALUES("403","5","","13","","","YNFPAZWNCCVSX","","60","5","registered","","","14.00","0.00","1.96","14.00","-29.96","","Success","2018-06-06 11:14:55","2018-06-06 11:14:55");
INSERT INTO transactions VALUES("404","5","","12","","","YNFPAZWNCCVSX","","60","6","registered","","","21.54","0.00","0.00","0.00","21.54","","Success","2018-06-06 11:14:55","2018-06-06 11:14:55");
INSERT INTO transactions VALUES("405","5","","13","","","WHLR56TV23QR9","","61","5","registered","","","14.00","0.00","1.96","14.00","-29.96","","Success","2018-06-06 11:15:00","2018-06-06 11:15:00");
INSERT INTO transactions VALUES("406","5","","12","","","WHLR56TV23QR9","","61","6","registered","","","21.54","0.00","0.00","0.00","21.54","","Success","2018-06-06 11:15:00","2018-06-06 11:15:00");
INSERT INTO transactions VALUES("407","5","","13","","","FXHNUNEUEYNUC","","62","5","registered","","","14.00","0.00","1.96","14.00","-29.96","","Success","2018-06-06 11:15:54","2018-06-06 11:15:54");
INSERT INTO transactions VALUES("408","5","","12","","","FXHNUNEUEYNUC","","62","6","registered","","","21.54","0.00","0.00","0.00","21.54","","Success","2018-06-06 11:15:54","2018-06-06 11:15:54");
INSERT INTO transactions VALUES("409","5","","13","","","DFQRZGAPCLU9D","","63","5","registered","","","14.00","0.00","1.96","14.00","-29.96","","Success","2018-06-06 11:16:19","2018-06-06 11:16:19");
INSERT INTO transactions VALUES("410","5","","12","","","DFQRZGAPCLU9D","","63","6","registered","","","21.54","0.00","0.00","0.00","21.54","","Success","2018-06-06 11:16:19","2018-06-06 11:16:19");
INSERT INTO transactions VALUES("413","5","","13","","","J12ZI6ILGM5DB","","65","5","registered","","","14.00","0.00","1.96","14.00","-29.96","","Success","2018-06-06 11:19:01","2018-06-06 11:19:01");
INSERT INTO transactions VALUES("414","5","","12","","","J12ZI6ILGM5DB","","65","6","registered","","","21.54","0.00","0.00","0.00","21.54","","Success","2018-06-06 11:19:01","2018-06-06 11:19:01");
INSERT INTO transactions VALUES("415","5","","13","","","0TZMST0UQGMNA","","66","5","registered","","","14.00","0.00","1.96","14.00","-29.96","","Success","2018-06-06 11:22:18","2018-06-06 11:22:18");
INSERT INTO transactions VALUES("416","5","","12","","","0TZMST0UQGMNA","","66","6","registered","","","21.54","0.00","0.00","0.00","21.54","","Success","2018-06-06 11:22:18","2018-06-06 11:22:18");
INSERT INTO transactions VALUES("417","5","","14","","","QUXN6O7YHERL5","","67","5","registered","","","10.00","0.00","0.30","12.00","-22.30","","Success","2018-06-06 11:28:30","2018-06-06 11:28:30");
INSERT INTO transactions VALUES("418","5","","12","","","QUXN6O7YHERL5","","67","6","registered","","","15.38","0.00","0.00","0.00","15.38","","Success","2018-06-06 11:28:30","2018-06-06 11:28:30");
INSERT INTO transactions VALUES("419","5","","12","2","","6DNIKYC2HAYNS","","23","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-06 11:54:14","2018-06-06 11:54:14");
INSERT INTO transactions VALUES("420","5","","12","2","","HLRVGWPVI6HDU","","24","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-06 11:59:55","2018-06-06 11:59:55");
INSERT INTO transactions VALUES("421","5","","12","2","","NOQQMWLSR4QLH","","25","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-06 12:00:37","2018-06-06 12:00:37");
INSERT INTO transactions VALUES("423","5","","12","2","","DFKE7ZOFXCJPE","","27","1","registered","","","41.00","12.00","4.92","11.00","56.92","","Success","2018-06-06 12:01:31","2018-06-06 12:01:31");
INSERT INTO transactions VALUES("424","5","","12","2","","DNZBAC1ESFBBF","","28","1","registered","","","41.00","12.00","4.92","11.00","56.92","fsdafsdafdsaf","Success","2018-06-06 12:05:25","2018-06-06 12:17:40");
INSERT INTO transactions VALUES("432","7","","12","","","DCPJXPMYVADTF","","7","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Pending","2018-06-06 12:18:42","2018-06-06 12:18:42");
INSERT INTO transactions VALUES("434","20","15","12","1","4","MT9M2UNVMJ8NH","","12","11","registered","","","20.00","0.00","0.00","0.00","-20.00","","Pending","2018-06-06 13:20:42","2018-06-06 16:06:39");
INSERT INTO transactions VALUES("435","15","20","12","1","4","MT9M2UNVMJ8NH","","12","12","registered","","","20.00","0.00","0.00","0.00","20.00","","Success","2018-06-06 13:20:42","2018-06-06 15:52:08");
INSERT INTO transactions VALUES("436","7","","12","","","9VKVJQQY9P8BO","","68","5","registered","","","2.50","3.00","0.08","12.00","-14.57","","Success","2018-06-06 14:49:40","2018-06-06 14:49:40");
INSERT INTO transactions VALUES("437","7","","14","","","9VKVJQQY9P8BO","","68","6","registered","","","1.62","0.00","0.00","0.00","1.62","","Success","2018-06-06 14:49:40","2018-06-06 14:49:40");
INSERT INTO transactions VALUES("438","7","","12","","","TPFZJWBVTCSQK","","69","5","registered","","","100.00","3.00","3.00","12.00","-115.00","","Success","2018-06-06 14:57:23","2018-06-06 14:57:23");
INSERT INTO transactions VALUES("439","7","","14","","","TPFZJWBVTCSQK","","69","6","registered","","","65.00","0.00","0.00","0.00","65.00","","Success","2018-06-06 14:57:23","2018-06-06 14:57:23");
INSERT INTO transactions VALUES("440","7","","14","","","PQYSQVBZL6ZQH","","70","5","registered","","","10.40","0.00","0.31","12.00","-22.71","","Success","2018-06-06 14:58:45","2018-06-06 14:58:45");
INSERT INTO transactions VALUES("441","7","","12","","","PQYSQVBZL6ZQH","","70","6","registered","","","16.00","0.00","0.00","0.00","16.00","","Success","2018-06-06 14:58:45","2018-06-06 14:58:45");
INSERT INTO transactions VALUES("442","5","10","12","","","97LK5X2O4N7HX","","78","3","registered","shakil.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","Test Payment","Success","2018-06-06 15:05:47","2018-06-06 15:05:47");
INSERT INTO transactions VALUES("443","10","5","12","","","97LK5X2O4N7HX","","78","4","registered","shakil.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","Test Payment","Success","2018-06-06 15:05:47","2018-06-06 15:05:47");
INSERT INTO transactions VALUES("444","5","10","12","","","8LM3US8D61GWW","","79","3","registered","shakil.techvill@gmail.com","","3.00","3.00","0.09","13.00","-16.09","Test","Success","2018-06-06 15:11:09","2018-06-06 15:11:09");
INSERT INTO transactions VALUES("445","10","5","12","","","8LM3US8D61GWW","","79","4","registered","shakil.techvill@gmail.com","","3.00","0.00","0.00","0.00","3.00","Test","Success","2018-06-06 15:11:09","2018-06-06 15:11:09");
INSERT INTO transactions VALUES("446","24","","12","3","","KGSDI3PXI90SE","","31","1","registered","","","500.00","12.00","60.00","11.00","571.00","","Success","2018-06-06 15:33:48","2018-06-06 15:40:50");
INSERT INTO transactions VALUES("447","24","","12","2","","EBFEZQZOA5HEK","","32","1","registered","","","50.00","12.00","6.00","11.00","67.00","","Success","2018-06-06 15:53:25","2018-06-06 15:53:25");
INSERT INTO transactions VALUES("448","24","","14","2","","HS1ORTXUDE9CE","","33","1","registered","","","50.00","5.00","2.50","0.00","52.50","","Success","2018-06-06 15:55:18","2018-06-06 15:55:18");
INSERT INTO transactions VALUES("449","5","","12","","","ZEZYXQ3QHI6YH","","80","3","unregistered","atik@gmail.com","","3.00","3.00","0.09","13.00","-16.09","Unown","Pending","2018-06-06 16:05:17","2018-06-06 16:05:17");
INSERT INTO transactions VALUES("450","","5","12","","","ZEZYXQ3QHI6YH","","80","4","unregistered","atik@gmail.com","","3.00","0.00","0.00","0.00","3.00","Unown","Pending","2018-06-06 16:05:17","2018-06-06 16:05:17");
INSERT INTO transactions VALUES("451","24","","14","","","WLCIHCTNJ1QFE","","71","5","registered","","","2.00","0.00","0.06","12.00","-14.06","","Success","2018-06-06 16:06:26","2018-06-06 16:06:26");
INSERT INTO transactions VALUES("452","24","","12","","","WLCIHCTNJ1QFE","","71","6","registered","","","3.08","0.00","0.00","0.00","3.08","","Success","2018-06-06 16:06:26","2018-06-06 16:06:26");
INSERT INTO transactions VALUES("453","5","10","12","","","WHGS6DMOFIPBE","","81","3","registered","shakil.techvill@gmail.com","","3.00","3.00","0.09","13.00","-16.09","Test","Success","2018-06-07 10:06:45","2018-06-07 10:06:45");
INSERT INTO transactions VALUES("454","10","5","12","","","WHGS6DMOFIPBE","","81","4","registered","shakil.techvill@gmail.com","","3.00","0.00","0.00","0.00","3.00","Test","Success","2018-06-07 10:06:45","2018-06-07 10:06:45");
INSERT INTO transactions VALUES("455","5","10","12","","","ITZMORZBVAZYM","","25","9","registered","","","3.00","0.00","0.00","0.00","3.00","Test","Pending","2018-06-07 10:22:29","2018-06-07 10:22:29");
INSERT INTO transactions VALUES("456","10","5","12","","","ITZMORZBVAZYM","","25","10","registered","","","3.00","0.00","0.00","0.00","-3.00","Test","Pending","2018-06-07 10:22:29","2018-06-07 13:13:08");
INSERT INTO transactions VALUES("457","5","10","12","","","7SBDEKLG5OSGY","","82","3","registered","shakil.techvill@gmail.com","","3.00","3.00","0.09","13.00","-16.09","Test","Success","2018-06-07 10:32:21","2018-06-07 10:32:21");
INSERT INTO transactions VALUES("458","10","5","12","","","7SBDEKLG5OSGY","","82","4","registered","shakil.techvill@gmail.com","","3.00","0.00","0.00","0.00","3.00","Test","Success","2018-06-07 10:32:21","2018-06-07 10:32:21");
INSERT INTO transactions VALUES("459","5","10","12","","","LPYI6PSYOESVO","","26","9","registered","","","3.00","0.00","0.00","0.00","3.00","Test","Pending","2018-06-07 10:32:55","2018-06-07 10:32:55");
INSERT INTO transactions VALUES("460","10","5","12","","","LPYI6PSYOESVO","","26","10","registered","","","3.00","0.00","0.00","0.00","-3.00","Test","Pending","2018-06-07 10:32:55","2018-06-07 13:12:56");
INSERT INTO transactions VALUES("461","10","5","12","","","U3FZXNQOFMXXP","","83","3","registered","aminul.techvill@gmail.com","","3.00","3.00","0.09","13.00","-16.09","1","Success","2018-06-07 10:36:44","2018-06-07 10:36:44");
INSERT INTO transactions VALUES("462","5","10","12","","","U3FZXNQOFMXXP","","83","4","registered","aminul.techvill@gmail.com","","3.00","0.00","0.00","0.00","3.00","1","Success","2018-06-07 10:36:44","2018-06-07 10:36:44");
INSERT INTO transactions VALUES("463","10","","12","","","NUQYPZMT7QJLI","","27","9","unregistered","admin@techvill.net","","3.00","0.00","0.00","0.00","3.00","1","Pending","2018-06-07 10:37:09","2018-06-07 10:37:09");
INSERT INTO transactions VALUES("464","","10","12","","","NUQYPZMT7QJLI","","27","10","unregistered","admin@techvill.net","","3.00","0.00","0.00","0.00","-3.00","1","Pending","2018-06-07 10:37:09","2018-06-07 13:12:29");
INSERT INTO transactions VALUES("465","10","5","12","","","KFMMZLIF6LRFT","","28","9","registered","","","3.00","0.00","0.00","0.00","3.00","1","Pending","2018-06-07 10:37:39","2018-06-07 10:37:39");
INSERT INTO transactions VALUES("466","5","10","12","","","KFMMZLIF6LRFT","","28","10","registered","","","3.00","0.00","0.00","0.00","-3.00","1","Pending","2018-06-07 10:37:39","2018-06-07 13:11:56");
INSERT INTO transactions VALUES("467","10","5","12","","","92HN504ZVV57Z","","84","3","registered","aminul.techvill@gmail.com","","3.00","3.00","0.09","13.00","-16.09","1","Success","2018-06-07 10:41:39","2018-06-07 10:41:39");
INSERT INTO transactions VALUES("468","5","10","12","","","92HN504ZVV57Z","","84","4","registered","aminul.techvill@gmail.com","","3.00","0.00","0.00","0.00","3.00","1","Success","2018-06-07 10:41:39","2018-06-07 10:41:39");
INSERT INTO transactions VALUES("469","10","5","12","","","BGOLTE11HR5RK","","29","9","registered","","","6.00","6.00","0.36","16.00","22.36","1","Success","2018-06-07 10:42:06","2018-06-07 12:16:19");
INSERT INTO transactions VALUES("470","5","10","12","","","BGOLTE11HR5RK","","29","10","registered","","","6.00","6.00","0.36","16.00","-22.36","1","Success","2018-06-07 10:42:06","2018-06-07 13:11:43");
INSERT INTO transactions VALUES("471","10","","12","","","MPMFXBMEPSCGF","","85","3","unregistered","atik@gmail.com","","3.00","3.00","0.09","13.00","-16.09","1","Pending","2018-06-07 10:45:52","2018-06-07 10:45:52");
INSERT INTO transactions VALUES("472","","10","12","","","MPMFXBMEPSCGF","","85","4","unregistered","atik@gmail.com","","3.00","0.00","0.00","0.00","3.00","1","Pending","2018-06-07 10:45:52","2018-06-07 10:45:52");
INSERT INTO transactions VALUES("473","24","","12","","","MWLCSQWFPAVCQ","","72","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-06-07 11:07:31","2018-06-07 11:07:31");
INSERT INTO transactions VALUES("474","24","","13","","","MWLCSQWFPAVCQ","","72","6","registered","","","9.75","0.00","0.00","0.00","9.75","","Success","2018-06-07 11:07:31","2018-06-07 11:07:31");
INSERT INTO transactions VALUES("475","24","","12","3","","AT8RZZPKD7XPL","","5","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Pending","2018-06-07 11:28:52","2018-06-07 11:28:52");
INSERT INTO transactions VALUES("476","4","","12","","","PISIZP7OJV4V7","","8","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Pending","2018-06-07 11:56:32","2018-06-07 11:56:32");
INSERT INTO transactions VALUES("477","24","","13","3","","M8QGGUDPQ8UJT","","6","2","registered","","","9.00","8.00","0.72","18.00","-27.72","","Pending","2018-06-07 11:58:47","2018-06-07 11:58:47");
INSERT INTO transactions VALUES("478","24","","12","","","LJWL6WGFXU6BU","","73","5","registered","","","35.94","3.00","1.08","12.00","-49.02","","Blocked","2018-06-07 12:02:15","2018-06-26 17:18:05");
INSERT INTO transactions VALUES("479","24","","14","","","LJWL6WGFXU6BU","","73","6","registered","","","35.94","0.00","0.00","0.00","35.94","","Blocked","2018-06-07 12:02:15","2018-06-26 17:18:05");
INSERT INTO transactions VALUES("480","24","","14","","","LM0G8VBXJS9HG","","74","5","registered","","","70.00","0.00","2.10","12.00","-84.10","","Success","2018-06-07 12:05:04","2018-06-07 12:05:04");
INSERT INTO transactions VALUES("481","24","","12","","","LM0G8VBXJS9HG","","74","6","registered","","","70.00","0.00","0.00","0.00","70.00","","Success","2018-06-07 12:05:04","2018-06-07 12:05:04");
INSERT INTO transactions VALUES("482","24","","13","3","","2ZZKUYK6XKSSW","","34","1","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-06-07 12:20:41","2018-06-07 12:20:41");
INSERT INTO transactions VALUES("483","24","","13","","","ONTVK3B8WXFYC","","75","5","registered","","","30.00","0.00","4.20","14.00","-48.20","","Success","2018-06-07 12:22:00","2018-06-07 12:22:00");
INSERT INTO transactions VALUES("484","24","","12","","","ONTVK3B8WXFYC","","75","6","registered","","","46.15","0.00","0.00","0.00","46.15","","Success","2018-06-07 12:22:00","2018-06-07 12:22:00");
INSERT INTO transactions VALUES("485","24","","16","3","","GI0VDI77MHDKK","","35","1","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-06-07 12:23:55","2018-06-07 12:23:55");
INSERT INTO transactions VALUES("486","24","","14","3","","MVYE0IGTCJDF8","","36","1","registered","","","50.00","5.00","2.50","0.00","52.50","","Success","2018-06-07 12:40:55","2018-06-07 12:40:55");
INSERT INTO transactions VALUES("489","4","","12","","","JMZWBPCZTPLQZ","","9","7","registered","","","10.33","0.00","2.00","2.00","-12.54","","Pending","2018-06-07 13:02:48","2018-06-07 13:02:48");
INSERT INTO transactions VALUES("490","4","5","12","","","G74FGOVNLUIXV","","87","3","registered","aminul.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","10","Success","2018-06-07 13:04:17","2018-06-07 13:04:17");
INSERT INTO transactions VALUES("491","5","4","12","","","G74FGOVNLUIXV","","87","4","registered","aminul.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","10","Success","2018-06-07 13:04:17","2018-06-07 13:04:17");
INSERT INTO transactions VALUES("493","4","","12","","","DYWZRW61R8H80","","10","7","registered","","","5.00","0.00","2.00","2.00","-7.10","","Pending","2018-06-07 13:12:56","2018-06-07 13:12:56");
INSERT INTO transactions VALUES("494","4","4","12","","","VLTNHQMRIRHIK","","11","7","registered","","","5.00","0.00","2.00","2.00","-7.10","","Success","2018-06-07 13:14:16","2018-06-07 14:13:02");
INSERT INTO transactions VALUES("495","4","4","12","","","ZDJPQXJ66ZHS1","","12","7","registered","","","2.22","0.00","2.00","2.00","-4.26","","Success","2018-06-07 13:38:35","2018-06-07 14:12:02");
INSERT INTO transactions VALUES("496","24","29","16","","","ENLRGLO9HSAJH","","88","3","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","-10.00","test money send","Success","2018-06-07 13:51:42","2018-06-07 13:51:42");
INSERT INTO transactions VALUES("497","29","24","16","","","ENLRGLO9HSAJH","","88","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","test money send","Success","2018-06-07 13:51:42","2018-06-07 13:51:42");
INSERT INTO transactions VALUES("498","15","6","12","","","VHY1OI8JLWUYN","","30","9","registered","","","50.00","0.00","0.00","0.00","50.00","Test","Pending","2018-06-07 14:01:32","2018-06-07 14:01:32");
INSERT INTO transactions VALUES("499","6","15","12","","","VHY1OI8JLWUYN","","30","10","registered","","","50.00","0.00","0.00","0.00","-50.00","Test","Pending","2018-06-07 14:01:32","2018-06-07 14:01:32");
INSERT INTO transactions VALUES("500","4","4","12","","","XG1HOHBZQRIYL","","12","8","registered","","","2.22","0.00","0.00","0.00","2.22","","Success","2018-06-07 14:12:03","2018-06-07 14:12:03");
INSERT INTO transactions VALUES("501","4","4","12","","","Y4FUD0KGSPRQE","","11","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-06-07 14:13:02","2018-06-07 14:13:02");
INSERT INTO transactions VALUES("502","7","","12","","","XYRSDHLKQ9GGT","","13","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Pending","2018-06-07 14:17:39","2018-06-07 14:17:39");
INSERT INTO transactions VALUES("503","4","","12","1","","6JIFPK1V0CNHE","","7","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Pending","2018-06-07 14:23:32","2018-06-07 14:23:32");
INSERT INTO transactions VALUES("504","15","20","12","","","YINIDBXCYUHTP","","31","9","registered","","","199.00","0.00","0.00","0.00","199.00","yyyyy","Pending","2018-06-07 14:35:33","2018-06-07 14:35:33");
INSERT INTO transactions VALUES("505","20","15","12","","","YINIDBXCYUHTP","","31","10","registered","","","199.00","0.00","0.00","0.00","-199.00","yyyyy","Pending","2018-06-07 14:35:33","2018-06-07 14:35:33");
INSERT INTO transactions VALUES("506","15","20","12","","","4FGPR6HWNQVSK","","32","9","registered","","","199.00","0.00","0.00","0.00","199.00","yyyyy","Pending","2018-06-07 14:37:03","2018-06-07 14:37:03");
INSERT INTO transactions VALUES("507","20","15","12","","","4FGPR6HWNQVSK","","32","10","registered","","","199.00","0.00","0.00","0.00","-199.00","yyyyy","Pending","2018-06-07 14:37:03","2018-06-07 14:37:03");
INSERT INTO transactions VALUES("508","4","4","12","2","9","2XUTUUKPNDDT4","","13","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-07 14:37:38","2018-06-07 14:37:38");
INSERT INTO transactions VALUES("509","15","20","12","","","COZOPQALDPMGU","","33","9","registered","","","199.00","0.00","0.00","0.00","199.00","yyyyy","Pending","2018-06-07 14:38:06","2018-06-07 14:38:06");
INSERT INTO transactions VALUES("510","20","15","12","","","COZOPQALDPMGU","","33","10","registered","","","199.00","0.00","0.00","0.00","-199.00","yyyyy","Pending","2018-06-07 14:38:06","2018-06-07 14:38:06");
INSERT INTO transactions VALUES("511","15","20","12","","","JUWON0XS10WNT","","34","9","registered","","","199.00","0.00","0.00","0.00","199.00","yyyyy","Pending","2018-06-07 14:39:51","2018-06-07 14:39:51");
INSERT INTO transactions VALUES("512","20","15","12","","","JUWON0XS10WNT","","34","10","registered","","","199.00","0.00","0.00","0.00","-199.00","yyyyy","Pending","2018-06-07 14:39:51","2018-06-07 14:39:51");
INSERT INTO transactions VALUES("513","20","15","12","","","HX9CLQ2MAIBLS","","35","9","registered","","","99.00","0.00","0.00","0.00","99.00","99","Pending","2018-06-07 14:43:08","2018-06-07 14:43:08");
INSERT INTO transactions VALUES("514","15","20","12","","","HX9CLQ2MAIBLS","","35","10","registered","","","99.00","0.00","0.00","0.00","-99.00","99","Pending","2018-06-07 14:43:08","2018-06-07 14:43:08");
INSERT INTO transactions VALUES("515","20","15","12","","","IGPDSRS2F8ZKN","","36","9","registered","","","99.00","0.00","0.00","0.00","99.00","99","Pending","2018-06-07 14:43:17","2018-06-07 14:43:17");
INSERT INTO transactions VALUES("516","15","20","12","","","IGPDSRS2F8ZKN","","36","10","registered","","","99.00","0.00","0.00","0.00","-99.00","99","Pending","2018-06-07 14:43:17","2018-06-07 14:43:17");
INSERT INTO transactions VALUES("517","20","15","12","","","BSW17SN6C5IQV","","37","9","registered","","","99.00","0.00","0.00","0.00","99.00","99","Pending","2018-06-07 14:43:22","2018-06-07 14:43:22");
INSERT INTO transactions VALUES("518","15","20","12","","","BSW17SN6C5IQV","","37","10","registered","","","99.00","0.00","0.00","0.00","-99.00","99","Pending","2018-06-07 14:43:22","2018-06-07 14:43:22");
INSERT INTO transactions VALUES("519","20","15","12","","","FI6BU2MMJEFK9","","38","9","registered","","","99.00","6.00","5.94","16.00","120.94","99","Success","2018-06-07 14:44:31","2018-06-07 15:00:54");
INSERT INTO transactions VALUES("520","15","20","12","","","FI6BU2MMJEFK9","","38","10","registered","","","99.00","6.00","5.94","16.00","-120.94","99","Success","2018-06-07 14:44:31","2018-06-07 15:00:55");
INSERT INTO transactions VALUES("521","20","15","14","","","EG7OAWHWEI7LJ","","89","3","registered","parvez.techvill@gmail.com","","88.00","5.00","4.40","5.00","-97.40","88","Success","2018-06-07 15:07:19","2018-06-07 15:07:19");
INSERT INTO transactions VALUES("522","15","20","14","","","EG7OAWHWEI7LJ","","89","4","registered","parvez.techvill@gmail.com","","88.00","0.00","0.00","0.00","88.00","88","Success","2018-06-07 15:07:19","2018-06-07 15:07:19");
INSERT INTO transactions VALUES("523","20","15","12","","","LL6OLQDJ42H4A","","39","9","registered","","","77.00","6.00","4.62","16.00","97.62","77","Success","2018-06-07 15:07:56","2018-06-07 15:08:22");
INSERT INTO transactions VALUES("524","15","20","12","","","LL6OLQDJ42H4A","","39","10","registered","","","77.00","6.00","4.62","16.00","-97.62","77","Success","2018-06-07 15:07:56","2018-06-07 15:08:22");
INSERT INTO transactions VALUES("525","24","","12","","","ZG3IRVAU3OIP6","","14","7","registered","","","5.00","0.00","2.00","2.00","-7.10","","Pending","2018-06-07 15:30:28","2018-06-07 15:30:28");
INSERT INTO transactions VALUES("526","20","","12","2","12","LGIQQU2KRJQVI","","14","12","registered","","","7.00","0.00","0.00","0.00","7.00","","Success","2018-06-07 15:40:55","2018-06-07 15:40:55");
INSERT INTO transactions VALUES("527","24","29","12","","","H9YGGX8YKXV7C","","90","3","registered","mahfuzasinthy@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-07 15:58:52","2018-06-07 15:58:52");
INSERT INTO transactions VALUES("528","29","24","12","","","H9YGGX8YKXV7C","","90","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-07 15:58:52","2018-06-07 15:58:52");
INSERT INTO transactions VALUES("529","20","","12","2","12","BRGQOCY2KIPT5","","15","12","registered","","","7.00","0.00","0.00","0.00","7.00","","Success","2018-06-10 11:01:41","2018-06-10 11:01:41");
INSERT INTO transactions VALUES("530","20","20","12","1","12","TFQD3XMMWYLG8","","16","11","registered","","","7.00","0.00","0.00","0.00","-7.00","","Success","2018-06-10 11:03:16","2018-06-10 11:03:16");
INSERT INTO transactions VALUES("531","20","20","12","1","12","TFQD3XMMWYLG8","","16","12","registered","","","7.00","0.00","0.00","0.00","7.00","","Success","2018-06-10 11:03:16","2018-06-10 11:03:16");
INSERT INTO transactions VALUES("532","24","29","26","","","AHDBZKM6RYPEX","","40","9","registered","","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-06-10 12:35:49","2018-06-10 12:35:49");
INSERT INTO transactions VALUES("533","29","24","26","","","AHDBZKM6RYPEX","","40","10","registered","","","20.00","0.00","0.00","0.00","-20.00","test","Blocked","2018-06-10 12:35:50","2018-06-10 15:17:01");
INSERT INTO transactions VALUES("534","20","","12","2","","DENHBDFYSNOCF","","37","1","registered","","","1000.00","12.00","120.00","11.00","1131.00","","Success","2018-06-10 14:47:24","2018-06-10 14:47:24");
INSERT INTO transactions VALUES("535","20","","26","2","","AQMCDVU6OHGDA","","38","1","registered","","","100.00","10.00","10.00","5.00","115.00","","Success","2018-06-10 14:52:07","2018-06-10 14:52:07");
INSERT INTO transactions VALUES("536","4","4","12","1","9","CDXXCYIVZPCXV","","17","11","registered","","","50.00","0.00","0.00","0.00","-50.00","","Success","2018-06-10 14:57:36","2018-06-10 14:57:36");
INSERT INTO transactions VALUES("537","4","4","12","1","9","CDXXCYIVZPCXV","","17","12","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-06-10 14:57:36","2018-06-10 14:57:36");
INSERT INTO transactions VALUES("538","6","4","12","1","9","T6TINABWVK0AA","","18","11","registered","","","50.00","0.00","0.00","0.00","-50.00","","Success","2018-06-10 15:15:42","2018-06-10 15:15:42");
INSERT INTO transactions VALUES("539","4","6","12","1","9","T6TINABWVK0AA","","18","12","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-06-10 15:15:43","2018-06-10 15:15:43");
INSERT INTO transactions VALUES("540","24","29","12","","","OFIHPDSDVQI2Q","","91","3","registered","mahfuzasinthy@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-10 15:25:19","2018-06-10 15:25:19");
INSERT INTO transactions VALUES("541","29","24","12","","","OFIHPDSDVQI2Q","","91","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-10 15:25:19","2018-06-10 15:25:19");
INSERT INTO transactions VALUES("542","24","29","14","","","DBUT00QWJUIZQ","","41","9","registered","","","10.00","0.00","0.00","0.00","10.00","Give 10 EUR","Pending","2018-06-10 15:27:17","2018-06-10 15:27:17");
INSERT INTO transactions VALUES("543","29","24","14","","","DBUT00QWJUIZQ","","41","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Give 10 EUR","Pending","2018-06-10 15:27:17","2018-06-10 15:27:17");
INSERT INTO transactions VALUES("544","24","29","14","","","FSRESYZMS7X58","","42","9","registered","","","2.00","0.00","0.00","0.00","2.00","test","Pending","2018-06-10 15:27:46","2018-06-10 15:27:46");
INSERT INTO transactions VALUES("545","29","24","14","","","FSRESYZMS7X58","","42","10","registered","","","2.00","0.00","0.00","0.00","-2.00","test","Pending","2018-06-10 15:27:46","2018-06-10 15:27:46");
INSERT INTO transactions VALUES("546","24","29","20","","","Z6GVATHFGALWR","","43","9","registered","","","1.00","0.00","0.00","0.00","1.00","test","Pending","2018-06-10 15:29:01","2018-06-10 15:29:01");
INSERT INTO transactions VALUES("547","29","24","20","","","Z6GVATHFGALWR","","43","10","registered","","","1.00","0.00","0.00","0.00","-1.00","test","Pending","2018-06-10 15:29:01","2018-06-10 15:29:01");
INSERT INTO transactions VALUES("548","24","5","23","","","3NMXDK1XXEUU7","","44","9","registered","","","3.00","0.00","0.00","0.00","3.00","test","Pending","2018-06-10 15:33:59","2018-06-10 15:33:59");
INSERT INTO transactions VALUES("549","5","24","23","","","3NMXDK1XXEUU7","","44","10","registered","","","3.00","0.00","0.00","0.00","-3.00","test","Pending","2018-06-10 15:33:59","2018-06-10 15:33:59");
INSERT INTO transactions VALUES("550","5","","12","","","TBKNSKKUE1MHG","","45","9","unregistered","ashraf.techvill@gmail.com","","23.00","0.00","0.00","0.00","23.00","sdasdafsda","Pending","2018-06-10 15:41:34","2018-06-10 15:41:34");
INSERT INTO transactions VALUES("551","","5","12","","","TBKNSKKUE1MHG","","45","10","unregistered","ashraf.techvill@gmail.com","","23.00","0.00","0.00","0.00","-23.00","sdasdafsda","Pending","2018-06-10 15:41:34","2018-06-10 15:41:34");
INSERT INTO transactions VALUES("552","6","4","12","1","9","9LQ3ROBFVVW8F","","19","11","registered","","","50.00","0.00","0.00","0.00","-50.00","","Success","2018-06-11 10:12:33","2018-06-11 10:12:33");
INSERT INTO transactions VALUES("553","4","6","12","1","9","9LQ3ROBFVVW8F","","19","12","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-06-11 10:12:33","2018-06-11 10:12:33");
INSERT INTO transactions VALUES("554","24","","12","2","","2Q5B1Q2ONUS88","","39","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-06-11 10:38:25","2018-06-11 10:38:25");
INSERT INTO transactions VALUES("555","24","","12","3","","BOY5T6401GMTF","","8","2","registered","","","20.00","5.00","1.00","10.00","-31.00","","Pending","2018-06-11 10:45:13","2018-06-13 13:03:54");
INSERT INTO transactions VALUES("556","24","","12","","","Q7Y5YKJ5GL4JN","","76","5","registered","","","10.00","3.00","0.30","12.00","-22.30","","Blocked","2018-06-11 10:48:10","2018-06-26 17:17:55");
INSERT INTO transactions VALUES("557","24","","14","","","Q7Y5YKJ5GL4JN","","76","6","registered","","","8.50","0.00","0.00","0.00","8.50","","Blocked","2018-06-11 10:48:10","2018-06-26 17:17:55");
INSERT INTO transactions VALUES("558","24","","14","2","","4FHLSKL0M60XN","","40","1","registered","","","500.00","5.00","25.00","0.00","525.00","","Success","2018-06-11 11:19:07","2018-06-11 11:19:07");
INSERT INTO transactions VALUES("559","24","29","12","","","JRFXXSGBWTLMC","","92","3","registered","mahfuzasinthy@gmail.com","","3.00","3.00","0.09","13.00","-16.09","test","Refund","2018-06-11 11:20:43","2018-06-11 11:42:28");
INSERT INTO transactions VALUES("560","29","24","12","","","JRFXXSGBWTLMC","","92","4","registered","mahfuzasinthy@gmail.com","","3.00","0.00","0.00","0.00","3.00","test","Refund","2018-06-11 11:20:43","2018-06-11 11:42:28");
INSERT INTO transactions VALUES("561","24","29","19","","","FFBZDY55MDH2Y","","46","9","registered","","","5.00","0.00","0.00","0.00","5.00","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter","Pending","2018-06-11 11:27:24","2018-06-11 11:27:24");
INSERT INTO transactions VALUES("562","29","24","19","","","FFBZDY55MDH2Y","","46","10","registered","","","5.00","0.00","0.00","0.00","-5.00","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter","Pending","2018-06-11 11:27:25","2018-06-11 11:27:25");
INSERT INTO transactions VALUES("563","24","29","12","","","RFZYV4AW6EISL","","47","9","registered","","","6.00","0.00","0.00","0.00","6.00","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter","Success","2018-06-11 11:52:11","2018-06-22 15:09:41");
INSERT INTO transactions VALUES("564","29","24","12","","","RFZYV4AW6EISL","","47","10","registered","","","6.00","6.00","0.36","16.00","-22.36","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter","Success","2018-06-11 11:52:11","2018-06-11 12:00:54");
INSERT INTO transactions VALUES("565","29","","12","3","","MYJXBXMLIU1FE","","41","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-06-11 12:03:31","2018-06-11 12:03:31");
INSERT INTO transactions VALUES("566","24","29","12","","","31YTEMEDRGXWH","","48","9","registered","","","10.00","0.00","0.00","0.00","10.00","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter","Pending","2018-06-11 12:06:26","2018-06-11 12:06:26");
INSERT INTO transactions VALUES("567","29","24","12","","","31YTEMEDRGXWH","","48","10","registered","","","10.00","0.00","0.00","0.00","-10.00","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter","Pending","2018-06-11 12:06:26","2018-06-11 12:06:26");
INSERT INTO transactions VALUES("568","24","29","12","","","OCFVHJHZZU4CQ","IHC7GOGTFZW3K","49","9","registered","","","8.00","0.00","0.00","0.00","8.00","tt","Success","2018-06-11 12:13:42","2018-06-22 15:35:24");
INSERT INTO transactions VALUES("569","29","24","12","","","OCFVHJHZZU4CQ","IHC7GOGTFZW3K","49","10","registered","","","8.00","6.00","0.48","16.00","-24.48","tt","Success","2018-06-11 12:13:42","2018-06-22 15:35:21");
INSERT INTO transactions VALUES("570","24","29","14","","","OJED7FSW4VGGN","","50","9","registered","","","5.00","0.00","0.00","0.00","5.00","after sending request","Pending","2018-06-11 12:24:43","2018-06-11 12:24:43");
INSERT INTO transactions VALUES("571","29","24","14","","","OJED7FSW4VGGN","","50","10","registered","","","5.00","0.00","0.00","0.00","-5.00","after sending request","Pending","2018-06-11 12:24:43","2018-06-11 12:24:43");
INSERT INTO transactions VALUES("572","24","29","16","","","1UWBCNSRNLZZF","","51","9","registered","","","5.00","0.00","0.00","0.00","5.00","test","Blocked","2018-06-11 12:26:12","2018-07-03 19:02:14");
INSERT INTO transactions VALUES("573","29","24","16","","","1UWBCNSRNLZZF","","51","10","registered","","","5.00","0.00","0.00","0.00","-5.00","test","Blocked","2018-06-11 12:26:12","2018-07-03 19:02:14");
INSERT INTO transactions VALUES("574","7","","12","","","X51WKXWB077EO","","15","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Pending","2018-06-11 13:11:07","2018-06-11 13:11:07");
INSERT INTO transactions VALUES("575","24","","12","","","I6ZY5NEGKRLGD","","16","7","registered","","","5.00","0.00","2.00","2.00","-7.10","","Pending","2018-06-11 14:13:03","2018-06-11 14:13:03");
INSERT INTO transactions VALUES("576","15","20","12","","","5SJFWUQX1YWS4","YT23WB0GD2JSS","93","3","registered","parvez.agvbd@gmail.com","","77.00","3.00","2.31","13.00","-92.31","77","Success","2018-06-12 09:45:43","2018-06-12 12:32:11");
INSERT INTO transactions VALUES("577","20","15","12","","","5SJFWUQX1YWS4","YT23WB0GD2JSS","93","4","registered","parvez.agvbd@gmail.com","","77.00","0.00","0.00","0.00","77.00","77","Success","2018-06-12 09:45:44","2018-06-12 12:32:11");
INSERT INTO transactions VALUES("578","4","4","12","","","SAFFQGINDJDHX","","12","8","registered","","","2.22","0.00","0.00","0.00","2.22","","Success","2018-06-12 10:01:58","2018-06-12 10:01:58");
INSERT INTO transactions VALUES("579","4","4","12","","","PFCKSFUCQK63M","","17","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Success","2018-06-12 10:29:00","2018-06-12 10:29:12");
INSERT INTO transactions VALUES("580","4","4","12","","","1D6TMHNIMT5GH","","17","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-06-12 10:29:12","2018-06-12 10:29:12");
INSERT INTO transactions VALUES("581","24","","12","3","","EGH81LOAOTLFP","","42","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-06-12 11:35:39","2018-06-12 11:35:39");
INSERT INTO transactions VALUES("582","20","20","12","","","YT23WB0GD2JSS","5SJFWUQX1YWS4","93","3","registered","parvez.agvbd@gmail.com","","77.00","3.00","2.31","13.00","92.31","77","Refund","2018-06-12 12:32:11","2018-06-12 12:32:11");
INSERT INTO transactions VALUES("583","20","20","12","","","YT23WB0GD2JSS","5SJFWUQX1YWS4","93","4","registered","parvez.agvbd@gmail.com","","77.00","0.00","0.00","0.00","-77.00","77","Refund","2018-06-12 12:32:12","2018-06-12 12:33:58");
INSERT INTO transactions VALUES("584","15","20","12","","","PIQXW43AIDJDZ","REPAICDQUI0WO","95","3","registered","parvez.agvbd@gmail.com","","331.00","3.00","9.93","13.00","-353.93","gg","Success","2018-06-12 12:46:08","2018-06-12 12:46:26");
INSERT INTO transactions VALUES("585","20","15","12","","","PIQXW43AIDJDZ","REPAICDQUI0WO","95","4","registered","parvez.agvbd@gmail.com","","331.00","0.00","0.00","0.00","331.00","gg","Success","2018-06-12 12:46:08","2018-06-12 12:46:26");
INSERT INTO transactions VALUES("586","20","20","12","","","REPAICDQUI0WO","PIQXW43AIDJDZ","96","3","registered","parvez.agvbd@gmail.com","","331.00","3.00","9.93","13.00","353.93","gg","Refund","2018-06-12 12:46:26","2018-06-12 13:22:55");
INSERT INTO transactions VALUES("587","20","20","12","","","REPAICDQUI0WO","PIQXW43AIDJDZ","96","4","registered","parvez.agvbd@gmail.com","","331.00","0.00","0.00","0.00","-331.00","gg","Refund","2018-06-12 12:46:26","2018-06-12 13:22:51");
INSERT INTO transactions VALUES("588","15","20","12","","","6APYUGLLZBKOA","VS7L2Q5JOT9NG","97","3","registered","parvez.agvbd@gmail.com","","14.00","3.00","0.42","13.00","-27.42","test","Success","2018-06-12 13:03:55","2018-06-12 13:14:40");
INSERT INTO transactions VALUES("589","20","15","12","","","6APYUGLLZBKOA","VS7L2Q5JOT9NG","97","4","registered","parvez.agvbd@gmail.com","","14.00","0.00","0.00","0.00","14.00","test","Success","2018-06-12 13:03:55","2018-06-12 13:14:40");
INSERT INTO transactions VALUES("592","24","","12","3","","YSYHCBZJQX2IM","","43","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-06-12 13:09:01","2018-06-12 13:09:01");
INSERT INTO transactions VALUES("593","15","20","12","","","VS7L2Q5JOT9NG","6APYUGLLZBKOA","99","3","registered","parvez.agvbd@gmail.com","","14.00","3.00","0.42","13.00","27.42","test","Refund","2018-06-12 13:14:40","2018-06-12 13:22:25");
INSERT INTO transactions VALUES("594","20","15","12","","","VS7L2Q5JOT9NG","6APYUGLLZBKOA","99","4","registered","parvez.agvbd@gmail.com","","14.00","0.00","0.00","0.00","-14.00","test","Refund","2018-06-12 13:14:40","2018-06-12 13:22:21");
INSERT INTO transactions VALUES("595","24","4","12","1","9","QEG6VBBXPZYIX","","20","11","registered","","","50.00","0.00","0.00","0.00","-50.00","","Success","2018-06-12 13:45:47","2018-06-12 13:45:47");
INSERT INTO transactions VALUES("596","4","24","12","1","9","QEG6VBBXPZYIX","","20","12","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-06-12 13:45:47","2018-06-12 13:45:47");
INSERT INTO transactions VALUES("597","24","","12","","","E6DYOZRKGTPQG","","18","7","registered","","","10.00","0.00","2.00","2.00","-12.20","","Success","2018-06-12 13:47:54","2018-06-12 13:47:54");
INSERT INTO transactions VALUES("598","5","","12","","","OQNV0ACXPPNST","","100","3","unregistered","shakil.techvill@gmai.com","","100.00","3.00","3.00","13.00","-116.00","Test","Pending","2018-06-12 13:48:34","2018-06-12 13:48:34");
INSERT INTO transactions VALUES("599","","5","12","","","OQNV0ACXPPNST","","100","4","unregistered","shakil.techvill@gmai.com","","100.00","0.00","0.00","0.00","100.00","Test","Pending","2018-06-12 13:48:34","2018-06-12 13:48:34");
INSERT INTO transactions VALUES("600","5","15","12","","","V0IPUKFWDTG4Y","JMMDGYRJI89PO","101","3","registered","parvez.techvill@gmail.com","","100.00","3.00","3.00","13.00","-116.00","Test Payment","Success","2018-06-12 13:49:39","2018-06-12 13:50:48");
INSERT INTO transactions VALUES("601","15","5","12","","","V0IPUKFWDTG4Y","JMMDGYRJI89PO","101","4","registered","parvez.techvill@gmail.com","","100.00","0.00","0.00","0.00","100.00","Test Payment","Success","2018-06-12 13:49:39","2018-06-12 13:50:48");
INSERT INTO transactions VALUES("602","5","15","12","","","JMMDGYRJI89PO","V0IPUKFWDTG4Y","102","3","registered","parvez.techvill@gmail.com","","100.00","3.00","3.00","13.00","116.00","Test Payment","Refund","2018-06-12 13:50:48","2018-06-12 13:50:48");
INSERT INTO transactions VALUES("603","15","5","12","","","JMMDGYRJI89PO","V0IPUKFWDTG4Y","102","4","registered","parvez.techvill@gmail.com","","100.00","0.00","0.00","0.00","-100.00","Test Payment","Refund","2018-06-12 13:50:48","2018-06-12 13:50:48");
INSERT INTO transactions VALUES("604","15","5","12","","","LFXBC2MIZHCAW","","103","3","registered","aminul.techvill@gmail.com","","55.00","3.00","1.65","13.00","-69.65","test 55","Success","2018-06-12 14:20:00","2018-06-12 14:20:00");
INSERT INTO transactions VALUES("605","5","15","12","","","LFXBC2MIZHCAW","","103","4","registered","aminul.techvill@gmail.com","","55.00","0.00","0.00","0.00","55.00","test 55","Success","2018-06-12 14:20:00","2018-06-12 14:20:00");
INSERT INTO transactions VALUES("606","15","5","12","","","LFVQ90H1WNM4I","","104","3","registered","aminul.techvill@gmail.com","","88.00","3.00","2.64","13.00","-103.64","test 88","Success","2018-06-12 14:20:19","2018-06-12 14:20:19");
INSERT INTO transactions VALUES("607","5","15","12","","","LFVQ90H1WNM4I","","104","4","registered","aminul.techvill@gmail.com","","88.00","0.00","0.00","0.00","88.00","test 88","Success","2018-06-12 14:20:20","2018-06-12 14:20:20");
INSERT INTO transactions VALUES("608","15","5","12","","","7N6PFQ2KNMECE","","105","3","registered","aminul.techvill@gmail.com","","88.00","3.00","2.64","13.00","-103.64","test 88","Success","2018-06-12 14:20:20","2018-06-12 14:20:20");
INSERT INTO transactions VALUES("609","5","15","12","","","7N6PFQ2KNMECE","","105","4","registered","aminul.techvill@gmail.com","","88.00","0.00","0.00","0.00","88.00","test 88","Success","2018-06-12 14:20:20","2018-06-12 14:20:20");
INSERT INTO transactions VALUES("610","15","5","12","","","X95PFVUPHLKBH","","106","3","registered","aminul.techvill@gmail.com","","11.00","3.00","0.33","13.00","-24.33","test 11","Success","2018-06-12 14:20:58","2018-06-12 14:20:58");
INSERT INTO transactions VALUES("611","5","15","12","","","X95PFVUPHLKBH","","106","4","registered","aminul.techvill@gmail.com","","11.00","0.00","0.00","0.00","11.00","test 11","Success","2018-06-12 14:20:58","2018-06-12 14:20:58");
INSERT INTO transactions VALUES("612","15","5","12","","","ZINLHZ63FGQDJ","85DXPBI4MLTTO","107","3","registered","aminul.techvill@gmail.com","","11.00","3.00","0.33","13.00","-24.33","test 11","Success","2018-06-12 14:20:59","2018-06-12 14:21:18");
INSERT INTO transactions VALUES("613","5","15","12","","","ZINLHZ63FGQDJ","85DXPBI4MLTTO","107","4","registered","aminul.techvill@gmail.com","","11.00","0.00","0.00","0.00","11.00","test 11","Success","2018-06-12 14:20:59","2018-06-12 14:21:19");
INSERT INTO transactions VALUES("614","15","5","12","","","85DXPBI4MLTTO","ZINLHZ63FGQDJ","108","3","registered","aminul.techvill@gmail.com","","11.00","3.00","0.33","13.00","24.33","test 11","Refund","2018-06-12 14:21:19","2018-06-12 14:21:19");
INSERT INTO transactions VALUES("615","5","15","12","","","85DXPBI4MLTTO","ZINLHZ63FGQDJ","108","4","registered","aminul.techvill@gmail.com","","11.00","0.00","0.00","0.00","-11.00","test 11","Refund","2018-06-12 14:21:19","2018-06-12 14:21:19");
INSERT INTO transactions VALUES("616","4","5","12","","","KOULDGHKC3N6G","","109","3","registered","aminul.techvill@gmail.com","","15.00","3.00","0.45","13.00","-28.45","ppp","Pending","2018-06-12 14:24:55","2018-06-12 14:38:15");
INSERT INTO transactions VALUES("617","5","4","12","","","KOULDGHKC3N6G","","109","4","registered","aminul.techvill@gmail.com","","15.00","0.00","0.00","0.00","15.00","ppp","Pending","2018-06-12 14:24:55","2018-06-12 14:38:16");
INSERT INTO transactions VALUES("618","4","5","12","","","63XVELAV8RPG8","","110","3","registered","aminul.techvill@gmail.com","","15.00","3.00","0.45","13.00","-28.45","ppp","Blocked","2018-06-12 14:24:56","2018-06-12 14:38:07");
INSERT INTO transactions VALUES("619","5","4","12","","","63XVELAV8RPG8","","110","4","registered","aminul.techvill@gmail.com","","15.00","0.00","0.00","0.00","15.00","ppp","Blocked","2018-06-12 14:24:56","2018-06-12 14:38:07");
INSERT INTO transactions VALUES("620","5","15","12","","","JO2FLYWGX0RZQ","HYVJQIIGVXVGD","111","3","registered","parvez.techvill@gmail.com","","44.00","3.00","1.32","13.00","-58.32","44","Success","2018-06-12 14:28:35","2018-06-12 14:35:30");
INSERT INTO transactions VALUES("621","15","5","12","","","JO2FLYWGX0RZQ","HYVJQIIGVXVGD","111","4","registered","parvez.techvill@gmail.com","","44.00","0.00","0.00","0.00","44.00","44","Success","2018-06-12 14:28:35","2018-06-12 14:35:30");
INSERT INTO transactions VALUES("622","5","15","12","","","HYVJQIIGVXVGD","JO2FLYWGX0RZQ","112","3","registered","parvez.techvill@gmail.com","","44.00","3.00","1.32","13.00","58.32","44","Refund","2018-06-12 14:35:30","2018-06-12 14:35:30");
INSERT INTO transactions VALUES("623","15","5","12","","","HYVJQIIGVXVGD","JO2FLYWGX0RZQ","112","4","registered","parvez.techvill@gmail.com","","44.00","0.00","0.00","0.00","-44.00","44","Refund","2018-06-12 14:35:30","2018-06-12 14:35:30");
INSERT INTO transactions VALUES("624","24","24","12","1","15","CCXYW5YA7L0YT","","21","11","registered","","","40.00","0.00","0.00","0.00","-40.00","","Success","2018-06-12 14:41:26","2018-06-12 14:41:26");
INSERT INTO transactions VALUES("625","24","24","12","1","15","CCXYW5YA7L0YT","","21","12","registered","","","40.00","0.00","0.00","0.00","40.00","","Success","2018-06-12 14:41:26","2018-06-12 14:41:26");
INSERT INTO transactions VALUES("626","29","24","12","1","15","JTSDFGGMPITSW","","22","11","registered","","","20.00","0.00","0.00","0.00","-20.00","","Success","2018-06-12 14:46:32","2018-06-12 14:46:32");
INSERT INTO transactions VALUES("627","24","29","12","1","15","JTSDFGGMPITSW","","22","12","registered","","","20.00","0.00","0.00","0.00","20.00","","Success","2018-06-12 14:46:32","2018-06-12 14:46:32");
INSERT INTO transactions VALUES("628","29","24","12","1","15","NEQQJJOZ7XCC9","","23","11","registered","","","20.00","0.00","0.00","0.00","-20.00","","Success","2018-06-12 14:49:13","2018-06-12 14:49:13");
INSERT INTO transactions VALUES("629","24","29","12","1","15","NEQQJJOZ7XCC9","","23","12","registered","","","20.00","0.00","0.00","0.00","20.00","","Success","2018-06-12 14:49:13","2018-06-12 14:49:13");
INSERT INTO transactions VALUES("630","15","","14","","","0QYJREIAS5GNG","","113","3","unregistered","milon.techvill@gmail.com","","13.00","5.00","0.65","5.00","-18.65","13","Pending","2018-06-12 14:49:30","2018-06-12 15:08:27");
INSERT INTO transactions VALUES("631","","15","14","","","0QYJREIAS5GNG","","113","4","unregistered","milon.techvill@gmail.com","","13.00","0.00","0.00","0.00","13.00","13","Pending","2018-06-12 14:49:30","2018-06-12 15:08:27");
INSERT INTO transactions VALUES("632","20","20","12","1","12","HOHO3CWMWQBNK","","24","11","registered","","","7.00","0.00","0.00","0.00","-7.00","","Success","2018-06-12 16:03:23","2018-06-12 16:03:23");
INSERT INTO transactions VALUES("633","20","20","12","1","12","HOHO3CWMWQBNK","","24","12","registered","","","7.00","0.00","0.00","0.00","7.00","","Success","2018-06-12 16:03:23","2018-06-12 16:03:23");
INSERT INTO transactions VALUES("634","4","","12","3","","FPXZEPZNZ9TP8","","44","1","registered","","","200.00","12.00","24.00","11.00","235.00","","Success","2018-06-13 10:43:19","2018-06-13 10:43:19");
INSERT INTO transactions VALUES("635","20","15","12","1","4","ACU5VPVFIVG54","XG3P667VUC0YJ","25","11","registered","","","130.00","0.00","0.00","0.00","-130.00","","Success","2018-06-13 11:32:03","2018-06-13 11:54:51");
INSERT INTO transactions VALUES("636","15","20","12","1","4","ACU5VPVFIVG54","XG3P667VUC0YJ","25","12","registered","","","130.00","0.00","0.00","0.00","130.00","","Success","2018-06-13 11:32:03","2018-06-13 11:54:46");
INSERT INTO transactions VALUES("637","15","20","12","1","4","XG3P667VUC0YJ","ACU5VPVFIVG54","26","11","registered","","","130.00","0.00","0.00","0.00","130.00","","Refund","2018-06-13 11:48:41","2018-06-13 12:05:36");
INSERT INTO transactions VALUES("638","20","15","12","1","4","XG3P667VUC0YJ","ACU5VPVFIVG54","26","12","registered","","","130.00","0.00","0.00","0.00","-130.00","","Refund","2018-06-13 11:48:41","2018-06-13 12:05:32");
INSERT INTO transactions VALUES("639","5","15","12","1","16","JTY4ELNNKEJC0","ZFWCO9QIP0F2B","27","11","registered","","","7.50","0.00","0.00","0.00","-7.50","","Success","2018-06-13 12:19:59","2018-06-13 12:35:45");
INSERT INTO transactions VALUES("640","15","5","12","1","16","JTY4ELNNKEJC0","ZFWCO9QIP0F2B","27","12","registered","","","7.50","0.00","0.00","0.00","7.50","","Success","2018-06-13 12:19:59","2018-06-13 12:35:42");
INSERT INTO transactions VALUES("641","15","5","12","1","16","ZFWCO9QIP0F2B","JTY4ELNNKEJC0","29","11","registered","","","7.50","0.00","0.00","0.00","7.50","","Refund","2018-06-13 12:27:12","2018-06-13 12:27:12");
INSERT INTO transactions VALUES("642","5","15","12","1","16","ZFWCO9QIP0F2B","JTY4ELNNKEJC0","29","12","registered","","","7.50","0.00","0.00","0.00","-7.50","","Refund","2018-06-13 12:27:12","2018-06-13 12:35:36");
INSERT INTO transactions VALUES("643","5","15","12","1","16","J8JMEXHEMRMXI","RNHGD0PJ52IPJ","30","11","registered","","","11.24","0.00","0.00","0.00","-11.24","","Success","2018-06-13 12:38:40","2018-06-13 13:21:07");
INSERT INTO transactions VALUES("644","15","5","12","1","16","J8JMEXHEMRMXI","RNHGD0PJ52IPJ","30","12","registered","","","11.24","0.00","0.00","0.00","11.24","","Success","2018-06-13 12:38:40","2018-06-13 13:21:07");
INSERT INTO transactions VALUES("645","5","15","12","1","16","RNHGD0PJ52IPJ","J8JMEXHEMRMXI","31","11","registered","","","11.24","0.00","0.00","0.00","11.24","","Refund","2018-06-13 12:40:02","2018-06-13 12:40:02");
INSERT INTO transactions VALUES("646","15","5","12","1","16","RNHGD0PJ52IPJ","J8JMEXHEMRMXI","31","12","registered","","","11.24","0.00","0.00","0.00","-11.24","","Refund","2018-06-13 12:40:02","2018-06-13 12:43:08");
INSERT INTO transactions VALUES("647","24","29","14","","","OK9HRWBXJ97MY","","114","3","registered","mahfuzasinthy@gmail.com","","10.00","5.00","0.50","5.00","-15.50","notes","Success","2018-06-13 13:29:57","2018-06-13 13:29:57");
INSERT INTO transactions VALUES("648","29","24","14","","","OK9HRWBXJ97MY","","114","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","notes","Success","2018-06-13 13:29:57","2018-06-13 13:29:57");
INSERT INTO transactions VALUES("649","24","","15","","","YMUEG1M2WU2HF","","52","9","unregistered","irish@gmail.com","","100.00","0.00","0.00","0.00","100.00","Please send money for buying books","Pending","2018-06-13 14:33:40","2018-06-13 14:33:40");
INSERT INTO transactions VALUES("650","","24","15","","","YMUEG1M2WU2HF","","52","10","unregistered","irish@gmail.com","","100.00","0.00","0.00","0.00","-100.00","Please send money for buying books","Pending","2018-06-13 14:33:41","2018-06-13 14:33:41");
INSERT INTO transactions VALUES("651","5","15","12","1","16","GENMRCLEMJBTQ","SY7ILVUZLRFCZ","32","11","registered","","","9.24","0.00","0.00","0.00","-9.24","","Success","2018-06-13 14:36:24","2018-06-13 15:20:58");
INSERT INTO transactions VALUES("652","15","5","12","1","16","GENMRCLEMJBTQ","SY7ILVUZLRFCZ","32","12","registered","","","9.24","0.00","0.00","0.00","9.24","","Success","2018-06-13 14:36:24","2018-06-13 15:20:53");
INSERT INTO transactions VALUES("653","15","5","12","1","16","SY7ILVUZLRFCZ","GENMRCLEMJBTQ","32","11","registered","","","9.24","0.00","0.00","0.00","-9.24","","Refund","2018-06-13 15:16:38","2018-06-13 15:21:18");
INSERT INTO transactions VALUES("654","5","15","12","1","16","SY7ILVUZLRFCZ","GENMRCLEMJBTQ","32","12","registered","","","9.24","0.00","0.00","0.00","9.24","","Refund","2018-06-13 15:16:38","2018-06-13 15:21:22");
INSERT INTO transactions VALUES("655","5","15","12","1","16","IKVJ9KQBN2XAI","0IYAPPIVIXDDE","34","11","registered","","","3.33","0.00","0.00","0.00","-3.33","","Success","2018-06-13 15:22:36","2018-06-13 15:27:21");
INSERT INTO transactions VALUES("656","15","5","12","1","16","IKVJ9KQBN2XAI","0IYAPPIVIXDDE","34","12","registered","","","3.33","0.00","0.00","0.00","3.33","","Success","2018-06-13 15:22:36","2018-06-13 15:27:21");
INSERT INTO transactions VALUES("657","5","15","12","1","16","0IYAPPIVIXDDE","IKVJ9KQBN2XAI","34","11","registered","","","3.33","0.00","0.00","0.00","0.00","","Refund","2018-06-13 15:27:21","2018-06-13 15:27:21");
INSERT INTO transactions VALUES("658","15","5","12","1","16","0IYAPPIVIXDDE","IKVJ9KQBN2XAI","34","12","registered","","","3.33","0.00","0.00","0.00","-3.33","","Refund","2018-06-13 15:27:21","2018-06-13 15:27:21");
INSERT INTO transactions VALUES("659","4","","12","2","","T5H2JARRAGTSN","","45","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-21 11:15:45","2018-06-21 11:15:45");
INSERT INTO transactions VALUES("660","4","","13","4","","DMIEDTZZMELB1","","46","1","registered","","","11.00","0.00","0.00","0.00","11.00","","Success","2018-06-21 12:06:21","2018-06-21 12:06:21");
INSERT INTO transactions VALUES("661","4","","13","5","","BSW8TTXBL7NAN","","47","1","registered","","","11.00","0.00","0.00","0.00","11.00","","Success","2018-06-21 12:18:23","2018-06-21 12:18:23");
INSERT INTO transactions VALUES("662","4","4","12","2","9","LZEYC5RFKALTJ","NWUUVVGJSS3XK","36","12","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-06-21 12:23:00","2018-06-22 11:13:37");
INSERT INTO transactions VALUES("663","24","","12","2","18","2OAAUYKRQSOJD","KZMFWOJKAXHNS","37","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-21 12:28:30","2018-06-22 11:39:47");
INSERT INTO transactions VALUES("664","4","4","12","1","9","GNUDJGWVETUUK","Q1FZY2QPECM5I","38","11","registered","","","10.00","0.00","0.00","0.00","-10.00","","Success","2018-06-21 12:32:18","2018-06-22 12:42:36");
INSERT INTO transactions VALUES("665","4","4","12","1","9","GNUDJGWVETUUK","Q1FZY2QPECM5I","38","12","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-06-21 12:32:18","2018-06-22 12:42:36");
INSERT INTO transactions VALUES("666","24","29","12","2","18","UNBKGEG4XFHTW","","39","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-21 12:38:16","2018-06-21 12:38:16");
INSERT INTO transactions VALUES("667","29","24","12","1","18","J07179Z3W3DNH","","40","11","registered","","","2.00","0.00","0.00","0.00","-2.00","","Success","2018-06-21 12:39:33","2018-06-21 12:39:33");
INSERT INTO transactions VALUES("668","24","29","12","1","18","J07179Z3W3DNH","","40","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-21 12:39:33","2018-06-21 12:39:33");
INSERT INTO transactions VALUES("669","24","24","12","1","18","0J0YJLIJSHHYQ","","41","11","registered","","","2.00","0.00","0.00","0.00","-2.00","","Success","2018-06-21 12:44:03","2018-06-21 12:44:03");
INSERT INTO transactions VALUES("670","24","24","12","1","18","0J0YJLIJSHHYQ","","41","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-06-21 12:44:03","2018-06-21 12:44:03");
INSERT INTO transactions VALUES("672","4","","12","","","NW6JY1OMEA08K","","77","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-06-21 13:13:21","2018-06-21 13:13:21");
INSERT INTO transactions VALUES("673","4","","13","","","NW6JY1OMEA08K","","77","6","registered","","","10.50","0.00","0.00","0.00","10.50","","Success","2018-06-21 13:13:21","2018-06-21 13:13:21");
INSERT INTO transactions VALUES("674","24","29","14","","","RUYEGSMT0AZDP","","115","3","registered","mahfuzasinthy@gmail.com","","2.00","5.00","0.10","5.00","-7.10","test","Success","2018-06-21 17:57:41","2018-06-21 17:57:41");
INSERT INTO transactions VALUES("675","29","24","14","","","RUYEGSMT0AZDP","","115","4","registered","mahfuzasinthy@gmail.com","","2.00","0.00","0.00","0.00","2.00","test","Success","2018-06-21 17:57:41","2018-06-21 17:57:41");
INSERT INTO transactions VALUES("676","4","4","12","2","9","NWUUVVGJSS3XK","LZEYC5RFKALTJ","43","12","registered","","","10.00","0.00","0.00","0.00","-10.00","","Refund","2018-06-22 11:13:37","2018-06-22 11:26:09");
INSERT INTO transactions VALUES("677","24","","12","2","18","KZMFWOJKAXHNS","2OAAUYKRQSOJD","44","12","registered","","","2.00","0.00","0.00","0.00","-2.00","","Refund","2018-06-22 11:39:47","2018-06-22 12:07:38");
INSERT INTO transactions VALUES("680","4","4","12","1","9","Q1FZY2QPECM5I","GNUDJGWVETUUK","47","11","registered","","","10.00","0.00","0.00","0.00","10.00","","Refund","2018-06-22 12:42:36","2018-06-22 12:42:36");
INSERT INTO transactions VALUES("681","4","4","12","1","9","Q1FZY2QPECM5I","GNUDJGWVETUUK","47","12","registered","","","10.00","0.00","0.00","0.00","-10.00","","Refund","2018-06-22 12:42:36","2018-06-22 12:42:36");
INSERT INTO transactions VALUES("682","24","29","12","","","IHC7GOGTFZW3K","OCFVHJHZZU4CQ","53","9","registered","","","8.00","0.00","0.00","0.00","8.00","tt","Refund","2018-06-22 15:18:47","2018-06-22 16:20:02");
INSERT INTO transactions VALUES("683","29","24","12","","","IHC7GOGTFZW3K","OCFVHJHZZU4CQ","53","10","registered","","","8.00","6.00","0.48","16.00","24.48","tt","Refund","2018-06-22 15:18:47","2018-06-22 16:19:58");
INSERT INTO transactions VALUES("684","5","15","12","","","JABR11TZ3T3H7","X08SWI5XKWYS4","54","9","registered","","","7.00","0.00","0.00","0.00","7.00","Test Request","Success","2018-06-22 15:59:49","2018-06-22 16:16:28");
INSERT INTO transactions VALUES("685","15","5","12","","","JABR11TZ3T3H7","X08SWI5XKWYS4","54","10","registered","","","7.00","6.00","0.42","16.00","-23.42","Test Request","Success","2018-06-22 15:59:49","2018-06-22 16:16:28");
INSERT INTO transactions VALUES("686","5","15","12","","","X08SWI5XKWYS4","JABR11TZ3T3H7","55","9","registered","","","7.00","0.00","0.00","0.00","7.00","Test Request","Refund","2018-06-22 16:16:28","2018-06-22 16:19:52");
INSERT INTO transactions VALUES("687","15","5","12","","","X08SWI5XKWYS4","JABR11TZ3T3H7","55","10","registered","","","7.00","6.00","0.42","16.00","23.42","Test Request","Refund","2018-06-22 16:16:28","2018-06-22 16:26:06");
INSERT INTO transactions VALUES("688","20","15","12","","","OUCPELNHAWBOW","70H20UZQJZO88","56","9","registered","","","41.00","0.00","0.00","0.00","41.00","test","Success","2018-06-22 16:34:11","2018-06-22 18:23:40");
INSERT INTO transactions VALUES("689","15","20","12","","","OUCPELNHAWBOW","70H20UZQJZO88","56","10","registered","","","41.00","6.00","2.46","16.00","-59.46","test","Success","2018-06-22 16:34:11","2018-06-22 18:17:47");
INSERT INTO transactions VALUES("690","20","15","12","","","70H20UZQJZO88","OUCPELNHAWBOW","57","9","registered","","","41.00","0.00","0.00","0.00","-41.00","test","Refund","2018-06-22 18:17:47","2018-06-23 13:16:51");
INSERT INTO transactions VALUES("691","15","20","12","","","70H20UZQJZO88","OUCPELNHAWBOW","57","10","registered","","","41.00","6.00","2.46","16.00","59.46","test","Refund","2018-06-22 18:17:47","2018-06-22 18:17:47");
INSERT INTO transactions VALUES("692","15","20","12","","","SMOH008PBCQ35","","116","3","registered","parvez.agvbd@gmail.com","","33.00","3.00","0.99","13.00","-46.99","sss","Success","2018-06-22 18:27:15","2018-06-22 18:27:15");
INSERT INTO transactions VALUES("693","20","15","12","","","SMOH008PBCQ35","","116","4","registered","parvez.agvbd@gmail.com","","33.00","0.00","0.00","0.00","33.00","sss","Success","2018-06-22 18:27:15","2018-06-22 18:27:15");
INSERT INTO transactions VALUES("694","15","20","12","","","OOXSH09K1XGKN","TQAPDTXREXFY3","58","9","registered","","","17.00","0.00","0.00","0.00","17.00","ggg","Success","2018-06-22 18:27:57","2018-06-22 19:15:05");
INSERT INTO transactions VALUES("695","20","15","12","","","OOXSH09K1XGKN","TQAPDTXREXFY3","58","10","registered","","","17.00","6.00","1.02","16.00","-34.02","ggg","Success","2018-06-22 18:27:57","2018-06-22 19:15:06");
INSERT INTO transactions VALUES("696","15","20","12","","","TQAPDTXREXFY3","OOXSH09K1XGKN","59","9","registered","","","17.00","0.00","0.00","0.00","-17.00","ggg","Refund","2018-06-22 19:15:06","2018-06-23 13:16:42");
INSERT INTO transactions VALUES("697","20","15","12","","","TQAPDTXREXFY3","OOXSH09K1XGKN","59","10","registered","","","17.00","6.00","1.02","16.00","34.02","ggg","Refund","2018-06-22 19:15:06","2018-06-22 19:15:06");
INSERT INTO transactions VALUES("698","20","15","12","","","T2PNB8KCSWMXJ","RCUSU7BB0JO0O","60","9","registered","","","16.00","0.00","0.00","0.00","16.00","ttt","Success","2018-06-22 19:19:01","2018-06-23 12:50:48");
INSERT INTO transactions VALUES("699","15","20","12","","","T2PNB8KCSWMXJ","RCUSU7BB0JO0O","60","10","registered","","","16.00","6.00","0.96","16.00","-32.96","ttt","Success","2018-06-22 19:19:01","2018-06-23 12:50:48");
INSERT INTO transactions VALUES("706","20","15","12","","","RCUSU7BB0JO0O","T2PNB8KCSWMXJ","65","9","registered","","","16.00","0.00","0.00","0.00","-16.00","ttt","Refund","2018-06-23 12:50:48","2018-06-23 13:16:32");
INSERT INTO transactions VALUES("707","15","20","12","","","RCUSU7BB0JO0O","T2PNB8KCSWMXJ","65","10","registered","","","16.00","6.00","0.96","16.00","32.96","ttt","Refund","2018-06-23 12:50:48","2018-06-23 13:00:23");
INSERT INTO transactions VALUES("708","15","20","12","","","THBNEE29KYM6S","","117","3","registered","parvez.agvbd@gmail.com","","23.00","3.00","0.69","13.00","-36.69","test","Success","2018-06-23 13:05:12","2018-06-23 13:05:12");
INSERT INTO transactions VALUES("709","20","15","12","","","THBNEE29KYM6S","","117","4","registered","parvez.agvbd@gmail.com","","23.00","0.00","0.00","0.00","23.00","test","Success","2018-06-23 13:05:12","2018-06-23 13:05:12");
INSERT INTO transactions VALUES("710","15","20","12","","","X4GWKZA1NB8F5","XDN46JZLDHTMP","66","9","registered","","","37.00","0.00","0.00","0.00","37.00","41","Success","2018-06-23 13:05:45","2018-06-23 13:38:59");
INSERT INTO transactions VALUES("711","20","15","12","","","X4GWKZA1NB8F5","XDN46JZLDHTMP","66","10","registered","","","37.00","6.00","2.22","16.00","-55.22","41","Success","2018-06-23 13:05:45","2018-06-23 13:38:59");
INSERT INTO transactions VALUES("712","15","20","12","","","XDN46JZLDHTMP","X4GWKZA1NB8F5","67","9","registered","","","37.00","0.00","0.00","0.00","-37.00","41","Refund","2018-06-23 13:38:59","2018-06-23 13:40:03");
INSERT INTO transactions VALUES("713","20","15","12","","","XDN46JZLDHTMP","X4GWKZA1NB8F5","67","10","registered","","","37.00","6.00","2.22","16.00","55.22","41","Refund","2018-06-23 13:38:59","2018-06-23 13:38:59");
INSERT INTO transactions VALUES("714","15","20","12","","","HTKDPOXZEYK43","VE5KYU7EPYATC","68","9","registered","","","11.00","0.00","0.00","0.00","11.00","test","Success","2018-06-23 13:41:17","2018-06-23 15:19:01");
INSERT INTO transactions VALUES("715","20","15","12","","","HTKDPOXZEYK43","VE5KYU7EPYATC","68","10","registered","","","11.00","6.00","0.66","16.00","-27.66","test","Success","2018-06-23 13:41:17","2018-06-23 15:19:01");
INSERT INTO transactions VALUES("718","15","20","12","","","VE5KYU7EPYATC","HTKDPOXZEYK43","70","9","registered","","","11.00","0.00","0.00","0.00","-11.00","test","Refund","2018-06-23 15:19:01","2018-06-23 15:19:01");
INSERT INTO transactions VALUES("719","20","15","12","","","VE5KYU7EPYATC","HTKDPOXZEYK43","70","10","registered","","","11.00","6.00","0.66","16.00","27.66","test","Refund","2018-06-23 15:19:01","2018-06-23 15:19:01");
INSERT INTO transactions VALUES("720","15","20","12","","","BKPVHHXGCLJVM","","71","9","registered","","","19.00","0.00","0.00","0.00","19.00","tty","Success","2018-06-23 15:28:25","2018-06-23 15:28:48");
INSERT INTO transactions VALUES("721","20","15","12","","","BKPVHHXGCLJVM","","71","10","registered","","","19.00","6.00","1.14","16.00","-36.14","tty","Success","2018-06-23 15:28:25","2018-06-23 15:28:48");
INSERT INTO transactions VALUES("722","15","5","12","","","EGRKZW4ERZDKH","","72","9","registered","","","23.00","0.00","0.00","0.00","23.00","test","Pending","2018-06-23 15:29:30","2018-06-24 11:54:00");
INSERT INTO transactions VALUES("723","5","15","12","","","EGRKZW4ERZDKH","","72","10","registered","","","23.00","0.00","0.00","0.00","-23.00","test","Pending","2018-06-23 15:29:30","2018-06-24 11:54:00");
INSERT INTO transactions VALUES("726","24","","12","","","UM7B65ZVLTXW0","","78","5","registered","","","5.00","3.00","0.15","12.00","-17.15","","Success","2018-06-23 16:14:03","2018-06-23 16:14:03");
INSERT INTO transactions VALUES("727","24","","14","","","UM7B65ZVLTXW0","","78","6","registered","","","4.25","0.00","0.00","0.00","4.25","","Success","2018-06-23 16:14:03","2018-06-23 16:14:03");
INSERT INTO transactions VALUES("728","15","20","12","","","QMJ0MLLM5NHDL","XSNM3JUQCD78V","120","3","registered","parvez.agvbd@gmail.com","","117.00","3.00","3.51","13.00","-133.51","117","Success","2018-06-23 16:25:36","2018-06-23 16:27:41");
INSERT INTO transactions VALUES("729","20","15","12","","","QMJ0MLLM5NHDL","XSNM3JUQCD78V","120","4","registered","parvez.agvbd@gmail.com","","117.00","0.00","0.00","0.00","117.00","117","Success","2018-06-23 16:25:36","2018-06-23 16:27:41");
INSERT INTO transactions VALUES("730","15","20","12","","","XSNM3JUQCD78V","QMJ0MLLM5NHDL","121","3","registered","parvez.agvbd@gmail.com","","117.00","3.00","3.51","13.00","133.51","117","Refund","2018-06-23 16:27:41","2018-06-23 16:30:12");
INSERT INTO transactions VALUES("731","20","15","12","","","XSNM3JUQCD78V","QMJ0MLLM5NHDL","121","4","registered","parvez.agvbd@gmail.com","","117.00","0.00","0.00","0.00","-117.00","117","Refund","2018-06-23 16:27:41","2018-06-23 16:30:28");
INSERT INTO transactions VALUES("732","15","5","12","","","YBWJFQL8VTFVJ","T2NTJWCRCI2QL","122","3","registered","aminul.techvill@gmail.com","","97.00","3.00","2.91","13.00","-112.91","hh","Success","2018-06-23 16:32:32","2018-06-23 16:33:33");
INSERT INTO transactions VALUES("733","5","15","12","","","YBWJFQL8VTFVJ","T2NTJWCRCI2QL","122","4","registered","aminul.techvill@gmail.com","","97.00","0.00","0.00","0.00","97.00","hh","Success","2018-06-23 16:32:32","2018-06-23 16:33:33");
INSERT INTO transactions VALUES("734","15","5","12","","","T2NTJWCRCI2QL","YBWJFQL8VTFVJ","123","3","registered","aminul.techvill@gmail.com","","97.00","3.00","2.91","13.00","112.91","hh","Refund","2018-06-23 16:33:33","2018-06-23 16:33:33");
INSERT INTO transactions VALUES("735","5","15","12","","","T2NTJWCRCI2QL","YBWJFQL8VTFVJ","123","4","registered","aminul.techvill@gmail.com","","97.00","0.00","0.00","0.00","-97.00","hh","Refund","2018-06-23 16:33:33","2018-06-23 16:33:33");
INSERT INTO transactions VALUES("736","15","20","12","","","UN7ADZFWJYLQO","8BCIZIVWUGRYP","124","3","registered","parvez.agvbd@gmail.com","","35.00","3.00","1.05","13.00","-49.05","hgfg","Success","2018-06-23 17:05:04","2018-06-23 18:23:38");
INSERT INTO transactions VALUES("737","20","15","12","","","UN7ADZFWJYLQO","8BCIZIVWUGRYP","124","4","registered","parvez.agvbd@gmail.com","","35.00","0.00","0.00","0.00","35.00","hgfg","Success","2018-06-23 17:05:04","2018-06-23 18:23:38");
INSERT INTO transactions VALUES("738","24","","12","","","AYJMH63VGPUXX","","19","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-06-23 17:33:14","2018-06-23 18:51:58");
INSERT INTO transactions VALUES("741","15","20","12","","","8BCIZIVWUGRYP","UN7ADZFWJYLQO","126","3","registered","parvez.agvbd@gmail.com","","35.00","3.00","1.05","13.00","49.05","hgfg","Refund","2018-06-23 18:23:38","2018-06-23 18:23:38");
INSERT INTO transactions VALUES("742","20","15","12","","","8BCIZIVWUGRYP","UN7ADZFWJYLQO","126","4","registered","parvez.agvbd@gmail.com","","35.00","0.00","0.00","0.00","-35.00","hgfg","Refund","2018-06-23 18:23:38","2018-06-23 18:23:38");
INSERT INTO transactions VALUES("743","24","29","12","","","UXPFNYUGYNMG7","","127","3","registered","mahfuzasinthy@gmail.com","","3.00","3.00","0.09","13.00","-16.09","test","Success","2018-06-24 12:46:13","2018-06-24 12:46:13");
INSERT INTO transactions VALUES("744","29","24","12","","","UXPFNYUGYNMG7","","127","4","registered","mahfuzasinthy@gmail.com","","3.00","0.00","0.00","0.00","3.00","test","Success","2018-06-24 12:46:13","2018-06-24 12:46:13");
INSERT INTO transactions VALUES("745","7","","12","","","G8QNTD4BKXLU8","","128","3","unregistered","lenin.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","test","Pending","2018-06-24 13:42:29","2018-06-24 13:42:29");
INSERT INTO transactions VALUES("746","","7","12","","","G8QNTD4BKXLU8","","128","4","unregistered","lenin.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-06-24 13:42:29","2018-06-24 13:42:29");
INSERT INTO transactions VALUES("747","7","24","12","","","MDR9FKZM2UBNA","","73","9","registered","","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-06-24 13:49:05","2018-06-24 13:49:05");
INSERT INTO transactions VALUES("748","24","7","12","","","MDR9FKZM2UBNA","","73","10","registered","","","20.00","0.00","0.00","0.00","-20.00","test","Pending","2018-06-24 13:49:05","2018-06-24 13:49:05");
INSERT INTO transactions VALUES("749","7","","12","","","0EEWUNBXVBDJT","","20","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-06-24 13:52:02","2018-06-24 13:52:02");
INSERT INTO transactions VALUES("750","7","7","12","","","RRKS99YU8VPFS","","21","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-06-24 13:53:14","2018-06-24 14:01:49");
INSERT INTO transactions VALUES("751","7","7","12","","","CNTG8GF9SXL0M","","21","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-06-24 14:01:49","2018-06-24 14:01:49");
INSERT INTO transactions VALUES("752","7","","12","","","BZMQXC5K36GPM","","129","3","unregistered","lenin.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","test","Pending","2018-06-24 14:03:34","2018-06-24 14:03:34");
INSERT INTO transactions VALUES("753","","7","12","","","BZMQXC5K36GPM","","129","4","unregistered","lenin.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-06-24 14:03:34","2018-06-24 14:03:34");
INSERT INTO transactions VALUES("754","7","","12","","","MWEESMD2UC3M6","","130","3","unregistered","lenin.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","test","Pending","2018-06-24 14:03:47","2018-06-24 14:03:47");
INSERT INTO transactions VALUES("755","","7","12","","","MWEESMD2UC3M6","","130","4","unregistered","lenin.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-06-24 14:03:47","2018-06-24 14:03:47");
INSERT INTO transactions VALUES("756","7","","12","","","GU4WLGGZKAKZ8","","131","3","unregistered","lenin.techvill@gmail.com","","20.00","3.00","0.60","13.00","-33.60","test","Pending","2018-06-24 14:03:49","2018-06-24 14:03:49");
INSERT INTO transactions VALUES("757","","7","12","","","GU4WLGGZKAKZ8","","131","4","unregistered","lenin.techvill@gmail.com","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-06-24 14:03:49","2018-06-24 14:03:49");
INSERT INTO transactions VALUES("758","7","","12","2","","GBFZAHZ9XWPMV","","48","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-06-24 14:16:11","2018-06-24 14:16:11");
INSERT INTO transactions VALUES("759","24","","12","","","IDIP1U8GT9P8S","","22","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-06-24 14:42:49","2018-06-24 14:42:49");
INSERT INTO transactions VALUES("760","24","","12","","","TOCFVRMRM4MIY","","23","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-06-24 14:44:37","2018-06-24 14:44:37");
INSERT INTO transactions VALUES("761","5","10","12","","","WAOHSWDIW3QMP","","74","9","registered","","","3.00","0.00","0.00","0.00","3.00","asdfdsafdsa","Pending","2018-06-24 16:20:54","2018-06-24 16:20:54");
INSERT INTO transactions VALUES("762","10","5","12","","","WAOHSWDIW3QMP","","74","10","registered","","","3.00","0.00","0.00","0.00","-3.00","asdfdsafdsa","Pending","2018-06-24 16:20:54","2018-06-24 16:20:54");
INSERT INTO transactions VALUES("763","24","24","12","","","NSSAEIRGDV6PH","","24","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-06-24 16:25:27","2018-06-24 16:27:16");
INSERT INTO transactions VALUES("764","24","24","12","","","ER7GDVU1VKQOF","","24","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-06-24 16:27:16","2018-06-24 16:27:16");
INSERT INTO transactions VALUES("765","24","","12","","","SCNP9E2VAKCVJ","","25","7","registered","","","2.00","2.00","0.04","2.00","-4.04","","Success","2018-06-24 16:32:32","2018-06-24 16:32:32");
INSERT INTO transactions VALUES("766","24","","12","","","4JYYJE3MVUTWB","","26","7","registered","","","2.00","2.00","0.04","2.00","-4.04","","Success","2018-06-24 16:33:26","2018-06-24 16:33:26");
INSERT INTO transactions VALUES("767","24","","12","","","YGCYMCDUC9NCF","","27","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-06-24 16:35:05","2018-06-24 16:35:05");
INSERT INTO transactions VALUES("768","24","29","12","","","IGGHFD3PCRQF8","","132","3","registered","mahfuzasinthy@gmail.com","","10.00","3.00","0.30","13.00","-23.30","test","Success","2018-06-24 16:49:16","2018-06-24 16:49:16");
INSERT INTO transactions VALUES("769","29","24","12","","","IGGHFD3PCRQF8","","132","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-06-24 16:49:16","2018-06-24 16:49:16");
INSERT INTO transactions VALUES("770","24","29","17","","","C4JIYVKLG4VQT","","75","9","registered","","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 17:21:49","2018-06-24 17:21:49");
INSERT INTO transactions VALUES("771","29","24","17","","","C4JIYVKLG4VQT","","75","10","registered","","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 17:21:49","2018-06-24 17:21:49");
INSERT INTO transactions VALUES("772","24","29","17","","","QQPTZKH5GUEUY","","76","9","registered","","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 17:22:03","2018-06-24 17:22:03");
INSERT INTO transactions VALUES("773","29","24","17","","","QQPTZKH5GUEUY","","76","10","registered","","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 17:22:03","2018-06-24 17:22:03");
INSERT INTO transactions VALUES("774","24","29","17","","","LTLEMZFO1AX7D","","77","9","registered","","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 17:22:37","2018-06-24 17:22:37");
INSERT INTO transactions VALUES("775","29","24","17","","","LTLEMZFO1AX7D","","77","10","registered","","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 17:22:37","2018-06-24 17:22:37");
INSERT INTO transactions VALUES("776","24","29","17","","","2RCXSJGAP5I7G","","78","9","registered","","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 18:06:36","2018-06-24 18:06:36");
INSERT INTO transactions VALUES("777","29","24","17","","","2RCXSJGAP5I7G","","78","10","registered","","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 18:06:36","2018-06-24 18:06:36");
INSERT INTO transactions VALUES("778","24","","12","","","ZC7BEUKPKIZYD","","28","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-06-24 18:06:54","2018-06-24 18:06:54");
INSERT INTO transactions VALUES("779","24","","12","","","ML5WRTM858V6S","","29","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Pending","2018-06-24 18:08:22","2018-07-10 12:35:54");
INSERT INTO transactions VALUES("780","24","","12","","","BWBIVE9ZHBN55","","30","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-06-24 18:09:02","2018-06-24 18:09:02");
INSERT INTO transactions VALUES("781","24","5","12","","","QP41NCREJO9QO","","133","3","registered","aminul.techvill@gmail.com","","5.00","3.00","0.15","13.00","-18.15","test","Success","2018-06-24 18:13:48","2018-06-24 18:13:48");
INSERT INTO transactions VALUES("782","5","24","12","","","QP41NCREJO9QO","","133","4","registered","aminul.techvill@gmail.com","","5.00","0.00","0.00","0.00","5.00","test","Success","2018-06-24 18:13:48","2018-06-24 18:13:48");
INSERT INTO transactions VALUES("783","24","5","12","","","FNUYCDP2ZXRLL","","134","3","registered","aminul.techvill@gmail.com","","5.00","3.00","0.15","13.00","-18.15","test","Success","2018-06-24 18:14:09","2018-06-24 18:14:09");
INSERT INTO transactions VALUES("784","5","24","12","","","FNUYCDP2ZXRLL","","134","4","registered","aminul.techvill@gmail.com","","5.00","0.00","0.00","0.00","5.00","test","Success","2018-06-24 18:14:09","2018-06-24 18:14:09");
INSERT INTO transactions VALUES("785","24","5","12","","","0XQTHGMRCZGAP","","135","3","registered","aminul.techvill@gmail.com","","5.00","3.00","0.15","13.00","-18.15","test","Success","2018-06-24 18:14:19","2018-06-24 18:14:19");
INSERT INTO transactions VALUES("786","5","24","12","","","0XQTHGMRCZGAP","","135","4","registered","aminul.techvill@gmail.com","","5.00","0.00","0.00","0.00","5.00","test","Success","2018-06-24 18:14:19","2018-06-24 18:14:19");
INSERT INTO transactions VALUES("787","24","","12","","","XCNBH6W8FGAZF","","79","9","unregistered","admin@techvill.net","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 18:15:48","2018-06-24 18:15:48");
INSERT INTO transactions VALUES("788","","24","12","","","XCNBH6W8FGAZF","","79","10","unregistered","admin@techvill.net","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 18:15:49","2018-06-24 18:15:49");
INSERT INTO transactions VALUES("789","24","","12","","","P9NJ0OVLCIMYS","","80","9","unregistered","admin@techvill.net","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 18:15:52","2018-06-24 18:15:52");
INSERT INTO transactions VALUES("790","","24","12","","","P9NJ0OVLCIMYS","","80","10","unregistered","admin@techvill.net","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 18:15:52","2018-06-24 18:15:52");
INSERT INTO transactions VALUES("791","24","","12","","","BGSVALCIN4BIZ","","81","9","unregistered","admin@techvill.net","","10.00","0.00","0.00","0.00","10.00","test request","Pending","2018-06-24 18:16:30","2018-06-24 18:16:30");
INSERT INTO transactions VALUES("792","","24","12","","","BGSVALCIN4BIZ","","81","10","unregistered","admin@techvill.net","","10.00","0.00","0.00","0.00","-10.00","test request","Pending","2018-06-24 18:16:30","2018-06-24 18:16:30");
INSERT INTO transactions VALUES("793","24","","12","2","","UXOYGRRSLGNE1","","49","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-24 18:40:01","2018-06-24 18:40:01");
INSERT INTO transactions VALUES("794","5","","12","3","","NIBRJDSJR8UC0","","9","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Pending","2018-06-25 12:06:32","2018-06-25 12:06:32");
INSERT INTO transactions VALUES("795","5","","12","","","JHMG27WCSAT2H","","79","5","registered","","","33.00","14.00","4.62","14.00","-51.62","","Success","2018-06-25 12:19:02","2018-06-25 12:19:02");
INSERT INTO transactions VALUES("796","5","","13","","","JHMG27WCSAT2H","","79","6","registered","","","24.75","0.00","0.00","0.00","24.75","","Success","2018-06-25 12:19:03","2018-06-25 12:19:03");
INSERT INTO transactions VALUES("797","24","29","12","","","JBNSDTUWAIJHC","","82","9","registered","","","10.00","0.00","0.00","0.00","10.00","test","Pending","2018-06-25 15:36:14","2018-06-25 15:36:14");
INSERT INTO transactions VALUES("798","29","24","12","","","JBNSDTUWAIJHC","","82","10","registered","","","10.00","0.00","0.00","0.00","-10.00","test","Pending","2018-06-25 15:36:14","2018-06-25 15:36:14");
INSERT INTO transactions VALUES("799","24","24","12","","","GCZUE7PPNDKQG","","31","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-06-25 15:50:05","2018-06-25 16:19:55");
INSERT INTO transactions VALUES("800","24","24","12","","","UQAAWYVYPDFTB","","31","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-06-25 16:19:55","2018-06-25 16:19:55");
INSERT INTO transactions VALUES("801","24","","12","2","","KJSLJDRVEEIIT","","50","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-25 17:26:33","2018-06-25 17:26:33");
INSERT INTO transactions VALUES("802","24","","12","2","","2JSDDZZWHLJYM","","51","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-25 18:12:39","2018-06-25 18:12:39");
INSERT INTO transactions VALUES("803","4","","12","3","","WDHOHRFTZKAMF","","52","1","registered","","","200.00","12.00","24.00","11.00","235.00","","Success","2018-06-25 18:14:03","2018-06-25 18:14:03");
INSERT INTO transactions VALUES("804","24","","12","3","","KIHDUJAAK6IH0","","10","2","registered","","","100.00","5.00","5.00","10.00","-115.00","","Pending","2018-06-25 18:32:30","2018-06-25 18:32:30");
INSERT INTO transactions VALUES("805","24","","12","3","","ZJ5SCKMZQTWZY","","11","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Pending","2018-06-25 18:37:33","2018-06-25 18:37:33");
INSERT INTO transactions VALUES("806","4","24","12","","","IARP0JQT3BTP5","","83","9","registered","","","20.00","0.00","0.00","0.00","20.00","asdf","Pending","2018-06-25 18:43:28","2018-06-25 18:43:28");
INSERT INTO transactions VALUES("807","24","4","12","","","IARP0JQT3BTP5","","83","10","registered","","","20.00","0.00","0.00","0.00","-20.00","asdf","Pending","2018-06-25 18:43:28","2018-06-25 18:43:28");
INSERT INTO transactions VALUES("808","24","","14","","","ZYYVEWC27Z5QC","","84","9","unregistered","test@techvill.net","","10.00","0.00","0.00","0.00","10.00","test","Blocked","2018-06-25 18:49:44","2018-06-25 18:49:58");
INSERT INTO transactions VALUES("809","","24","14","","","ZYYVEWC27Z5QC","","84","10","unregistered","test@techvill.net","","10.00","0.00","0.00","0.00","-10.00","test","Blocked","2018-06-25 18:49:44","2018-06-25 18:49:58");
INSERT INTO transactions VALUES("810","24","","12","","","OAGVWCQPKDBX4","","85","9","unregistered","test@techvill.net","","5.00","0.00","0.00","0.00","5.00","test","Pending","2018-06-25 18:53:27","2018-06-25 18:53:27");
INSERT INTO transactions VALUES("811","","24","12","","","OAGVWCQPKDBX4","","85","10","unregistered","test@techvill.net","","5.00","0.00","0.00","0.00","-5.00","test","Pending","2018-06-25 18:53:27","2018-06-25 18:53:27");
INSERT INTO transactions VALUES("812","24","","12","","","FW5IPHVBI0BTL","","80","5","registered","","","10.00","3.00","0.30","12.00","-22.30","","Success","2018-06-25 19:07:16","2018-06-25 19:07:16");
INSERT INTO transactions VALUES("813","24","","14","","","FW5IPHVBI0BTL","","80","6","registered","","","8.50","0.00","0.00","0.00","8.50","","Success","2018-06-25 19:07:16","2018-06-25 19:07:16");
INSERT INTO transactions VALUES("814","24","","14","","","LMX1AH6RPJ8LN","","81","5","registered","","","10.00","0.00","0.30","12.00","-22.30","","Blocked","2018-06-25 19:09:55","2018-06-26 17:29:44");
INSERT INTO transactions VALUES("815","24","","12","","","LMX1AH6RPJ8LN","","81","6","registered","","","11.76","0.00","0.00","0.00","11.76","","Blocked","2018-06-25 19:09:55","2018-06-26 17:29:44");
INSERT INTO transactions VALUES("816","4","","21","2","","XQDXBUXAHSKCL","","53","1","registered","","","600.00","1.20","7.20","5.00","612.20","","Success","2018-06-26 11:45:13","2018-06-26 11:45:13");
INSERT INTO transactions VALUES("817","15","","21","2","","9JOKBTJICICUO","","54","1","registered","","","500.00","1.20","6.00","5.00","511.00","","Success","2018-06-26 11:50:59","2018-06-26 11:50:59");
INSERT INTO transactions VALUES("818","15","","21","2","","SR2H7W6YTYJKT","","55","1","registered","","","600.00","1.20","7.20","5.00","612.20","","Success","2018-06-26 11:52:17","2018-06-26 11:52:17");
INSERT INTO transactions VALUES("819","15","","21","2","","JL4DPAMD6W3XP","","56","1","registered","","","100.00","1.20","1.20","5.00","106.20","","Success","2018-06-26 11:54:02","2018-06-26 11:54:02");
INSERT INTO transactions VALUES("820","29","24","12","1","19","I068YHL0Q8QRY","","48","11","registered","","","5.00","0.00","0.00","0.00","-5.00","","Success","2018-06-26 12:33:25","2018-06-26 12:33:25");
INSERT INTO transactions VALUES("821","24","29","12","1","19","I068YHL0Q8QRY","","48","12","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-06-26 12:33:26","2018-06-26 12:33:26");
INSERT INTO transactions VALUES("822","24","29","16","","","ZJ9MSFM3IY66N","","136","3","registered","mahfuzasinthy@gmail.com","","45.00","5.00","2.25","2.00","-49.25","test","Success","2018-06-26 16:56:59","2018-06-26 16:56:59");
INSERT INTO transactions VALUES("823","29","24","16","","","ZJ9MSFM3IY66N","","136","4","registered","mahfuzasinthy@gmail.com","","45.00","0.00","0.00","0.00","45.00","test","Success","2018-06-26 16:56:59","2018-06-26 16:56:59");
INSERT INTO transactions VALUES("824","24","29","26","","","QFZ4NUVBMWPKH","","86","9","registered","","","5.00","0.00","0.00","0.00","5.00","request money for buying books","Pending","2018-06-26 17:00:20","2018-06-26 17:00:20");
INSERT INTO transactions VALUES("825","29","24","26","","","QFZ4NUVBMWPKH","","86","10","registered","","","5.00","0.00","0.00","0.00","-5.00","request money for buying books","Pending","2018-06-26 17:00:20","2018-06-26 17:00:20");
INSERT INTO transactions VALUES("826","33","29","19","","","7AG0EFWYIVAXY","","87","9","registered","","","2.00","0.00","0.00","0.00","2.00","test","Pending","2018-06-26 17:04:31","2018-06-26 17:04:31");
INSERT INTO transactions VALUES("827","29","33","19","","","7AG0EFWYIVAXY","","87","10","registered","","","2.00","0.00","0.00","0.00","-2.00","test","Pending","2018-06-26 17:04:31","2018-06-26 17:04:31");
INSERT INTO transactions VALUES("828","4","","12","","","W1XFRAIYYVM8M","","82","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-06-27 14:11:18","2018-06-27 14:11:18");
INSERT INTO transactions VALUES("829","4","","13","","","W1XFRAIYYVM8M","","82","6","registered","","","10.50","0.00","0.00","0.00","10.50","","Success","2018-06-27 14:11:18","2018-06-27 14:11:18");
INSERT INTO transactions VALUES("830","4","5","12","","","BVU0JZJSYMCVS","","137","3","registered","aminul.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","sdf","Success","2018-06-27 14:24:24","2018-06-27 14:24:24");
INSERT INTO transactions VALUES("831","5","4","12","","","BVU0JZJSYMCVS","","137","4","registered","aminul.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","sdf","Success","2018-06-27 14:24:24","2018-06-27 14:24:24");
INSERT INTO transactions VALUES("832","33","","12","2","","GFCYMRBTOQVAX","","57","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-06-27 16:29:47","2018-06-27 16:29:47");
INSERT INTO transactions VALUES("833","4","5","12","","","YQXWIXZJNRFPV","","138","3","registered","aminul.techvill@gmail.com","","14.00","3.00","0.42","13.00","-27.42","14","Success","2018-06-27 16:29:53","2018-06-27 16:29:53");
INSERT INTO transactions VALUES("834","5","4","12","","","YQXWIXZJNRFPV","","138","4","registered","aminul.techvill@gmail.com","","14.00","0.00","0.00","0.00","14.00","14","Success","2018-06-27 16:29:53","2018-06-27 16:29:53");
INSERT INTO transactions VALUES("835","33","","12","","","FYV164AMEVBNM","","83","5","registered","","","2.00","3.00","0.06","12.00","-14.06","","Success","2018-06-27 16:33:33","2018-06-27 16:33:33");
INSERT INTO transactions VALUES("836","33","","14","","","FYV164AMEVBNM","","83","6","registered","","","1.70","0.00","0.00","0.00","1.70","","Success","2018-06-27 16:33:33","2018-06-27 16:33:33");
INSERT INTO transactions VALUES("837","4","5","12","","","M7ZSFTZHUPWGQ","","139","3","registered","aminul.techvill@gmail.com","","15.00","3.00","0.45","13.00","-28.45","15","Success","2018-06-27 16:33:59","2018-06-27 16:33:59");
INSERT INTO transactions VALUES("838","5","4","12","","","M7ZSFTZHUPWGQ","","139","4","registered","aminul.techvill@gmail.com","","15.00","0.00","0.00","0.00","15.00","15","Success","2018-06-27 16:33:59","2018-06-27 16:33:59");
INSERT INTO transactions VALUES("839","33","","12","2","","H8LM095YWF4KR","","58","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-06-27 16:38:34","2018-06-27 16:38:34");
INSERT INTO transactions VALUES("840","33","29","12","","","DVHEBBQMXMJNO","","140","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","test","Success","2018-06-27 16:40:11","2018-06-27 16:40:11");
INSERT INTO transactions VALUES("841","29","33","12","","","DVHEBBQMXMJNO","","140","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","test","Success","2018-06-27 16:40:11","2018-06-27 16:40:11");
INSERT INTO transactions VALUES("842","33","29","14","","","9SQ97CSVRBVX4","","88","9","registered","","","2.00","0.00","0.00","0.00","2.00","test","Pending","2018-06-27 16:41:18","2018-06-27 16:41:18");
INSERT INTO transactions VALUES("843","29","33","14","","","9SQ97CSVRBVX4","","88","10","registered","","","2.00","0.00","0.00","0.00","-2.00","test","Pending","2018-06-27 16:41:18","2018-06-27 16:41:18");
INSERT INTO transactions VALUES("844","33","29","12","","","ABQQFPH80ERFT","","141","3","registered","mahfuzasinthy@gmail.com","","3.00","3.00","0.09","13.00","-16.09","test","Success","2018-06-27 16:55:55","2018-06-27 16:55:55");
INSERT INTO transactions VALUES("845","29","33","12","","","ABQQFPH80ERFT","","141","4","registered","mahfuzasinthy@gmail.com","","3.00","0.00","0.00","0.00","3.00","test","Success","2018-06-27 16:55:55","2018-06-27 16:55:55");
INSERT INTO transactions VALUES("846","4","4","12","","","GAGZOTRMDZCBN","","32","7","registered","","","45.00","2.00","0.90","2.00","-47.90","","Success","2018-06-28 11:58:59","2018-06-28 16:18:12");
INSERT INTO transactions VALUES("847","4","","12","1","","IUGNQI8MSSYJP","","12","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Success","2018-06-28 13:25:49","2018-07-02 18:46:05");
INSERT INTO transactions VALUES("848","4","","12","2","","XS3RBLLSN4VL4","","59","1","registered","","","20.00","12.00","2.40","11.00","33.40","","Success","2018-06-28 14:09:19","2018-06-28 14:09:19");
INSERT INTO transactions VALUES("849","20","4","12","1","2","76YBUGJMIV9C0","","49","11","registered","","","11.00","0.00","0.00","0.00","-11.00","","Success","2018-06-28 14:13:31","2018-06-28 14:13:31");
INSERT INTO transactions VALUES("850","4","20","12","1","2","76YBUGJMIV9C0","","49","12","registered","","","11.00","0.00","0.00","0.00","11.00","","Success","2018-06-28 14:13:31","2018-06-28 14:13:31");
INSERT INTO transactions VALUES("851","20","20","12","2","12","L6L8PHXAP4MVP","","50","12","registered","","","1200.00","0.00","0.00","0.00","1200.00","","Success","2018-06-28 14:52:57","2018-06-28 14:52:57");
INSERT INTO transactions VALUES("852","15","20","12","1","12","SNGZHQL6DYIHO","","51","11","registered","","","1200.00","0.00","0.00","0.00","-1200.00","","Success","2018-06-28 14:55:31","2018-06-28 14:55:31");
INSERT INTO transactions VALUES("853","20","15","12","1","12","SNGZHQL6DYIHO","","51","12","registered","","","1200.00","0.00","0.00","0.00","1200.00","","Success","2018-06-28 14:55:32","2018-06-28 14:55:32");
INSERT INTO transactions VALUES("854","15","15","12","2","24","KGREVJY2ACHCY","","52","12","registered","","","1999.00","0.00","0.00","0.00","1999.00","","Success","2018-06-28 15:08:31","2018-06-28 15:08:31");
INSERT INTO transactions VALUES("855","4","4","12","","","F8VKPQSVVNQBM","","32","8","registered","","","45.00","0.00","0.00","0.00","45.00","","Success","2018-06-28 16:18:12","2018-06-28 16:18:12");
INSERT INTO transactions VALUES("856","4","4","12","","","0AY7IDCKKLHXE","","11","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-06-28 16:31:09","2018-06-28 16:31:09");
INSERT INTO transactions VALUES("857","4","24","12","","","5BVR7GPTJF0XQ","","89","9","registered","","","20.00","0.00","0.00","0.00","20.00","20","Pending","2018-06-28 16:39:35","2018-06-28 16:39:35");
INSERT INTO transactions VALUES("858","24","4","12","","","5BVR7GPTJF0XQ","","89","10","registered","","","20.00","0.00","0.00","0.00","-20.00","20","Blocked","2018-06-28 16:39:35","2018-07-03 17:35:28");
INSERT INTO transactions VALUES("859","4","24","12","","","OUNWXRMJ4MOBD","","90","9","registered","","","14.00","0.00","0.00","0.00","14.00","15","Success","2018-06-28 16:44:14","2018-07-03 17:28:37");
INSERT INTO transactions VALUES("860","24","4","12","","","OUNWXRMJ4MOBD","","90","10","registered","","","14.00","6.00","0.84","16.00","-30.84","15","Success","2018-06-28 16:44:14","2018-07-03 17:28:37");
INSERT INTO transactions VALUES("861","4","5","12","","","O1S0TDSFVRV5G","","142","3","registered","aminul.techvill@gmail.com","","15.00","3.00","0.45","13.00","-28.45","asdf","Success","2018-06-28 16:55:37","2018-06-28 16:55:37");
INSERT INTO transactions VALUES("862","5","4","12","","","O1S0TDSFVRV5G","","142","4","registered","aminul.techvill@gmail.com","","15.00","0.00","0.00","0.00","15.00","asdf","Success","2018-06-28 16:55:38","2018-06-28 16:55:38");
INSERT INTO transactions VALUES("863","4","","12","2","","JZKYAGK1XQJPH","","60","1","registered","","","1000.00","12.00","120.00","11.00","1131.00","","Success","2018-06-28 16:59:58","2018-06-28 16:59:58");
INSERT INTO transactions VALUES("864","4","","12","","","GVUIIOAD2PWZM","","84","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-06-30 18:44:15","2018-06-30 18:44:15");
INSERT INTO transactions VALUES("865","4","","13","","","GVUIIOAD2PWZM","","84","6","registered","","","10.60","0.00","0.00","0.00","10.60","","Success","2018-06-30 18:44:15","2018-06-30 18:44:15");
INSERT INTO transactions VALUES("866","15","","12","2","24","9FABKIBEWMVMZ","","53","12","registered","","","107.00","0.00","0.00","0.00","107.00","","Success","2018-07-01 12:36:34","2018-07-01 12:36:34");
INSERT INTO transactions VALUES("867","20","15","12","1","24","TQJMEUATC9HI1","","54","11","registered","","","12.00","0.00","0.00","0.00","-12.00","","Success","2018-07-01 12:38:46","2018-07-01 12:38:46");
INSERT INTO transactions VALUES("868","15","20","12","1","24","TQJMEUATC9HI1","","54","12","registered","","","12.00","0.00","0.00","0.00","12.00","","Success","2018-07-01 12:38:46","2018-07-01 12:38:46");
INSERT INTO transactions VALUES("869","15","20","12","1","12","RFB30GH0XDTQY","","55","11","registered","","","1200.00","0.00","0.00","0.00","-1200.00","","Success","2018-07-01 12:53:35","2018-07-01 12:53:35");
INSERT INTO transactions VALUES("870","20","15","12","1","12","RFB30GH0XDTQY","","55","12","registered","","","1200.00","0.00","0.00","0.00","1200.00","","Success","2018-07-01 12:53:35","2018-07-01 12:53:35");
INSERT INTO transactions VALUES("871","7","","12","","","CXCY5UR6DAZPM","","85","5","registered","","","15.00","14.00","2.10","14.00","-31.10","","Success","2018-07-01 13:59:41","2018-07-01 13:59:41");
INSERT INTO transactions VALUES("872","7","","13","","","CXCY5UR6DAZPM","","85","6","registered","","","11.36","0.00","0.00","0.00","11.36","","Success","2018-07-01 13:59:41","2018-07-01 13:59:41");
INSERT INTO transactions VALUES("873","15","20","13","2","23","NSXPKSKQGTGGF","","56","12","registered","","","656.00","0.00","0.00","0.00","656.00","","Success","2018-07-01 15:35:16","2018-07-01 15:35:16");
INSERT INTO transactions VALUES("874","15","15","13","1","23","EUBDNOEBBFQOD","","57","11","registered","","","656.00","0.00","0.00","0.00","-656.00","","Success","2018-07-01 17:53:14","2018-07-01 17:53:14");
INSERT INTO transactions VALUES("875","15","15","13","1","23","EUBDNOEBBFQOD","","57","12","registered","","","656.00","0.00","0.00","0.00","656.00","","Success","2018-07-01 17:53:14","2018-07-01 17:53:14");
INSERT INTO transactions VALUES("876","35","29","13","2","30","GUSHQPEXZCTTE","","58","12","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-07-02 12:05:13","2018-07-02 12:05:13");
INSERT INTO transactions VALUES("877","35","","12","2","","VE6WUEFUGC1KP","","61","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-02 12:37:52","2018-07-02 12:37:52");
INSERT INTO transactions VALUES("878","35","29","18","","","EIK5L8HO4QOH2","","91","9","registered","","","5.00","0.00","0.00","0.00","5.00","Hello Mahfuza,\nI need some money for buying book.\nThank you","Blocked","2018-07-02 12:40:35","2018-07-02 12:43:00");
INSERT INTO transactions VALUES("879","29","35","18","","","EIK5L8HO4QOH2","","91","10","registered","","","5.00","0.00","0.00","0.00","-5.00","Hello Mahfuza,\nI need some money for buying book.\nThank you","Blocked","2018-07-02 12:40:35","2018-07-02 12:43:00");
INSERT INTO transactions VALUES("880","35","29","12","","","VJ7FODDFUEKDP","","92","9","registered","","","6.00","0.00","0.00","0.00","6.00","test request","Success","2018-07-02 12:49:21","2018-07-02 13:03:41");
INSERT INTO transactions VALUES("881","29","35","12","","","VJ7FODDFUEKDP","","92","10","registered","","","6.00","6.00","0.36","16.00","-22.36","test request","Success","2018-07-02 12:49:21","2018-07-02 13:03:41");
INSERT INTO transactions VALUES("882","24","","12","3","","QHMY9SJPBQK2Y","","62","1","registered","","","200.00","12.00","24.00","11.00","235.00","","Success","2018-07-02 12:55:32","2018-07-02 12:55:32");
INSERT INTO transactions VALUES("883","35","29","12","","","YFBGYVG8C1L6G","","93","9","registered","","","8.00","0.00","0.00","0.00","8.00","hello","Success","2018-07-02 13:09:58","2018-07-02 13:26:04");
INSERT INTO transactions VALUES("884","29","35","12","","","YFBGYVG8C1L6G","","93","10","registered","","","8.00","6.00","0.48","16.00","-24.48","hello","Success","2018-07-02 13:09:58","2018-07-02 13:26:05");
INSERT INTO transactions VALUES("885","29","","12","3","","7DOGHJJFSOQ6C","","63","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-02 13:43:31","2018-07-02 13:43:31");
INSERT INTO transactions VALUES("886","35","29","12","","","WRE7GG2YNBIIS","","94","9","registered","","","6.00","0.00","0.00","0.00","6.00","hi","Success","2018-07-02 13:45:25","2018-07-02 14:03:59");
INSERT INTO transactions VALUES("887","29","35","12","","","WRE7GG2YNBIIS","","94","10","registered","","","6.00","6.00","0.36","16.00","-22.36","hi","Success","2018-07-02 13:45:26","2018-07-02 14:03:59");
INSERT INTO transactions VALUES("888","35","29","12","","","QRDLSSHZPXEAT","","143","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","test","Success","2018-07-02 14:11:07","2018-07-02 14:11:07");
INSERT INTO transactions VALUES("889","29","35","12","","","QRDLSSHZPXEAT","","143","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","test","Success","2018-07-02 14:11:08","2018-07-02 14:11:08");
INSERT INTO transactions VALUES("890","35","29","12","","","AA2F5JB8NUGYH","","144","3","registered","mahfuzasinthy@gmail.com","","3.00","3.00","0.09","13.00","-16.09","hggg","Success","2018-07-02 14:25:31","2018-07-02 14:25:31");
INSERT INTO transactions VALUES("891","29","35","12","","","AA2F5JB8NUGYH","","144","4","registered","mahfuzasinthy@gmail.com","","3.00","0.00","0.00","0.00","3.00","hggg","Success","2018-07-02 14:25:31","2018-07-02 14:25:31");
INSERT INTO transactions VALUES("892","35","29","13","","","SZJPXKBPBFXHE","","145","3","registered","mahfuzasinthy@gmail.com","","2.00","0.00","0.00","0.00","-2.00","llllllllllllllll[","Success","2018-07-02 14:27:52","2018-07-02 14:27:52");
INSERT INTO transactions VALUES("893","29","35","13","","","SZJPXKBPBFXHE","","145","4","registered","mahfuzasinthy@gmail.com","","2.00","0.00","0.00","0.00","2.00","llllllllllllllll[","Success","2018-07-02 14:27:52","2018-07-02 14:27:52");
INSERT INTO transactions VALUES("894","35","29","12","","","EYURF6SHMZVYH","","95","9","registered","","","15.50","0.00","0.00","0.00","15.50","sgdfhdfghjgf","Pending","2018-07-02 15:53:12","2018-07-02 15:53:12");
INSERT INTO transactions VALUES("895","29","35","12","","","EYURF6SHMZVYH","","95","10","registered","","","15.50","0.00","0.00","0.00","-15.50","sgdfhdfghjgf","Pending","2018-07-02 15:53:12","2018-07-02 15:53:12");
INSERT INTO transactions VALUES("896","35","35","12","","","WPPFUJNSTXFZB","","33","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-07-02 15:57:56","2018-07-02 16:09:30");
INSERT INTO transactions VALUES("897","35","35","12","","","ZEQQOAJXUUNG4","","34","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-07-02 15:58:25","2018-07-02 16:32:54");
INSERT INTO transactions VALUES("898","35","35","12","","","T4R888KXIFN10","","33","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-02 16:09:30","2018-07-02 16:09:30");
INSERT INTO transactions VALUES("899","4","24","12","","","SXJ2V0DDT5LDE","","96","9","registered","","","14.00","0.00","0.00","0.00","14.00","asdf","Success","2018-07-02 16:13:51","2018-07-02 16:46:45");
INSERT INTO transactions VALUES("900","24","4","12","","","SXJ2V0DDT5LDE","","96","10","registered","","","14.00","6.00","0.84","16.00","-30.84","asdf","Success","2018-07-02 16:13:51","2018-07-02 16:46:45");
INSERT INTO transactions VALUES("901","35","","12","2","","PWL34L2LBDZ4F","","64","1","registered","","","50.50","12.00","6.06","11.00","67.56","","Success","2018-07-02 16:16:15","2018-07-02 16:16:15");
INSERT INTO transactions VALUES("902","35","35","12","","","GSTU6EM4O8AJS","","34","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-07-02 16:32:54","2018-07-02 16:32:54");
INSERT INTO transactions VALUES("903","35","29","12","","","BD8XDTDXHEKB3","","146","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","rewsyhturt","Success","2018-07-02 16:35:01","2018-07-02 16:35:01");
INSERT INTO transactions VALUES("904","29","35","12","","","BD8XDTDXHEKB3","","146","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","rewsyhturt","Success","2018-07-02 16:35:01","2018-07-02 16:35:01");
INSERT INTO transactions VALUES("905","35","29","12","","","MKBFZQVPAFMYU","","97","9","registered","","","6.00","0.00","0.00","0.00","6.00","fdjgfjghkgljhjlhklkhl;lkj","Success","2018-07-02 16:38:53","2018-07-03 12:13:51");
INSERT INTO transactions VALUES("906","29","35","12","","","MKBFZQVPAFMYU","","97","10","registered","","","6.00","6.00","0.36","16.00","-22.36","fdjgfjghkgljhjlhklkhl;lkj","Success","2018-07-02 16:38:53","2018-07-03 12:13:51");
INSERT INTO transactions VALUES("907","35","","12","1","","JFLEH64KWHDZR","","13","2","registered","","","5.00","5.00","0.25","10.00","-15.25","","Success","2018-07-02 16:46:24","2018-07-02 18:45:49");
INSERT INTO transactions VALUES("908","4","","12","3","","AUUEQQVHLNBHZ","","14","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Pending","2018-07-02 16:55:57","2018-07-02 16:55:57");
INSERT INTO transactions VALUES("909","35","","12","3","","PNLBATNHAESOH","","15","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Success","2018-07-02 17:00:13","2018-07-02 18:45:25");
INSERT INTO transactions VALUES("910","35","","12","3","","9KEINHOFLIGVH","","16","2","registered","","","2.00","5.00","0.10","10.00","-12.10","","Success","2018-07-02 17:08:02","2018-07-02 17:15:09");
INSERT INTO transactions VALUES("911","35","29","12","","","BN8VLXTTQXAFU","","98","9","registered","","","6.00","0.00","0.00","0.00","6.00","test","Success","2018-07-03 11:37:49","2018-07-03 11:39:04");
INSERT INTO transactions VALUES("912","29","35","12","","","BN8VLXTTQXAFU","","98","10","registered","","","6.00","6.00","0.36","16.00","-22.36","test","Success","2018-07-03 11:37:49","2018-07-03 11:39:04");
INSERT INTO transactions VALUES("913","35","29","12","","","6S8D5TDYGGWKK","","99","9","registered","","","6.00","0.00","0.00","0.00","6.00","mbvnmvgh","Success","2018-07-03 12:03:48","2018-07-03 12:04:39");
INSERT INTO transactions VALUES("914","29","35","12","","","6S8D5TDYGGWKK","","99","10","registered","","","6.00","6.00","0.36","16.00","-22.36","mbvnmvgh","Success","2018-07-03 12:03:48","2018-07-03 12:04:39");
INSERT INTO transactions VALUES("915","35","","12","2","","SVRCKGJQYX5LO","","65","1","registered","","","50.00","12.00","6.00","11.00","67.00","","Success","2018-07-03 12:06:55","2018-07-03 12:06:55");
INSERT INTO transactions VALUES("916","29","","12","3","","KTXTENBLXW45S","","66","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-03 12:27:52","2018-07-03 12:27:52");
INSERT INTO transactions VALUES("917","35","","12","","","CJ0L0KP7KINNW","","86","5","registered","","","5.00","0.00","0.10","2.00","-7.10","","Success","2018-07-03 12:43:40","2018-07-03 12:43:40");
INSERT INTO transactions VALUES("918","35","","13","","","CJ0L0KP7KINNW","","86","6","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 12:43:40","2018-07-03 12:43:40");
INSERT INTO transactions VALUES("919","35","","12","","","RALM5F0NSWCZQ","","87","5","registered","","","5.00","0.00","0.10","2.00","-7.10","","Success","2018-07-03 12:44:13","2018-07-03 12:44:13");
INSERT INTO transactions VALUES("920","35","","13","","","RALM5F0NSWCZQ","","87","6","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 12:44:13","2018-07-03 12:44:13");
INSERT INTO transactions VALUES("921","35","","12","","","NUEK0EPA98ZXL","","88","5","registered","","","5.00","0.00","0.10","2.00","-7.10","","Success","2018-07-03 12:44:28","2018-07-03 12:44:28");
INSERT INTO transactions VALUES("922","35","","13","","","NUEK0EPA98ZXL","","88","6","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 12:44:28","2018-07-03 12:44:28");
INSERT INTO transactions VALUES("923","35","","12","","","DWHNGQ5GRWDLU","","89","5","registered","","","5.00","0.00","0.10","2.00","-7.10","","Success","2018-07-03 12:44:47","2018-07-03 12:44:47");
INSERT INTO transactions VALUES("924","35","","13","","","DWHNGQ5GRWDLU","","89","6","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 12:44:47","2018-07-03 12:44:47");
INSERT INTO transactions VALUES("925","4","4","13","2","26","VTHMCSAPSDHML","","59","12","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 13:11:34","2018-07-03 13:11:34");
INSERT INTO transactions VALUES("926","4","4","13","2","26","XQYMFZS8OZRBS","","60","12","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 13:13:44","2018-07-03 13:13:44");
INSERT INTO transactions VALUES("927","4","4","13","3","26","LNUWCTJ2DV9JR","","61","12","registered","","","10.00","0.00","0.00","0.00","10.00","","Success","2018-07-03 13:30:26","2018-07-03 13:30:26");
INSERT INTO transactions VALUES("928","4","4","13","3","26","R2LA6FDZA481R","","62","12","registered","","","9.80","0.00","0.20","0.00","10.00","","Success","2018-07-03 13:34:42","2018-07-03 13:34:42");
INSERT INTO transactions VALUES("929","35","29","13","2","33","MKNRCXHGYP27G","","63","12","registered","","","2.00","0.00","0.00","0.00","2.00","","Success","2018-07-03 13:55:00","2018-07-03 13:55:00");
INSERT INTO transactions VALUES("930","35","","12","1","","4Q0LEYRJXVKLX","","17","2","registered","","","2.00","5.00","0.10","10.00","-12.10","","Pending","2018-07-03 14:32:17","2018-07-03 14:32:17");
INSERT INTO transactions VALUES("931","35","","13","3","","BBNDVQTKOCHQO","","18","2","registered","","","2.00","8.00","0.16","18.00","-20.16","","Pending","2018-07-03 14:37:57","2018-07-03 14:37:57");
INSERT INTO transactions VALUES("932","35","","13","3","","Z9BOQY0XIKONW","","19","2","registered","","","3.00","8.00","0.24","18.00","-21.24","","Pending","2018-07-03 14:41:33","2018-07-03 14:41:33");
INSERT INTO transactions VALUES("933","4","","12","1","","HPOEV6UMPOTOJ","","20","2","registered","","","14.00","5.00","0.70","10.00","-24.70","","Pending","2018-07-03 16:25:25","2018-07-03 16:25:25");
INSERT INTO transactions VALUES("934","35","29","16","","","M3ACT7AKZPEN8","","100","9","registered","","","5.00","0.00","0.00","0.00","5.00","test","Pending","2018-07-03 17:20:30","2018-07-03 17:20:30");
INSERT INTO transactions VALUES("935","29","35","16","","","M3ACT7AKZPEN8","","100","10","registered","","","5.00","0.00","0.00","0.00","-5.00","test","Pending","2018-07-03 17:20:31","2018-07-03 17:20:31");
INSERT INTO transactions VALUES("936","35","29","18","","","NKKAONTYWKQUC","","101","9","registered","","","5.00","0.00","0.00","0.00","5.00","test","Pending","2018-07-03 17:22:08","2018-07-03 17:22:08");
INSERT INTO transactions VALUES("937","29","35","18","","","NKKAONTYWKQUC","","101","10","registered","","","5.00","0.00","0.00","0.00","-5.00","test","Pending","2018-07-03 17:22:08","2018-07-03 17:22:08");
INSERT INTO transactions VALUES("938","4","5","12","","","FA2QWN9AZRPDT","","147","3","registered","aminul.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","5646","Success","2018-07-03 17:55:07","2018-07-03 17:55:07");
INSERT INTO transactions VALUES("939","5","4","12","","","FA2QWN9AZRPDT","","147","4","registered","aminul.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","5646","Success","2018-07-03 17:55:07","2018-07-03 17:55:07");
INSERT INTO transactions VALUES("940","24","","13","","","BRDANQ8VWIZOS","","102","9","unregistered","lenin.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","test","Blocked","2018-07-03 17:58:42","2018-07-03 19:01:25");
INSERT INTO transactions VALUES("941","","24","13","","","BRDANQ8VWIZOS","","102","10","unregistered","lenin.techvill@gmail.com","","10.00","0.00","0.00","0.00","-10.00","test","Blocked","2018-07-03 17:58:42","2018-07-03 19:01:25");
INSERT INTO transactions VALUES("942","31","","12","2","","EBQKQKNKFE8RO","","67","1","registered","","","58000.00","12.00","6960.00","11.00","64971.00","","Success","2018-07-03 18:31:33","2018-07-03 18:31:33");
INSERT INTO transactions VALUES("943","31","15","12","","","LELKCF4XBRYB3","","148","3","registered","parvez.techvill@gmail.com","","1000.00","3.00","30.00","13.00","-1043.00","milon first transfer","Success","2018-07-03 18:33:51","2018-07-03 18:33:51");
INSERT INTO transactions VALUES("944","15","31","12","","","LELKCF4XBRYB3","","148","4","registered","parvez.techvill@gmail.com","","1000.00","0.00","0.00","0.00","1000.00","milon first transfer","Success","2018-07-03 18:33:51","2018-07-03 18:33:51");
INSERT INTO transactions VALUES("945","31","20","12","","","BWROBIYEANJVG","","149","3","registered","parvez.agvbd@gmail.com","","100.00","3.00","3.00","13.00","-116.00","test2","Success","2018-07-03 18:34:31","2018-07-03 18:34:31");
INSERT INTO transactions VALUES("946","20","31","12","","","BWROBIYEANJVG","","149","4","registered","parvez.agvbd@gmail.com","","100.00","0.00","0.00","0.00","100.00","test2","Success","2018-07-03 18:34:31","2018-07-03 18:34:31");
INSERT INTO transactions VALUES("947","20","31","12","","","OQZUYI4OLTJ5N","","150","3","registered","milon.techvill@gmail.com","","1500.00","3.00","45.00","13.00","-1558.00","to milon","Blocked","2018-07-03 18:40:37","2018-07-03 18:42:18");
INSERT INTO transactions VALUES("948","31","20","12","","","OQZUYI4OLTJ5N","","150","4","registered","milon.techvill@gmail.com","","1500.00","0.00","0.00","0.00","1500.00","to milon","Blocked","2018-07-03 18:40:37","2018-07-03 18:42:18");
INSERT INTO transactions VALUES("949","20","31","14","","","5UOR7LCQ2GBXA","","151","3","registered","milon.techvill@gmail.com","","15.00","5.00","0.75","5.00","-20.75","test","Success","2018-07-03 18:41:42","2018-07-03 18:41:42");
INSERT INTO transactions VALUES("950","31","20","14","","","5UOR7LCQ2GBXA","","151","4","registered","milon.techvill@gmail.com","","15.00","0.00","0.00","0.00","15.00","test","Success","2018-07-03 18:41:42","2018-07-03 18:41:42");
INSERT INTO transactions VALUES("951","31","","13","2","","2CFXYDAMXGB8Z","","68","1","registered","","","17000.00","0.00","0.00","0.00","17000.00","","Success","2018-07-03 18:45:22","2018-07-03 18:45:22");
INSERT INTO transactions VALUES("952","31","20","12","","","5WFXAJNUSNSDK","","152","3","registered","parvez.agvbd@gmail.com","","120.00","3.00","3.60","13.00","-136.60","tet","Success","2018-07-03 18:50:35","2018-07-03 18:50:35");
INSERT INTO transactions VALUES("953","20","31","12","","","5WFXAJNUSNSDK","","152","4","registered","parvez.agvbd@gmail.com","","120.00","0.00","0.00","0.00","120.00","tet","Success","2018-07-03 18:50:35","2018-07-03 18:50:35");
INSERT INTO transactions VALUES("954","20","31","14","","","7ZGKMIDEILEUK","","153","3","registered","milon.techvill@gmail.com","","15.00","5.00","0.75","5.00","-20.75","test","Success","2018-07-03 18:57:43","2018-07-03 18:57:43");
INSERT INTO transactions VALUES("955","31","20","14","","","7ZGKMIDEILEUK","","153","4","registered","milon.techvill@gmail.com","","15.00","0.00","0.00","0.00","15.00","test","Success","2018-07-03 18:57:43","2018-07-03 18:57:43");
INSERT INTO transactions VALUES("956","31","20","12","","","UYGK7ZFVLHYLQ","","154","3","registered","parvez.agvbd@gmail.com","","12.00","3.00","0.36","13.00","-25.36","ggg","Success","2018-07-03 18:59:12","2018-07-03 18:59:12");
INSERT INTO transactions VALUES("957","20","31","12","","","UYGK7ZFVLHYLQ","","154","4","registered","parvez.agvbd@gmail.com","","12.00","0.00","0.00","0.00","12.00","ggg","Success","2018-07-03 18:59:12","2018-07-03 18:59:12");
INSERT INTO transactions VALUES("958","4","5","12","","","SM5UIITLJIXFY","","155","3","registered","aminul.techvill@gmail.com","","17.00","3.00","0.51","13.00","-30.51","17","Success","2018-07-03 19:18:38","2018-07-03 19:18:38");
INSERT INTO transactions VALUES("959","5","4","12","","","SM5UIITLJIXFY","","155","4","registered","aminul.techvill@gmail.com","","17.00","0.00","0.00","0.00","17.00","17","Success","2018-07-03 19:18:38","2018-07-03 19:18:38");
INSERT INTO transactions VALUES("960","15","31","12","","","MZLTLMC5ETWGG","","156","3","registered","milon.techvill@gmail.com","","12.00","3.00","0.36","13.00","-25.36","vvv","Success","2018-07-04 11:29:16","2018-07-04 11:29:16");
INSERT INTO transactions VALUES("961","31","15","12","","","MZLTLMC5ETWGG","","156","4","registered","milon.techvill@gmail.com","","12.00","0.00","0.00","0.00","12.00","vvv","Success","2018-07-04 11:29:17","2018-07-04 11:29:17");
INSERT INTO transactions VALUES("962","15","31","12","","","00NYZHRPUJFRC","","157","3","registered","milon.techvill@gmail.com","","12.00","3.00","0.36","13.00","-25.36","vvv","Success","2018-07-04 11:42:05","2018-07-04 11:42:05");
INSERT INTO transactions VALUES("963","31","15","12","","","00NYZHRPUJFRC","","157","4","registered","milon.techvill@gmail.com","","12.00","0.00","0.00","0.00","12.00","vvv","Success","2018-07-04 11:42:06","2018-07-04 11:42:06");
INSERT INTO transactions VALUES("964","15","","12","","","RJ1QVBW76LWEC","","35","7","registered","","","12.00","2.00","0.24","2.00","-14.24","","Success","2018-07-04 11:43:47","2018-07-04 11:43:47");
INSERT INTO transactions VALUES("965","15","","12","","","ZBXSMCYWOONYC","","36","7","registered","","","12.00","2.00","0.24","2.00","-14.24","","Success","2018-07-04 11:45:27","2018-07-04 11:45:27");
INSERT INTO transactions VALUES("966","15","31","12","","","F3E8COIDAUWRC","","158","3","registered","milon.techvill@gmail.com","","5.00","3.00","0.15","13.00","-18.15","gg","Success","2018-07-04 11:59:17","2018-07-04 11:59:17");
INSERT INTO transactions VALUES("967","31","15","12","","","F3E8COIDAUWRC","","158","4","registered","milon.techvill@gmail.com","","5.00","0.00","0.00","0.00","5.00","gg","Success","2018-07-04 11:59:17","2018-07-04 11:59:17");
INSERT INTO transactions VALUES("968","15","","12","","","ACJJKB0FTLCWT","","37","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-07-04 12:00:00","2018-07-04 12:00:00");
INSERT INTO transactions VALUES("969","15","","12","2","","XKSAJ0PX3K40S","","21","2","registered","","","100.00","5.00","5.00","10.00","-115.00","","Pending","2018-07-04 12:02:52","2018-07-04 12:02:52");
INSERT INTO transactions VALUES("970","15","","12","2","","IHLG2UVTEIP3S","","22","2","registered","","","5.00","5.00","0.25","10.00","-15.25","","Pending","2018-07-04 12:03:51","2018-07-04 12:03:51");
INSERT INTO transactions VALUES("971","31","15","12","","","XAHLRU5WTDZ3O","","103","9","registered","","","14.00","0.00","0.00","0.00","14.00","test","Pending","2018-07-04 12:07:24","2018-07-04 12:07:24");
INSERT INTO transactions VALUES("972","15","31","12","","","XAHLRU5WTDZ3O","","103","10","registered","","","14.00","0.00","0.00","0.00","-14.00","test","Pending","2018-07-04 12:07:24","2018-07-04 12:07:24");
INSERT INTO transactions VALUES("973","31","15","12","","","A3JTW03N6YJJH","","104","9","registered","","","14.00","0.00","0.00","0.00","14.00","test","Success","2018-07-04 12:10:18","2018-07-04 12:11:27");
INSERT INTO transactions VALUES("974","15","31","12","","","A3JTW03N6YJJH","","104","10","registered","","","14.00","6.00","0.84","16.00","-30.84","test","Success","2018-07-04 12:10:18","2018-07-04 12:11:27");
INSERT INTO transactions VALUES("975","15","","12","","","0QZ6CTEIGRVKN","","38","7","registered","","","10.00","2.00","0.20","2.00","-12.20","","Success","2018-07-04 12:26:28","2018-07-04 12:26:28");
INSERT INTO transactions VALUES("976","15","","12","","","X8YQ1VX9JHMJJ","","39","7","registered","","","14.00","2.00","0.28","2.00","-16.28","","Success","2018-07-04 12:28:25","2018-07-04 12:28:25");
INSERT INTO transactions VALUES("977","20","15","12","","","WQO3ZG8ITSSF2","","159","3","registered","parvez.techvill@gmail.com","","11.00","3.00","0.33","13.00","-24.33","dd","Success","2018-07-04 12:29:42","2018-07-04 12:29:42");
INSERT INTO transactions VALUES("978","15","20","12","","","WQO3ZG8ITSSF2","","159","4","registered","parvez.techvill@gmail.com","","11.00","0.00","0.00","0.00","11.00","dd","Success","2018-07-04 12:29:42","2018-07-04 12:29:42");
INSERT INTO transactions VALUES("979","4","24","12","","","HSSJUFU5CL4NI","","105","9","registered","","","25.00","0.00","0.00","0.00","25.00","321","Pending","2018-07-04 12:35:13","2018-07-04 12:35:13");
INSERT INTO transactions VALUES("980","24","4","12","","","HSSJUFU5CL4NI","","105","10","registered","","","25.00","0.00","0.00","0.00","-25.00","321","Pending","2018-07-04 12:35:13","2018-07-04 12:35:13");
INSERT INTO transactions VALUES("981","15","","12","","","TEKGWJ4PTH8M2","","40","7","registered","","","11.00","2.00","0.22","2.00","-13.22","","Success","2018-07-04 12:50:51","2018-07-04 12:50:51");
INSERT INTO transactions VALUES("982","15","","12","","","NF02ASBN9OHET","","41","7","registered","","","15.00","2.00","0.30","2.00","-17.30","","Success","2018-07-05 14:42:49","2018-07-05 14:42:49");
INSERT INTO transactions VALUES("983","15","","12","","","ER1DFQOZIJUS0","","42","7","registered","","","13.00","2.00","0.26","2.00","-15.26","","Success","2018-07-05 15:50:17","2018-07-05 15:50:17");
INSERT INTO transactions VALUES("984","15","","12","","","BUCWXG7IC2UPL","","43","7","registered","","","6.00","2.00","0.12","2.00","-8.12","","Success","2018-07-05 16:05:25","2018-07-05 16:05:25");
INSERT INTO transactions VALUES("985","20","","12","","","ZWGCOT33BVW5O","","44","7","registered","","","12.00","2.00","0.24","2.00","-14.24","","Success","2018-07-05 16:08:53","2018-07-05 16:08:53");
INSERT INTO transactions VALUES("986","20","20","12","","","HUIGBO6QECYZD","","45","7","registered","","","13.00","2.00","0.26","2.00","-15.26","","Success","2018-07-05 16:09:23","2018-07-11 18:16:53");
INSERT INTO transactions VALUES("987","15","","12","","","EELNOYEQAOLFJ","","46","7","registered","","","7.00","2.00","0.14","2.00","-9.14","","Success","2018-07-05 16:17:54","2018-07-05 16:17:54");
INSERT INTO transactions VALUES("988","15","15","12","","","CQVFPLOPNA6KH","","47","7","registered","","","7.00","2.00","0.14","2.00","-9.14","","Success","2018-07-05 16:22:30","2018-07-16 14:04:32");
INSERT INTO transactions VALUES("989","7","","12","","","WRP434WGFOUF4","","48","7","registered","","","15.00","2.00","0.30","2.00","-17.30","","Success","2018-07-05 16:52:02","2018-07-05 16:52:02");
INSERT INTO transactions VALUES("990","15","","12","","","QQXSF0FNNJR91","","49","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-07-05 17:08:23","2018-07-05 17:08:23");
INSERT INTO transactions VALUES("991","20","20","12","","","NNDEEIDTTCDTI","","50","7","registered","","","19.00","2.00","0.38","7.00","-26.38","","Success","2018-07-05 17:47:40","2018-07-11 16:49:10");
INSERT INTO transactions VALUES("992","15","","12","","","ERIDU7VROZ99E","","51","7","registered","","","12.00","2.00","0.24","7.00","-19.24","","Success","2018-07-05 17:53:32","2018-07-05 17:53:32");
INSERT INTO transactions VALUES("993","15","","12","2","","9DSBNB85CJN9H","","69","1","registered","","","15000.00","12.00","1800.00","11.00","16811.00","","Success","2018-07-05 17:58:07","2018-07-05 17:58:07");
INSERT INTO transactions VALUES("994","15","31","12","","","AMBFPKZZEZ49W","","160","3","registered","milon.techvill@gmail.com","","123.00","3.00","3.69","13.00","-139.69","gg","Success","2018-07-05 18:09:35","2018-07-05 18:09:35");
INSERT INTO transactions VALUES("995","31","15","12","","","AMBFPKZZEZ49W","","160","4","registered","milon.techvill@gmail.com","","123.00","0.00","0.00","0.00","123.00","gg","Success","2018-07-05 18:09:35","2018-07-05 18:09:35");
INSERT INTO transactions VALUES("996","31","15","12","","","234WK4JZALOAK","","106","9","registered","","","124.00","0.00","0.00","0.00","124.00","test","Success","2018-07-05 18:33:04","2018-07-05 19:13:46");
INSERT INTO transactions VALUES("997","15","31","12","","","234WK4JZALOAK","","106","10","registered","","","124.00","6.00","7.44","16.00","-147.44","test","Success","2018-07-05 18:33:04","2018-07-05 19:22:49");
INSERT INTO transactions VALUES("998","31","15","13","","","1SZOVI8SCIJ9Z","","161","3","registered","parvez.techvill@gmail.com","","13.00","0.00","0.00","0.00","-13.00","test","Success","2018-07-05 19:04:36","2018-07-05 19:04:36");
INSERT INTO transactions VALUES("999","15","31","13","","","1SZOVI8SCIJ9Z","","161","4","registered","parvez.techvill@gmail.com","","13.00","0.00","0.00","0.00","13.00","test","Success","2018-07-05 19:04:36","2018-07-05 19:04:36");
INSERT INTO transactions VALUES("1000","31","15","12","","","QJWC5YXLNRTPC","","107","9","registered","","","13.00","0.00","0.00","0.00","13.00","ggg","Blocked","2018-07-05 19:04:55","2018-07-07 13:45:03");
INSERT INTO transactions VALUES("1001","15","31","12","","","QJWC5YXLNRTPC","","107","10","registered","","","13.00","6.00","0.78","16.00","-29.78","ggg","Blocked","2018-07-05 19:04:55","2018-07-07 13:45:03");
INSERT INTO transactions VALUES("1002","31","15","26","","","UTE64DF7PAUEZ","","108","9","registered","","","12.00","0.00","0.00","0.00","12.00","dgggggggggggggg","Success","2018-07-05 19:48:54","2018-07-05 19:52:32");
INSERT INTO transactions VALUES("1003","15","31","26","","","UTE64DF7PAUEZ","","108","10","registered","","","12.00","0.00","0.00","0.00","-12.00","dgggggggggggggg","Success","2018-07-05 19:48:54","2018-07-05 19:52:32");
INSERT INTO transactions VALUES("1004","15","","12","","","MJXJVTOE6HAM6","","90","5","registered","","","100.00","2.00","2.00","10.00","-112.00","","Success","2018-07-05 19:52:16","2018-07-05 19:52:16");
INSERT INTO transactions VALUES("1005","15","","26","","","MJXJVTOE6HAM6","","90","6","registered","","","8433.00","0.00","0.00","0.00","8433.00","","Success","2018-07-05 19:52:16","2018-07-05 19:52:16");
INSERT INTO transactions VALUES("1006","31","","12","1","","SPKAZEFWCSFJ0","","23","2","registered","","","14.00","5.00","0.70","10.00","-24.70","","Pending","2018-07-07 13:33:08","2018-07-07 13:33:08");
INSERT INTO transactions VALUES("1007","31","","12","2","","TTBFUKK2CTLAO","","70","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-07-07 13:49:19","2018-07-07 13:49:19");
INSERT INTO transactions VALUES("1008","31","","12","1","","T29ZOPODECOXB","","24","2","registered","","","16.00","5.00","0.80","10.00","-26.80","","Pending","2018-07-07 14:01:56","2018-07-07 14:01:56");
INSERT INTO transactions VALUES("1009","31","","12","1","","KUQKHPJXPXBKZ","","25","2","registered","","","14.00","5.00","0.70","10.00","-24.70","","Pending","2018-07-07 14:11:11","2018-07-07 14:11:11");
INSERT INTO transactions VALUES("1010","31","","12","3","","KH9VMWWLVA12I","","26","2","registered","","","15.00","5.00","0.75","10.00","-25.75","","Pending","2018-07-07 14:12:01","2018-07-07 14:12:01");
INSERT INTO transactions VALUES("1011","31","","12","","","FUPGRABGXSMKV","","91","5","registered","","","15.00","2.00","0.30","10.00","-25.30","","Success","2018-07-07 14:37:38","2018-07-07 14:37:38");
INSERT INTO transactions VALUES("1012","31","","26","","","FUPGRABGXSMKV","","91","6","registered","","","1264.95","0.00","0.00","0.00","1264.95","","Success","2018-07-07 14:37:38","2018-07-07 14:37:38");
INSERT INTO transactions VALUES("1013","31","","12","","","F5TXXNKZXY3PV","","92","5","registered","","","15.00","3.00","0.45","12.00","-27.45","","Success","2018-07-07 14:58:38","2018-07-07 14:58:38");
INSERT INTO transactions VALUES("1014","31","","14","","","F5TXXNKZXY3PV","","92","6","registered","","","12.75","0.00","0.00","0.00","12.75","","Success","2018-07-07 14:58:38","2018-07-07 14:58:38");
INSERT INTO transactions VALUES("1015","31","31","12","","","JOW5RXZ8XOJ1O","","52","7","registered","","","19.00","2.00","0.38","7.00","-26.38","","Success","2018-07-07 15:30:22","2018-07-07 17:08:10");
INSERT INTO transactions VALUES("1016","31","","26","","","HEIKQRMESOXG1","","93","5","registered","","","12.00","0.00","0.24","10.00","-22.24","","Success","2018-07-07 16:28:38","2018-07-07 16:28:38");
INSERT INTO transactions VALUES("1017","31","","12","","","HEIKQRMESOXG1","","93","6","registered","","","0.14","0.00","0.00","0.00","0.14","","Success","2018-07-07 16:28:38","2018-07-07 16:28:38");
INSERT INTO transactions VALUES("1018","24","","12","","","DW4T09HPSBCCH","","94","5","registered","","","14.00","14.00","1.96","14.00","-29.96","","Success","2018-07-07 16:32:14","2018-07-07 16:32:14");
INSERT INTO transactions VALUES("1019","24","","13","","","DW4T09HPSBCCH","","94","6","registered","","","10.54","0.00","0.00","0.00","10.54","","Success","2018-07-07 16:32:14","2018-07-07 16:32:14");
INSERT INTO transactions VALUES("1020","31","31","26","","","OKET7LYJW4FO8","","53","7","registered","","","13.00","3.00","0.39","4.00","-17.39","","Success","2018-07-07 16:55:47","2018-07-07 17:06:45");
INSERT INTO transactions VALUES("1021","31","31","26","","","EAODEBOXTUOMF","","53","8","registered","","","13.00","0.00","0.00","0.00","13.00","","Success","2018-07-07 17:06:45","2018-07-07 17:06:45");
INSERT INTO transactions VALUES("1022","31","31","12","","","FEZNEWOXWPECV","","52","8","registered","","","19.00","0.00","0.00","0.00","19.00","","Success","2018-07-07 17:08:10","2018-07-07 17:08:10");
INSERT INTO transactions VALUES("1023","31","31","12","","","AHBVVSTOY5NXX","","54","7","registered","","","11.00","2.00","0.22","7.00","-18.22","","Success","2018-07-07 17:13:49","2018-07-07 17:14:35");
INSERT INTO transactions VALUES("1024","31","31","12","","","RNZMKGBXWDIW9","","54","8","registered","","","11.00","0.00","0.00","0.00","11.00","","Success","2018-07-07 17:14:35","2018-07-07 17:14:35");
INSERT INTO transactions VALUES("1025","31","31","12","","","PP6N4JYGIBCAL","","55","7","registered","","","33.00","2.00","0.66","7.00","-40.66","","Success","2018-07-07 17:19:45","2018-07-07 17:20:59");
INSERT INTO transactions VALUES("1026","31","31","12","","","TNEEXMGUWJO4A","","55","8","registered","","","33.00","0.00","0.00","0.00","33.00","","Success","2018-07-07 17:20:59","2018-07-07 17:20:59");
INSERT INTO transactions VALUES("1027","15","15","12","2","23","GGUAZMWYDKNYA","","64","12","registered","","","13.00","0.00","0.00","0.00","13.00","","Success","2018-07-07 17:38:24","2018-07-07 17:38:24");
INSERT INTO transactions VALUES("1028","20","15","12","1","23","RV697WSB71F7R","","65","11","registered","","","13.00","0.00","0.00","0.00","-13.00","","Success","2018-07-07 18:07:59","2018-07-07 18:07:59");
INSERT INTO transactions VALUES("1029","15","20","12","1","23","RV697WSB71F7R","","65","12","registered","","","13.00","0.00","0.00","0.00","13.00","","Success","2018-07-07 18:07:59","2018-07-07 18:07:59");
INSERT INTO transactions VALUES("1030","20","15","12","1","23","JQN2JWGCJACBO","","66","11","registered","","","13.00","0.00","0.00","0.00","-13.00","","Success","2018-07-07 18:26:13","2018-07-07 18:26:13");
INSERT INTO transactions VALUES("1031","15","20","12","1","23","JQN2JWGCJACBO","","66","12","registered","","","13.00","0.00","0.00","0.00","13.00","","Success","2018-07-07 18:26:14","2018-07-07 18:26:14");
INSERT INTO transactions VALUES("1032","35","29","26","","","JJ8MXA7EGJ7AQ","","109","9","registered","","","2.00","0.00","0.00","0.00","2.00","test","Blocked","2018-07-08 12:46:07","2018-07-08 12:53:42");
INSERT INTO transactions VALUES("1033","29","35","26","","","JJ8MXA7EGJ7AQ","","109","10","registered","","","2.00","0.00","0.00","0.00","-2.00","test","Blocked","2018-07-08 12:46:07","2018-07-08 12:53:42");
INSERT INTO transactions VALUES("1034","29","","12","","","QBXAAPHHLPEXQ","","95","5","registered","","","5.00","2.00","0.10","10.00","-15.10","","Success","2018-07-08 12:48:00","2018-07-08 12:48:00");
INSERT INTO transactions VALUES("1035","29","","26","","","QBXAAPHHLPEXQ","","95","6","registered","","","421.65","0.00","0.00","0.00","421.65","","Success","2018-07-08 12:48:00","2018-07-08 12:48:00");
INSERT INTO transactions VALUES("1036","35","29","12","","","ZZVXQRSTA68X0","","162","3","registered","mahfuzasinthy@gmail.com","","10.00","3.00","0.30","13.00","-23.30","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Viva","Success","2018-07-08 12:56:05","2018-07-08 12:56:05");
INSERT INTO transactions VALUES("1037","29","35","12","","","ZZVXQRSTA68X0","","162","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Viva","Success","2018-07-08 12:56:05","2018-07-08 12:56:05");
INSERT INTO transactions VALUES("1038","35","29","12","","","HWEFXK5NGNMAT","","110","9","registered","","","6.00","0.00","0.00","0.00","6.00","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Viva","Success","2018-07-08 13:12:25","2018-07-08 13:21:19");
INSERT INTO transactions VALUES("1039","29","35","12","","","HWEFXK5NGNMAT","","110","10","registered","","","6.00","6.00","0.36","16.00","-22.36","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Viva","Success","2018-07-08 13:12:25","2018-07-08 13:21:19");
INSERT INTO transactions VALUES("1040","35","29","16","","","YQSTG1M4EUMYG","UPVHAUL6I5LHG","111","9","registered","","","2.00","0.00","0.00","0.00","2.00","test","Success","2018-07-08 13:16:23","2018-07-08 13:42:12");
INSERT INTO transactions VALUES("1041","29","35","16","","","YQSTG1M4EUMYG","UPVHAUL6I5LHG","111","10","registered","","","2.00","2.00","0.04","0.00","-2.04","test","Success","2018-07-08 13:16:23","2018-07-08 13:42:12");
INSERT INTO transactions VALUES("1042","35","29","12","","","JO6ZETOTPYR3C","","112","9","registered","","","8.00","0.00","0.00","0.00","8.00","dfhfd","Success","2018-07-08 13:32:49","2018-07-08 13:33:09");
INSERT INTO transactions VALUES("1043","29","35","12","","","JO6ZETOTPYR3C","","112","10","registered","","","8.00","6.00","0.48","16.00","-24.48","dfhfd","Success","2018-07-08 13:32:49","2018-07-08 13:33:09");
INSERT INTO transactions VALUES("1044","35","29","16","","","U2NEJBECMU3YR","","113","9","registered","","","6.00","0.00","0.00","0.00","6.00","test","Success","2018-07-08 13:34:30","2018-07-08 13:36:21");
INSERT INTO transactions VALUES("1045","29","35","16","","","U2NEJBECMU3YR","","113","10","registered","","","6.00","2.00","0.12","0.00","-6.12","test","Success","2018-07-08 13:34:30","2018-07-08 13:36:21");
INSERT INTO transactions VALUES("1046","35","29","16","","","UPVHAUL6I5LHG","YQSTG1M4EUMYG","114","9","registered","","","2.00","0.00","0.00","0.00","2.00","test","Success","2018-07-08 13:42:12","2018-07-08 13:43:35");
INSERT INTO transactions VALUES("1047","29","35","16","","","UPVHAUL6I5LHG","YQSTG1M4EUMYG","114","10","registered","","","2.00","2.00","0.04","0.00","-2.04","test","Success","2018-07-08 13:42:12","2018-07-08 13:43:35");
INSERT INTO transactions VALUES("1048","35","29","12","","","GCOF3DE3HWQZV","","56","7","registered","","","10.00","2.00","0.20","7.00","-17.20","","Success","2018-07-08 13:47:20","2018-07-08 13:48:11");
INSERT INTO transactions VALUES("1049","29","35","12","","","C575ZWZTH5KOS","","56","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Pending","2018-07-08 13:48:11","2018-07-08 13:51:27");
INSERT INTO transactions VALUES("1050","35","29","12","","","OW0FZ9N7RCF6Q","","115","9","registered","","","6.00","0.00","0.00","0.00","6.00","tyrtyrt","Success","2018-07-08 14:17:36","2018-07-08 16:30:16");
INSERT INTO transactions VALUES("1051","29","35","12","","","OW0FZ9N7RCF6Q","","115","10","registered","","","6.00","6.00","0.36","16.00","-22.36","tyrtyrt","Success","2018-07-08 14:17:36","2018-07-08 16:30:16");
INSERT INTO transactions VALUES("1052","31","","12","","","HOBT2T7QCUO3S","","57","7","registered","","","12.00","2.00","0.24","7.00","-19.24","","Pending","2018-07-08 14:18:03","2018-07-08 14:30:06");
INSERT INTO transactions VALUES("1053","31","","26","","","H51XC4YIUOHFS","","58","7","registered","","","17.00","3.00","0.51","4.00","-21.51","","Pending","2018-07-08 14:33:01","2018-07-08 14:39:55");
INSERT INTO transactions VALUES("1054","31","31","12","","","LHGJVPMLM2ZJN","","59","7","registered","","","14.00","2.00","0.28","7.00","-21.28","","Success","2018-07-08 14:48:27","2018-07-08 14:49:01");
INSERT INTO transactions VALUES("1055","31","31","12","","","G6ZKYSODOYAL5","","59","8","registered","","","14.00","0.00","0.00","0.00","14.00","","Success","2018-07-08 14:49:01","2018-07-08 14:49:01");
INSERT INTO transactions VALUES("1056","31","","13","","","HD62R4HXNLH5N","","96","5","registered","","","12.00","2.00","0.24","0.00","-12.24","","Success","2018-07-08 14:54:13","2018-07-08 14:54:13");
INSERT INTO transactions VALUES("1057","31","","16","","","HD62R4HXNLH5N","","96","6","registered","","","144.00","0.00","0.00","0.00","144.00","","Success","2018-07-08 14:54:13","2018-07-08 14:54:13");
INSERT INTO transactions VALUES("1058","35","29","12","","","AX4FPMW2IAYU5","","60","7","registered","","","10.00","2.00","0.20","7.00","-17.20","","Pending","2018-07-08 16:15:50","2018-07-08 16:18:32");
INSERT INTO transactions VALUES("1059","29","35","12","","","G3KLRNAMJBGQ4","","60","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Pending","2018-07-08 16:17:55","2018-07-08 16:23:09");
INSERT INTO transactions VALUES("1060","35","29","12","","","RS4VD537DOPGI","","116","9","registered","","","10.00","0.00","0.00","0.00","10.00","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Viva","Pending","2018-07-08 16:27:30","2018-07-08 16:27:30");
INSERT INTO transactions VALUES("1061","29","35","12","","","RS4VD537DOPGI","","116","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Viva","Pending","2018-07-08 16:27:31","2018-07-08 16:27:31");
INSERT INTO transactions VALUES("1062","35","35","12","","","U7JUZ8YDFZPT5","","61","7","registered","","","5.00","2.00","0.10","7.00","-12.10","","Success","2018-07-08 16:31:52","2018-07-08 16:32:05");
INSERT INTO transactions VALUES("1063","35","35","12","","","UARI0FSNMUFVN","","61","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-07-08 16:32:05","2018-07-08 16:32:05");
INSERT INTO transactions VALUES("1064","35","35","12","","","4Y5ZS7ABIDG58","","62","7","registered","","","5.00","2.00","0.10","7.00","-12.10","","Success","2018-07-08 16:32:36","2018-07-08 16:33:05");
INSERT INTO transactions VALUES("1065","35","35","12","","","ELKOZAQI8BUJU","","62","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-07-08 16:33:05","2018-07-08 16:33:05");
INSERT INTO transactions VALUES("1066","35","35","12","","","XVFUFV6ELJW2V","","63","7","registered","","","10.00","2.00","0.20","7.00","-17.20","","Success","2018-07-08 16:37:47","2018-07-08 16:42:21");
INSERT INTO transactions VALUES("1067","35","35","12","","","J2LDVRM5MMXXY","","63","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Pending","2018-07-08 16:42:21","2018-07-08 16:45:19");
INSERT INTO transactions VALUES("1068","31","20","13","2","34","FOIERQIRWNQL6","","67","12","registered","","","1575.20","0.00","24.80","0.00","1600.00","","Success","2018-07-08 17:07:52","2018-07-08 17:07:52");
INSERT INTO transactions VALUES("1069","35","","12","1","","OEHLQK9LMOASO","","27","2","registered","","","2.00","5.00","0.10","10.00","-12.10","","Pending","2018-07-08 17:10:42","2018-07-08 17:10:42");
INSERT INTO transactions VALUES("1070","31","15","13","1","24","GEKIGJ47W7QSE","","68","11","registered","","","99.00","0.00","0.00","0.00","-99.00","","Success","2018-07-08 17:14:16","2018-07-08 17:14:16");
INSERT INTO transactions VALUES("1071","15","31","13","1","24","GEKIGJ47W7QSE","","68","12","registered","","","97.47","0.00","1.53","0.00","99.00","","Success","2018-07-08 17:14:16","2018-07-08 17:14:16");
INSERT INTO transactions VALUES("1072","29","","12","3","","GNQR4THGBP1II","","28","2","registered","","","3.00","5.00","0.15","10.00","-13.15","","Pending","2018-07-08 17:17:07","2018-07-08 17:17:07");
INSERT INTO transactions VALUES("1073","29","","12","6","","EGQBC00VXH8WB","","29","2","registered","","","4.00","5.00","0.20","10.00","-14.20","","Pending","2018-07-08 17:21:34","2018-07-08 17:21:34");
INSERT INTO transactions VALUES("1074","29","","12","2","","LICQ77U2MCJTZ","","71","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-08 18:18:10","2018-07-08 18:18:10");
INSERT INTO transactions VALUES("1075","29","","12","3","","NDUOJPLNDJJWA","","30","2","registered","","","2.00","5.00","0.10","10.00","-12.10","","Pending","2018-07-08 18:25:54","2018-07-08 18:25:54");
INSERT INTO transactions VALUES("1076","15","","13","3","","NVP1V0IUUYXAK","","31","2","registered","","","11.00","8.00","0.88","18.00","-29.88","","Pending","2018-07-08 18:36:39","2018-07-08 18:36:39");
INSERT INTO transactions VALUES("1077","35","29","13","2","33","53KAOROBPFVK1","","69","12","registered","","","3.00","0.00","0.00","0.00","3.00","","Success","2018-07-08 18:43:37","2018-07-08 18:43:37");
INSERT INTO transactions VALUES("1078","31","","13","3","","9AJDGZML5C11W","","32","2","registered","","","99.00","8.00","7.92","18.00","-124.92","","Pending","2018-07-08 18:45:36","2018-07-08 18:45:36");
INSERT INTO transactions VALUES("1079","29","","13","2","","81N3NV98EKWCH","","72","1","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-07-08 18:45:46","2018-07-08 18:45:46");
INSERT INTO transactions VALUES("1080","35","29","13","3","33","2DFWCZSKYBPWU","","70","12","registered","","","3.00","0.00","0.00","0.00","3.00","","Success","2018-07-08 18:47:09","2018-07-08 18:47:09");
INSERT INTO transactions VALUES("1081","29","","13","","","2924MKWPHTVAY","","97","5","registered","","","6.00","2.00","0.12","2.00","-8.12","","Success","2018-07-08 18:53:42","2018-07-08 18:53:42");
INSERT INTO transactions VALUES("1082","29","","12","","","2924MKWPHTVAY","","97","6","registered","","","0.48","0.00","0.00","0.00","0.48","","Success","2018-07-08 18:53:42","2018-07-08 18:53:42");
INSERT INTO transactions VALUES("1083","29","","26","","","OEEHIJOANM3YF","","98","5","registered","","","11.00","0.00","0.22","10.00","-21.22","","Success","2018-07-08 18:54:01","2018-07-08 18:54:01");
INSERT INTO transactions VALUES("1084","29","","13","","","OEEHIJOANM3YF","","98","6","registered","","","0.13","0.00","0.00","0.00","0.13","","Success","2018-07-08 18:54:01","2018-07-08 18:54:01");
INSERT INTO transactions VALUES("1085","29","","12","3","","6YVMSZWJHYBMF","","33","2","registered","","","5.00","5.00","0.25","10.00","-15.25","","Pending","2018-07-08 18:54:44","2018-07-08 18:54:44");
INSERT INTO transactions VALUES("1086","29","5","12","","","MYESGIQ7UNCQU","","117","9","registered","","","2.00","0.00","0.00","0.00","2.00","ffdgdf","Pending","2018-07-08 18:58:05","2018-07-08 18:58:05");
INSERT INTO transactions VALUES("1087","5","29","12","","","MYESGIQ7UNCQU","","117","10","registered","","","2.00","0.00","0.00","0.00","-2.00","ffdgdf","Pending","2018-07-08 18:58:05","2018-07-08 18:58:05");
INSERT INTO transactions VALUES("1088","29","","12","","","MUABADEKCFRX6","","118","9","unregistered","mariamm@gmail.com","","5.00","0.00","0.00","0.00","5.00","Test description.","Pending","2018-07-08 18:59:48","2018-07-08 18:59:48");
INSERT INTO transactions VALUES("1089","","29","12","","","MUABADEKCFRX6","","118","10","unregistered","mariamm@gmail.com","","5.00","0.00","0.00","0.00","-5.00","Test description.","Pending","2018-07-08 18:59:48","2018-07-08 18:59:48");
INSERT INTO transactions VALUES("1090","24","","14","","","FF7OWIBWVYWVA","","64","7","registered","","","10.00","3.00","0.30","7.00","-17.30","","Success","2018-07-09 12:45:11","2018-07-09 12:45:11");
INSERT INTO transactions VALUES("1091","35","","32","2","","TKOKY6Q3GOKQO","","73","1","registered","","","10.00","5.00","0.50","5.00","15.50","","Success","2018-07-09 13:09:45","2018-07-09 13:09:45");
INSERT INTO transactions VALUES("1092","35","","12","2","","LP4VDCPH96FRE","","74","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-07-09 13:10:40","2018-07-09 13:10:40");
INSERT INTO transactions VALUES("1093","35","","12","3","","WD6YZ0WSUBLJJ","","75","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-07-09 13:21:16","2018-07-09 13:21:16");
INSERT INTO transactions VALUES("1094","31","15","13","","","WI7BYEHCWPJPX","","119","9","registered","","","13.00","0.00","0.00","0.00","13.00","hello parvez","Success","2018-07-09 15:09:55","2018-07-09 15:11:24");
INSERT INTO transactions VALUES("1095","15","31","13","","","WI7BYEHCWPJPX","","119","10","registered","","","13.00","0.00","0.00","0.00","-13.00","hello parvez","Success","2018-07-09 15:09:55","2018-07-09 15:11:24");
INSERT INTO transactions VALUES("1096","15","31","12","","","EQ7QDFIUGXEGJ","","163","3","registered","milon.techvill@gmail.com","","444.00","3.00","13.32","13.00","-470.32","hey mlion, check it out bro","Success","2018-07-09 15:14:58","2018-07-09 15:14:58");
INSERT INTO transactions VALUES("1097","31","15","12","","","EQ7QDFIUGXEGJ","","163","4","registered","milon.techvill@gmail.com","","444.00","0.00","0.00","0.00","444.00","hey mlion, check it out bro","Success","2018-07-09 15:14:58","2018-07-09 15:14:58");
INSERT INTO transactions VALUES("1098","31","","12","2","","73C4VNBFY0MBR","","77","1","registered","","","12.00","12.00","1.44","11.00","24.44","","Success","2018-07-09 15:29:07","2018-07-09 15:29:07");
INSERT INTO transactions VALUES("1099","31","","13","5","","FNKLVS1NLINQ5","","78","1","registered","","","111.00","0.00","0.00","0.00","111.00","","Success","2018-07-09 15:33:52","2018-07-09 15:33:52");
INSERT INTO transactions VALUES("1100","31","","13","5","","WDGVSYXI02PO5","","79","1","registered","","","12.00","0.00","0.00","0.00","12.00","","Success","2018-07-09 15:38:53","2018-07-09 15:38:53");
INSERT INTO transactions VALUES("1101","31","","21","2","","TMXFAL8AKIVET","","80","1","registered","","","11.00","1.20","0.13","5.00","16.13","","Success","2018-07-09 15:48:18","2018-07-09 15:48:18");
INSERT INTO transactions VALUES("1102","15","31","12","","","QRHJK9KSGJGXO","","120","9","registered","","","12.00","0.00","0.00","0.00","12.00","12 usd to robi","Success","2018-07-09 15:50:00","2018-07-10 18:16:32");
INSERT INTO transactions VALUES("1103","31","15","12","","","QRHJK9KSGJGXO","","120","10","registered","","","12.00","6.00","0.72","16.00","-28.72","12 usd to robi","Success","2018-07-09 15:50:00","2018-07-10 18:16:32");
INSERT INTO transactions VALUES("1104","31","39","13","","","GKEULNJWIC7AF","","164","3","registered","","","13.00","0.00","0.00","0.00","-13.00","amit","Success","2018-07-09 15:52:52","2018-07-09 16:01:58");
INSERT INTO transactions VALUES("1105","39","31","13","","","GKEULNJWIC7AF","","164","4","registered","","","13.00","0.00","0.00","0.00","13.00","amit","Success","2018-07-09 15:52:53","2018-07-09 16:01:58");
INSERT INTO transactions VALUES("1106","31","39","12","","","UU14RWEQJGVSK","","121","9","registered","","","12.00","0.00","0.00","0.00","12.00","amit","Success","2018-07-09 15:53:22","2018-07-09 16:07:09");
INSERT INTO transactions VALUES("1107","39","31","12","","","UU14RWEQJGVSK","","121","10","registered","","","12.00","6.00","0.72","16.00","-28.72","amit","Success","2018-07-09 15:53:22","2018-07-09 16:07:09");
INSERT INTO transactions VALUES("1108","39","","12","2","","8QVCHC9XDJKOW","","81","1","registered","","","9000.00","12.00","1080.00","11.00","10091.00","","Blocked","2018-07-09 16:04:03","2018-07-12 14:33:27");
INSERT INTO transactions VALUES("1109","35","15","12","","","QGSDCPDGYYRKR","","122","9","registered","","","10.00","0.00","0.00","0.00","10.00","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ornare tortor ipsum, sed cursus eros ","Success","2018-07-09 17:12:07","2018-07-10 15:30:50");
INSERT INTO transactions VALUES("1110","15","35","12","","","QGSDCPDGYYRKR","","122","10","registered","","","10.00","6.00","0.60","16.00","-26.60","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi ornare tortor ipsum, sed cursus eros ","Success","2018-07-09 17:12:08","2018-07-10 15:30:50");
INSERT INTO transactions VALUES("1111","35","","12","3","","0O8Z5CAOVWYPT","","82","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-09 17:34:45","2018-07-09 17:34:45");
INSERT INTO transactions VALUES("1112","35","29","12","","","MCDLDVB9JUJED","","165","3","registered","mahfuzasinthy@gmail.com","","112.00","3.00","3.36","13.00","-128.36","test","Success","2018-07-09 18:32:02","2018-07-09 18:32:02");
INSERT INTO transactions VALUES("1113","29","35","12","","","MCDLDVB9JUJED","","165","4","registered","mahfuzasinthy@gmail.com","","112.00","0.00","0.00","0.00","112.00","test","Success","2018-07-09 18:32:02","2018-07-09 18:32:02");
INSERT INTO transactions VALUES("1114","35","29","14","","","72PFPXY8LS6XU","","123","9","registered","","","20.00","0.00","0.00","0.00","20.00","test","Pending","2018-07-09 18:33:58","2018-07-09 18:33:58");
INSERT INTO transactions VALUES("1115","29","35","14","","","72PFPXY8LS6XU","","123","10","registered","","","20.00","0.00","0.00","0.00","-20.00","test","Pending","2018-07-09 18:33:58","2018-07-09 18:33:58");
INSERT INTO transactions VALUES("1116","29","24","12","","","4BUKU9IT1ENID","","166","3","registered","borna.techvill@gmail.com","","6.00","3.00","0.18","13.00","-19.18","test","Success","2018-07-09 19:15:10","2018-07-09 19:15:10");
INSERT INTO transactions VALUES("1117","24","29","12","","","4BUKU9IT1ENID","","166","4","registered","borna.techvill@gmail.com","","6.00","0.00","0.00","0.00","6.00","test","Success","2018-07-09 19:15:10","2018-07-09 19:15:10");
INSERT INTO transactions VALUES("1118","29","24","12","","","YKEOFZ8NVXBBU","","167","3","registered","borna.techvill@gmail.com","","6.00","3.00","0.18","13.00","-19.18","test","Success","2018-07-09 19:15:14","2018-07-09 19:15:14");
INSERT INTO transactions VALUES("1119","24","29","12","","","YKEOFZ8NVXBBU","","167","4","registered","borna.techvill@gmail.com","","6.00","0.00","0.00","0.00","6.00","test","Success","2018-07-09 19:15:14","2018-07-09 19:15:14");
INSERT INTO transactions VALUES("1120","29","24","12","","","HU4JAUZLXBKIZ","","124","9","registered","","","5.00","0.00","0.00","0.00","5.00","sdgdfsgdf","Pending","2018-07-09 19:16:19","2018-07-09 19:16:19");
INSERT INTO transactions VALUES("1121","24","29","12","","","HU4JAUZLXBKIZ","","124","10","registered","","","5.00","0.00","0.00","0.00","-5.00","sdgdfsgdf","Blocked","2018-07-09 19:16:20","2018-07-11 11:41:52");
INSERT INTO transactions VALUES("1122","29","24","12","","","66I5LW5Q6Q8X7","","125","9","registered","","","5.00","0.00","0.00","0.00","5.00","sdgdfsgdf","Pending","2018-07-09 19:16:23","2018-07-09 19:16:23");
INSERT INTO transactions VALUES("1123","24","29","12","","","66I5LW5Q6Q8X7","","125","10","registered","","","5.00","0.00","0.00","0.00","-5.00","sdgdfsgdf","Pending","2018-07-09 19:16:23","2018-07-09 19:16:23");
INSERT INTO transactions VALUES("1124","29","","14","3","","FYU499L9KR4Z9","","34","2","registered","","","10.00","0.00","0.00","0.00","-10.00","","Pending","2018-07-09 19:17:33","2018-07-09 19:17:33");
INSERT INTO transactions VALUES("1125","29","","13","","","XBQGMX2Z7SDBG","","99","5","registered","","","7.57","2.00","0.15","2.00","-9.72","","Success","2018-07-09 19:18:48","2018-07-09 19:18:48");
INSERT INTO transactions VALUES("1126","29","","12","","","XBQGMX2Z7SDBG","","99","6","registered","","","0.61","0.00","0.00","0.00","0.61","","Success","2018-07-09 19:18:48","2018-07-09 19:18:48");
INSERT INTO transactions VALUES("1127","29","","13","","","59ZW0FQ9MMC3A","","100","5","registered","","","7.57","2.00","0.15","2.00","-9.72","","Success","2018-07-09 19:18:52","2018-07-09 19:18:52");
INSERT INTO transactions VALUES("1128","29","","12","","","59ZW0FQ9MMC3A","","100","6","registered","","","0.61","0.00","0.00","0.00","0.61","","Success","2018-07-09 19:18:52","2018-07-09 19:18:52");
INSERT INTO transactions VALUES("1129","35","","32","3","","2UBRKAQ8MGU3U","","35","2","registered","","","9.00","2.00","0.18","0.00","-9.18","","Pending","2018-07-10 11:50:20","2018-07-10 11:50:20");
INSERT INTO transactions VALUES("1130","35","","12","2","","VENQOCAERPOIT","","83","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-10 12:01:16","2018-07-10 12:01:16");
INSERT INTO transactions VALUES("1131","35","","12","3","","A5Z77IWGOUKBQ","","36","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Blocked","2018-07-10 12:02:12","2018-07-10 12:07:41");
INSERT INTO transactions VALUES("1132","31","","16","","","RHWBF7JU9GLK3","","65","7","registered","","","11.00","0.00","0.00","0.00","-11.00","","Blocked","2018-07-10 13:16:16","2018-07-10 18:52:48");
INSERT INTO transactions VALUES("1133","35","29","26","","","YODUAU7QVTGOM","","168","3","registered","mahfuzasinthy@gmail.com","","1.00","0.00","0.00","0.00","-1.00","htgfj","Success","2018-07-10 14:11:07","2018-07-10 14:11:07");
INSERT INTO transactions VALUES("1134","29","35","26","","","YODUAU7QVTGOM","","168","4","registered","mahfuzasinthy@gmail.com","","1.00","0.00","0.00","0.00","1.00","htgfj","Success","2018-07-10 14:11:07","2018-07-10 14:11:07");
INSERT INTO transactions VALUES("1135","15","","12","","","YMGWRWG0VQ2LQ","","126","9","unregistered","ashraf.techvill@gmail.com","","130.00","0.00","0.00","0.00","130.00","ashraf.techvill@gmail.com","Pending","2018-07-10 15:12:31","2018-07-10 15:12:31");
INSERT INTO transactions VALUES("1136","","15","12","","","YMGWRWG0VQ2LQ","","126","10","unregistered","ashraf.techvill@gmail.com","","130.00","0.00","0.00","0.00","-130.00","ashraf.techvill@gmail.com","Pending","2018-07-10 15:12:31","2018-07-10 15:12:31");
INSERT INTO transactions VALUES("1137","15","","12","","","SMUOUFEALOXSC","","169","3","unregistered","ashraf.techvill@gmail.com","","123.00","3.00","3.69","13.00","-139.69","ashraf.techvill@gmail.com","Pending","2018-07-10 15:34:41","2018-07-10 15:34:41");
INSERT INTO transactions VALUES("1138","","15","12","","","SMUOUFEALOXSC","","169","4","unregistered","ashraf.techvill@gmail.com","","123.00","0.00","0.00","0.00","123.00","ashraf.techvill@gmail.com","Pending","2018-07-10 15:34:41","2018-07-10 15:34:41");
INSERT INTO transactions VALUES("1139","15","20","12","","","CH0ZZ0UUT2V2M","","170","3","registered","parvez.agvbd@gmail.com","","22.00","3.00","0.66","13.00","-35.66","tt","Success","2018-07-10 15:39:16","2018-07-10 15:39:16");
INSERT INTO transactions VALUES("1140","20","15","12","","","CH0ZZ0UUT2V2M","","170","4","registered","parvez.agvbd@gmail.com","","22.00","0.00","0.00","0.00","22.00","tt","Success","2018-07-10 15:39:16","2018-07-10 15:39:16");
INSERT INTO transactions VALUES("1141","35","29","12","","","MIUJVKFIBNOV7","","171","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","dfhrth","Success","2018-07-10 16:11:20","2018-07-10 16:11:20");
INSERT INTO transactions VALUES("1142","29","35","12","","","MIUJVKFIBNOV7","","171","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","dfhrth","Success","2018-07-10 16:11:20","2018-07-10 16:11:20");
INSERT INTO transactions VALUES("1143","35","29","12","","","CAGZA1OSX4BZT","","172","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","dfhrth","Success","2018-07-10 16:11:24","2018-07-10 16:11:24");
INSERT INTO transactions VALUES("1144","29","35","12","","","CAGZA1OSX4BZT","","172","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","dfhrth","Success","2018-07-10 16:11:24","2018-07-10 16:11:24");
INSERT INTO transactions VALUES("1145","35","29","12","","","NHKJEKF0KIQLY","","173","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","dfhrth","Success","2018-07-10 16:12:39","2018-07-10 16:12:39");
INSERT INTO transactions VALUES("1146","29","35","12","","","NHKJEKF0KIQLY","","173","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","dfhrth","Success","2018-07-10 16:12:39","2018-07-10 16:12:39");
INSERT INTO transactions VALUES("1147","35","29","12","","","TZJLKGLI7LJU0","","174","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","dfhrth","Success","2018-07-10 16:13:09","2018-07-10 16:13:09");
INSERT INTO transactions VALUES("1148","29","35","12","","","TZJLKGLI7LJU0","","174","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","dfhrth","Success","2018-07-10 16:13:09","2018-07-10 16:13:09");
INSERT INTO transactions VALUES("1149","4","24","12","","","HMZ6DJYMRS7ZH","","175","3","registered","borna.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","10","Success","2018-07-10 16:14:53","2018-07-10 16:14:53");
INSERT INTO transactions VALUES("1150","24","4","12","","","HMZ6DJYMRS7ZH","","175","4","registered","borna.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","10","Success","2018-07-10 16:14:53","2018-07-10 16:14:53");
INSERT INTO transactions VALUES("1151","4","24","12","","","D5GHJ569YTQ3A","","176","3","registered","borna.techvill@gmail.com","","10.00","3.00","0.30","13.00","-23.30","10","Success","2018-07-10 16:15:02","2018-07-10 16:15:02");
INSERT INTO transactions VALUES("1152","24","4","12","","","D5GHJ569YTQ3A","","176","4","registered","borna.techvill@gmail.com","","10.00","0.00","0.00","0.00","10.00","10","Success","2018-07-10 16:15:02","2018-07-10 16:15:02");
INSERT INTO transactions VALUES("1153","35","29","14","","","8D77NV18KXUZD","","127","9","registered","","","15.00","0.00","0.00","0.00","15.00","oioo","Pending","2018-07-10 16:41:22","2018-07-10 16:41:22");
INSERT INTO transactions VALUES("1154","29","35","14","","","8D77NV18KXUZD","","127","10","registered","","","15.00","0.00","0.00","0.00","-15.00","oioo","Pending","2018-07-10 16:41:22","2018-07-10 16:41:22");
INSERT INTO transactions VALUES("1155","35","29","12","","","P5JE3OSUXF1FI","","177","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","dfhrth","Success","2018-07-10 16:45:00","2018-07-10 16:45:00");
INSERT INTO transactions VALUES("1156","29","35","12","","","P5JE3OSUXF1FI","","177","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","dfhrth","Success","2018-07-10 16:45:00","2018-07-10 16:45:00");
INSERT INTO transactions VALUES("1157","35","29","12","","","BNYBQJLBJJWZK","","178","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","dfhrth","Success","2018-07-10 16:45:03","2018-07-10 16:45:03");
INSERT INTO transactions VALUES("1158","29","35","12","","","BNYBQJLBJJWZK","","178","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","dfhrth","Success","2018-07-10 16:45:03","2018-07-10 16:45:03");
INSERT INTO transactions VALUES("1159","20","15","12","","","TIPY5WBBCYHXQ","","179","3","registered","parvez.techvill@gmail.com","","22.00","3.00","0.66","13.00","-35.66"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Success","2018-07-10 16:51:35","2018-07-10 16:59:53");
INSERT INTO transactions VALUES("1160","15","20","12","","","TIPY5WBBCYHXQ","","179","4","registered","parvez.techvill@gmail.com","","22.00","0.00","0.00","0.00","22.00"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Success","2018-07-10 16:51:35","2018-07-10 16:59:50");
INSERT INTO transactions VALUES("1161","4","29","12","","","G5QPI4SEMN8PT","","128","9","registered","","","10.00","0.00","0.00","0.00","10.00","10","Pending","2018-07-10 16:54:19","2018-07-10 16:54:19");
INSERT INTO transactions VALUES("1162","29","4","12","","","G5QPI4SEMN8PT","","128","10","registered","","","10.00","0.00","0.00","0.00","-10.00","10","Pending","2018-07-10 16:54:19","2018-07-10 16:54:19");
INSERT INTO transactions VALUES("1163","4","29","13","","","FOC7SB4OQLFWN","","129","9","registered","","","25.00","0.00","0.00","0.00","25.00","25","Pending","2018-07-10 16:57:40","2018-07-10 16:57:40");
INSERT INTO transactions VALUES("1164","29","4","13","","","FOC7SB4OQLFWN","","129","10","registered","","","25.00","0.00","0.00","0.00","-25.00","25","Pending","2018-07-10 16:57:40","2018-07-10 16:57:40");
INSERT INTO transactions VALUES("1165","20","","12","","","X8RK0KCKTXI6V","","130","9","unregistered","ashraf.techvill@gmail.com","","33.00","0.00","0.00","0.00","33.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Pending","2018-07-10 17:02:19","2018-07-11 19:26:38");
INSERT INTO transactions VALUES("1166","","20","12","","","X8RK0KCKTXI6V","","130","10","unregistered","ashraf.techvill@gmail.com","","33.00","0.00","0.00","0.00","-33.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Pending","2018-07-10 17:02:19","2018-07-11 19:26:38");
INSERT INTO transactions VALUES("1167","7","","12","2","","PV184JMJR1ISD","","84","1","registered","","","600.00","12.00","72.00","11.00","683.00","","Success","2018-07-10 17:17:56","2018-07-10 17:17:56");
INSERT INTO transactions VALUES("1168","7","","12","2","","YEYAXOAIXTA2N","","85","1","registered","","","600.00","12.00","72.00","11.00","683.00","","Success","2018-07-10 17:24:28","2018-07-10 17:24:28");
INSERT INTO transactions VALUES("1169","20","","12","2","","2KNOM1ZCCETTY","","86","1","registered","","","50.00","12.00","6.00","11.00","67.00","","Success","2018-07-10 17:33:04","2018-07-10 17:33:04");
INSERT INTO transactions VALUES("1170","15","","13","","","RXR275IAPXUBJ","","101","5","registered","","","11.00","3.00","0.33","12.00","-23.33","","Success","2018-07-10 18:10:07","2018-07-10 18:10:07");
INSERT INTO transactions VALUES("1171","15","","14","","","RXR275IAPXUBJ","","101","6","registered","","","9.35","0.00","0.00","0.00","9.35","","Success","2018-07-10 18:10:07","2018-07-10 18:10:07");
INSERT INTO transactions VALUES("1172","20","15","12","","","XWHZKEBHJMYGE","","180","3","registered","parvez.techvill@gmail.com","","11.00","3.00","0.33","13.00","-24.33","11","Success","2018-07-10 18:13:23","2018-07-10 18:13:23");
INSERT INTO transactions VALUES("1173","15","20","12","","","XWHZKEBHJMYGE","","180","4","registered","parvez.techvill@gmail.com","","11.00","0.00","0.00","0.00","11.00","11","Success","2018-07-10 18:13:23","2018-07-10 18:13:23");
INSERT INTO transactions VALUES("1174","20","15","12","","","M9Q8VVD0YNVRL","9BXQGSSOQ9RG4","131","9","registered","","","33.00","0.00","0.00","0.00","33.00","33","Success","2018-07-10 18:14:01","2018-07-11 19:09:49");
INSERT INTO transactions VALUES("1175","15","20","12","","","M9Q8VVD0YNVRL","9BXQGSSOQ9RG4","131","10","registered","","","33.00","6.00","1.98","16.00","-50.98","33","Success","2018-07-10 18:14:01","2018-07-11 19:09:50");
INSERT INTO transactions VALUES("1176","15","15","12","","","5YA0APLCIRAY3","","66","7","registered","","","22.00","2.00","0.44","7.00","-29.44","","Success","2018-07-10 18:53:44","2018-07-10 19:41:33");
INSERT INTO transactions VALUES("1177","15","15","12","","","SMDLMX38QSJBK","","67","7","registered","","","31.00","2.00","0.62","7.00","-38.62","","Success","2018-07-10 18:54:36","2018-07-10 18:54:46");
INSERT INTO transactions VALUES("1178","15","15","12","","","RIHBGISWGUTCC","","67","8","registered","","","31.00","0.00","0.00","0.00","31.00","","Success","2018-07-10 18:54:46","2018-07-10 19:42:23");
INSERT INTO transactions VALUES("1179","15","15","12","","","LLRG7QIYXE7T9","","68","7","registered","","","22.00","2.00","0.44","7.00","-29.44","","Success","2018-07-10 18:56:08","2018-07-10 18:56:45");
INSERT INTO transactions VALUES("1180","15","15","12","","","TELUQKDPLGH7O","","68","8","registered","","","22.00","0.00","0.00","0.00","22.00","","Success","2018-07-10 18:56:45","2018-07-10 18:56:45");
INSERT INTO transactions VALUES("1181","15","15","12","","","GIMC5HRS0F5TC","","66","8","registered","","","22.00","0.00","0.00","0.00","22.00","","Success","2018-07-10 19:41:33","2018-07-10 19:41:33");
INSERT INTO transactions VALUES("1182","31","","14","","","LNEUS5WHTKYU3","","69","7","registered","","","13.00","3.00","0.39","7.00","-20.39","","Blocked","2018-07-10 19:43:00","2018-07-10 19:51:17");
INSERT INTO transactions VALUES("1183","4","","12","2","","IMPDDVQWMU3DE","","87","1","registered","","","500.00","12.00","60.00","11.00","571.00","","Success","2018-07-11 13:21:34","2018-07-11 13:21:34");
INSERT INTO transactions VALUES("1184","4","","12","2","","YVFKXDFJTYVUJ","","88","1","registered","","","500.00","12.00","60.00","11.00","571.00","","Success","2018-07-11 13:22:31","2018-07-11 13:22:31");
INSERT INTO transactions VALUES("1185","41","","12","3","","JAVD3NRP5HJJB","","89","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Blocked","2018-07-11 13:46:57","2018-07-11 14:47:50");
INSERT INTO transactions VALUES("1186","4","","12","2","","BMYQRPFHP3UR4","","90","1","registered","","","500.00","12.00","60.00","11.00","571.00","","Success","2018-07-11 14:04:20","2018-07-11 14:04:20");
INSERT INTO transactions VALUES("1187","41","","12","","","CJW400BBANFIK","","102","5","registered","","","2.00","0.00","0.04","2.00","-4.04","","Success","2018-07-11 14:07:15","2018-07-11 14:07:15");
INSERT INTO transactions VALUES("1188","41","","13","","","CJW400BBANFIK","","102","6","registered","","","25.00","0.00","0.00","0.00","25.00","","Success","2018-07-11 14:07:15","2018-07-11 14:07:15");
INSERT INTO transactions VALUES("1189","4","","13","3","","IHRCKARNUTB3R","","37","2","registered","","","16.00","8.00","1.28","18.00","-35.28","","Pending","2018-07-11 14:13:53","2018-07-11 14:13:53");
INSERT INTO transactions VALUES("1190","41","","12","","","KLMQZVAMRK2Y3","","103","5","registered","","","3.00","0.00","0.06","2.00","-5.06","","Success","2018-07-11 14:14:03","2018-07-11 14:14:03");
INSERT INTO transactions VALUES("1191","41","","13","","","KLMQZVAMRK2Y3","","103","6","registered","","","37.50","0.00","0.00","0.00","37.50","","Success","2018-07-11 14:14:03","2018-07-11 14:14:03");
INSERT INTO transactions VALUES("1192","4","","13","3","","JZESCVGT5VIGD","","38","2","registered","","","16.00","8.00","1.28","18.00","-35.28","","Pending","2018-07-11 14:14:15","2018-07-11 14:14:15");
INSERT INTO transactions VALUES("1193","41","","12","","","RLHXESID17EUX","","104","5","registered","","","1.00","0.00","0.02","2.00","-3.02","","Success","2018-07-11 14:17:13","2018-07-11 14:17:13");
INSERT INTO transactions VALUES("1194","41","","13","","","RLHXESID17EUX","","104","6","registered","","","12.50","0.00","0.00","0.00","12.50","","Success","2018-07-11 14:17:13","2018-07-11 14:17:13");
INSERT INTO transactions VALUES("1195","4","","12","2","","KGCIF2FYIFTG5","","91","1","registered","","","200.00","12.00","24.00","11.00","235.00","","Success","2018-07-11 14:25:51","2018-07-11 15:10:21");
INSERT INTO transactions VALUES("1196","41","","13","","","FZZTZWCLMLXFQ","","105","5","registered","","","4.00","3.00","0.12","12.00","-16.12","","Blocked","2018-07-11 14:26:38","2018-07-11 14:44:19");
INSERT INTO transactions VALUES("1197","41","","14","","","FZZTZWCLMLXFQ","","105","6","registered","","","3.40","0.00","0.00","0.00","3.40","","Blocked","2018-07-11 14:26:38","2018-07-11 14:44:19");
INSERT INTO transactions VALUES("1198","15","","13","","","ECMDX6L1NZPHJ","","106","5","registered","","","8.00","3.00","0.24","12.00","-20.24","","Success","2018-07-11 14:49:47","2018-07-11 14:49:47");
INSERT INTO transactions VALUES("1199","15","","14","","","ECMDX6L1NZPHJ","","106","6","registered","","","6.80","0.00","0.00","0.00","6.80","","Success","2018-07-11 14:49:47","2018-07-11 14:49:47");
INSERT INTO transactions VALUES("1200","15","","14","","","YFDOKBAUJ4OKH","","107","5","registered","","","111.00","3.00","3.33","12.00","-126.33","","Success","2018-07-11 14:53:33","2018-07-11 14:53:33");
INSERT INTO transactions VALUES("1201","15","","13","","","YFDOKBAUJ4OKH","","107","6","registered","","","130.59","0.00","0.00","0.00","130.59","","Success","2018-07-11 14:53:33","2018-07-11 14:53:33");
INSERT INTO transactions VALUES("1202","15","","26","","","2PUGRNSMVSEO4","","108","5","registered","","","99.00","2.00","1.98","10.00","-110.98","","Success","2018-07-11 14:59:33","2018-07-11 14:59:33");
INSERT INTO transactions VALUES("1203","15","","13","","","2PUGRNSMVSEO4","","108","6","registered","","","1.17","0.00","0.00","0.00","1.17","","Success","2018-07-11 14:59:33","2018-07-11 14:59:33");
INSERT INTO transactions VALUES("1204","41","29","12","","","PUZKV4JNM0QAH","","70","7","registered","","","5.00","2.00","0.10","5.00","-10.10","","Success","2018-07-11 16:22:47","2018-07-11 16:36:24");
INSERT INTO transactions VALUES("1205","15","","13","","","CUSR2BQETQHVN","","109","5","registered","","","11.00","3.00","0.33","12.00","-23.33","","Success","2018-07-11 16:23:15","2018-07-11 16:47:32");
INSERT INTO transactions VALUES("1206","15","","14","","","CUSR2BQETQHVN","","109","6","registered","","","9.35","0.00","0.00","0.00","9.35","","Success","2018-07-11 16:23:15","2018-07-11 16:47:32");
INSERT INTO transactions VALUES("1207","41","","13","","","N8WJCYTVZ6YDP","","71","7","registered","","","1.00","1.00","0.01","0.00","-1.01","","Pending","2018-07-11 16:25:25","2018-07-11 16:56:12");
INSERT INTO transactions VALUES("1208","29","41","12","","","ZKRBE2XHSUO4T","","70","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Success","2018-07-11 16:36:24","2018-07-11 16:48:16");
INSERT INTO transactions VALUES("1209","20","20","12","","","KGUBGW6UTZJQ7","","50","8","registered","","","19.00","0.00","0.00","0.00","19.00","","Success","2018-07-11 16:49:10","2018-07-11 18:44:32");
INSERT INTO transactions VALUES("1210","4","4","12","","","ZZ0FNHOCKLSSO","","72","7","registered","","","10.00","2.00","0.20","5.00","-15.20","","Success","2018-07-11 16:58:14","2018-07-11 17:02:52");
INSERT INTO transactions VALUES("1211","4","4","12","","","PVCO72MN7850U","","72","8","registered","","","10.00","0.00","0.00","0.00","10.00","","Pending","2018-07-11 17:02:52","2018-07-11 17:03:14");
INSERT INTO transactions VALUES("1212","41","","12","3","","SVL8DUKDQKSSZ","","39","2","registered","","","10.00","5.00","0.50","10.00","-20.50","","Blocked","2018-07-11 17:28:11","2018-07-11 17:35:58");
INSERT INTO transactions VALUES("1213","15","","12","","","T8SRTTG3VW70K","","73","7","registered","","","111.00","2.00","2.22","5.00","-118.22","","Success","2018-07-11 17:40:12","2018-07-11 17:40:12");
INSERT INTO transactions VALUES("1214","41","","13","6","","VNGIDQSIIGX3W","","40","2","registered","","","16.00","8.00","1.28","18.00","-35.28","","Pending","2018-07-11 17:52:11","2018-07-11 17:52:11");
INSERT INTO transactions VALUES("1215","41","29","13","","","DUV5CCBZOSXJZ","","181","3","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","-5.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Success","2018-07-11 18:01:31","2018-07-11 18:01:31");
INSERT INTO transactions VALUES("1216","29","41","13","","","DUV5CCBZOSXJZ","","181","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Success","2018-07-11 18:01:31","2018-07-11 18:01:31");
INSERT INTO transactions VALUES("1217","41","29","12","","","CMXQ2IFZSQD4M","","182","3","registered","mahfuzasinthy@gmail.com","","4.00","3.00","0.12","13.00","-17.12","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Blocked","2018-07-11 18:04:11","2018-07-11 18:29:11");
INSERT INTO transactions VALUES("1218","29","41","12","","","CMXQ2IFZSQD4M","","182","4","registered","mahfuzasinthy@gmail.com","","4.00","0.00","0.00","0.00","4.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Blocked","2018-07-11 18:04:11","2018-07-11 18:29:11");
INSERT INTO transactions VALUES("1219","20","20","12","","","EECG4FFOUPHJR","","45","8","registered","","","13.00","0.00","0.00","0.00","13.00","","Success","2018-07-11 18:16:53","2018-07-11 18:16:53");
INSERT INTO transactions VALUES("1220","15","","14","","","2X9GTV1HZKF2M","","74","7","registered","","","36.00","3.00","1.08","7.00","-44.08","","Success","2018-07-11 18:30:02","2018-07-11 18:30:02");
INSERT INTO transactions VALUES("1221","20","","12","","","MSPMD0DPIJAWE","","75","7","registered","","","11.00","2.00","0.22","5.00","-16.22","","Pending","2018-07-11 18:38:05","2018-07-11 18:45:03");
INSERT INTO transactions VALUES("1222","20","20","12","","","BNV9WDA8PWBHS","","76","7","registered","","","22.00","2.00","0.44","5.00","-27.44","","Success","2018-07-11 18:38:15","2018-07-11 18:38:26");
INSERT INTO transactions VALUES("1223","20","20","12","","","N0QREQPLE4LXF","","76","8","registered","","","22.00","0.00","0.00","0.00","22.00","","Success","2018-07-11 18:38:26","2018-07-11 18:41:10");
INSERT INTO transactions VALUES("1224","41","29","31","","","1O3ZNMZJX3JTW","","132","9","registered","","","10.00","0.00","0.00","0.00","10.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? \noooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum","Blocked","2018-07-11 18:55:36","2018-07-11 18:56:42");
INSERT INTO transactions VALUES("1225","29","41","31","","","1O3ZNMZJX3JTW","","132","10","registered","","","10.00","0.00","0.00","0.00","-10.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? \noooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum","Blocked","2018-07-11 18:55:36","2018-07-11 18:56:42");
INSERT INTO transactions VALUES("1226","20","","12","","","TGAWKFDF6ZMPJ","","77","7","registered","","","7.00","2.00","0.14","5.00","-12.14","","Success","2018-07-11 18:57:26","2018-07-11 18:57:26");
INSERT INTO transactions VALUES("1227","20","20","14","","","QVD01858SF0QT","","78","7","registered","","","9.00","3.00","0.27","7.00","-16.27","","Success","2018-07-11 18:58:07","2018-07-11 19:01:42");
INSERT INTO transactions VALUES("1228","20","20","14","","","NKSQ8VCZWOEDZ","","78","8","registered","","","9.00","0.00","0.00","0.00","9.00","","Pending","2018-07-11 19:01:42","2018-07-11 19:02:34");
INSERT INTO transactions VALUES("1229","41","29","31","","","P8LSKWZFBFGIK","","133","9","registered","","","2.00","0.00","0.00","0.00","2.00","fwefew","Pending","2018-07-11 19:02:34","2018-07-11 19:02:34");
INSERT INTO transactions VALUES("1230","29","41","31","","","P8LSKWZFBFGIK","","133","10","registered","","","2.00","0.00","0.00","0.00","-2.00","fwefew","Blocked","2018-07-11 19:02:34","2018-07-11 19:03:16");
INSERT INTO transactions VALUES("1231","20","15","12","","","9BXQGSSOQ9RG4","M9Q8VVD0YNVRL","134","9","registered","","","33.00","0.00","0.00","0.00","-33.00","33","Refund","2018-07-11 19:09:50","2018-07-11 19:09:50");
INSERT INTO transactions VALUES("1232","15","20","12","","","9BXQGSSOQ9RG4","M9Q8VVD0YNVRL","134","10","registered","","","33.00","6.00","1.98","16.00","50.98","33","Refund","2018-07-11 19:09:50","2018-07-11 19:09:50");
INSERT INTO transactions VALUES("1233","20","15","12","","","EGFNBURH3K9OV","","135","9","registered","","","6.00","0.00","0.00","0.00","6.00","8","Success","2018-07-11 19:21:30","2018-07-11 19:25:02");
INSERT INTO transactions VALUES("1234","15","20","12","","","EGFNBURH3K9OV","","135","10","registered","","","6.00","6.00","0.36","16.00","-22.36","8","Success","2018-07-11 19:21:30","2018-07-11 19:25:02");
INSERT INTO transactions VALUES("1235","41","29","13","","","U6ZSVJQ4ZZWTY","SBUQQMM1PEF6S","136","9","registered","","","5.00","0.00","0.00","0.00","5.00","ewgrewgreghehrthrthrt","Success","2018-07-11 19:22:13","2018-07-11 19:28:55");
INSERT INTO transactions VALUES("1236","29","41","13","","","U6ZSVJQ4ZZWTY","SBUQQMM1PEF6S","136","10","registered","","","5.00","1.00","0.05","1.00","-6.05","ewgrewgreghehrthrthrt","Success","2018-07-11 19:22:13","2018-07-11 19:28:55");
INSERT INTO transactions VALUES("1237","41","29","13","","","SBUQQMM1PEF6S","U6ZSVJQ4ZZWTY","137","9","registered","","","5.00","0.00","0.00","0.00","-5.00","ewgrewgreghehrthrthrt","Refund","2018-07-11 19:28:55","2018-07-11 19:28:55");
INSERT INTO transactions VALUES("1238","29","41","13","","","SBUQQMM1PEF6S","U6ZSVJQ4ZZWTY","137","10","registered","","","5.00","1.00","0.05","1.00","6.05","ewgrewgreghehrthrthrt","Refund","2018-07-11 19:28:55","2018-07-11 19:28:55");
INSERT INTO transactions VALUES("1239","20","15","12","","","HRKLBLE9CBE2Q","","183","3","registered","parvez.techvill@gmail.com","","11.00","3.00","0.33","13.00","-24.33","11","Success","2018-07-11 19:37:14","2018-07-11 19:37:14");
INSERT INTO transactions VALUES("1240","15","20","12","","","HRKLBLE9CBE2Q","","183","4","registered","parvez.techvill@gmail.com","","11.00","0.00","0.00","0.00","11.00","11","Success","2018-07-11 19:37:14","2018-07-11 19:37:14");
INSERT INTO transactions VALUES("1241","20","15","14","","","WMLKMFUF82DQB","","138","9","registered","","","9.00","0.00","0.00","0.00","9.00","9","Pending","2018-07-11 19:37:39","2018-07-11 19:42:44");
INSERT INTO transactions VALUES("1242","15","20","14","","","WMLKMFUF82DQB","","138","10","registered","","","9.00","0.00","0.00","0.00","-9.00","9","Blocked","2018-07-11 19:37:39","2018-07-11 19:43:30");
INSERT INTO transactions VALUES("1243","20","15","14","","","NXUS9TU6KIRR7","","139","9","registered","","","11.00","0.00","0.00","0.00","11.00","11","Pending","2018-07-11 19:48:20","2018-07-11 19:48:20");
INSERT INTO transactions VALUES("1244","15","20","14","","","NXUS9TU6KIRR7","","139","10","registered","","","11.00","0.00","0.00","0.00","-11.00","11","Blocked","2018-07-11 19:48:20","2018-07-11 19:48:27");
INSERT INTO transactions VALUES("1245","20","15","12","","","LONSZWUOL2BW9","","140","9","registered","","","21.00","0.00","0.00","0.00","21.00","21","Pending","2018-07-11 19:49:54","2018-07-11 19:49:54");
INSERT INTO transactions VALUES("1246","15","20","12","","","LONSZWUOL2BW9","","140","10","registered","","","21.00","0.00","0.00","0.00","-21.00","21","Blocked","2018-07-11 19:49:54","2018-07-11 19:50:03");
INSERT INTO transactions VALUES("1247","20","15","14","","","Y3BHXJU8IGMYD","","141","9","registered","","","31.00","0.00","0.00","0.00","31.00","31","Success","2018-07-11 19:51:02","2018-07-11 19:51:27");
INSERT INTO transactions VALUES("1248","15","20","14","","","Y3BHXJU8IGMYD","","141","10","registered","","","31.00","0.00","0.00","0.00","-31.00","31","Success","2018-07-11 19:51:02","2018-07-11 19:51:28");
INSERT INTO transactions VALUES("1249","15","20","12","","","UXYXMNCTNGOZE","6X7321QDQMA6F","142","9","registered","","","10.00","0.00","0.00","0.00","10.00","test","Success","2018-07-11 19:52:09","2018-07-11 20:07:01");
INSERT INTO transactions VALUES("1250","20","15","12","","","UXYXMNCTNGOZE","6X7321QDQMA6F","142","10","registered","","","10.00","6.00","0.60","16.00","-26.60","test","Success","2018-07-11 19:52:10","2018-07-11 20:07:01");
INSERT INTO transactions VALUES("1251","15","20","12","","","6X7321QDQMA6F","UXYXMNCTNGOZE","143","9","registered","","","10.00","0.00","0.00","0.00","-10.00","test","Refund","2018-07-11 20:07:01","2018-07-11 20:07:01");
INSERT INTO transactions VALUES("1252","20","15","12","","","6X7321QDQMA6F","UXYXMNCTNGOZE","143","10","registered","","","10.00","6.00","0.60","16.00","26.60","test","Refund","2018-07-11 20:07:01","2018-07-11 20:07:01");
INSERT INTO transactions VALUES("1253","15","20","14","","","2D6MEOLXTKLDB","","184","3","registered","parvez.agvbd@gmail.com","","50.00","5.00","2.50","5.00","-57.50","test","Success","2018-07-11 20:08:21","2018-07-11 20:08:21");
INSERT INTO transactions VALUES("1254","20","15","14","","","2D6MEOLXTKLDB","","184","4","registered","parvez.agvbd@gmail.com","","50.00","0.00","0.00","0.00","50.00","test","Success","2018-07-11 20:08:21","2018-07-11 20:08:21");
INSERT INTO transactions VALUES("1255","15","20","12","","","GK2FSJWUKQDMF","","185","3","registered","parvez.agvbd@gmail.com","","22.00","3.00","0.66","13.00","-35.66","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Success","2018-07-11 20:10:19","2018-07-11 20:10:19");
INSERT INTO transactions VALUES("1256","20","15","12","","","GK2FSJWUKQDMF","","185","4","registered","parvez.agvbd@gmail.com","","22.00","0.00","0.00","0.00","22.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","Success","2018-07-11 20:10:19","2018-07-11 20:10:19");
INSERT INTO transactions VALUES("1257","41","29","12","","","XUJQHMO3VCJPB","","79","7","registered","","","5.00","2.00","0.10","5.00","-10.10","","Success","2018-07-12 12:39:00","2018-07-12 12:40:30");
INSERT INTO transactions VALUES("1258","29","41","12","","","M2LHZYWFEM4FA","","79","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Pending","2018-07-12 12:40:30","2018-07-12 12:47:04");
INSERT INTO transactions VALUES("1259","29","41","12","","","FPU7BAKQWIHEF","","80","7","registered","","","6.00","2.00","0.12","5.00","-11.12","","Pending","2018-07-12 12:51:29","2018-07-12 15:26:33");
INSERT INTO transactions VALUES("1260","41","29","12","","","278N0FLRWRICX","","80","8","registered","","","6.00","0.00","0.00","0.00","6.00","","Success","2018-07-12 12:53:49","2018-07-12 12:53:49");
INSERT INTO transactions VALUES("1261","41","","12","","","DW4ZRNV67HDWV","","144","9","unregistered","mm@gmail.com","","11.00","0.00","0.00","0.00","11.00","cvnvn","Pending","2018-07-12 13:11:19","2018-07-12 13:11:19");
INSERT INTO transactions VALUES("1262","","41","12","","","DW4ZRNV67HDWV","","144","10","unregistered","mm@gmail.com","","11.00","0.00","0.00","0.00","-11.00","cvnvn","Pending","2018-07-12 13:11:19","2018-07-12 13:11:19");
INSERT INTO transactions VALUES("1263","7","","12","2","","DURVESIEW8IL4","","92","1","registered","","","1000.00","12.00","120.00","11.00","1131.00","","Success","2018-07-12 13:39:12","2018-07-12 14:33:04");
INSERT INTO transactions VALUES("1264","41","","12","","","PXOTCX7UZTTEH","","81","7","registered","","","7.00","2.00","0.14","5.00","-12.14","","Success","2018-07-12 13:39:27","2018-07-12 13:39:27");
INSERT INTO transactions VALUES("1265","41","29","12","","","LJO2H5BZ96GDX","","82","7","registered","","","7.00","2.00","0.14","5.00","-12.14","","Success","2018-07-12 14:33:51","2018-07-12 14:37:19");
INSERT INTO transactions VALUES("1266","29","41","12","","","2AI8OID91OZZF","","82","8","registered","","","7.00","0.00","0.00","0.00","7.00","","Success","2018-07-12 14:37:19","2018-07-12 16:22:00");
INSERT INTO transactions VALUES("1267","15","","14","2","","XQYKXXNKO4NWP","","93","1","registered","","","120000.00","5.00","6000.00","0.00","126000.00","","Blocked","2018-07-12 14:41:46","2018-07-12 14:43:24");
INSERT INTO transactions VALUES("1268","41","29","13","","","0XFG6YMQBJCHR","","83","7","registered","","","5.00","1.00","0.05","0.00","-5.05","","Pending","2018-07-12 14:45:01","2018-07-12 15:27:01");
INSERT INTO transactions VALUES("1269","29","41","13","","","CHR5N0C3ZELXE","","83","8","registered","","","5.00","0.00","0.00","0.00","5.00","","Pending","2018-07-12 14:45:19","2018-07-12 14:51:02");
INSERT INTO transactions VALUES("1270","20","","13","2","","1B4TQFXWM7AW0","","94","1","registered","","","15000.00","0.00","0.00","0.00","15000.00","","Success","2018-07-12 15:10:43","2018-07-12 15:10:43");
INSERT INTO transactions VALUES("1271","20","","14","2","","YGJK3NGIORNWS","","95","1","registered","","","170000.00","5.00","8500.00","0.00","178500.00","","Success","2018-07-12 15:14:46","2018-07-12 15:14:46");
INSERT INTO transactions VALUES("1272","15","15","12","","","LB4TI6NXZRMSD","","84","7","registered","","","14.00","2.00","0.28","5.00","-19.28","","Success","2018-07-12 15:23:32","2018-07-12 15:23:53");
INSERT INTO transactions VALUES("1273","15","15","12","","","ATNG4WGYDLKNK","","84","8","registered","","","14.00","0.00","0.00","0.00","14.00","","Success","2018-07-12 15:23:53","2018-07-12 15:23:53");
INSERT INTO transactions VALUES("1274","41","29","12","","","F6KREFJDML7JY","GIW1PTVPFDGPJ","186","3","registered","mahfuzasinthy@gmail.com","","10.00","3.00","0.30","13.00","-23.30","jfghjhfjhgfjhgj","Success","2018-07-12 16:28:07","2018-07-12 16:30:12");
INSERT INTO transactions VALUES("1275","29","41","12","","","F6KREFJDML7JY","GIW1PTVPFDGPJ","186","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","10.00","jfghjhfjhgfjhgj","Success","2018-07-12 16:28:08","2018-07-12 16:30:12");
INSERT INTO transactions VALUES("1276","41","29","12","","","GIW1PTVPFDGPJ","F6KREFJDML7JY","187","3","registered","mahfuzasinthy@gmail.com","","10.00","3.00","0.30","13.00","23.30","jfghjhfjhgfjhgj","Refund","2018-07-12 16:30:12","2018-07-12 16:30:12");
INSERT INTO transactions VALUES("1277","29","41","12","","","GIW1PTVPFDGPJ","F6KREFJDML7JY","187","4","registered","mahfuzasinthy@gmail.com","","10.00","0.00","0.00","0.00","-10.00","jfghjhfjhgfjhgj","Refund","2018-07-12 16:30:13","2018-07-12 16:30:13");
INSERT INTO transactions VALUES("1278","15","","12","3","","007JVGO4MHZSE","","41","2","registered","","","10000.00","9.00","900.00","10.00","-10910.00","","Success","2018-07-12 16:31:05","2018-07-12 16:34:37");
INSERT INTO transactions VALUES("1279","41","29","12","","","UM7BZGQWZLDQB","","188","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","pending","Blocked","2018-07-12 16:32:52","2018-07-12 16:44:18");
INSERT INTO transactions VALUES("1280","29","41","12","","","UM7BZGQWZLDQB","","188","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","pending","Blocked","2018-07-12 16:32:52","2018-07-12 16:44:18");
INSERT INTO transactions VALUES("1281","15","","12","3","","I3AMXSFVVTQ8N","","42","2","registered","","","5000.00","9.00","450.00","10.00","-5460.00","","Pending","2018-07-12 16:35:30","2018-07-12 16:35:30");
INSERT INTO transactions VALUES("1282","41","29","13","","","3XP9RCGIW5KN8","","189","3","registered","mahfuzasinthy@gmail.com","","2.00","0.00","0.00","0.00","-2.00","hjhgjhgj","Success","2018-07-12 16:45:35","2018-07-12 16:45:35");
INSERT INTO transactions VALUES("1283","29","41","13","","","3XP9RCGIW5KN8","","189","4","registered","mahfuzasinthy@gmail.com","","2.00","0.00","0.00","0.00","2.00","hjhgjhgj","Success","2018-07-12 16:45:35","2018-07-12 16:45:35");
INSERT INTO transactions VALUES("1284","29","41","12","","","Z2WD0ZJXAHOIW","","190","3","registered","bornatechvill@gmail.com","","5.00","3.00","0.15","13.00","-18.15","gdfhdfhhdfh","Blocked","2018-07-12 16:46:32","2018-07-12 16:47:46");
INSERT INTO transactions VALUES("1285","41","29","12","","","Z2WD0ZJXAHOIW","","190","4","registered","bornatechvill@gmail.com","","5.00","0.00","0.00","0.00","5.00","gdfhdfhhdfh","Blocked","2018-07-12 16:46:32","2018-07-12 16:47:46");
INSERT INTO transactions VALUES("1286","15","20","12","","","K8RVRJRXQVFZ9","","191","3","registered","parvez.agvbd@gmail.com","","3000.00","3.00","90.00","13.00","-3103.00","3000","Blocked","2018-07-12 16:52:51","2018-07-12 16:54:00");
INSERT INTO transactions VALUES("1287","20","15","12","","","K8RVRJRXQVFZ9","","191","4","registered","parvez.agvbd@gmail.com","","3000.00","0.00","0.00","0.00","3000.00","3000","Blocked","2018-07-12 16:52:51","2018-07-12 16:54:00");
INSERT INTO transactions VALUES("1288","41","29","12","","","YCK6WVPQVHYKW","","145","9","registered","","","10.00","0.00","0.00","0.00","10.00","request payment","Success","2018-07-12 16:53:38","2018-07-12 16:54:43");
INSERT INTO transactions VALUES("1289","29","41","12","","","YCK6WVPQVHYKW","","145","10","registered","","","10.00","6.00","0.60","16.00","-26.60","request payment","Success","2018-07-12 16:53:38","2018-07-12 16:54:43");
INSERT INTO transactions VALUES("1290","41","29","12","","","89GHCBUOBLSL0","IVPKG5FLKYUV7","146","9","registered","","","10.00","0.00","0.00","0.00","10.00","tests","Success","2018-07-12 16:57:42","2018-07-12 17:00:56");
INSERT INTO transactions VALUES("1291","29","41","12","","","89GHCBUOBLSL0","IVPKG5FLKYUV7","146","10","registered","","","10.00","6.00","0.60","16.00","-26.60","tests","Success","2018-07-12 16:57:42","2018-07-12 17:00:56");
INSERT INTO transactions VALUES("1292","15","20","12","","","QAHN51Y6LXZHA","","192","3","registered","parvez.agvbd@gmail.com","","1000.00","3.00","30.00","13.00","-1043.00","1000","Success","2018-07-12 17:00:49","2018-07-12 17:02:44");
INSERT INTO transactions VALUES("1293","20","15","12","","","QAHN51Y6LXZHA","","192","4","registered","parvez.agvbd@gmail.com","","1000.00","0.00","0.00","0.00","1000.00","1000","Success","2018-07-12 17:00:49","2018-07-12 17:02:44");
INSERT INTO transactions VALUES("1294","41","29","12","","","IVPKG5FLKYUV7","89GHCBUOBLSL0","147","9","registered","","","10.00","0.00","0.00","0.00","-10.00","tests","Refund","2018-07-12 17:00:56","2018-07-12 17:00:56");
INSERT INTO transactions VALUES("1295","29","41","12","","","IVPKG5FLKYUV7","89GHCBUOBLSL0","147","10","registered","","","10.00","6.00","0.60","16.00","26.60","tests","Refund","2018-07-12 17:00:56","2018-07-12 17:00:56");
INSERT INTO transactions VALUES("1296","41","29","12","","","IBHX85MAXSDIN","","193","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","rghd","Pending","2018-07-12 17:04:57","2018-07-12 17:07:46");
INSERT INTO transactions VALUES("1297","29","41","12","","","IBHX85MAXSDIN","","193","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","rghd","Pending","2018-07-12 17:04:57","2018-07-12 17:07:46");
INSERT INTO transactions VALUES("1298","15","20","12","","","3FZYZDLAM0IRC","","148","9","registered","","","1000.00","0.00","0.00","0.00","1000.00","1000","Pending","2018-07-12 17:12:46","2018-07-12 17:12:46");
INSERT INTO transactions VALUES("1299","20","15","12","","","3FZYZDLAM0IRC","","148","10","registered","","","1000.00","0.00","0.00","0.00","-1000.00","1000","Pending","2018-07-12 17:12:46","2018-07-12 17:12:46");
INSERT INTO transactions VALUES("1300","41","29","12","","","PM0WQKHJ8I6MT","","149","9","registered","","","5.00","0.00","0.00","0.00","5.00","vcv","Pending","2018-07-12 17:16:26","2018-07-12 17:19:20");
INSERT INTO transactions VALUES("1301","29","41","12","","","PM0WQKHJ8I6MT","","149","10","registered","","","5.00","0.00","0.00","0.00","-5.00","vcv","Pending","2018-07-12 17:16:26","2018-07-12 17:19:20");
INSERT INTO transactions VALUES("1302","15","20","12","","","VDBDP4LICXNQ6","","194","3","registered","parvez.agvbd@gmail.com","","2000.00","3.00","60.00","13.00","-2073.00","2000","Success","2018-07-12 17:27:06","2018-07-12 17:27:06");
INSERT INTO transactions VALUES("1303","20","15","12","","","VDBDP4LICXNQ6","","194","4","registered","parvez.agvbd@gmail.com","","2000.00","0.00","0.00","0.00","2000.00","2000","Success","2018-07-12 17:27:06","2018-07-12 17:27:06");
INSERT INTO transactions VALUES("1304","15","20","12","","","ORCNSR5FNSPYI","","150","9","registered","","","30.00","0.00","0.00","0.00","30.00","30","Blocked","2018-07-12 17:34:36","2018-07-12 17:37:33");
INSERT INTO transactions VALUES("1305","20","15","12","","","ORCNSR5FNSPYI","","150","10","registered","","","30.00","0.00","0.00","0.00","-30.00","30","Blocked","2018-07-12 17:34:36","2018-07-12 17:37:33");
INSERT INTO transactions VALUES("1306","15","20","12","","","OOCVHXL5DHKVC","","195","3","registered","parvez.agvbd@gmail.com","","11.00","3.00","0.33","13.00","-24.33","11","Success","2018-07-12 17:38:49","2018-07-12 17:38:49");
INSERT INTO transactions VALUES("1307","20","15","12","","","OOCVHXL5DHKVC","","195","4","registered","parvez.agvbd@gmail.com","","11.00","0.00","0.00","0.00","11.00","11","Success","2018-07-12 17:38:49","2018-07-12 17:38:49");
INSERT INTO transactions VALUES("1308","15","20","12","","","6KQPOTEYLA84L","","151","9","registered","","","11.00","0.00","0.00","0.00","11.00","11","Blocked","2018-07-12 17:39:42","2018-07-12 18:03:26");
INSERT INTO transactions VALUES("1309","20","15","12","","","6KQPOTEYLA84L","","151","10","registered","","","11.00","0.00","0.00","0.00","-11.00","11","Blocked","2018-07-12 17:39:42","2018-07-12 17:40:17");
INSERT INTO transactions VALUES("1310","20","15","12","","","B6ZCD77GUJ5NW","","152","9","registered","","","33.00","0.00","0.00","0.00","33.00","33","Blocked","2018-07-12 18:03:56","2018-07-12 18:09:43");
INSERT INTO transactions VALUES("1311","15","20","12","","","B6ZCD77GUJ5NW","","152","10","registered","","","33.00","0.00","0.00","0.00","-33.00","33","Blocked","2018-07-12 18:03:57","2018-07-12 18:05:29");
INSERT INTO transactions VALUES("1312","15","20","12","","","MS52RFVRUDXHZ","","153","9","registered","","","21.00","0.00","0.00","0.00","21.00","21","Blocked","2018-07-12 18:10:41","2018-07-12 18:16:57");
INSERT INTO transactions VALUES("1313","20","15","12","","","MS52RFVRUDXHZ","","153","10","registered","","","21.00","0.00","0.00","0.00","-21.00","21","Blocked","2018-07-12 18:10:41","2018-07-12 18:16:16");
INSERT INTO transactions VALUES("1314","20","15","12","","","WKW3QG14TJQLR","","154","9","registered","","","31.00","0.00","0.00","0.00","31.00","31","Blocked","2018-07-12 18:17:46","2018-07-12 18:24:38");
INSERT INTO transactions VALUES("1315","15","20","12","","","WKW3QG14TJQLR","","154","10","registered","","","31.00","0.00","0.00","0.00","-31.00","31","Blocked","2018-07-12 18:17:46","2018-07-12 18:18:08");
INSERT INTO transactions VALUES("1316","20","15","14","","","EHNA6TRAISHFJ","","155","9","registered","","","7.00","0.00","0.00","0.00","7.00","7","Blocked","2018-07-12 18:25:10","2018-07-12 18:25:22");
INSERT INTO transactions VALUES("1317","15","20","14","","","EHNA6TRAISHFJ","","155","10","registered","","","7.00","0.00","0.00","0.00","-7.00","7","Blocked","2018-07-12 18:25:10","2018-07-12 18:25:22");
INSERT INTO transactions VALUES("1318","15","20","12","","","VUIYV4PR29EMS","","196","3","registered","parvez.agvbd@gmail.com","","1001.00","3.00","30.03","13.00","-1044.03","1001","Success","2018-07-12 18:37:30","2018-07-12 18:37:30");
INSERT INTO transactions VALUES("1319","20","15","12","","","VUIYV4PR29EMS","","196","4","registered","parvez.agvbd@gmail.com","","1001.00","0.00","0.00","0.00","1001.00","1001","Success","2018-07-12 18:37:30","2018-07-12 18:37:30");
INSERT INTO transactions VALUES("1320","15","20","12","","","KDGBPRZKQOB4G","","156","9","registered","","","13.00","0.00","0.00","0.00","13.00","13","Blocked","2018-07-12 18:40:13","2018-07-12 18:41:19");
INSERT INTO transactions VALUES("1321","20","15","12","","","KDGBPRZKQOB4G","","156","10","registered","","","13.00","0.00","0.00","0.00","-13.00","13","Blocked","2018-07-12 18:40:13","2018-07-12 18:41:20");
INSERT INTO transactions VALUES("1322","15","20","14","","","DZ6VLEV2T9SYB","","157","9","registered","","","30000.00","0.00","0.00","0.00","30000.00","30000","Blocked","2018-07-12 18:40:50","2018-07-12 18:41:13");
INSERT INTO transactions VALUES("1323","20","15","14","","","DZ6VLEV2T9SYB","","157","10","registered","","","30000.00","0.00","0.00","0.00","-30000.00","30000","Blocked","2018-07-12 18:40:50","2018-07-12 18:41:13");
INSERT INTO transactions VALUES("1324","15","20","14","","","DWCPMFDH6TTHW","","158","9","registered","","","25000.00","0.00","0.00","0.00","25000.00","25000","Success","2018-07-12 18:42:57","2018-07-12 18:46:18");
INSERT INTO transactions VALUES("1325","20","15","14","","","DWCPMFDH6TTHW","","158","10","registered","","","25000.00","0.00","0.00","0.00","-25000.00","25000","Success","2018-07-12 18:42:57","2018-07-12 18:46:18");
INSERT INTO transactions VALUES("1326","20","20","12","","","5ZBOXXCIWE2TD","","85","7","registered","","","3000.00","2.00","60.00","5.00","-3065.00","","Success","2018-07-12 18:51:55","2018-07-12 18:56:02");
INSERT INTO transactions VALUES("1327","20","20","12","","","OZRPT8LK6BDLV","","85","8","registered","","","3000.00","0.00","0.00","0.00","3000.00","","Success","2018-07-12 18:56:02","2018-07-12 18:56:02");
INSERT INTO transactions VALUES("1328","15","","12","2","","UZDQJYIT7DDGD","","96","1","registered","","","1000.00","12.00","120.00","11.00","1131.00","","Success","2018-07-15 10:13:27","2018-07-15 10:13:27");
INSERT INTO transactions VALUES("1329","15","20","12","","","NF4MR7DDARBUO","","197","3","registered","parvez.agvbd@gmail.com","","1111.00","3.00","33.33","13.00","-1157.33","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum culpa tempora deleniti voluptates repudiandae consequatur, quam ipsum harum saepe dignissimos, obcaecati modi aperiam illo distinctio ut, ipsa ducimus illum aliquam eveniet voluptatum enim, doloremque error. Nihil temporibus asperiores deserunt suscipit, ad itaque magni commodi atus est accusantium, sequi quibusdam, omnis at sed ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttuuuuuuuuu","Success","2018-07-15 10:33:01","2018-07-15 10:33:01");
INSERT INTO transactions VALUES("1330","20","15","12","","","NF4MR7DDARBUO","","197","4","registered","parvez.agvbd@gmail.com","","1111.00","0.00","0.00","0.00","1111.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum culpa tempora deleniti voluptates repudiandae consequatur, quam ipsum harum saepe dignissimos, obcaecati modi aperiam illo distinctio ut, ipsa ducimus illum aliquam eveniet voluptatum enim, doloremque error. Nihil temporibus asperiores deserunt suscipit, ad itaque magni commodi atus est accusantium, sequi quibusdam, omnis at sed ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttuuuuuuuuu","Success","2018-07-15 10:33:01","2018-07-15 10:33:01");
INSERT INTO transactions VALUES("1331","15","20","12","","","ORES3OG2JILWL","","159","9","registered","","","1000.00","0.00","0.00","0.00","1000.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum culpa tempora deleniti voluptates repudiandae consequatur, quam ipsum harum saepe dignissimos, obcaecati modi aperiam illo distinctio ut, ipsa ducimus illum aliquam eveniet voluptatum enim, doloremque error. Nihil temporibus asperiores deserunt suscipit, ad itaque magni commodi atus est accusantium, sequi quibusdam, omnis at sed ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttuuuuuuuuu","Pending","2018-07-15 10:43:57","2018-07-15 10:43:57");
INSERT INTO transactions VALUES("1332","20","15","12","","","ORES3OG2JILWL","","159","10","registered","","","1000.00","0.00","0.00","0.00","-1000.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum culpa tempora deleniti voluptates repudiandae consequatur, quam ipsum harum saepe dignissimos, obcaecati modi aperiam illo distinctio ut, ipsa ducimus illum aliquam eveniet voluptatum enim, doloremque error. Nihil temporibus asperiores deserunt suscipit, ad itaque magni commodi atus est accusantium, sequi quibusdam, omnis at sed ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttuuuuuuuuu","Pending","2018-07-15 10:43:57","2018-07-15 10:43:57");
INSERT INTO transactions VALUES("1333","35","","12","3","","LR9WRNJUWWFSQ","","97","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-15 11:48:32","2018-07-15 11:48:32");
INSERT INTO transactions VALUES("1334","35","29","12","","","LAT4XLOWQKS1G","","198","3","registered","mahfuzasinthy@gmail.com","","3.00","3.00","0.09","13.00","-16.09","sdgdgdgdfg","Refund","2018-07-15 11:49:29","2018-07-15 11:54:53");
INSERT INTO transactions VALUES("1335","29","35","12","","","LAT4XLOWQKS1G","","198","4","registered","mahfuzasinthy@gmail.com","","3.00","0.00","0.00","0.00","3.00","sdgdgdgdfg","Refund","2018-07-15 11:49:29","2018-07-15 11:54:53");
INSERT INTO transactions VALUES("1336","35","29","16","","","BDZXJ6QYS1OYW","","160","9","registered","","","10.00","0.00","0.00","0.00","10.00","gdfgdfsg","Blocked","2018-07-15 11:57:07","2018-07-15 11:57:21");
INSERT INTO transactions VALUES("1337","29","35","16","","","BDZXJ6QYS1OYW","","160","10","registered","","","10.00","0.00","0.00","0.00","-10.00","gdfgdfsg","Blocked","2018-07-15 11:57:07","2018-07-15 11:57:21");
INSERT INTO transactions VALUES("1338","35","29","16","","","YEC0TL3MH4AEZ","PZ0UY4FUASSMB","161","9","registered","","","10.00","0.00","0.00","0.00","10.00","wfewf","Success","2018-07-15 11:58:14","2018-07-15 12:01:34");
INSERT INTO transactions VALUES("1339","29","35","16","","","YEC0TL3MH4AEZ","PZ0UY4FUASSMB","161","10","registered","","","10.00","2.00","0.20","0.00","-10.20","wfewf","Success","2018-07-15 11:58:14","2018-07-15 12:01:34");
INSERT INTO transactions VALUES("1340","35","29","16","","","PZ0UY4FUASSMB","YEC0TL3MH4AEZ","162","9","registered","","","10.00","0.00","0.00","0.00","-10.00","wfewf","Blocked","2018-07-15 12:01:34","2018-07-15 12:02:40");
INSERT INTO transactions VALUES("1341","29","35","16","","","PZ0UY4FUASSMB","YEC0TL3MH4AEZ","162","10","registered","","","10.00","2.00","0.20","0.00","10.20","wfewf","Blocked","2018-07-15 12:01:35","2018-07-15 12:02:40");
INSERT INTO transactions VALUES("1342","20","","12","2","","S36ZIHUL3TBS9","","98","1","registered","","","100.00","12.00","12.00","11.00","123.00","","Success","2018-07-15 12:03:31","2018-07-15 12:03:31");
INSERT INTO transactions VALUES("1343","35","29","12","","","DCQY6NI7URADY","EIYQ9Z0Z5NRW6","163","9","registered","","","7.00","0.00","0.00","0.00","7.00","hghk","Success","2018-07-15 12:04:48","2018-07-15 12:17:07");
INSERT INTO transactions VALUES("1344","29","35","12","","","DCQY6NI7URADY","EIYQ9Z0Z5NRW6","163","10","registered","","","7.00","6.00","0.42","16.00","-23.42","hghk","Success","2018-07-15 12:04:48","2018-07-15 12:17:07");
INSERT INTO transactions VALUES("1345","35","29","12","","","EIYQ9Z0Z5NRW6","DCQY6NI7URADY","164","9","registered","","","7.00","0.00","0.00","0.00","-7.00","hghk","Refund","2018-07-15 12:17:07","2018-07-15 12:17:07");
INSERT INTO transactions VALUES("1346","29","35","12","","","EIYQ9Z0Z5NRW6","DCQY6NI7URADY","164","10","registered","","","7.00","6.00","0.42","16.00","23.42","hghk","Refund","2018-07-15 12:17:07","2018-07-15 12:17:07");
INSERT INTO transactions VALUES("1347","33","29","12","","","VHGULDD8WGGHK","","199","3","registered","mahfuzasinthy@gmail.com","","3.00","3.00","0.09","13.00","-16.09","fhdgfh","Success","2018-07-15 13:25:54","2018-07-15 13:25:54");
INSERT INTO transactions VALUES("1348","29","33","12","","","VHGULDD8WGGHK","","199","4","registered","mahfuzasinthy@gmail.com","","3.00","0.00","0.00","0.00","3.00","fhdgfh","Success","2018-07-15 13:25:54","2018-07-15 13:25:54");
INSERT INTO transactions VALUES("1349","35","","12","","","FS945XU4BFHYE","","86","7","registered","","","5.00","2.00","0.10","5.00","-10.10","","Success","2018-07-15 13:26:48","2018-07-15 13:26:48");
INSERT INTO transactions VALUES("1350","35","","13","2","","8EEUY3GW0OQXC","","99","1","registered","","","50.00","0.00","0.00","0.00","50.00","","Success","2018-07-15 13:32:08","2018-07-15 13:32:08");
INSERT INTO transactions VALUES("1351","35","","12","2","","5Q7OOMZ0DEFCJ","","100","1","registered","","","55129.00","12.00","6615.48","11.00","61755.48","","Success","2018-07-15 13:37:44","2018-07-15 13:37:44");
INSERT INTO transactions VALUES("1352","35","29","12","","","ZULK3BMOUMR61","","200","3","registered","mahfuzasinthy@gmail.com","","10001.00","3.00","300.03","13.00","-10314.03","DHSFDSFBDSGBDFSBG","Success","2018-07-15 13:38:53","2018-07-15 13:38:53");
INSERT INTO transactions VALUES("1353","29","35","12","","","ZULK3BMOUMR61","","200","4","registered","mahfuzasinthy@gmail.com","","10001.00","0.00","0.00","0.00","10001.00","DHSFDSFBDSGBDFSBG","Success","2018-07-15 13:38:53","2018-07-15 13:38:53");
INSERT INTO transactions VALUES("1354","29","35","12","","","TMHUHRZMOMWL9","","165","9","registered","","","10000.00","0.00","0.00","0.00","10000.00","fhdgfhdgfhgf","Pending","2018-07-15 13:49:51","2018-07-15 13:49:51");
INSERT INTO transactions VALUES("1355","35","29","12","","","TMHUHRZMOMWL9","","165","10","registered","","","10000.00","0.00","0.00","0.00","-10000.00","fhdgfhdgfhgf","Pending","2018-07-15 13:49:52","2018-07-15 13:49:52");
INSERT INTO transactions VALUES("1356","35","","12","","","ULU4LNDUPFPFP","","87","7","registered","","","1000.00","2.00","20.00","5.00","-1025.00","","Success","2018-07-15 13:52:55","2018-07-15 13:52:55");
INSERT INTO transactions VALUES("1362","29","29","12","3","38","ATWKKC12U7EN9","","74","12","registered","","","1.97","0.00","0.03","0.00","2.00","","Success","2018-07-15 16:24:52","2018-07-15 16:24:52");
INSERT INTO transactions VALUES("1363","24","29","12","1","38","XB0G8ZVBTLYB7","","75","11","registered","","","2.00","0.00","0.00","0.00","-2.00","","Success","2018-07-15 17:04:20","2018-07-15 17:04:20");
INSERT INTO transactions VALUES("1364","29","24","12","1","38","XB0G8ZVBTLYB7","","75","12","registered","","","1.97","0.00","0.03","0.00","2.00","","Success","2018-07-15 17:04:20","2018-07-15 17:04:20");
INSERT INTO transactions VALUES("1365","35","","12","3","","JSPFMMWXAEJL1","","101","1","registered","","","11.00","12.00","1.32","11.00","23.32","","Success","2018-07-16 12:03:50","2018-07-16 12:03:50");
INSERT INTO transactions VALUES("1366","20","15","12","1","39","OZW3EZOIMYLD3","","76","11","registered","","","120.00","0.00","0.00","0.00","-120.00","","Success","2018-07-16 12:10:00","2018-07-16 12:10:00");
INSERT INTO transactions VALUES("1367","15","20","12","1","39","OZW3EZOIMYLD3","","76","12","registered","","","117.00","0.00","3.00","0.00","120.00","","Success","2018-07-16 12:10:00","2018-07-16 12:10:00");
INSERT INTO transactions VALUES("1368","35","29","12","","","C3ZMH6AYJZMSC","","201","3","registered","mahfuzasinthy@gmail.com","","5.00","3.00","0.15","13.00","-18.15","fhgfhgfj","Success","2018-07-16 12:15:07","2018-07-16 12:15:07");
INSERT INTO transactions VALUES("1369","29","35","12","","","C3ZMH6AYJZMSC","","201","4","registered","mahfuzasinthy@gmail.com","","5.00","0.00","0.00","0.00","5.00","fhgfhgfj","Success","2018-07-16 12:15:08","2018-07-16 12:15:08");
INSERT INTO transactions VALUES("1370","4","20","12","1","29","LL1GZRFNJ5RGK","","77","11","registered","","","3.00","0.00","0.00","0.00","-3.00","","Success","2018-07-16 12:21:18","2018-07-16 12:21:18");
INSERT INTO transactions VALUES("1371","20","4","12","1","29","LL1GZRFNJ5RGK","","77","12","registered","","","3.00","0.00","0.00","0.00","3.00","","Success","2018-07-16 12:21:18","2018-07-16 12:21:18");
INSERT INTO transactions VALUES("1372","24","","12","","","BVJF0K7WC9WOG","","110","5","registered","","","2.00","3.00","0.06","12.00","-14.06","","Success","2018-07-16 13:04:31","2018-07-16 13:04:31");
INSERT INTO transactions VALUES("1373","24","","14","","","BVJF0K7WC9WOG","","110","6","registered","","","1.70","0.00","0.00","0.00","1.70","","Success","2018-07-16 13:04:31","2018-07-16 13:04:31");
INSERT INTO transactions VALUES("1374","15","","12","","","IHRI1OWOTEEKT","","88","7","registered","","","1000.00","2.00","20.00","5.00","-1025.00","","Success","2018-07-16 13:42:50","2018-07-16 13:42:50");
INSERT INTO transactions VALUES("1375","15","","12","","","WCGWD9IZ8CW8S","","89","7","registered","","","2000.00","2.00","40.00","5.00","-2045.00","","Pending","2018-07-16 13:44:15","2018-07-16 13:46:36");
INSERT INTO transactions VALUES("1376","24","","12","3","","UXMV6ALEDYSWF","","43","2","registered","","","10.00","9.00","0.90","10.00","-20.90","","Pending","2018-07-16 13:48:57","2018-07-16 13:48:57");
INSERT INTO transactions VALUES("1377","15","15","12","","","LGLJ52F389BW6","","47","8","registered","","","7.00","0.00","0.00","0.00","7.00","","Success","2018-07-16 14:04:32","2018-07-16 14:04:32");
INSERT INTO transactions VALUES("1378","29","24","12","","","SBHLUAAIB8U86","","202","3","registered","borna.techvill@gmail.com","","1001.00","3.00","30.03","13.00","-1044.03","1001","Success","2018-07-16 14:15:19","2018-07-16 14:15:19");
INSERT INTO transactions VALUES("1379","24","29","12","","","SBHLUAAIB8U86","","202","4","registered","borna.techvill@gmail.com","","1001.00","0.00","0.00","0.00","1001.00","1001","Success","2018-07-16 14:15:19","2018-07-16 14:15:19");
INSERT INTO transactions VALUES("1380","24","29","12","","","EORF8BYLWRMNQ","","203","3","registered","mahfuzasinthy@gmail.com","","1000.00","3.00","30.00","13.00","-1043.00","1000","Success","2018-07-16 14:16:43","2018-07-16 14:16:43");
INSERT INTO transactions VALUES("1381","29","24","12","","","EORF8BYLWRMNQ","","203","4","registered","mahfuzasinthy@gmail.com","","1000.00","0.00","0.00","0.00","1000.00","1000","Success","2018-07-16 14:16:43","2018-07-16 14:16:43");
INSERT INTO transactions VALUES("1382","15","","13","2","","UQ1AIED4WDGV4","","102","1","registered","","","10000.00","0.00","0.00","0.00","10000.00","","Success","2018-07-16 14:39:34","2018-07-16 14:39:34");
INSERT INTO transactions VALUES("1383","15","20","14","","","94E96EEBNM9YQ","","166","9","registered","","","10000.00","0.00","0.00","0.00","10000.00","40000","Success","2018-07-16 15:07:19","2018-07-16 15:13:12");
INSERT INTO transactions VALUES("1384","20","15","14","","","94E96EEBNM9YQ","","166","10","registered","","","10000.00","10.00","1000.00","60.00","-11060.00","40000","Success","2018-07-16 15:07:19","2018-07-16 15:13:12");
INSERT INTO transactions VALUES("1385","20","","14","2","","B8BDAPIHYKX3Q","","103","1","registered","","","10000.00","16.00","1600.00","50.00","11650.00","","Success","2018-07-16 15:25:24","2018-07-16 15:25:24");
INSERT INTO transactions VALUES("1389","15","20","12","","","FO2YIUN6CMIEU","","204","3","registered","parvez.agvbd@gmail.com","","4000.00","30.00","1200.00","300.00","-5500.00","4000","Success","2018-07-16 16:49:35","2018-07-16 16:49:35");
INSERT INTO transactions VALUES("1390","20","15","12","","","FO2YIUN6CMIEU","","204","4","registered","parvez.agvbd@gmail.com","","4000.00","0.00","0.00","0.00","4000.00","4000","Success","2018-07-16 16:49:35","2018-07-16 16:49:35");
INSERT INTO transactions VALUES("1391","20","","14","6","","9ZWIS3LNCGJ0G","","47","2","registered","","","3200.00","16.00","512.00","500.00","-4212.00","","Pending","2018-07-16 16:56:22","2018-07-16 16:56:22");
INSERT INTO transactions VALUES("1392","20","20","14","","","MWQLB4YGCUHXR","","90","7","registered","","","3000.00","30.00","900.00","200.00","-4100.00","","Success","2018-07-16 16:59:38","2018-07-16 17:01:12");
INSERT INTO transactions VALUES("1393","20","20","14","","","L9YAGNHYP5WIB","","90","8","registered","","","3000.00","0.00","0.00","0.00","3000.00","","Success","2018-07-16 17:01:12","2018-07-16 17:01:12");
INSERT INTO transactions VALUES("1394","20","","12","","","DA1RTLL2IGXCO","","111","5","registered","","","1001.00","80.00","800.80","300.00","-2101.80","","Success","2018-07-16 17:26:33","2018-07-16 17:26:33");
INSERT INTO transactions VALUES("1395","20","","14","","","DA1RTLL2IGXCO","","111","6","registered","","","850.85","0.00","0.00","0.00","850.85","","Success","2018-07-16 17:26:33","2018-07-16 17:26:33");
INSERT INTO transactions VALUES("1396","20","","14","2","","SJONEJTOK4Y57","","104","1","registered","","","2700.00","30.00","810.00","200.00","3710.00","","Success","2018-07-16 17:28:57","2018-07-16 17:28:57");
INSERT INTO transactions VALUES("1397","20","","14","6","","FLUL8QWHE5LLZ","","48","2","registered","","","3500.00","16.00","560.00","500.00","-4560.00","","Pending","2018-07-16 17:29:30","2018-07-16 17:29:30");
INSERT INTO transactions VALUES("1398","20","","12","","","ZWRJSEMCWPCDH","","112","5","registered","","","1001.00","80.00","800.80","300.00","-2101.80","","Success","2018-07-16 17:30:05","2018-07-16 17:30:05");
INSERT INTO transactions VALUES("1399","20","","14","","","ZWRJSEMCWPCDH","","112","6","registered","","","850.85","0.00","0.00","0.00","850.85","","Success","2018-07-16 17:30:05","2018-07-16 17:30:05");
INSERT INTO transactions VALUES("1400","20","","14","","","7FNZCIQETYQOH","","113","5","registered","","","900.00","80.00","720.00","300.00","-1920.00","","Success","2018-07-16 17:30:26","2018-07-16 17:30:26");
INSERT INTO transactions VALUES("1401","20","","12","","","7FNZCIQETYQOH","","113","6","registered","","","1058.82","0.00","0.00","0.00","1058.82","","Success","2018-07-16 17:30:26","2018-07-16 17:30:26");
INSERT INTO transactions VALUES("1402","20","15","12","","","V7RQFJ618KPWQ","","205","3","registered","parvez.techvill@gmail.com","","2500.00","30.00","750.00","300.00","-3550.00","2500","Success","2018-07-16 17:32:06","2018-07-16 17:32:06");
INSERT INTO transactions VALUES("1403","15","20","12","","","V7RQFJ618KPWQ","","205","4","registered","parvez.techvill@gmail.com","","2500.00","0.00","0.00","0.00","2500.00","2500","Success","2018-07-16 17:32:06","2018-07-16 17:32:06");
INSERT INTO transactions VALUES("1404","20","15","12","","","C1LXK3B2X6BPU","","167","9","registered","","","1000.00","0.00","0.00","0.00","1000.00","3000","Success","2018-07-16 17:32:44","2018-07-16 17:34:13");
INSERT INTO transactions VALUES("1405","15","20","12","","","C1LXK3B2X6BPU","","167","10","registered","","","1000.00","80.00","800.00","300.00","-2100.00","3000","Success","2018-07-16 17:32:44","2018-07-16 17:34:13");
INSERT INTO transactions VALUES("1406","20","15","12","","","9S890JU4EOWTR","OSCA00ATA3QV9","168","9","registered","","","3000.00","0.00","0.00","0.00","3000.00","3000","Success","2018-07-16 17:33:35","2018-07-18 15:12:07");
INSERT INTO transactions VALUES("1407","15","20","12","","","9S890JU4EOWTR","OSCA00ATA3QV9","168","10","registered","","","3000.00","80.00","2400.00","300.00","-5700.00","3000","Success","2018-07-16 17:33:35","2018-07-18 15:12:07");
INSERT INTO transactions VALUES("1408","15","","12","3","","Z72W9NSVEQW74","","49","2","registered","","","10.00","5.00","0.50","7.00","-17.50","","Pending","2018-07-18 10:49:42","2018-07-18 10:49:42");
INSERT INTO transactions VALUES("1409","15","","12","2","","TQCCVERSJICEN","","105","1","registered","","","111.00","5.00","5.55","6.00","122.55","","Success","2018-07-18 12:18:18","2018-07-18 12:18:18");
INSERT INTO transactions VALUES("1410","15","","14","3","","WBPDCQ8YVQHFS","","50","2","registered","","","120.00","16.00","19.20","500.00","-639.20","","Pending","2018-07-18 12:24:48","2018-07-18 12:24:48");
INSERT INTO transactions VALUES("1411","20","15","12","","","OSCA00ATA3QV9","9S890JU4EOWTR","169","9","registered","","","3000.00","0.00","0.00","0.00","-3000.00","3000","Refund","2018-07-18 15:12:07","2018-07-18 15:12:07");
INSERT INTO transactions VALUES("1412","15","20","12","","","OSCA00ATA3QV9","9S890JU4EOWTR","169","10","registered","","","3000.00","80.00","2400.00","300.00","5700.00","3000","Refund","2018-07-18 15:12:07","2018-07-18 15:12:07");
INSERT INTO transactions VALUES("1413","15","","12","","","CZMLGJXDEPDGR","","91","7","registered","","","100.00","2.00","2.00","5.00","-107.00","","Success","2018-07-18 15:29:50","2018-07-18 15:29:50");
INSERT INTO transactions VALUES("1414","15","","12","2","","QZKKQOGWPDR06","","108","1","registered","","","15.00","5.00","0.75","6.00","21.75","","Success","2018-07-18 15:51:45","2018-07-18 15:51:45");
INSERT INTO transactions VALUES("1415","4","","12","7","","IHFRAXCBMKNFS","","109","1","registered","","","15.66","0.00","1.14","6.00","22.80","","Pending","2018-07-18 16:01:30","2018-07-18 16:01:30");
INSERT INTO transactions VALUES("1416","15","15","12","","","JJKDG1XGW5QQO","","92","7","registered","","","111.00","2.00","2.22","5.00","-118.22","","Success","2018-07-18 17:14:54","2018-07-18 18:11:01");
INSERT INTO transactions VALUES("1417","15","","12","3","","GA0L0POUIJNYF","","51","2","registered","","","13.00","5.00","0.65","7.00","-20.65","","Pending","2018-07-18 17:21:31","2018-07-18 17:21:31");
INSERT INTO transactions VALUES("1418","15","20","12","","","QLZYRFNLVFL1T","","206","3","registered","parvez.agvbd@gmail.com","","14.00","3.00","0.42","10.00","-24.42","14","Success","2018-07-18 17:43:01","2018-07-18 17:43:01");
INSERT INTO transactions VALUES("1419","20","15","12","","","QLZYRFNLVFL1T","","206","4","registered","parvez.agvbd@gmail.com","","14.00","0.00","0.00","0.00","14.00","14","Success","2018-07-18 17:43:01","2018-07-18 17:43:01");
INSERT INTO transactions VALUES("1420","15","20","12","","","W8YXEDXJRILWN","","207","3","registered","parvez.agvbd@gmail.com","","15.00","3.00","0.45","10.00","-25.45","15","Success","2018-07-18 17:43:24","2018-07-18 17:43:24");
INSERT INTO transactions VALUES("1421","20","15","12","","","W8YXEDXJRILWN","","207","4","registered","parvez.agvbd@gmail.com","","15.00","0.00","0.00","0.00","15.00","15","Success","2018-07-18 17:43:24","2018-07-18 17:43:24");
INSERT INTO transactions VALUES("1422","20","","12","","","R91G1WRZHZIDN","","114","5","registered","","","12.00","80.00","9.60","300.00","-321.60","","Success","2018-07-18 17:53:24","2018-07-18 17:53:24");
INSERT INTO transactions VALUES("1423","20","","14","","","R91G1WRZHZIDN","","114","6","registered","","","10.20","0.00","0.00","0.00","10.20","","Success","2018-07-18 17:53:24","2018-07-18 17:53:24");
INSERT INTO transactions VALUES("1424","15","","12","","","N22XBO7OEZJ8Q","","115","5","registered","","","14.00","2.00","0.28","10.00","-24.28","","Success","2018-07-18 18:02:35","2018-07-18 18:02:35");
INSERT INTO transactions VALUES("1425","15","","26","","","N22XBO7OEZJ8Q","","115","6","registered","","","1180.62","0.00","0.00","0.00","1180.62","","Success","2018-07-18 18:02:35","2018-07-18 18:02:35");
INSERT INTO transactions VALUES("1426","20","","12","","","DKRRCACAFXURP","","93","7","registered","","","50.00","2.00","1.00","5.00","-56.00","","Success","2018-07-18 18:10:36","2018-07-18 18:10:36");
INSERT INTO transactions VALUES("1427","15","15","12","","","EQLCB7XS0N8ER","","92","8","registered","","","111.00","0.00","0.00","0.00","111.00","","Success","2018-07-18 18:11:01","2018-07-18 18:11:01");
INSERT INTO transactions VALUES("1428","20","15","12","","","H1EL7PYBQHSHM","","170","9","registered","","","15.00","0.00","0.00","0.00","15.00","15","Pending","2018-07-18 18:11:59","2018-07-18 18:11:59");
INSERT INTO transactions VALUES("1429","15","20","12","","","H1EL7PYBQHSHM","","170","10","registered","","","15.00","0.00","0.00","0.00","-15.00","15","Pending","2018-07-18 18:11:59","2018-07-18 18:11:59");
INSERT INTO transactions VALUES("1430","15","20","12","1","28","NUZW8HEKBDWNX","","78","11","registered","","","700.00","0.00","0.00","0.00","-700.00","","Success","2018-07-18 18:38:04","2018-07-18 18:38:04");
INSERT INTO transactions VALUES("1431","20","15","12","1","28","NUZW8HEKBDWNX","","78","12","registered","","","700.00","0.00","0.00","0.00","700.00","","Success","2018-07-18 18:38:04","2018-07-18 18:38:04");
INSERT INTO transactions VALUES("1432","15","","12","2","","I1NKFYYBIGZ4J","","110","1","registered","","","14.00","5.00","0.70","6.00","20.70","","Success","2018-07-18 18:48:36","2018-07-18 18:48:36");
INSERT INTO transactions VALUES("1433","15","","12","3","","JJSPYFAFH58DK","","52","2","registered","","","22.00","5.00","1.10","7.00","-30.10","","Pending","2018-07-18 19:03:53","2018-07-18 19:03:53");
INSERT INTO transactions VALUES("1434","15","20","12","","","8XGYT3FQ3W9KX","","208","3","registered","parvez.agvbd@gmail.com","","13.00","3.00","0.39","10.00","-23.39","13","Success","2018-07-18 19:07:21","2018-07-18 19:07:21");
INSERT INTO transactions VALUES("1435","20","15","12","","","8XGYT3FQ3W9KX","","208","4","registered","parvez.agvbd@gmail.com","","13.00","0.00","0.00","0.00","13.00","13","Success","2018-07-18 19:07:21","2018-07-18 19:07:21");
INSERT INTO transactions VALUES("1436","15","20","12","","","RNDUMVZDCDXYP","","209","3","registered","parvez.agvbd@gmail.com","","14.00","3.00","0.42","10.00","-24.42","14","Success","2018-07-19 12:03:11","2018-07-19 12:03:11");
INSERT INTO transactions VALUES("1437","20","15","12","","","RNDUMVZDCDXYP","","209","4","registered","parvez.agvbd@gmail.com","","14.00","0.00","0.00","0.00","14.00","14","Success","2018-07-19 12:03:11","2018-07-19 12:03:11");
INSERT INTO transactions VALUES("1438","15","","12","","","6WOO6RBFATASP","","116","5","registered","","","12.00","2.00","0.24","10.00","-22.24","","Success","2018-07-19 12:12:14","2018-07-19 12:12:14");
INSERT INTO transactions VALUES("1439","15","","26","","","6WOO6RBFATASP","","116","6","registered","","","1011.96","0.00","0.00","0.00","1011.96","","Success","2018-07-19 12:12:14","2018-07-19 12:12:14");
INSERT INTO transactions VALUES("1440","15","","12","","","P8E7ATWSQB8VU","","117","5","registered","","","7.00","2.00","0.14","10.00","-17.14","","Success","2018-07-19 12:12:32","2018-07-19 12:12:32");
INSERT INTO transactions VALUES("1441","15","","26","","","P8E7ATWSQB8VU","","117","6","registered","","","590.31","0.00","0.00","0.00","590.31","","Success","2018-07-19 12:12:32","2018-07-19 12:12:32");
INSERT INTO transactions VALUES("1442","15","","26","","","YZUMC2UZF7GPG","","118","5","registered","","","11.00","2.00","0.22","10.00","-21.22","","Success","2018-07-19 12:23:41","2018-07-19 12:23:41");
INSERT INTO transactions VALUES("1443","15","","12","","","YZUMC2UZF7GPG","","118","6","registered","","","0.13","0.00","0.00","0.00","0.13","","Success","2018-07-19 12:23:41","2018-07-19 12:23:41");
INSERT INTO transactions VALUES("1444","15","15","12","","","HDCVSCEXAA2BD","","94","7","registered","","","15.00","2.00","0.30","5.00","-20.30","","Success","2018-07-19 12:36:16","2018-07-19 12:41:15");
INSERT INTO transactions VALUES("1445","15","15","12","","","ONQXQMOTOVKTS","","94","8","registered","","","15.00","0.00","0.00","0.00","15.00","","Success","2018-07-19 12:41:15","2018-07-19 12:41:15");
INSERT INTO transactions VALUES("1446","15","20","12","","","SS84DB4ETHQ2Y","","171","9","registered","","","11.00","0.00","0.00","0.00","11.00","11","Success","2018-07-19 12:42:24","2018-07-19 12:42:40");
INSERT INTO transactions VALUES("1447","20","15","12","","","SS84DB4ETHQ2Y","","171","10","registered","","","11.00","80.00","8.80","300.00","-319.80","11","Success","2018-07-19 12:42:24","2018-07-19 12:42:40");
INSERT INTO transactions VALUES("1448","15","20","12","1","28","KTXODQIADUGRN","","79","11","registered","","","700.00","0.00","0.00","0.00","-700.00","","Success","2018-07-19 13:16:37","2018-07-19 13:16:37");
INSERT INTO transactions VALUES("1449","20","15","12","1","28","KTXODQIADUGRN","","79","12","registered","","","700.00","0.00","0.00","0.00","700.00","","Success","2018-07-19 13:16:37","2018-07-19 13:16:37");
INSERT INTO transactions VALUES("1450","15","","12","3","","V6ZQKCMHIASEW","","53","2","registered","","","11.00","5.00","0.55","7.00","-18.55","","Pending","2018-07-19 13:37:14","2018-07-19 13:37:14");
INSERT INTO transactions VALUES("1451","15","","12","3","","FN7ZRVA7ZJ4LY","","54","2","registered","","","1000.00","5.00","50.00","7.00","-1057.00","","Pending","2018-07-19 13:37:35","2018-07-19 13:37:35");
INSERT INTO transactions VALUES("1452","15","","12","2","","MXB41LAT5PCMC","","111","1","registered","","","111.00","5.00","5.55","6.00","122.55","","Success","2018-07-19 13:41:27","2018-07-19 13:41:27");
INSERT INTO transactions VALUES("1453","15","","12","2","","JLQXH07KMPYCL","","112","1","registered","","","1000.00","5.00","50.00","6.00","1056.00","","Success","2018-07-19 13:42:05","2018-07-19 13:42:05");
INSERT INTO transactions VALUES("1454","15","","12","3","","NEHV7GJGYOQJ7","","55","2","registered","","","1000.00","5.00","50.00","7.00","-1057.00","","Pending","2018-07-19 13:45:09","2018-07-19 13:45:09");
INSERT INTO transactions VALUES("1455","15","","12","","","UGSAPKLK17ZYD","","119","5","registered","","","11.00","2.00","0.22","10.00","-21.22","","Success","2018-07-19 13:49:43","2018-07-19 13:49:43");
INSERT INTO transactions VALUES("1456","15","","26","","","UGSAPKLK17ZYD","","119","6","registered","","","927.63","0.00","0.00","0.00","927.63","","Success","2018-07-19 13:49:43","2018-07-19 13:49:43");
INSERT INTO transactions VALUES("1457","15","","12","","","CS2M6KZSU4JAV","","120","5","registered","","","1111.00","2.00","22.22","10.00","-1143.22","","Success","2018-07-19 13:50:03","2018-07-19 13:50:03");
INSERT INTO transactions VALUES("1458","15","","26","","","CS2M6KZSU4JAV","","120","6","registered","","","93690.63","0.00","0.00","0.00","93690.63","","Success","2018-07-19 13:50:03","2018-07-19 13:50:03");
INSERT INTO transactions VALUES("1459","15","","12","","","OCJOSFKY6EPFY","","121","5","registered","","","1111.00","2.00","22.22","10.00","-1143.22","","Success","2018-07-19 13:51:55","2018-07-19 13:51:55");
INSERT INTO transactions VALUES("1460","15","","26","","","OCJOSFKY6EPFY","","121","6","registered","","","93690.63","0.00","0.00","0.00","93690.63","","Success","2018-07-19 13:51:55","2018-07-19 13:51:55");
INSERT INTO transactions VALUES("1461","15","","12","2","","E7HZXF1GYBX0C","","113","1","registered","","","100.00","5.00","5.00","6.00","111.00","","Success","2018-07-19 14:29:44","2018-07-19 14:29:44");
INSERT INTO transactions VALUES("1462","15","","12","3","","M9QU6RJX0N0RE","","56","2","registered","","","100.00","5.00","5.00","7.00","-112.00","","Pending","2018-07-19 14:30:21","2018-07-19 14:30:21");
INSERT INTO transactions VALUES("1463","15","","12","","","SX7XFXEYCTJER","","122","5","registered","","","15.00","2.00","0.30","10.00","-25.30","","Success","2018-07-19 14:30:50","2018-07-19 14:30:50");
INSERT INTO transactions VALUES("1464","15","","26","","","SX7XFXEYCTJER","","122","6","registered","","","1264.95","0.00","0.00","0.00","1264.95","","Success","2018-07-19 14:30:50","2018-07-19 14:30:50");
INSERT INTO transactions VALUES("1465","15","","26","","","DH3ZWRQGA4GMI","","123","5","registered","","","12.00","2.00","0.24","10.00","-22.24","","Success","2018-07-19 14:33:44","2018-07-19 14:33:44");
INSERT INTO transactions VALUES("1466","15","","12","","","DH3ZWRQGA4GMI","","123","6","registered","","","0.14","0.00","0.00","0.00","0.14","","Success","2018-07-19 14:33:44","2018-07-19 14:33:44");
INSERT INTO transactions VALUES("1467","15","","12","","","HDGGIV8AEGQ3Q","","124","5","registered","","","3.00","2.00","0.06","10.00","-13.06","","Success","2018-07-19 14:38:20","2018-07-19 14:38:20");
INSERT INTO transactions VALUES("1468","15","","26","","","HDGGIV8AEGQ3Q","","124","6","registered","","","252.99","0.00","0.00","0.00","252.99","","Success","2018-07-19 14:38:21","2018-07-19 14:38:21");
INSERT INTO transactions VALUES("1469","15","","12","","","R4PAKNKVCEPBF","","125","5","registered","","","3.00","2.00","0.06","10.00","-13.06","","Success","2018-07-19 14:38:26","2018-07-19 14:38:26");
INSERT INTO transactions VALUES("1470","15","","26","","","R4PAKNKVCEPBF","","125","6","registered","","","252.99","0.00","0.00","0.00","252.99","","Success","2018-07-19 14:38:26","2018-07-19 14:38:26");
INSERT INTO transactions VALUES("1471","15","","12","","","OUHPYKYGQXEJN","","126","5","registered","","","3.00","2.00","0.06","10.00","-13.06","","Success","2018-07-19 14:38:33","2018-07-19 14:38:33");
INSERT INTO transactions VALUES("1472","15","","26","","","OUHPYKYGQXEJN","","126","6","registered","","","252.99","0.00","0.00","0.00","252.99","","Success","2018-07-19 14:38:33","2018-07-19 14:38:33");
INSERT INTO transactions VALUES("1473","15","","12","","","KNOAWRHRNMFJR","","127","5","registered","","","12.00","2.00","0.24","10.00","-22.24","","Success","2018-07-19 14:42:30","2018-07-19 14:42:30");
INSERT INTO transactions VALUES("1474","15","","26","","","KNOAWRHRNMFJR","","127","6","registered","","","1011.96","0.00","0.00","0.00","1011.96","","Success","2018-07-19 14:42:30","2018-07-19 14:42:30");
INSERT INTO transactions VALUES("1475","15","","12","3","","7JSXJIS7WFYXE","","57","2","registered","","","5.00","5.00","0.25","7.00","-12.25","","Pending","2018-07-19 14:48:14","2018-07-19 14:48:14");
INSERT INTO transactions VALUES("1476","15","","12","3","","YDKGFHQWCHKKH","","58","2","registered","","","11.00","5.00","0.55","7.00","-18.55","","Pending","2018-07-19 14:49:27","2018-07-19 14:49:27");
INSERT INTO transactions VALUES("1477","15","","12","","","WNZWEOLAGBHAY","","128","5","registered","","","22.00","2.00","0.44","10.00","-32.44","","Success","2018-07-19 14:49:52","2018-07-19 14:49:52");
INSERT INTO transactions VALUES("1478","15","","26","","","WNZWEOLAGBHAY","","128","6","registered","","","1855.26","0.00","0.00","0.00","1855.26","","Success","2018-07-19 14:49:52","2018-07-19 14:49:52");
INSERT INTO transactions VALUES("1479","15","","26","","","J5RKSODL8KY7B","","129","5","registered","","","4.00","2.00","0.08","10.00","-14.08","","Success","2018-07-19 14:51:23","2018-07-19 14:51:23");
INSERT INTO transactions VALUES("1480","15","","12","","","J5RKSODL8KY7B","","129","6","registered","","","0.05","0.00","0.00","0.00","0.05","","Success","2018-07-19 14:51:23","2018-07-19 14:51:23");
INSERT INTO transactions VALUES("1481","15","20","12","","","A7ZL2N0VNN3U2","","210","3","registered","parvez.agvbd@gmail.com","","12.00","3.00","0.36","10.00","-22.36","12","Success","2018-07-19 14:51:47","2018-07-19 14:51:47");
INSERT INTO transactions VALUES("1482","20","15","12","","","A7ZL2N0VNN3U2","","210","4","registered","parvez.agvbd@gmail.com","","12.00","0.00","0.00","0.00","12.00","12","Success","2018-07-19 14:51:47","2018-07-19 14:51:47");
INSERT INTO transactions VALUES("1483","15","20","12","","","GZRRPIXC20UYJ","","172","9","registered","","","15.00","0.00","0.00","0.00","15.00","15","Pending","2018-07-19 14:55:08","2018-07-19 14:55:08");
INSERT INTO transactions VALUES("1484","20","15","12","","","GZRRPIXC20UYJ","","172","10","registered","","","15.00","0.00","0.00","0.00","-15.00","15","Pending","2018-07-19 14:55:08","2018-07-19 14:55:08");
INSERT INTO transactions VALUES("1485","15","20","12","","","KCAULLLTTEWGN","","173","9","registered","","","15.00","0.00","0.00","0.00","15.00","15","Success","2018-07-19 14:55:12","2018-07-19 14:56:01");
INSERT INTO transactions VALUES("1486","20","15","12","","","KCAULLLTTEWGN","","173","10","registered","","","15.00","80.00","12.00","300.00","-327.00","15","Success","2018-07-19 14:55:12","2018-07-19 14:56:01");
INSERT INTO transactions VALUES("1487","20","20","12","2","28","7Y5EEJC0BQK9J","","80","12","registered","","","30.00","0.00","0.00","0.00","30.00","","Success","2018-07-19 15:01:52","2018-07-19 15:01:52");
INSERT INTO transactions VALUES("1488","24","20","12","1","28","SQQJO3ZERMA4O","","81","11","registered","","","30.00","0.00","0.00","0.00","-30.00","","Success","2018-07-19 15:02:49","2018-07-19 15:02:49");
INSERT INTO transactions VALUES("1489","20","24","12","1","28","SQQJO3ZERMA4O","","81","12","registered","","","30.00","0.00","0.00","0.00","30.00","","Success","2018-07-19 15:02:49","2018-07-19 15:02:49");
INSERT INTO transactions VALUES("1490","15","","12","","","BVFVV9X0F5XJD","","130","5","registered","","","12.00","2.00","0.24","10.00","-22.24","","Success","2018-07-19 15:35:19","2018-07-19 15:35:19");
INSERT INTO transactions VALUES("1491","15","","26","","","BVFVV9X0F5XJD","","130","6","registered","","","1011.96","0.00","0.00","0.00","1011.96","","Success","2018-07-19 15:35:19","2018-07-19 15:35:19");
INSERT INTO transactions VALUES("1492","15","","12","","","FJIMJ1CR9B8SL","","131","5","registered","","","12.00","2.00","0.24","10.00","-22.24","","Success","2018-07-19 15:35:22","2018-07-19 15:35:22");
INSERT INTO transactions VALUES("1493","15","","26","","","FJIMJ1CR9B8SL","","131","6","registered","","","1011.96","0.00","0.00","0.00","1011.96","","Success","2018-07-19 15:35:22","2018-07-19 15:35:22");
INSERT INTO transactions VALUES("1494","15","","26","","","RA3GA23FQVK4D","","132","5","registered","","","5.00","2.00","0.10","10.00","-15.10","","Success","2018-07-19 15:35:36","2018-07-19 15:35:36");
INSERT INTO transactions VALUES("1495","15","","12","","","RA3GA23FQVK4D","","132","6","registered","","","0.06","0.00","0.00","0.00","0.06","","Success","2018-07-19 15:35:36","2018-07-19 15:35:36");





CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
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
  CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

INSERT INTO transfers VALUES("1","6","4","12","GRUBF8A1KIQRF","17.50","150.00","Test","tuhin.techvill@gmail.com","","Success","2018-06-03 14:53:02");
INSERT INTO transfers VALUES("3","7","6","12","DHL2YXTLRQX6N","13.30","10.00","test","shahin.techvill@gmail.com","","Success","2018-06-04 10:59:55");
INSERT INTO transfers VALUES("4","7","6","12","DXPRGOPUTYD44","13.30","10.00","test","shahin.techvill@gmail.com","","Success","2018-06-04 11:32:24");
INSERT INTO transfers VALUES("5","7","15","12","PAKLGR47LAZ5N","13.30","10.00","test","parvez.techvill@gmail.com","","Success","2018-06-04 13:15:59");
INSERT INTO transfers VALUES("6","7","15","12","TL7GKWHJRUD7Q","13.30","10.00","test","parvez.techvill@gmail.com","","Success","2018-06-04 13:16:19");
INSERT INTO transfers VALUES("9","5","10","12","CJVK7EVM9QAKN","13.30","10.00","Test Notes goes here","shakil.techvill@gmail.com","","Success","2018-06-04 15:15:23");
INSERT INTO transfers VALUES("11","15","20","12","LLPDVYPHCK2KQ","463.00","15000.00","xx","parvez.agvbd@gmail.com","","Success","2018-06-05 11:21:14");
INSERT INTO transfers VALUES("13","5","10","12","7CSCPFUPJTQGD","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:46:12");
INSERT INTO transfers VALUES("14","5","10","12","UDAR5BUGNDDG0","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:53:51");
INSERT INTO transfers VALUES("15","5","10","12","DFHQYFPVEKVJH","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:54:13");
INSERT INTO transfers VALUES("16","5","10","12","SKGPXT5PPQNCT","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:54:33");
INSERT INTO transfers VALUES("17","5","10","12","PZ46HBDHCEPSF","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:54:58");
INSERT INTO transfers VALUES("18","5","10","12","N8R7ETBFBOPJB","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:55:44");
INSERT INTO transfers VALUES("19","5","10","12","4JH39TZWIHWHF","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:57:47");
INSERT INTO transfers VALUES("20","5","10","12","C0FOPPKIYAIII","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 13:58:01");
INSERT INTO transfers VALUES("23","7","5","12","AMJZENGEGYUKZ","13.60","20.00","Test payment","aminul.techvill@gmail.com","","Success","2018-06-05 14:18:29");
INSERT INTO transfers VALUES("24","7","5","12","OFQWV7DJJMJSR","13.60","20.00","Test payment","aminul.techvill@gmail.com","","Refund","2018-06-05 14:18:43");
INSERT INTO transfers VALUES("25","5","10","12","ZNEQWTGINKPTW","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 14:42:54");
INSERT INTO transfers VALUES("26","5","10","12","EVVF6BWESYPNN","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 14:55:11");
INSERT INTO transfers VALUES("27","5","10","12","3SSY1IWVOGMDZ","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 14:59:25");
INSERT INTO transfers VALUES("28","5","10","12","P57QS4EAH1EOJ","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 15:01:06");
INSERT INTO transfers VALUES("29","5","10","12","ZLQOKGACXAVUG","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 15:02:12");
INSERT INTO transfers VALUES("30","5","10","12","MDGOEZYNE0SQX","16.00","100.00","Test notes here.","shakil.techvill@gmail.com","","Success","2018-06-05 15:02:26");
INSERT INTO transfers VALUES("31","5","10","12","99SQF5GHREERE","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:03:03");
INSERT INTO transfers VALUES("32","5","10","12","TS0OP0KOSFOPZ","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:03:09");
INSERT INTO transfers VALUES("33","5","10","12","36YL4GANSFCW2","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:04:44");
INSERT INTO transfers VALUES("34","5","10","12","K9GEXWD46MW01","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:06:52");
INSERT INTO transfers VALUES("35","5","10","12","9SOPWI6T35VJO","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:09:06");
INSERT INTO transfers VALUES("36","5","10","12","7LJEDXQZ2BZPN","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:09:50");
INSERT INTO transfers VALUES("37","5","10","12","0CVQ17VYQPPXD","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:14:11");
INSERT INTO transfers VALUES("38","5","10","12","NZ3ZQHW4QMHZP","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:14:26");
INSERT INTO transfers VALUES("39","5","10","12","I3GE2M3D54FZE","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:14:36");
INSERT INTO transfers VALUES("40","5","10","12","GQOEVUOREFGAP","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:15:18");
INSERT INTO transfers VALUES("41","5","10","12","LQ4I2DXEQILK4","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:15:30");
INSERT INTO transfers VALUES("42","5","10","12","ZODO6BQQR6RHH","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:16:42");
INSERT INTO transfers VALUES("43","5","10","12","BWSQLMKZKYCZS","16.00","100.00","sdfgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:18:21");
INSERT INTO transfers VALUES("44","5","10","12","S2FFVEL6ZSXR8","16.00","100.00","fdsgfdsgfdsgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:18:48");
INSERT INTO transfers VALUES("45","5","10","12","4SXIMFCBW3YO4","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:19:43");
INSERT INTO transfers VALUES("46","5","","12","GQWPGZPBDLZOR","13.30","10.00","Test","shakil.techvill@gmai.com","","Pending","2018-06-05 15:21:20");
INSERT INTO transfers VALUES("47","5","10","12","JHU2HV0MNOZAN","13.69","23.00","fsdafsdafdsfsdf","shakil.techvill@gmail.com","","Success","2018-06-05 15:25:39");
INSERT INTO transfers VALUES("48","5","","12","W30RDMLKYSVK8","13.30","10.00","Test Notes","shakil.techvill@gmai.com","","Pending","2018-06-05 15:26:56");
INSERT INTO transfers VALUES("49","5","10","12","LFMFD8DHIEYKM","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:28:27");
INSERT INTO transfers VALUES("50","5","10","12","5FRJKAVVPTJIE","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:28:57");
INSERT INTO transfers VALUES("51","5","10","12","IAAPEJUTXQUKA","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:29:17");
INSERT INTO transfers VALUES("52","5","10","12","AH8DUUTSBJVPH","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:34:38");
INSERT INTO transfers VALUES("53","5","10","12","3HWP9WDMMJCON","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:34:43");
INSERT INTO transfers VALUES("54","5","10","12","GNSSNOHUBMLOZ","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:35:47");
INSERT INTO transfers VALUES("55","5","10","12","AUMN6YPMAUWWF","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:36:02");
INSERT INTO transfers VALUES("56","5","10","12","RHRVG7Z2LVKRF","16.00","100.00","fdsfgsdfgfds","shakil.techvill@gmail.com","","Success","2018-06-05 15:37:05");
INSERT INTO transfers VALUES("57","5","10","12","LGQ4KKSQIPCTW","16.00","100.00","sdfadsafdsa","shakil.techvill@gmail.com","","Success","2018-06-05 15:38:39");
INSERT INTO transfers VALUES("58","5","10","12","QHOMDGOLVUJFC","16.00","100.00","sdfadsafdsa","shakil.techvill@gmail.com","","Success","2018-06-05 15:39:10");
INSERT INTO transfers VALUES("59","5","10","12","C650U5W8KIGTX","16.00","100.00","sdfadsafdsa","shakil.techvill@gmail.com","","Success","2018-06-05 15:39:55");
INSERT INTO transfers VALUES("60","5","10","12","7FK5DF7ECPHZR","16.00","100.00","sdfadsafdsa","shakil.techvill@gmail.com","","Success","2018-06-05 15:40:45");
INSERT INTO transfers VALUES("61","7","5","12","YF4ZKL38B1CKL","13.60","20.00","test","aminul.techvill@gmail.com","","Success","2018-06-05 15:42:23");
INSERT INTO transfers VALUES("62","5","10","12","QSNA96VAIUSD9","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:45:35");
INSERT INTO transfers VALUES("63","5","10","12","NLDQTGGOY9HKY","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:45:37");
INSERT INTO transfers VALUES("64","5","10","12","W7OAGKETACIRE","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:45:40");
INSERT INTO transfers VALUES("65","5","","12","HDTEK4VZEWWRM","13.30","10.00","Test Notes","shakil.techvill@gmai.com","","Pending","2018-06-05 15:46:23");
INSERT INTO transfers VALUES("66","5","10","12","BIRT3B6RWDHTM","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:52:31");
INSERT INTO transfers VALUES("67","5","10","12","R73CRQVMQHZUW","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:52:33");
INSERT INTO transfers VALUES("68","5","10","12","9GJLMHXMJ0M74","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:52:43");
INSERT INTO transfers VALUES("69","5","10","12","W4QRQGYP2RBOE","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Blocked","2018-06-05 15:52:46");
INSERT INTO transfers VALUES("70","5","10","12","73BJVGPP18VV7","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:53:10");
INSERT INTO transfers VALUES("71","5","10","12","87C524KKGRFVV","16.00","100.00","sdfdsafsdfsda","shakil.techvill@gmail.com","","Success","2018-06-05 15:53:14");
INSERT INTO transfers VALUES("73","5","10","12","SM0AAEOXHXMJZ","13.30","10.00","Test Notes goes here.","shakil.techvill@gmail.com","","Success","2018-06-06 09:45:41");
INSERT INTO transfers VALUES("74","5","10","12","OSMQ2T2QI5KHR","13.30","10.00","Test Notes goes here.","shakil.techvill@gmail.com","","Success","2018-06-06 09:46:11");
INSERT INTO transfers VALUES("78","5","10","12","97LK5X2O4N7HX","13.30","10.00","Test Payment","shakil.techvill@gmail.com","","Success","2018-06-06 15:05:47");
INSERT INTO transfers VALUES("79","5","10","12","8LM3US8D61GWW","13.09","3.00","Test","shakil.techvill@gmail.com","","Success","2018-06-06 15:11:09");
INSERT INTO transfers VALUES("80","5","","12","ZEZYXQ3QHI6YH","13.09","3.00","Unown","atik@gmail.com","","Pending","2018-06-06 16:05:17");
INSERT INTO transfers VALUES("81","5","10","12","WHGS6DMOFIPBE","13.09","3.00","Test","shakil.techvill@gmail.com","","Success","2018-06-07 10:06:44");
INSERT INTO transfers VALUES("82","5","10","12","7SBDEKLG5OSGY","13.09","3.00","Test","shakil.techvill@gmail.com","","Success","2018-06-07 10:32:21");
INSERT INTO transfers VALUES("83","10","5","12","U3FZXNQOFMXXP","13.09","3.00","1","aminul.techvill@gmail.com","","Success","2018-06-07 10:36:44");
INSERT INTO transfers VALUES("84","10","5","12","92HN504ZVV57Z","13.09","3.00","1","aminul.techvill@gmail.com","","Success","2018-06-07 10:41:39");
INSERT INTO transfers VALUES("85","10","","12","MPMFXBMEPSCGF","13.09","3.00","1","atik@gmail.com","","Pending","2018-06-07 10:45:52");
INSERT INTO transfers VALUES("87","4","5","12","G74FGOVNLUIXV","13.30","10.00","10","aminul.techvill@gmail.com","","Success","2018-06-07 13:04:16");
INSERT INTO transfers VALUES("88","24","29","16","ENLRGLO9HSAJH","0.00","10.00","test money send","mahfuzasinthy@gmail.com","","Success","2018-06-07 13:51:42");
INSERT INTO transfers VALUES("89","20","15","14","EG7OAWHWEI7LJ","9.40","88.00","88","parvez.techvill@gmail.com","","Success","2018-06-07 15:07:19");
INSERT INTO transfers VALUES("90","24","29","12","H9YGGX8YKXV7C","13.30","10.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-07 15:58:52");
INSERT INTO transfers VALUES("91","24","29","12","OFIHPDSDVQI2Q","13.30","10.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-10 15:25:19");
INSERT INTO transfers VALUES("92","24","29","12","JRFXXSGBWTLMC","13.09","3.00","test","mahfuzasinthy@gmail.com","","Refund","2018-06-11 11:20:42");
INSERT INTO transfers VALUES("93","15","20","12","5SJFWUQX1YWS4","15.31","77.00","77","parvez.agvbd@gmail.com","","Success","2018-06-12 09:45:43");
INSERT INTO transfers VALUES("94","15","20","12","YT23WB0GD2JSS","15.31","77.00","77","parvez.agvbd@gmail.com","","Refund","2018-06-12 12:32:11");
INSERT INTO transfers VALUES("95","15","20","12","PIQXW43AIDJDZ","22.93","331.00","gg","parvez.agvbd@gmail.com","","Success","2018-06-12 12:46:08");
INSERT INTO transfers VALUES("96","15","20","12","REPAICDQUI0WO","22.93","331.00","gg","parvez.agvbd@gmail.com","","Refund","2018-06-12 12:46:26");
INSERT INTO transfers VALUES("97","15","20","12","6APYUGLLZBKOA","13.42","14.00","test","parvez.agvbd@gmail.com","","Success","2018-06-12 13:03:55");
INSERT INTO transfers VALUES("99","15","20","12","VS7L2Q5JOT9NG","13.42","14.00","test","parvez.agvbd@gmail.com","","Refund","2018-06-12 13:14:40");
INSERT INTO transfers VALUES("100","5","","12","OQNV0ACXPPNST","16.00","100.00","Test","shakil.techvill@gmai.com","","Pending","2018-06-12 13:48:34");
INSERT INTO transfers VALUES("101","5","15","12","V0IPUKFWDTG4Y","16.00","100.00","Test Payment","parvez.techvill@gmail.com","","Success","2018-06-12 13:49:39");
INSERT INTO transfers VALUES("102","5","15","12","JMMDGYRJI89PO","16.00","100.00","Test Payment","parvez.techvill@gmail.com","","Refund","2018-06-12 13:50:48");
INSERT INTO transfers VALUES("103","15","5","12","LFXBC2MIZHCAW","14.65","55.00","test 55","aminul.techvill@gmail.com","","Success","2018-06-12 14:19:59");
INSERT INTO transfers VALUES("104","15","5","12","LFVQ90H1WNM4I","15.64","88.00","test 88","aminul.techvill@gmail.com","","Success","2018-06-12 14:20:19");
INSERT INTO transfers VALUES("105","15","5","12","7N6PFQ2KNMECE","15.64","88.00","test 88","aminul.techvill@gmail.com","","Success","2018-06-12 14:20:20");
INSERT INTO transfers VALUES("106","15","5","12","X95PFVUPHLKBH","13.33","11.00","test 11","aminul.techvill@gmail.com","","Success","2018-06-12 14:20:58");
INSERT INTO transfers VALUES("107","15","5","12","ZINLHZ63FGQDJ","13.33","11.00","test 11","aminul.techvill@gmail.com","","Success","2018-06-12 14:20:59");
INSERT INTO transfers VALUES("108","15","5","12","85DXPBI4MLTTO","13.33","11.00","test 11","aminul.techvill@gmail.com","","Refund","2018-06-12 14:21:18");
INSERT INTO transfers VALUES("109","4","5","12","KOULDGHKC3N6G","13.45","15.00","ppp","aminul.techvill@gmail.com","","Pending","2018-06-12 14:24:55");
INSERT INTO transfers VALUES("110","4","5","12","63XVELAV8RPG8","13.45","15.00","ppp","aminul.techvill@gmail.com","","Blocked","2018-06-12 14:24:56");
INSERT INTO transfers VALUES("111","5","15","12","JO2FLYWGX0RZQ","14.32","44.00","44","parvez.techvill@gmail.com","","Success","2018-06-12 14:28:35");
INSERT INTO transfers VALUES("112","5","15","12","HYVJQIIGVXVGD","14.32","44.00","44","parvez.techvill@gmail.com","","Refund","2018-06-12 14:35:30");
INSERT INTO transfers VALUES("113","15","","14","0QYJREIAS5GNG","5.65","13.00","13","milon.techvill@gmail.com","","Pending","2018-06-12 14:49:30");
INSERT INTO transfers VALUES("114","24","29","14","OK9HRWBXJ97MY","5.50","10.00","notes","mahfuzasinthy@gmail.com","","Success","2018-06-13 13:29:57");
INSERT INTO transfers VALUES("115","24","29","14","RUYEGSMT0AZDP","5.10","2.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-21 17:57:41");
INSERT INTO transfers VALUES("116","15","20","12","SMOH008PBCQ35","13.99","33.00","sss","parvez.agvbd@gmail.com","","Success","2018-06-22 18:27:15");
INSERT INTO transfers VALUES("117","15","20","12","THBNEE29KYM6S","13.69","23.00","test","parvez.agvbd@gmail.com","","Success","2018-06-23 13:05:11");
INSERT INTO transfers VALUES("120","15","20","12","QMJ0MLLM5NHDL","16.51","117.00","117","parvez.agvbd@gmail.com","","Success","2018-06-23 16:25:36");
INSERT INTO transfers VALUES("121","15","20","12","XSNM3JUQCD78V","16.51","117.00","117","parvez.agvbd@gmail.com","","Refund","2018-06-23 16:27:41");
INSERT INTO transfers VALUES("122","15","5","12","YBWJFQL8VTFVJ","15.91","97.00","hh","aminul.techvill@gmail.com","","Success","2018-06-23 16:32:31");
INSERT INTO transfers VALUES("123","15","5","12","T2NTJWCRCI2QL","15.91","97.00","hh","aminul.techvill@gmail.com","","Refund","2018-06-23 16:33:33");
INSERT INTO transfers VALUES("124","15","20","12","UN7ADZFWJYLQO","14.05","35.00","hgfg","parvez.agvbd@gmail.com","","Success","2018-06-23 17:05:04");
INSERT INTO transfers VALUES("126","15","20","12","8BCIZIVWUGRYP","14.05","35.00","hgfg","parvez.agvbd@gmail.com","","Refund","2018-06-23 18:23:37");
INSERT INTO transfers VALUES("127","24","29","12","UXPFNYUGYNMG7","13.09","3.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-24 12:46:12");
INSERT INTO transfers VALUES("128","7","","12","G8QNTD4BKXLU8","13.60","20.00","test","lenin.techvill@gmail.com","","Pending","2018-06-24 13:42:29");
INSERT INTO transfers VALUES("129","7","","12","BZMQXC5K36GPM","13.60","20.00","test","lenin.techvill@gmail.com","","Pending","2018-06-24 14:03:34");
INSERT INTO transfers VALUES("130","7","","12","MWEESMD2UC3M6","13.60","20.00","test","lenin.techvill@gmail.com","","Pending","2018-06-24 14:03:46");
INSERT INTO transfers VALUES("131","7","","12","GU4WLGGZKAKZ8","13.60","20.00","test","lenin.techvill@gmail.com","","Pending","2018-06-24 14:03:49");
INSERT INTO transfers VALUES("132","24","29","12","IGGHFD3PCRQF8","13.30","10.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-24 16:49:16");
INSERT INTO transfers VALUES("133","24","5","12","QP41NCREJO9QO","13.15","5.00","test","aminul.techvill@gmail.com","","Success","2018-06-24 18:13:47");
INSERT INTO transfers VALUES("134","24","5","12","FNUYCDP2ZXRLL","13.15","5.00","test","aminul.techvill@gmail.com","","Success","2018-06-24 18:14:09");
INSERT INTO transfers VALUES("135","24","5","12","0XQTHGMRCZGAP","13.15","5.00","test","aminul.techvill@gmail.com","","Success","2018-06-24 18:14:19");
INSERT INTO transfers VALUES("136","24","29","16","ZJ9MSFM3IY66N","4.25","45.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-26 16:56:59");
INSERT INTO transfers VALUES("137","4","5","12","BVU0JZJSYMCVS","13.30","10.00","sdf","aminul.techvill@gmail.com","","Success","2018-06-27 14:24:24");
INSERT INTO transfers VALUES("138","4","5","12","YQXWIXZJNRFPV","13.42","14.00","14","aminul.techvill@gmail.com","","Success","2018-06-27 16:29:53");
INSERT INTO transfers VALUES("139","4","5","12","M7ZSFTZHUPWGQ","13.45","15.00","15","aminul.techvill@gmail.com","","Success","2018-06-27 16:33:59");
INSERT INTO transfers VALUES("140","33","29","12","DVHEBBQMXMJNO","13.15","5.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-27 16:40:11");
INSERT INTO transfers VALUES("141","33","29","12","ABQQFPH80ERFT","13.09","3.00","test","mahfuzasinthy@gmail.com","","Success","2018-06-27 16:55:55");
INSERT INTO transfers VALUES("142","4","5","12","O1S0TDSFVRV5G","13.45","15.00","asdf","aminul.techvill@gmail.com","","Success","2018-06-28 16:55:37");
INSERT INTO transfers VALUES("143","35","29","12","QRDLSSHZPXEAT","13.15","5.00","test","mahfuzasinthy@gmail.com","","Success","2018-07-02 14:11:07");
INSERT INTO transfers VALUES("144","35","29","12","AA2F5JB8NUGYH","13.09","3.00","hggg","mahfuzasinthy@gmail.com","","Success","2018-07-02 14:25:31");
INSERT INTO transfers VALUES("145","35","29","13","SZJPXKBPBFXHE","0.00","2.00","llllllllllllllll[","mahfuzasinthy@gmail.com","","Success","2018-07-02 14:27:52");
INSERT INTO transfers VALUES("146","35","29","12","BD8XDTDXHEKB3","13.15","5.00","rewsyhturt","mahfuzasinthy@gmail.com","","Success","2018-07-02 16:35:01");
INSERT INTO transfers VALUES("147","4","5","12","FA2QWN9AZRPDT","13.30","10.00","5646","aminul.techvill@gmail.com","","Success","2018-07-03 17:55:07");
INSERT INTO transfers VALUES("148","31","15","12","LELKCF4XBRYB3","43.00","1000.00","milon first transfer","parvez.techvill@gmail.com","","Success","2018-07-03 18:33:51");
INSERT INTO transfers VALUES("149","31","20","12","BWROBIYEANJVG","16.00","100.00","test2","parvez.agvbd@gmail.com","","Success","2018-07-03 18:34:31");
INSERT INTO transfers VALUES("150","20","31","12","OQZUYI4OLTJ5N","58.00","1500.00","to milon","milon.techvill@gmail.com","","Blocked","2018-07-03 18:40:37");
INSERT INTO transfers VALUES("151","20","31","14","5UOR7LCQ2GBXA","5.75","15.00","test","milon.techvill@gmail.com","","Success","2018-07-03 18:41:42");
INSERT INTO transfers VALUES("152","31","20","12","5WFXAJNUSNSDK","16.60","120.00","tet","parvez.agvbd@gmail.com","","Success","2018-07-03 18:50:35");
INSERT INTO transfers VALUES("153","20","31","14","7ZGKMIDEILEUK","5.75","15.00","test","milon.techvill@gmail.com","","Success","2018-07-03 18:57:43");
INSERT INTO transfers VALUES("154","31","20","12","UYGK7ZFVLHYLQ","13.36","12.00","ggg","parvez.agvbd@gmail.com","","Success","2018-07-03 18:59:12");
INSERT INTO transfers VALUES("155","4","5","12","SM5UIITLJIXFY","13.51","17.00","17","aminul.techvill@gmail.com","","Success","2018-07-03 19:18:37");
INSERT INTO transfers VALUES("156","15","31","12","MZLTLMC5ETWGG","13.36","12.00","vvv","milon.techvill@gmail.com","","Success","2018-07-04 11:29:16");
INSERT INTO transfers VALUES("157","15","31","12","00NYZHRPUJFRC","13.36","12.00","vvv","milon.techvill@gmail.com","","Success","2018-07-04 11:42:05");
INSERT INTO transfers VALUES("158","15","31","12","F3E8COIDAUWRC","13.15","5.00","gg","milon.techvill@gmail.com","","Success","2018-07-04 11:59:17");
INSERT INTO transfers VALUES("159","20","15","12","WQO3ZG8ITSSF2","13.33","11.00","dd","parvez.techvill@gmail.com","","Success","2018-07-04 12:29:42");
INSERT INTO transfers VALUES("160","15","31","12","AMBFPKZZEZ49W","16.69","123.00","gg","milon.techvill@gmail.com","","Success","2018-07-05 18:09:34");
INSERT INTO transfers VALUES("161","31","15","13","1SZOVI8SCIJ9Z","0.00","13.00","test","parvez.techvill@gmail.com","","Success","2018-07-05 19:04:35");
INSERT INTO transfers VALUES("162","35","29","12","ZZVXQRSTA68X0","13.30","10.00","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer hendrerit ut sem ut tincidunt. Vivamus non nulla in quam porttitor commodo. Sed ac elit euismod, dictum eros sed, molestie eli","mahfuzasinthy@gmail.com","","Success","2018-07-08 12:56:05");
INSERT INTO transfers VALUES("163","15","31","12","EQ7QDFIUGXEGJ","26.32","444.00","hey mlion, check it out bro","milon.techvill@gmail.com","","Success","2018-07-09 15:14:57");
INSERT INTO transfers VALUES("164","31","39","13","GKEULNJWIC7AF","0.00","13.00","amit","","","Success","2018-07-09 15:52:52");
INSERT INTO transfers VALUES("165","35","29","12","MCDLDVB9JUJED","16.36","112.00","test","mahfuzasinthy@gmail.com","","Success","2018-07-09 18:32:02");
INSERT INTO transfers VALUES("166","29","24","12","4BUKU9IT1ENID","13.18","6.00","test","borna.techvill@gmail.com","","Success","2018-07-09 19:15:09");
INSERT INTO transfers VALUES("167","29","24","12","YKEOFZ8NVXBBU","13.18","6.00","test","borna.techvill@gmail.com","","Success","2018-07-09 19:15:13");
INSERT INTO transfers VALUES("168","35","29","26","YODUAU7QVTGOM","0.00","1.00","htgfj","mahfuzasinthy@gmail.com","","Success","2018-07-10 14:11:07");
INSERT INTO transfers VALUES("169","15","","12","SMUOUFEALOXSC","16.69","123.00","ashraf.techvill@gmail.com","ashraf.techvill@gmail.com","","Pending","2018-07-10 15:34:41");
INSERT INTO transfers VALUES("170","15","20","12","CH0ZZ0UUT2V2M","13.66","22.00","tt","parvez.agvbd@gmail.com","","Success","2018-07-10 15:39:16");
INSERT INTO transfers VALUES("171","35","29","12","MIUJVKFIBNOV7","13.15","5.00","dfhrth","mahfuzasinthy@gmail.com","","Success","2018-07-10 16:11:20");
INSERT INTO transfers VALUES("172","35","29","12","CAGZA1OSX4BZT","13.15","5.00","dfhrth","mahfuzasinthy@gmail.com","","Success","2018-07-10 16:11:23");
INSERT INTO transfers VALUES("173","35","29","12","NHKJEKF0KIQLY","13.15","5.00","dfhrth","mahfuzasinthy@gmail.com","","Success","2018-07-10 16:12:39");
INSERT INTO transfers VALUES("174","35","29","12","TZJLKGLI7LJU0","13.15","5.00","dfhrth","mahfuzasinthy@gmail.com","","Success","2018-07-10 16:13:09");
INSERT INTO transfers VALUES("175","4","24","12","HMZ6DJYMRS7ZH","13.30","10.00","10","borna.techvill@gmail.com","","Success","2018-07-10 16:14:52");
INSERT INTO transfers VALUES("176","4","24","12","D5GHJ569YTQ3A","13.30","10.00","10","borna.techvill@gmail.com","","Success","2018-07-10 16:15:02");
INSERT INTO transfers VALUES("177","35","29","12","P5JE3OSUXF1FI","13.15","5.00","dfhrth","mahfuzasinthy@gmail.com","","Success","2018-07-10 16:45:00");
INSERT INTO transfers VALUES("178","35","29","12","BNYBQJLBJJWZK","13.15","5.00","dfhrth","mahfuzasinthy@gmail.com","","Success","2018-07-10 16:45:03");
INSERT INTO transfers VALUES("179","20","15","12","TIPY5WBBCYHXQ","13.66","22.00"," Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","parvez.techvill@gmail.com","","Success","2018-07-10 16:51:35");
INSERT INTO transfers VALUES("180","20","15","12","XWHZKEBHJMYGE","13.33","11.00","11","parvez.techvill@gmail.com","","Success","2018-07-10 18:13:23");
INSERT INTO transfers VALUES("181","41","29","13","DUV5CCBZOSXJZ","0.00","5.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","mahfuzasinthy@gmail.com","","Success","2018-07-11 18:01:30");
INSERT INTO transfers VALUES("182","41","29","12","CMXQ2IFZSQD4M","13.12","4.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","mahfuzasinthy@gmail.com","","Blocked","2018-07-11 18:04:11");
INSERT INTO transfers VALUES("183","20","15","12","HRKLBLE9CBE2Q","13.33","11.00","11","parvez.techvill@gmail.com","","Success","2018-07-11 19:37:14");
INSERT INTO transfers VALUES("184","15","20","14","2D6MEOLXTKLDB","7.50","50.00","test","parvez.agvbd@gmail.com","","Success","2018-07-11 20:08:21");
INSERT INTO transfers VALUES("185","15","20","12","GK2FSJWUKQDMF","13.66","22.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumque laudantium, ex vitae deleniti non ne modi sunt facere voluptatum doloribus omnis explicabo quo laboriosam eum quos? Voluptates quisquam expliooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooocabo ipsa sapiente fuga odit unde? Blaooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonditiis quae, veritatis repudiandae nostrum! Tempora aspernatur earum rerum. Incidusit tempore eum, laborum totam nisi accusantium, consecte Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde fugit perferendis voluptatibus, officiis cumquetem culpa. Quae qui est vitae rerum quiauuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuiiiiiiiii","parvez.agvbd@gmail.com","","Success","2018-07-11 20:10:19");
INSERT INTO transfers VALUES("186","41","29","12","F6KREFJDML7JY","13.30","10.00","jfghjhfjhgfjhgj","mahfuzasinthy@gmail.com","","Success","2018-07-12 16:28:07");
INSERT INTO transfers VALUES("187","41","29","12","GIW1PTVPFDGPJ","13.30","10.00","jfghjhfjhgfjhgj","mahfuzasinthy@gmail.com","","Refund","2018-07-12 16:30:12");
INSERT INTO transfers VALUES("188","41","29","12","UM7BZGQWZLDQB","13.15","5.00","pending","mahfuzasinthy@gmail.com","","Blocked","2018-07-12 16:32:51");
INSERT INTO transfers VALUES("189","41","29","13","3XP9RCGIW5KN8","0.00","2.00","hjhgjhgj","mahfuzasinthy@gmail.com","","Success","2018-07-12 16:45:35");
INSERT INTO transfers VALUES("190","29","41","12","Z2WD0ZJXAHOIW","13.15","5.00","gdfhdfhhdfh","bornatechvill@gmail.com","","Blocked","2018-07-12 16:46:32");
INSERT INTO transfers VALUES("191","15","20","12","K8RVRJRXQVFZ9","103.00","3000.00","3000","parvez.agvbd@gmail.com","","Blocked","2018-07-12 16:52:51");
INSERT INTO transfers VALUES("192","15","20","12","QAHN51Y6LXZHA","43.00","1000.00","1000","parvez.agvbd@gmail.com","","Success","2018-07-12 17:00:49");
INSERT INTO transfers VALUES("193","41","29","12","IBHX85MAXSDIN","13.15","5.00","rghd","mahfuzasinthy@gmail.com","","Pending","2018-07-12 17:04:57");
INSERT INTO transfers VALUES("194","15","20","12","VDBDP4LICXNQ6","73.00","2000.00","2000","parvez.agvbd@gmail.com","","Success","2018-07-12 17:27:06");
INSERT INTO transfers VALUES("195","15","20","12","OOCVHXL5DHKVC","13.33","11.00","11","parvez.agvbd@gmail.com","","Success","2018-07-12 17:38:49");
INSERT INTO transfers VALUES("196","15","20","12","VUIYV4PR29EMS","43.03","1001.00","1001","parvez.agvbd@gmail.com","","Success","2018-07-12 18:37:30");
INSERT INTO transfers VALUES("197","15","20","12","NF4MR7DDARBUO","46.33","1111.00","Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum culpa tempora deleniti voluptates repudiandae consequatur, quam ipsum harum saepe dignissimos, obcaecati modi aperiam illo distinctio ut, ipsa ducimus illum aliquam eveniet voluptatum enim, doloremque error. Nihil temporibus asperiores deserunt suscipit, ad itaque magni commodi atus est accusantium, sequi quibusdam, omnis at sed ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttuuuuuuuuu","parvez.agvbd@gmail.com","","Success","2018-07-15 10:33:01");
INSERT INTO transfers VALUES("198","35","29","12","LAT4XLOWQKS1G","13.09","3.00","sdgdgdgdfg","mahfuzasinthy@gmail.com","","Refund","2018-07-15 11:49:29");
INSERT INTO transfers VALUES("199","33","29","12","VHGULDD8WGGHK","13.09","3.00","fhdgfh","mahfuzasinthy@gmail.com","","Success","2018-07-15 13:25:54");
INSERT INTO transfers VALUES("200","35","29","12","ZULK3BMOUMR61","313.03","10001.00","DHSFDSFBDSGBDFSBG","mahfuzasinthy@gmail.com","","Success","2018-07-15 13:38:53");
INSERT INTO transfers VALUES("201","35","29","12","C3ZMH6AYJZMSC","13.15","5.00","fhgfhgfj","mahfuzasinthy@gmail.com","","Success","2018-07-16 12:15:07");
INSERT INTO transfers VALUES("202","29","24","12","SBHLUAAIB8U86","43.03","1001.00","1001","borna.techvill@gmail.com","","Success","2018-07-16 14:15:19");
INSERT INTO transfers VALUES("203","24","29","12","EORF8BYLWRMNQ","43.00","1000.00","1000","mahfuzasinthy@gmail.com","","Success","2018-07-16 14:16:43");
INSERT INTO transfers VALUES("204","15","20","12","FO2YIUN6CMIEU","1500.00","4000.00","4000","parvez.agvbd@gmail.com","","Success","2018-07-16 16:49:34");
INSERT INTO transfers VALUES("205","20","15","12","V7RQFJ618KPWQ","1050.00","2500.00","2500","parvez.techvill@gmail.com","","Success","2018-07-16 17:32:06");
INSERT INTO transfers VALUES("206","15","20","12","QLZYRFNLVFL1T","10.42","14.00","14","parvez.agvbd@gmail.com","","Success","2018-07-18 17:43:01");
INSERT INTO transfers VALUES("207","15","20","12","W8YXEDXJRILWN","10.45","15.00","15","parvez.agvbd@gmail.com","","Success","2018-07-18 17:43:24");
INSERT INTO transfers VALUES("208","15","20","12","8XGYT3FQ3W9KX","10.39","13.00","13","parvez.agvbd@gmail.com","","Success","2018-07-18 19:07:21");
INSERT INTO transfers VALUES("209","15","20","12","RNDUMVZDCDXYP","10.42","14.00","14","parvez.agvbd@gmail.com","","Success","2018-07-19 12:03:11");
INSERT INTO transfers VALUES("210","15","20","12","A7ZL2N0VNN3U2","10.36","12.00","12","parvez.agvbd@gmail.com","","Success","2018-07-19 14:51:47");





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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

INSERT INTO user_details VALUES("4","4","12","","","","","","America/Rankin_Inlet");
INSERT INTO user_details VALUES("5","5","1","","","","","","Africa/Abidjan");
INSERT INTO user_details VALUES("6","6","1","","","","","","");
INSERT INTO user_details VALUES("7","7","1","","","","","","");
INSERT INTO user_details VALUES("10","10","1","","","","","","");
INSERT INTO user_details VALUES("11","14","1","","","","","","");
INSERT INTO user_details VALUES("12","15","18","","","","","","Asia/Dhaka");
INSERT INTO user_details VALUES("14","20","1","","","","","","Africa/Abidjan");
INSERT INTO user_details VALUES("15","21","1","","","","","","");
INSERT INTO user_details VALUES("16","22","1","","","","","","");
INSERT INTO user_details VALUES("18","24","1","","","","","","Asia/Dhaka");
INSERT INTO user_details VALUES("23","29","1","","","","","","");
INSERT INTO user_details VALUES("25","31","1","","","","","","Africa/Abidjan");
INSERT INTO user_details VALUES("27","33","1","","","","","","");
INSERT INTO user_details VALUES("28","35","1","","","","","","");
INSERT INTO user_details VALUES("29","36","1","","","","","","");
INSERT INTO user_details VALUES("30","37","1","","","","","","");
INSERT INTO user_details VALUES("31","38","1","","","","","","");
INSERT INTO user_details VALUES("32","39","1","","","","","","");
INSERT INTO user_details VALUES("33","40","1","","","","","","");
INSERT INTO user_details VALUES("34","41","1","","","","","","Africa/Abidjan");
INSERT INTO user_details VALUES("35","42","1","","","","","","Asia/Dhaka");
INSERT INTO user_details VALUES("36","43","1","","","","","","Asia/Dhaka");
INSERT INTO user_details VALUES("38","45","1","","","","","","Asia/Dhaka");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
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
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_role_id_index` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

INSERT INTO users VALUES("4","tuhin.techvill","Tuhin","Hossain","123456","tuhin.techvill@gmail.com","$2y$10$SdBDrFcbiwNzirdpvSP5vO8mglFgaCOu6ksK0Nw4xHQyYWSpVqrSy","","Active","2","pB5E7NaS22Im41JRsjzD8qEEqcTmOMpsak489MzHGjAiO9hflBXcoS9DJjJc","2018-06-03 14:45:02","2018-07-11 13:12:27","1528189011.jpg");
INSERT INTO users VALUES("5","aminul.techvill","Aminul","Islam","2147483647","aminul.techvill@gmail.com","$2y$10$.iek8FEbAI2M1zKRbfAwl.BxVyK.ViZaP.7/BvyfA4EpoefE.P5lm","","Active","2","zvdi8WzcAJPbJg2X1KUMSd2Gl4j73hcdDCCsrBRlNdYZeEGeHLmfbFes5OMv","2018-06-03 14:45:25","2018-06-05 10:02:59","1528171379.jpg");
INSERT INTO users VALUES("6","shahin.techvill","Shahin","Alam","01722113736","shahin.techvill@gmail.com","$2y$10$nrUJ.B3VI6Vd42PQAwGlN./UpAyNtrBKXWhmafMN92F6zC.2.zaJa","","Active","2","SBXPQyEdKiCZFK0VQr4Qrzu4rm4RXNuLS0OOjeHqE3a4OGP8tCUEkoUS9Qrc","2018-06-03 14:46:50","2018-06-07 14:03:05","");
INSERT INTO users VALUES("7","lenin.rock","Tauhidul","Hasan","01717170543","lenin.rock@gmail.com","$2y$10$qF9N4xxiMItkNmvhqMV8HO5dmyYi.prjiBH/AkVsiPzu3wnaKRPdK","","Active","2","ktKyv4FDQKcLNgF2Ax1F46ei7GeadCOsiSeAYxiqL2hwNneHIG4qXvgwsVJK","2018-06-03 15:03:17","2018-06-03 15:03:17","");
INSERT INTO users VALUES("10","shakil.techvill","Atik","Shakil","765432","shakil.techvill@gmail.com","$2y$10$FvrrvvJd6.TYlx7K.nCTJ.X4SXQhO1n4iMEYTetM3DL2e333biyYi","","Active","2","64pcxvd3NuLVnz3iSsJrxcq8ksExhDA5Aq0OaFA2upwYGYzLlcU8CrZdLsxL","2018-06-04 09:42:14","2018-06-05 10:36:43","1528173403.jpg");
INSERT INTO users VALUES("14","user","User","User","0168870000","user@gmail.com","$2y$10$MSsuewpIkTMV5TnbWrqbEeB99/Ju1./Djr6SQwKqn65lJjC9MKv7O","111","Active","5","pMvboNemMgRgwYUyAJM3P76rkrRKSbPJHLe3h2RxSwa3iERmSBh1QvjHqW0h","2018-06-04 10:00:49","2018-06-04 10:00:49","");
INSERT INTO users VALUES("15","parvez.techvill","Parvez","Robi","01521108069","parvez.techvill@gmail.com","$2y$10$eBxGc/bkTGlVcaH2JzJ.oOYhgb.x/8vx30Byg8IbUYunA8.ayjg0.","parveztechvill","Active","2","Itp0gvCmBRXY4Kp6EGBsK8pUkUVcNz1C7npDqXtzAYk2CRoVZ88z5N8fndDH","2018-06-04 10:21:24","2018-06-22 11:43:39","1529646218.jpg");
INSERT INTO users VALUES("20","parvez.agvbd","parvez","agvbd","01521108068","parvez.agvbd@gmail.com","$2y$10$igbTqAtk/rLdIHPk0pM1d.F.ln.HS32h7nRdooYbHSLP/8Kr9GDoC","parvez","Active","2","ED9rkAVBORaA3FPNx1ppOIPd0XniPB5RNYLGfm60EyMklTBl2NbofH8WCiZN","2018-06-05 11:09:46","2018-07-10 15:54:43","1531216482.jpg");
INSERT INTO users VALUES("21","sumi.techvill","Sany","Khan","01722113737","sumi.techvill@gmail.com","$2y$10$kds0EtfP9OZjJi9hSCNvgO/Y2FjQfXYcooOlYfRE.EZlS6SZRngyC","","Active","2","Ndpf5Z4KhGs6XKiS30v6cBuBrdXESCVAMrBmtMqy3WC4n7vnbgcPEWJ1SiQq","2018-06-05 12:17:11","2018-06-05 12:17:11","");
INSERT INTO users VALUES("22","tr.techvill","Reza","Khan","","tr.techvill@gmail.com","$2y$10$nuYRcb0FaasqR8fg6u1IhecwKtrXONMdQ37vZDeUZ5QXpOsEEV9pq","","Active","2","","2018-06-05 14:00:05","2018-06-05 14:00:05","");
INSERT INTO users VALUES("24","borna.techvill","Farzana","Borna","01688756715","borna.techvill@gmail.com","$2y$10$5CFf74cMFkGUGMyKOMuH8.VCZPHM8ort64e7QehpzZlDygP2u6Zf2","aaaaaaaaaaa","Active","2","W5wSlmMAGX2w63G2fSYCNP1FlaJk5QXNKJcwvuzzFF5sk1rKcyqL4M2US4Cs","2018-06-06 14:21:54","2018-07-02 11:56:16","1528690159.jpg");
INSERT INTO users VALUES("29","mahfuzasinthy","Mahfuza","Sinthy","","mahfuzasinthy@gmail.com","$2y$10$6z8BcnF2N8KnQ8BGPIE3YOLakRKBLFlhJfEHMZt7kemZlhJoYYD1C","","Active","2","DeUTTRxDweKw8233C1i4tGEceMwQfX8qsTvZY2dwYcEueAawPR1ZnnkQtmzu","2018-06-07 13:42:54","2018-06-26 13:21:36","1529997696.jpg");
INSERT INTO users VALUES("31","milon.techvill","milon","ahmed","01521108067","milon.techvill@gmail.com","$2y$10$tiNAD./eTuyUFApbjEQ/Pu/HbFx7QNJihM5579kQ.EVq4QVxk6AyC","","Active","2","cC15F45IaE4UnUUweqWhFoeHnfz53pxm2BvLhPuBXG4AgzrKe9YUvfZQGrLX","2018-06-25 18:11:30","2018-07-10 15:32:08","1531215128.jpg");
INSERT INTO users VALUES("33","borna606","Farzana","Borna","2111111111","borna606@gmail.com","$2y$10$FUYCoL4qzoABp2KWNYbkBO/goyt9WLIGWGGc9UscF4GBCWciZ7S9u","","Active","2","4WG2nl30olqPVz1jMeRL0lYhMgWYUZVHLoTxWSxqxKxY3xPcvo6EpTsK4R41","2018-06-26 17:03:19","2018-07-02 11:46:14","1530011030.jpg");
INSERT INTO users VALUES("35","test","Test","test","01717010203","test@gmail.com","$2y$10$WLQ.gNoAAf0QnscB84/6cOTi1Px.epiBSQa2icK9rIjiJaw3s2sDG","","Active","2","DeMl6ANoo0xOKyd1mohApHvUNf7wBQQfqYXeI5VvQUjrwcRi7sMV6cj0AhOu","2018-07-02 11:25:06","2018-07-02 11:26:35","");
INSERT INTO users VALUES("36","sabbir.himel","sabbir","ahmed","","sabbir.himel@gmail.com","$2y$10$5PM6zFjhJPqdCu8PAS52T.lmfieuNukslgwVtX4PFPpKfY3Apfsrm","","Active","2","","2018-07-02 12:13:41","2018-07-03 13:39:38","");
INSERT INTO users VALUES("37","minhaz.mowlal","minhaz","mowla","","minhaz.mowlal@gmail.com","$2y$10$VLtIcADKZoclukRaotXGuO.32KeGSqB3BdDnudUW9njgsvV06qFn2","","Active","2","","2018-07-02 12:20:54","2018-07-03 14:30:27","");
INSERT INTO users VALUES("38","user123","user","user","","user123@gmail.com","$2y$10$lG22VDkqbRgM3HMREDRVq.Pc0JXr57QOzEIjZSLi.2ZPWdnMMmIMG","","Active","4","","2018-07-03 16:59:44","2018-07-03 16:59:44","");
INSERT INTO users VALUES("39","amit","amit","ovi","","amit@gmail.com","$2y$10$uuGU6mo.hkytBFECeDX5Ruz/wZMrRHzFBDiabJ9J5iuUhRyiyZpuG","","Active","8","VWZLnqWK4qvLrnljzHEaULj1VwYTgnU4jVwwUp0Cbpf9wYGeRajo9DBrWzGa","2018-07-09 16:01:57","2018-07-11 11:42:18","");
INSERT INTO users VALUES("40","milon.techvil2","robi","parvez","","milon.techvil2@gmail.com","$2y$10$KPOBb0blwq9DwUFBBeGveuGFgL2b2ZBVNzGLaqSC./u2mDnnE3/Dm","","Active","2","","2018-07-10 13:37:32","2018-07-10 13:37:32","");
INSERT INTO users VALUES("41","bornatechvill","borna","techvill","","bornatechvill@gmail.com","$2y$10$m6KzNBlD8Ep.mlHD5ti3jO/6z2yEHKv77avVLjPr1Cj4fCBZBPmXG","","Active","2","fDiLMSOrBt6ywvwJAYKvWiTI9FG8YFYbpvLBzyREueEaSMBZEWbqGaBeX0uG","2018-07-11 12:10:25","2018-07-11 12:10:25","");
INSERT INTO users VALUES("42","tuhin.techvill3","T","Hossain","","tuhin.techvill3@gmail.com","$2y$10$Zw6bQ7xbTKbk76PP.kNVK.KGW5BtOW/r0sLpOYNeKBPTSY.om1i0C","","Active","2","","2018-07-12 14:17:46","2018-07-12 14:17:46","");
INSERT INTO users VALUES("43","mary","Mary","Roe","","mary@gmail.com","$2y$10$jlZpxKBKhTrxBfoSuf1Hj.zefptAMesE7hwSbvg1UEvA1UAyEfCWi","","Active","2","aTj2nzYCTlgV09x2qIamAPRCu5ov1cHFBlIZNw1NFne8grr2c40wK6PPtUIX","2018-07-21 12:35:03","2018-07-21 12:35:03","");
INSERT INTO users VALUES("45","john.doe","john","doe","","john.doe@example.com","$2y$10$YXb0Qh8QIj8GVVZ1L4qnveEZ7arh1A.YZfOw9yFVfPE3oM3FQZ30a","","Active","2","BvzHD8poauU8SG7ErItJDADiA7ul8fZzmHxcvOs4jFMgx2YaeI0oyNTeQaku","2018-07-21 16:59:17","2018-07-21 16:59:17","");





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
  `redeemed` enum('No','Yes') NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vouchers_user_id_index` (`user_id`),
  KEY `vouchers_activator_id_index` (`activator_id`),
  KEY `vouchers_currency_id_index` (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

INSERT INTO vouchers VALUES("1","8","","12","AN8NNRDNMXZZB","0.00","0.00","10.00","OZ0UZMFAV76WRKGSCMGEW6QTH6U8IF","No","Pending","2018-06-04 13:39:31","2018-06-04 13:39:31");
INSERT INTO vouchers VALUES("2","8","8","12","EAS5VYVL5AMPY","0.00","0.00","10.00","N87H84KJVYRDRM2XLAOYBULVJKXWRL","No","Success","2018-06-04 13:39:44","2018-06-04 13:49:34");
INSERT INTO vouchers VALUES("3","19","9","12","GRBXNU9LGGKCK","0.00","0.00","5.00","39QYNAH7ZIPD86IDTJRELRTBWBJZRO","No","Success","2018-06-04 16:08:03","2018-06-04 16:09:45");
INSERT INTO vouchers VALUES("4","15","4","12","PLSSARP18G0XN","0.00","0.00","25.00","FZ5ABPN27OKI0DT4FYHP5VCDNSILWL","No","Success","2018-06-05 13:42:24","2018-06-05 13:42:54");
INSERT INTO vouchers VALUES("5","15","4","12","SQPMCVQJ7BSMT","0.00","0.00","20.00","ME1AP9ULRQQFK6RVSHGOZJ1ITC1WQM","No","Success","2018-06-05 13:46:52","2018-06-05 13:47:09");
INSERT INTO vouchers VALUES("6","7","","12","SNHTSUTGHURUT","0.00","0.00","10.00","AGWDSGC1YUKGOKULUZVBE25CT9G1LQ","No","Pending","2018-06-05 14:23:28","2018-06-05 14:23:28");
INSERT INTO vouchers VALUES("7","7","","12","DCPJXPMYVADTF","0.00","0.00","10.00","9QRFX5QUOJMKDFY4XTP1MZYZ1Y6U6F","No","Pending","2018-06-06 12:18:42","2018-06-06 12:18:42");
INSERT INTO vouchers VALUES("8","4","","12","PISIZP7OJV4V7","0.00","0.00","10.00","BETIAMXZVVP9UWEA6QCVPKAD9KSGFA","No","Pending","2018-06-07 11:56:32","2018-06-07 11:56:32");
INSERT INTO vouchers VALUES("9","4","","12","JMZWBPCZTPLQZ","0.00","0.00","10.33","B5WYZNQVYUD4HJCNCF48ICEJADR7D7","No","Pending","2018-06-07 13:02:48","2018-06-07 13:02:48");
INSERT INTO vouchers VALUES("10","4","","12","DYWZRW61R8H80","0.00","0.00","5.00","93ZZA53UCGTHLJHG4RELJBLAVBOFN7","No","Pending","2018-06-07 13:12:56","2018-06-07 13:12:56");
INSERT INTO vouchers VALUES("11","4","4","12","VLTNHQMRIRHIK","0.00","0.00","5.00","SKUXIHLXOONVFFF2HNELUSOAOTCAVH","Yes","Success","2018-06-07 13:14:16","2018-06-28 16:31:08");
INSERT INTO vouchers VALUES("12","4","4","12","ZDJPQXJ66ZHS1","0.00","0.00","2.22","LDTRBFQBQEVXEDZ1IEAEXHCXRT8QX6","Yes","Success","2018-06-07 13:38:35","2018-06-12 10:01:58");
INSERT INTO vouchers VALUES("13","7","","12","XYRSDHLKQ9GGT","0.00","0.00","10.00","FEBQ1ZJENICZVVUOZESSBM9SR8Z3YB","No","Pending","2018-06-07 14:17:39","2018-06-07 14:17:39");
INSERT INTO vouchers VALUES("14","24","","12","ZG3IRVAU3OIP6","0.00","0.00","5.00","G9S2YLGLYTZ4ABK8OOQV3XDZ0P3IBL","No","Pending","2018-06-07 15:30:28","2018-06-07 15:30:28");
INSERT INTO vouchers VALUES("15","7","","12","X51WKXWB077EO","0.00","0.00","10.00","KXKLCO5KIZ0NYP98NK6E51S2GZCWTW","No","Pending","2018-06-11 13:11:07","2018-06-11 13:11:07");
INSERT INTO vouchers VALUES("16","24","","12","I6ZY5NEGKRLGD","0.00","0.00","5.00","YDXPKL6OJX0HDPHFIGHWJOVKZPR0ZT","No","Pending","2018-06-11 14:13:03","2018-06-11 14:13:03");
INSERT INTO vouchers VALUES("17","4","4","12","PFCKSFUCQK63M","0.00","0.00","10.00","ZHZJ8DBPHKJBAAA1C5SCO2P7MU0JF1","Yes","Success","2018-06-12 10:29:00","2018-06-12 10:29:12");
INSERT INTO vouchers VALUES("18","24","","12","E6DYOZRKGTPQG","0.00","0.00","10.00","TGJNWR9KWUBNEYF6AUNG8PHYJW1869","No","Success","2018-06-12 13:47:54","2018-06-12 13:47:54");
INSERT INTO vouchers VALUES("19","24","","12","AYJMH63VGPUXX","0.00","0.00","10.00","CJB1RZ9W26CZK9OPDETIKYM7VWMDWL","No","Success","2018-06-23 17:33:14","2018-06-23 17:33:14");
INSERT INTO vouchers VALUES("20","7","","12","0EEWUNBXVBDJT","0.00","0.00","10.00","O9T3IEQOS5AXVUOT9IHFQP16M5F0MP","No","Success","2018-06-24 13:52:02","2018-06-24 13:52:02");
INSERT INTO vouchers VALUES("21","7","7","12","RRKS99YU8VPFS","0.00","0.00","10.00","CGVYXK6N0C9F0W1HVTGM9FB2XBMPCB","Yes","Success","2018-06-24 13:53:14","2018-06-24 14:01:49");
INSERT INTO vouchers VALUES("22","24","","12","IDIP1U8GT9P8S","0.00","0.00","10.00","VXO1MK5SZQJBXKUJAGEGN5KXZHFO14","No","Success","2018-06-24 14:42:49","2018-06-24 14:42:49");
INSERT INTO vouchers VALUES("23","24","","12","TOCFVRMRM4MIY","0.00","0.00","10.00","GMXJV2CFUAMBSL0I9BRSNTUZULQNQP","No","Success","2018-06-24 14:44:37","2018-06-24 14:44:37");
INSERT INTO vouchers VALUES("24","24","24","12","NSSAEIRGDV6PH","0.00","0.00","5.00","DMZWYPDJW5QB5B8GMJ9Q0R9PHOKX4Q","Yes","Success","2018-06-24 16:25:27","2018-06-24 16:27:15");
INSERT INTO vouchers VALUES("25","24","","12","SCNP9E2VAKCVJ","0.00","0.00","2.00","TYN1UZ4GUWNIQUROFLJCKVDJJUQRFV","No","Success","2018-06-24 16:32:32","2018-06-24 16:32:32");
INSERT INTO vouchers VALUES("26","24","","12","4JYYJE3MVUTWB","0.00","0.00","2.00","RX0HRBCKGD5VJQCQU7E2RDEO35P8BM","No","Success","2018-06-24 16:33:26","2018-06-24 16:33:26");
INSERT INTO vouchers VALUES("27","24","","12","YGCYMCDUC9NCF","0.00","0.00","5.00","OJBD6M4NBN7R5BOFABKX5TZCZSNMT0","No","Success","2018-06-24 16:35:05","2018-06-24 16:35:05");
INSERT INTO vouchers VALUES("28","24","","12","ZC7BEUKPKIZYD","0.00","0.00","5.00","XHPJBNY5T3K5LA8G78PPYBNVZ3DRTC","No","Success","2018-06-24 18:06:54","2018-06-24 18:06:54");
INSERT INTO vouchers VALUES("29","24","","12","ML5WRTM858V6S","0.00","0.00","5.00","ZRGYKD4IP1ASSWDXSCBBKXEXWCC1UO","No","Pending","2018-06-24 18:08:22","2018-07-10 12:35:54");
INSERT INTO vouchers VALUES("30","24","","12","BWBIVE9ZHBN55","0.00","0.00","5.00","HELI92C4KXYXJLLWRPU2GAYFNKQ6EL","No","Success","2018-06-24 18:09:02","2018-06-24 18:09:02");
INSERT INTO vouchers VALUES("31","24","24","12","GCZUE7PPNDKQG","0.00","0.00","10.00","IBLDYHHBZDMIUOKI2ZYBM21NNGREHE","Yes","Success","2018-06-25 15:50:05","2018-06-25 16:19:55");
INSERT INTO vouchers VALUES("32","4","4","12","GAGZOTRMDZCBN","0.00","0.00","45.00","EBWTL8YS1TA1RBDVCP57TG5SE6ZVG2","Yes","Success","2018-06-28 11:58:59","2018-06-28 16:18:12");
INSERT INTO vouchers VALUES("33","35","35","12","WPPFUJNSTXFZB","0.00","0.00","10.00","MPL49YHNG3FAVWG8XDLHMXDEDBPZEJ","Yes","Success","2018-07-02 15:57:56","2018-07-02 16:09:30");
INSERT INTO vouchers VALUES("34","35","35","12","ZEQQOAJXUUNG4","0.00","0.00","5.00","A3H6JENYV1CPDTKBNPRJZ8I8DFMNBM","Yes","Success","2018-07-02 15:58:25","2018-07-02 16:32:54");
INSERT INTO vouchers VALUES("35","15","","12","RJ1QVBW76LWEC","0.00","0.00","12.00","OXNF01OIJNW2ZANAMCQ10WJGUTTNEE","No","Success","2018-07-04 11:43:46","2018-07-04 11:43:46");
INSERT INTO vouchers VALUES("36","15","","12","ZBXSMCYWOONYC","0.00","0.00","12.00","UEAUFADPTGMB2CLNKODMIUN30OKA4L","No","Success","2018-07-04 11:45:27","2018-07-04 11:45:27");
INSERT INTO vouchers VALUES("37","15","","12","ACJJKB0FTLCWT","0.00","0.00","5.00","GTSTFOJIML2Y61U2HB9N1XNCDGNRYN","No","Success","2018-07-04 12:00:00","2018-07-04 12:00:00");
INSERT INTO vouchers VALUES("38","15","","12","0QZ6CTEIGRVKN","0.00","0.00","10.00","FVSXABX9TB4PU3R2097HQPAMRB0KHK","No","Success","2018-07-04 12:26:27","2018-07-04 12:26:27");
INSERT INTO vouchers VALUES("39","15","","12","X8YQ1VX9JHMJJ","0.00","0.00","14.00","LZ9UQO4MFXI9KO5LQBJGLHREXLESJZ","No","Success","2018-07-04 12:28:25","2018-07-04 12:28:25");
INSERT INTO vouchers VALUES("40","15","","12","TEKGWJ4PTH8M2","0.00","0.00","11.00","E6MQ7XG8ECQF7DQ1QSG7MMTRTKIHFW","No","Success","2018-07-04 12:50:50","2018-07-04 12:50:50");
INSERT INTO vouchers VALUES("41","15","","12","NF02ASBN9OHET","0.00","0.00","15.00","ZPO0PFYDGZRNIM9C2U2NRBSTM5ONJ1","No","Success","2018-07-05 14:42:49","2018-07-05 14:42:49");
INSERT INTO vouchers VALUES("42","15","","12","ER1DFQOZIJUS0","0.00","0.00","13.00","JBLSZENU67E6IHIBZVGVQV7CH9CE08","No","Success","2018-07-05 15:50:17","2018-07-05 15:50:17");
INSERT INTO vouchers VALUES("43","15","","12","BUCWXG7IC2UPL","0.00","0.00","6.00","UVITSPB3JWFAWMUDLANKXQF8EMSLZ9","No","Success","2018-07-05 16:05:25","2018-07-05 16:05:25");
INSERT INTO vouchers VALUES("44","20","","12","ZWGCOT33BVW5O","0.00","0.00","12.00","TQSEKTLR4VNKYXWXWUPD9VK8H3JULL","No","Success","2018-07-05 16:08:53","2018-07-05 16:08:53");
INSERT INTO vouchers VALUES("45","20","20","12","HUIGBO6QECYZD","0.00","0.00","13.00","7AHLICS5MJHRHWX7ANZAZLJ0S0S7YZ","Yes","Success","2018-07-05 16:09:23","2018-07-11 18:16:53");
INSERT INTO vouchers VALUES("46","15","","12","EELNOYEQAOLFJ","0.00","0.00","7.00","M5PKYCV2JWFZSKCL6LFLS5ZPPDXAQJ","No","Success","2018-07-05 16:17:54","2018-07-05 16:17:54");
INSERT INTO vouchers VALUES("47","15","15","12","CQVFPLOPNA6KH","0.00","0.00","7.00","H3IANFNUWMDKIJANOGT5RRKOCWZQEF","Yes","Success","2018-07-05 16:22:30","2018-07-16 14:04:32");
INSERT INTO vouchers VALUES("48","7","","12","WRP434WGFOUF4","0.00","0.00","15.00","X4CB4FJENYC34WSOAQWLZO7DZZJYK6","No","Success","2018-07-05 16:52:02","2018-07-05 16:52:02");
INSERT INTO vouchers VALUES("49","15","","12","QQXSF0FNNJR91","0.00","0.00","5.00","KWVCK9XZRG1ALB4DN8IGHGP1Z0PGOK","No","Success","2018-07-05 17:08:23","2018-07-05 17:08:23");
INSERT INTO vouchers VALUES("50","20","20","12","NNDEEIDTTCDTI","0.38","7.00","19.00","6YGJEFZAXG935VKQHQUGXRSOSJL0LN","Yes","Success","2018-07-05 17:47:40","2018-07-11 18:44:32");
INSERT INTO vouchers VALUES("51","15","","12","ERIDU7VROZ99E","0.24","7.00","12.00","DPBUA6A37O6JWFGQPI2RAJIHNMUNQX","No","Success","2018-07-05 17:53:32","2018-07-05 17:53:32");
INSERT INTO vouchers VALUES("52","31","31","12","JOW5RXZ8XOJ1O","0.38","7.00","19.00","O2Z2UCYQEDCLRKW0TVHS8QR2L8UR0U","Yes","Success","2018-07-07 15:30:22","2018-07-07 17:08:10");
INSERT INTO vouchers VALUES("53","31","31","26","OKET7LYJW4FO8","0.39","4.00","13.00","IYZ2EMPAG1SCEH0ICXP3MB07Q4JASC","Yes","Success","2018-07-07 16:55:47","2018-07-07 17:06:45");
INSERT INTO vouchers VALUES("54","31","31","12","AHBVVSTOY5NXX","0.22","7.00","11.00","AUUYJWIC5R0XGTLFMWMIBBTHEHI3LU","Yes","Success","2018-07-07 17:13:49","2018-07-07 17:14:35");
INSERT INTO vouchers VALUES("55","31","31","12","PP6N4JYGIBCAL","0.66","7.00","33.00","Z1YZ6SGQU49RP0QVXXBVRPL9YART6X","Yes","Success","2018-07-07 17:19:45","2018-07-07 17:20:59");
INSERT INTO vouchers VALUES("56","35","29","12","GCOF3DE3HWQZV","0.20","7.00","10.00","3SIXQL7AQKYCQGYQTJCLBSKUI0AKFP","Yes","Pending","2018-07-08 13:47:20","2018-07-08 13:51:27");
INSERT INTO vouchers VALUES("57","31","","12","HOBT2T7QCUO3S","0.24","7.00","12.00","3PZQTDJS0NWC0FJBAHCFKD2URGF8SF","No","Pending","2018-07-08 14:18:03","2018-07-08 14:30:06");
INSERT INTO vouchers VALUES("58","31","","26","H51XC4YIUOHFS","0.51","4.00","17.00","PDNYKQV8VUV7UK3Q5RBX3BGG77SJAT","No","Pending","2018-07-08 14:33:01","2018-07-08 14:39:55");
INSERT INTO vouchers VALUES("59","31","31","12","LHGJVPMLM2ZJN","0.28","7.00","14.00","TT7HFXDZO8D9IL6DB5VEP1WLD7BX8H","Yes","Success","2018-07-08 14:48:27","2018-07-08 14:49:00");
INSERT INTO vouchers VALUES("60","35","29","12","AX4FPMW2IAYU5","0.20","7.00","10.00","LN7TV8FZEEKAPUYQ87PUXMUEWC3CEO","Yes","Pending","2018-07-08 16:15:50","2018-07-08 16:18:32");
INSERT INTO vouchers VALUES("61","35","35","12","U7JUZ8YDFZPT5","0.10","7.00","5.00","XEFLRCW7TRUGEALYBRENFAQ5L9QL8K","Yes","Success","2018-07-08 16:31:52","2018-07-08 16:32:05");
INSERT INTO vouchers VALUES("62","35","35","12","4Y5ZS7ABIDG58","0.10","7.00","5.00","O2OFCIIIETZRGDDTDT8528JTECHTFD","Yes","Success","2018-07-08 16:32:36","2018-07-08 16:33:04");
INSERT INTO vouchers VALUES("63","35","35","12","XVFUFV6ELJW2V","0.20","7.00","10.00","EJJLG0CYMEW1ZYR2WWEP9RBJDZR5FF","Yes","Pending","2018-07-08 16:37:47","2018-07-08 16:45:19");
INSERT INTO vouchers VALUES("64","24","","14","FF7OWIBWVYWVA","0.30","7.00","10.00","TTGKECSXJ2NQNOHHG9ARU84LROTTND","No","Success","2018-07-09 12:45:10","2018-07-09 12:45:10");
INSERT INTO vouchers VALUES("65","31","","16","RHWBF7JU9GLK3","0.00","0.00","11.00","XOPO2LNOHBOFBT2WSEDM69KAT5IKOO","No","Success","2018-07-10 13:16:16","2018-07-10 18:52:48");
INSERT INTO vouchers VALUES("66","15","15","12","5YA0APLCIRAY3","0.44","7.00","22.00","VJCIWE0V7XGLDOCGENWYOFYRLDF8IZ","Yes","Success","2018-07-10 18:53:44","2018-07-10 19:41:33");
INSERT INTO vouchers VALUES("67","15","15","12","SMDLMX38QSJBK","0.62","7.00","31.00","1RWK0W7H4WATBDAAXI85X4YPHZDUPJ","Yes","Success","2018-07-10 18:54:36","2018-07-10 19:42:22");
INSERT INTO vouchers VALUES("68","15","15","12","LLRG7QIYXE7T9","0.44","7.00","22.00","IXJSRXQPCFRMRJ2YXHZIFHK6VOM6ZB","Yes","Success","2018-07-10 18:56:08","2018-07-10 18:56:45");
INSERT INTO vouchers VALUES("69","31","","14","LNEUS5WHTKYU3","0.39","7.00","13.00","AGNXOQELXHUUWWOQIHXDILUL7P9J9Q","No","Success","2018-07-10 19:43:00","2018-07-10 19:51:17");
INSERT INTO vouchers VALUES("70","41","29","12","PUZKV4JNM0QAH","0.10","5.00","5.00","3KZY7ERNMLCKFCEZIT5TKSVVQP9DVV","Yes","Success","2018-07-11 16:22:47","2018-07-11 16:48:16");
INSERT INTO vouchers VALUES("71","41","","13","N8WJCYTVZ6YDP","0.01","0.00","1.00","AN9521OEWXN59W6XNRSSMJCRWMXQ1O","No","Pending","2018-07-11 16:25:25","2018-07-11 16:56:12");
INSERT INTO vouchers VALUES("72","4","4","12","ZZ0FNHOCKLSSO","0.20","5.00","10.00","Q5NPT6SIM5U4RAQCUMQSFQEDXLCHXJ","Yes","Pending","2018-07-11 16:58:14","2018-07-11 17:03:14");
INSERT INTO vouchers VALUES("73","15","","12","T8SRTTG3VW70K","2.22","5.00","111.00","YZ8HZ95RS37EDQFB61TCIJOR4NUBNJ","No","Success","2018-07-11 17:40:12","2018-07-11 17:40:12");
INSERT INTO vouchers VALUES("74","15","","14","2X9GTV1HZKF2M","1.08","7.00","36.00","BQ26N1A362Z3V0VZAHV0D8SBAQ2EUH","No","Success","2018-07-11 18:30:02","2018-07-11 18:30:02");
INSERT INTO vouchers VALUES("75","20","","12","MSPMD0DPIJAWE","0.22","5.00","11.00","X9EXOAABQT00SU6UJN1BNWQQDLB90W","No","Pending","2018-07-11 18:38:05","2018-07-11 18:45:03");
INSERT INTO vouchers VALUES("76","20","20","12","BNV9WDA8PWBHS","0.44","5.00","22.00","EIEIB1QGLMLTBLGJGVJTOETEXF4YRF","Yes","Success","2018-07-11 18:38:14","2018-07-11 18:41:10");
INSERT INTO vouchers VALUES("77","20","","12","TGAWKFDF6ZMPJ","0.14","5.00","7.00","UBFSDN7ZFPHQNYGTF19PJAZGVF5SDG","No","Success","2018-07-11 18:57:26","2018-07-11 18:57:26");
INSERT INTO vouchers VALUES("78","20","20","14","QVD01858SF0QT","0.27","7.00","9.00","ZYKFFMDPW4W0QTWCVAJXUP68H4OLII","Yes","Pending","2018-07-11 18:58:07","2018-07-11 19:02:34");
INSERT INTO vouchers VALUES("79","41","29","12","XUJQHMO3VCJPB","0.10","5.00","5.00","EFBM0B2DEA7XNMGOBUFGNALB4ZSNFW","Yes","Pending","2018-07-12 12:39:00","2018-07-12 12:47:04");
INSERT INTO vouchers VALUES("80","29","41","12","FPU7BAKQWIHEF","0.12","5.00","6.00","CYS7FV007Q1LO8QEBRS2VGXBRJF0OH","Yes","Success","2018-07-12 12:51:29","2018-07-12 12:58:11");
INSERT INTO vouchers VALUES("81","41","","12","PXOTCX7UZTTEH","0.14","5.00","7.00","8BQGL3SISZULPD6Z75XQCI8GEEIIFW","No","Success","2018-07-12 13:39:27","2018-07-12 13:39:27");
INSERT INTO vouchers VALUES("82","41","29","12","LJO2H5BZ96GDX","0.14","5.00","7.00","HNESADYI872I8OKPSCAR0UITEYV2ZO","Yes","Success","2018-07-12 14:33:51","2018-07-12 16:22:00");
INSERT INTO vouchers VALUES("83","41","29","13","0XFG6YMQBJCHR","0.05","0.00","5.00","LTK388PXIVIIGWXHS3GSBFO8KSE3TM","Yes","Pending","2018-07-12 14:45:01","2018-07-12 14:51:02");
INSERT INTO vouchers VALUES("84","15","15","12","LB4TI6NXZRMSD","0.28","5.00","14.00","B1WSCPV1GGHGWKQQEXAAPMTVVEQ6R3","Yes","Success","2018-07-12 15:23:32","2018-07-12 15:23:53");
INSERT INTO vouchers VALUES("85","20","20","12","5ZBOXXCIWE2TD","60.00","5.00","3000.00","YH7P9LKTRUKFXZFJGVO9ZBJN9ZCDTE","Yes","Success","2018-07-12 18:51:55","2018-07-12 18:56:02");
INSERT INTO vouchers VALUES("86","35","","12","FS945XU4BFHYE","0.10","5.00","5.00","ENBMB0KIYRQDJJRZBG0NVRZXHNN29X","No","Success","2018-07-15 13:26:48","2018-07-15 13:26:48");
INSERT INTO vouchers VALUES("87","35","","12","ULU4LNDUPFPFP","20.00","5.00","1000.00","1ADCSAXERWR7CTHOU9WNS14RZSJKJK","No","Success","2018-07-15 13:52:55","2018-07-15 13:52:55");
INSERT INTO vouchers VALUES("88","15","","12","IHRI1OWOTEEKT","20.00","5.00","1000.00","BXBBVDLEALB5XUJZC5L7U2PROPFW6L","No","Success","2018-07-16 13:42:50","2018-07-16 13:42:50");
INSERT INTO vouchers VALUES("89","15","","12","WCGWD9IZ8CW8S","40.00","5.00","2000.00","1O1NTUKFKVAQSTSVLAOI5YI0Z2TIZY","No","Pending","2018-07-16 13:44:15","2018-07-16 13:46:36");
INSERT INTO vouchers VALUES("90","20","20","14","MWQLB4YGCUHXR","900.00","200.00","3000.00","BUYZMOCNGJ9FRCH8QAZ2M6S3X4TR6T","Yes","Success","2018-07-16 16:59:38","2018-07-16 17:01:12");
INSERT INTO vouchers VALUES("91","15","","12","CZMLGJXDEPDGR","2.00","5.00","100.00","JZZCVYRRDBB0ZIZOMVL0Z2GFWY8QFL","No","Success","2018-07-18 15:29:50","2018-07-18 15:29:50");
INSERT INTO vouchers VALUES("92","15","15","12","JJKDG1XGW5QQO","2.22","5.00","111.00","SGCFK8NGDFG4687XTKFGBIENKB7UQS","Yes","Success","2018-07-18 17:14:54","2018-07-18 18:11:01");
INSERT INTO vouchers VALUES("93","20","","12","DKRRCACAFXURP","1.00","5.00","50.00","BWMQZW2QUSJKEGGDSIEQZPA2NC8QSS","No","Success","2018-07-18 18:10:36","2018-07-18 18:10:36");
INSERT INTO vouchers VALUES("94","15","15","12","HDCVSCEXAA2BD","0.30","5.00","15.00","KMURGUZEH2OONBJBANDZQBUK2KHMXX","Yes","Success","2018-07-19 12:36:16","2018-07-19 12:41:15");





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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

INSERT INTO wallets VALUES("4","4","12","3259.63","Yes","2018-06-03 14:45:02","2018-07-21 11:38:14");
INSERT INTO wallets VALUES("5","5","12","4434.45","No","2018-06-03 14:45:25","2018-07-15 15:01:35");
INSERT INTO wallets VALUES("6","6","12","4822.50","Yes","2018-06-03 14:46:50","2018-06-11 10:12:33");
INSERT INTO wallets VALUES("7","5","14","10001.10","No","2018-06-03 14:47:16","2018-07-15 15:01:35");
INSERT INTO wallets VALUES("8","5","26","1200.00","No","2018-06-03 14:55:53","2018-07-15 15:01:35");
INSERT INTO wallets VALUES("9","7","12","3651.86","Yes","2018-06-03 15:03:17","2018-07-21 18:54:02");
INSERT INTO wallets VALUES("15","10","12","9244.93","No","2018-06-04 09:42:14","2018-07-11 16:55:25");
INSERT INTO wallets VALUES("16","14","12","0.00","Yes","2018-06-04 10:00:49","2018-06-04 10:01:33");
INSERT INTO wallets VALUES("17","15","12","22758.80","Yes","2018-06-04 10:21:24","2018-07-21 18:24:41");
INSERT INTO wallets VALUES("18","7","13","20.46","No","2018-06-04 10:58:49","2018-07-21 18:54:02");
INSERT INTO wallets VALUES("19","15","13","11004.48","No","2018-06-04 11:11:35","2018-07-21 18:24:40");
INSERT INTO wallets VALUES("24","20","12","21676.01","Yes","2018-06-05 11:09:46","2018-07-21 11:02:52");
INSERT INTO wallets VALUES("25","15","14","256.74","No","2018-06-05 11:21:57","2018-07-21 18:24:40");
INSERT INTO wallets VALUES("26","20","14","70015.73","No","2018-06-05 11:22:22","2018-07-21 11:02:52");
INSERT INTO wallets VALUES("27","21","12","0.00","Yes","2018-06-05 12:17:11","2018-06-05 15:48:25");
INSERT INTO wallets VALUES("28","22","12","0.00","Yes","2018-06-05 14:00:05","2018-06-05 14:00:05");
INSERT INTO wallets VALUES("29","7","24","0.00","No","2018-06-05 14:21:08","2018-07-21 18:54:02");
INSERT INTO wallets VALUES("30","5","13","-50.42","Yes","2018-06-05 16:03:45","2018-07-15 15:01:35");
INSERT INTO wallets VALUES("32","24","13","-5.63","No","2018-06-06 14:21:54","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("33","7","14","43.91","No","2018-06-06 14:49:40","2018-07-21 18:54:02");
INSERT INTO wallets VALUES("34","24","12","470.55","Yes","2018-06-06 15:32:52","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("35","24","14","427.73","No","2018-06-06 15:55:16","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("36","24","16","-4.25","No","2018-06-07 12:23:49","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("42","29","12","10108.87","Yes","2018-06-07 13:42:54","2018-07-19 12:24:40");
INSERT INTO wallets VALUES("43","29","16","39.80","No","2018-06-07 13:51:42","2018-07-19 12:24:40");
INSERT INTO wallets VALUES("44","24","26","0.00","No","2018-06-10 12:35:50","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("45","20","26","100.00","No","2018-06-10 14:52:05","2018-07-21 11:02:52");
INSERT INTO wallets VALUES("46","24","20","0.00","No","2018-06-10 15:29:01","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("47","24","23","0.00","No","2018-06-10 15:33:59","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("48","24","19","0.00","No","2018-06-11 11:27:25","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("49","29","14","2.00","No","2018-06-13 13:29:57","2018-07-19 12:24:40");
INSERT INTO wallets VALUES("50","24","15","0.00","No","2018-06-13 14:33:41","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("51","4","13","22.64","No","2018-06-21 12:06:21","2018-07-21 11:38:14");
INSERT INTO wallets VALUES("53","24","17","0.00","No","2018-06-24 17:21:49","2018-07-19 18:17:08");
INSERT INTO wallets VALUES("54","31","13","18473.84","Yes","2018-06-25 18:11:30","2018-07-10 18:48:59");
INSERT INTO wallets VALUES("56","15","21","1200.00","No","2018-06-26 11:25:22","2018-07-21 18:24:40");
INSERT INTO wallets VALUES("57","4","21","600.00","No","2018-06-26 11:30:20","2018-07-21 11:38:14");
INSERT INTO wallets VALUES("58","33","12","46.61","Yes","2018-06-26 17:03:20","2018-07-15 16:51:07");
INSERT INTO wallets VALUES("59","33","19","0.00","No","2018-06-26 17:04:31","2018-07-15 16:51:07");
INSERT INTO wallets VALUES("61","33","14","1.70","No","2018-06-27 16:33:32","2018-07-15 16:51:07");
INSERT INTO wallets VALUES("62","31","12","57347.74","No","2018-07-01 15:19:39","2018-07-10 18:48:59");
INSERT INTO wallets VALUES("63","20","13","15000.00","No","2018-07-01 15:34:14","2018-07-21 11:02:52");
INSERT INTO wallets VALUES("65","35","13","59.60","No","2018-07-02 11:25:06","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("66","29","13","43.52","No","2018-07-02 12:04:16","2018-07-19 12:24:40");
INSERT INTO wallets VALUES("67","36","13","0.00","Yes","2018-07-02 12:13:41","2018-07-02 12:13:41");
INSERT INTO wallets VALUES("68","37","13","0.00","Yes","2018-07-02 12:20:54","2018-07-02 12:20:54");
INSERT INTO wallets VALUES("69","35","12","41293.00","Yes","2018-07-02 12:37:50","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("70","35","18","0.00","No","2018-07-02 12:40:35","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("71","38","13","0.00","Yes","2018-07-03 16:59:45","2018-07-03 16:59:45");
INSERT INTO wallets VALUES("72","35","16","10.00","No","2018-07-03 17:20:31","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("73","31","14","22.36","No","2018-07-03 18:41:42","2018-07-10 19:51:17");
INSERT INTO wallets VALUES("74","31","26","1207.30","No","2018-07-05 19:48:54","2018-07-10 18:48:59");
INSERT INTO wallets VALUES("75","15","26","206244.22","No","2018-07-05 19:52:16","2018-07-21 18:24:40");
INSERT INTO wallets VALUES("76","35","26","1.00","No","2018-07-08 12:46:07","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("77","29","26","399.43","No","2018-07-08 12:47:59","2018-07-19 12:24:40");
INSERT INTO wallets VALUES("78","31","16","133.00","No","2018-07-08 14:54:11","2018-07-10 18:52:48");
INSERT INTO wallets VALUES("79","35","32","0.82","No","2018-07-09 13:09:41","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("80","31","21","11.00","No","2018-07-09 15:48:16","2018-07-10 18:48:59");
INSERT INTO wallets VALUES("81","39","13","13.00","Yes","2018-07-09 16:01:57","2018-07-12 14:33:53");
INSERT INTO wallets VALUES("82","39","12","-28.72","No","2018-07-09 16:01:58","2018-07-12 14:33:53");
INSERT INTO wallets VALUES("83","35","14","0.00","No","2018-07-09 18:33:58","2018-07-19 18:09:20");
INSERT INTO wallets VALUES("84","40","13","0.00","Yes","2018-07-10 13:37:32","2018-07-10 13:37:32");
INSERT INTO wallets VALUES("85","41","13","13.54","Yes","2018-07-11 12:10:25","2018-07-12 16:45:35");
INSERT INTO wallets VALUES("86","10","13","0.00","Yes","2018-07-11 12:28:55","2018-07-11 16:55:25");
INSERT INTO wallets VALUES("87","41","12","4.48","No","2018-07-11 13:46:51","2018-07-12 17:07:46");
INSERT INTO wallets VALUES("88","41","14","0.00","No","2018-07-11 14:26:38","2018-07-12 12:14:56");
INSERT INTO wallets VALUES("89","41","31","0.00","No","2018-07-11 18:55:36","2018-07-12 12:14:56");
INSERT INTO wallets VALUES("90","42","13","0.00","Yes","2018-07-12 14:17:47","2018-07-12 14:17:47");
INSERT INTO wallets VALUES("91","33","13","100.00","No","2018-07-15 12:47:29","2018-07-15 16:51:07");
INSERT INTO wallets VALUES("92","43","12","0.00","Yes","2018-07-21 12:35:03","2018-07-21 12:35:12");
INSERT INTO wallets VALUES("94","45","12","0.00","Yes","2018-07-21 16:59:17","2018-07-21 16:59:29");





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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

INSERT INTO withdrawals VALUES("4","7","12","3","FW4XCP3GXR5KM","1.00","10.00","9.00","20.00","lenin.rock@gmail.com","Pending","2018-06-05 14:22:12","2018-06-05 14:22:12");
INSERT INTO withdrawals VALUES("5","24","12","3","AT8RZZPKD7XPL","0.50","10.00","-0.50","10.00","borna@yahoo.com","Pending","2018-06-07 11:28:52","2018-06-07 11:28:52");
INSERT INTO withdrawals VALUES("6","24","13","3","M8QGGUDPQ8UJT","0.72","18.00","-9.72","9.00","borna@yahoo.com","Pending","2018-06-07 11:58:47","2018-06-07 11:58:47");
INSERT INTO withdrawals VALUES("7","4","12","1","6JIFPK1V0CNHE","0.50","10.00","-0.50","10.00","tuhin.techvill@gmail.com","Pending","2018-06-07 14:23:32","2018-06-07 14:23:32");
INSERT INTO withdrawals VALUES("8","24","12","3","BOY5T6401GMTF","1.00","10.00","9.00","20.00","borna@yahoo.com","Pending","2018-06-11 10:45:13","2018-06-13 13:03:54");
INSERT INTO withdrawals VALUES("9","5","12","3","NIBRJDSJR8UC0","0.50","10.00","-0.50","10.00","aminul.techvill@gmail.com","Pending","2018-06-25 12:06:32","2018-06-25 12:06:32");
INSERT INTO withdrawals VALUES("10","24","12","3","KIHDUJAAK6IH0","5.00","10.00","85.00","100.00","borna@yahoo.com","Pending","2018-06-25 18:32:30","2018-06-25 18:32:30");
INSERT INTO withdrawals VALUES("11","24","12","3","ZJ5SCKMZQTWZY","0.50","10.00","-0.50","10.00","borna@yahoo.com","Pending","2018-06-25 18:37:33","2018-06-25 18:37:33");
INSERT INTO withdrawals VALUES("12","4","12","1","IUGNQI8MSSYJP","0.50","10.00","-0.50","10.00","tuhin.techvill@gmail.com","Success","2018-06-28 13:25:49","2018-07-02 18:46:05");
INSERT INTO withdrawals VALUES("13","35","12","1","JFLEH64KWHDZR","0.25","10.00","-5.25","5.00","borna.techvill@gmail.com","Success","2018-07-02 16:46:24","2018-07-02 18:45:49");
INSERT INTO withdrawals VALUES("14","4","12","3","AUUEQQVHLNBHZ","0.50","10.00","-0.50","10.00","tuhin.techvill@gmail.com","Pending","2018-07-02 16:55:57","2018-07-02 16:55:57");
INSERT INTO withdrawals VALUES("15","35","12","3","PNLBATNHAESOH","0.50","10.00","-0.50","10.00","borna.techvill@gmail.com","Success","2018-07-02 17:00:13","2018-07-02 18:45:25");
INSERT INTO withdrawals VALUES("16","35","12","3","9KEINHOFLIGVH","0.10","10.00","-8.10","2.00","borna.techvill@gmail.com","Success","2018-07-02 17:08:02","2018-07-02 17:15:09");
INSERT INTO withdrawals VALUES("17","35","12","1","4Q0LEYRJXVKLX","0.10","10.00","-8.10","2.00","borna.techvill@gmail.com","Pending","2018-07-03 14:32:17","2018-07-03 14:32:17");
INSERT INTO withdrawals VALUES("18","35","13","3","BBNDVQTKOCHQO","0.16","18.00","-16.16","2.00","borna.techvill@gmail.com","Pending","2018-07-03 14:37:57","2018-07-03 14:37:57");
INSERT INTO withdrawals VALUES("19","35","13","3","Z9BOQY0XIKONW","0.24","18.00","-15.24","3.00","borna.techvill@gmail.com","Pending","2018-07-03 14:41:33","2018-07-03 14:41:33");
INSERT INTO withdrawals VALUES("20","4","12","1","HPOEV6UMPOTOJ","0.70","10.00","3.30","14.00","tuhin.techvill@gmail.com","Pending","2018-07-03 16:25:25","2018-07-03 16:25:25");
INSERT INTO withdrawals VALUES("21","15","12","2","XKSAJ0PX3K40S","5.00","10.00","85.00","100.00","parvez.techvill@gmail.com","Pending","2018-07-04 12:02:52","2018-07-04 12:02:52");
INSERT INTO withdrawals VALUES("22","15","12","2","IHLG2UVTEIP3S","0.25","10.00","-5.25","5.00","parvez.techvill@gmail.com","Pending","2018-07-04 12:03:51","2018-07-04 12:03:51");
INSERT INTO withdrawals VALUES("23","31","12","1","SPKAZEFWCSFJ0","0.70","10.00","3.30","14.00","milon.techvill@gmail.com","Pending","2018-07-07 13:33:08","2018-07-07 13:33:08");
INSERT INTO withdrawals VALUES("24","31","12","1","T29ZOPODECOXB","0.80","10.00","5.20","16.00","milon.techvill@gmail.com","Pending","2018-07-07 14:01:56","2018-07-07 14:01:56");
INSERT INTO withdrawals VALUES("25","31","12","1","KUQKHPJXPXBKZ","0.70","10.00","3.30","14.00","milon.techvill@gmail.com","Pending","2018-07-07 14:11:11","2018-07-07 14:11:11");
INSERT INTO withdrawals VALUES("26","31","12","3","KH9VMWWLVA12I","0.75","10.00","4.25","15.00","milon.techvill@gmail.com","Pending","2018-07-07 14:12:01","2018-07-07 14:12:01");
INSERT INTO withdrawals VALUES("27","35","12","1","OEHLQK9LMOASO","0.10","10.00","-8.10","2.00","borna.techvill@gmail.com","Pending","2018-07-08 17:10:42","2018-07-08 17:10:42");
INSERT INTO withdrawals VALUES("28","29","12","3","GNQR4THGBP1II","0.15","10.00","-7.15","3.00","mahfuzasinthy@gmail.com","Pending","2018-07-08 17:17:07","2018-07-08 17:17:07");
INSERT INTO withdrawals VALUES("29","29","12","6","EGQBC00VXH8WB","0.20","10.00","-6.20","4.00","mahfuza","Pending","2018-07-08 17:21:34","2018-07-08 17:21:34");
INSERT INTO withdrawals VALUES("30","29","12","3","NDUOJPLNDJJWA","0.10","10.00","-8.10","2.00","mahfuzasinthy@gmail.com","Pending","2018-07-08 18:25:54","2018-07-08 18:25:54");
INSERT INTO withdrawals VALUES("31","15","13","3","NVP1V0IUUYXAK","0.88","18.00","-7.88","11.00","parvez.techvill@gmail.com","Pending","2018-07-08 18:36:39","2018-07-08 18:36:39");
INSERT INTO withdrawals VALUES("32","31","13","3","9AJDGZML5C11W","7.92","18.00","73.08","99.00","parvez.techvill@gmail.com","Pending","2018-07-08 18:45:36","2018-07-08 18:45:36");
INSERT INTO withdrawals VALUES("33","29","12","3","6YVMSZWJHYBMF","0.25","10.00","-5.25","5.00","mahfuzasinthy@gmail.com","Pending","2018-07-08 18:54:44","2018-07-08 18:54:44");
INSERT INTO withdrawals VALUES("34","29","14","3","FYU499L9KR4Z9","0.00","0.00","10.00","10.00","mahfuzasinthy@gmail.com","Pending","2018-07-09 19:17:33","2018-07-09 19:17:33");
INSERT INTO withdrawals VALUES("35","35","32","3","2UBRKAQ8MGU3U","0.18","0.00","8.82","9.00","borna.techvill@gmail.com","Pending","2018-07-10 11:50:20","2018-07-10 11:50:20");
INSERT INTO withdrawals VALUES("36","35","12","3","A5Z77IWGOUKBQ","0.50","10.00","-0.50","10.00","borna.techvill@gmail.com","Blocked","2018-07-10 12:02:12","2018-07-10 12:07:41");
INSERT INTO withdrawals VALUES("37","4","13","3","IHRCKARNUTB3R","1.28","18.00","-3.28","16.00","tuhin.techvill@gmail.com","Pending","2018-07-11 14:13:53","2018-07-11 14:13:53");
INSERT INTO withdrawals VALUES("38","4","13","3","JZESCVGT5VIGD","1.28","18.00","-3.28","16.00","tuhin.techvill@gmail.com","Pending","2018-07-11 14:14:15","2018-07-11 14:14:15");
INSERT INTO withdrawals VALUES("39","41","12","3","SVL8DUKDQKSSZ","0.50","10.00","-0.50","10.00","borna.techvill@gmail.com","Blocked","2018-07-11 17:28:11","2018-07-11 17:35:58");
INSERT INTO withdrawals VALUES("40","41","13","6","VNGIDQSIIGX3W","1.28","18.00","-3.28","16.00","Borna","Pending","2018-07-11 17:52:11","2018-07-11 17:52:11");
INSERT INTO withdrawals VALUES("41","15","12","3","007JVGO4MHZSE","900.00","10.00","9090.00","10000.00","parvez.techvill@gmail.com","Success","2018-07-12 16:31:05","2018-07-12 16:34:37");
INSERT INTO withdrawals VALUES("42","15","12","3","I3AMXSFVVTQ8N","450.00","10.00","4540.00","5000.00","parvez.techvill@gmail.com","Pending","2018-07-12 16:35:30","2018-07-12 16:35:30");
INSERT INTO withdrawals VALUES("43","24","12","3","UXMV6ALEDYSWF","0.90","10.00","-0.90","10.00","borna@yahoo.com","Pending","2018-07-16 13:48:57","2018-07-16 13:48:57");
INSERT INTO withdrawals VALUES("47","20","14","6","9ZWIS3LNCGJ0G","512.00","500.00","2188.00","3200.00","test","Pending","2018-07-16 16:56:22","2018-07-16 16:56:22");
INSERT INTO withdrawals VALUES("48","20","14","6","FLUL8QWHE5LLZ","560.00","500.00","2440.00","3500.00","test","Pending","2018-07-16 17:29:30","2018-07-16 17:29:30");
INSERT INTO withdrawals VALUES("49","15","12","3","Z72W9NSVEQW74","0.50","7.00","2.50","10.00","parvez.techvill@gmail.com","Pending","2018-07-18 10:49:42","2018-07-18 10:49:42");
INSERT INTO withdrawals VALUES("50","15","14","3","WBPDCQ8YVQHFS","19.20","500.00","-399.20","120.00","parvez.techvill@gmail.com","Pending","2018-07-18 12:24:48","2018-07-18 12:24:48");
INSERT INTO withdrawals VALUES("51","15","12","3","GA0L0POUIJNYF","0.65","7.00","5.35","13.00","parvez.techvill@gmail.com","Pending","2018-07-18 17:21:31","2018-07-18 17:21:31");
INSERT INTO withdrawals VALUES("52","15","12","3","JJSPYFAFH58DK","1.10","7.00","13.90","22.00","parvez.techvill@gmail.com","Pending","2018-07-18 19:03:53","2018-07-18 19:03:53");
INSERT INTO withdrawals VALUES("53","15","12","3","V6ZQKCMHIASEW","0.55","7.00","3.45","11.00","parvez.techvill@gmail.com","Pending","2018-07-19 13:37:14","2018-07-19 13:37:14");
INSERT INTO withdrawals VALUES("54","15","12","3","FN7ZRVA7ZJ4LY","50.00","7.00","943.00","1000.00","parvez.techvill@gmail.com","Pending","2018-07-19 13:37:35","2018-07-19 13:37:35");
INSERT INTO withdrawals VALUES("55","15","12","3","NEHV7GJGYOQJ7","50.00","7.00","943.00","1000.00","parvez.techvill@gmail.com","Pending","2018-07-19 13:45:09","2018-07-19 13:45:09");
INSERT INTO withdrawals VALUES("56","15","12","3","M9QU6RJX0N0RE","5.00","7.00","88.00","100.00","parvez.techvill@gmail.com","Pending","2018-07-19 14:30:21","2018-07-19 14:30:21");
INSERT INTO withdrawals VALUES("57","15","12","3","7JSXJIS7WFYXE","0.25","7.00","-2.25","5.00","parvez.techvill@gmail.com","Pending","2018-07-19 14:48:14","2018-07-19 14:48:14");
INSERT INTO withdrawals VALUES("58","15","12","3","YDKGFHQWCHKKH","0.55","7.00","3.45","11.00","parvez.techvill@gmail.com","Pending","2018-07-19 14:49:27","2018-07-19 14:49:27");



