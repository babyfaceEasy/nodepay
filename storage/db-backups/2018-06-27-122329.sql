

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

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
INSERT INTO activity_logs VALUES("36","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 10:21:33");
INSERT INTO activity_logs VALUES("37","10","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-04 10:22:13");
INSERT INTO activity_logs VALUES("38","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 10:22:29");
INSERT INTO activity_logs VALUES("39","5","User","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:22:41");
INSERT INTO activity_logs VALUES("40","15","User","fe80::a4f6:84d0:379:622c","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:29:38");
INSERT INTO activity_logs VALUES("41","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 10:31:26");
INSERT INTO activity_logs VALUES("42","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 10:57:01");
INSERT INTO activity_logs VALUES("43","1","Admin","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 11:01:33");
INSERT INTO activity_logs VALUES("44","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-04 11:29:42");
INSERT INTO activity_logs VALUES("45","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-04 11:42:04");
INSERT INTO activity_logs VALUES("46","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-04 12:03:32");
INSERT INTO activity_logs VALUES("48","6","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 12:09:41");
INSERT INTO activity_logs VALUES("51","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 12:40:12");
INSERT INTO activity_logs VALUES("54","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 12:54:33");
INSERT INTO activity_logs VALUES("55","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 12:58:02");
INSERT INTO activity_logs VALUES("57","7","User","192.168.0.113","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-04 13:08:24");
INSERT INTO activity_logs VALUES("58","6","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 13:44:02");
INSERT INTO activity_logs VALUES("59","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-04 13:46:48");
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
INSERT INTO activity_logs VALUES("83","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 10:22:08");
INSERT INTO activity_logs VALUES("84","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 11:08:31");
INSERT INTO activity_logs VALUES("85","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:10:00");
INSERT INTO activity_logs VALUES("87","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:19:19");
INSERT INTO activity_logs VALUES("88","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:22:11");
INSERT INTO activity_logs VALUES("89","4","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:35:24");
INSERT INTO activity_logs VALUES("90","1","Admin","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 11:45:18");
INSERT INTO activity_logs VALUES("91","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 12:04:56");
INSERT INTO activity_logs VALUES("92","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 12:12:08");
INSERT INTO activity_logs VALUES("93","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 12:12:45");
INSERT INTO activity_logs VALUES("94","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-05 12:18:54");
INSERT INTO activity_logs VALUES("95","1","Admin","fe80::6995:8039:bd4b:64db","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 12:20:49");
INSERT INTO activity_logs VALUES("96","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 12:24:20");
INSERT INTO activity_logs VALUES("97","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-05 12:27:05");
INSERT INTO activity_logs VALUES("98","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 12:42:41");
INSERT INTO activity_logs VALUES("100","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 12:58:09");
INSERT INTO activity_logs VALUES("102","4","User","192.168.0.105","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 13:42:47");
INSERT INTO activity_logs VALUES("103","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:12:34");
INSERT INTO activity_logs VALUES("104","5","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 15:20:43");
INSERT INTO activity_logs VALUES("105","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134","2018-06-05 15:25:19");
INSERT INTO activity_logs VALUES("106","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-05 15:26:00");
INSERT INTO activity_logs VALUES("107","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:27:33");
INSERT INTO activity_logs VALUES("108","21","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:48:25");
INSERT INTO activity_logs VALUES("109","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:48:41");
INSERT INTO activity_logs VALUES("110","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:53:39");
INSERT INTO activity_logs VALUES("112","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-05 15:55:18");
INSERT INTO activity_logs VALUES("113","5","User","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-06 09:44:11");
INSERT INTO activity_logs VALUES("114","5","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 09:45:01");
INSERT INTO activity_logs VALUES("116","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-06 09:57:18");
INSERT INTO activity_logs VALUES("117","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-06 09:59:19");
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
INSERT INTO activity_logs VALUES("135","15","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-06 12:34:29");
INSERT INTO activity_logs VALUES("136","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 12:41:49");
INSERT INTO activity_logs VALUES("137","4","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-06 12:44:08");
INSERT INTO activity_logs VALUES("138","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-06 13:30:26");
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
INSERT INTO activity_logs VALUES("158","9","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 15:48:29");
INSERT INTO activity_logs VALUES("159","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-06 15:50:12");
INSERT INTO activity_logs VALUES("160","7","User","192.168.0.100","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 09:46:20");
INSERT INTO activity_logs VALUES("161","1","Admin","192.168.0.100","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 09:47:36");
INSERT INTO activity_logs VALUES("162","24","User","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 09:52:08");
INSERT INTO activity_logs VALUES("163","1","Admin","192.168.0.113","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 10:06:21");
INSERT INTO activity_logs VALUES("164","5","User","fe80::a574:a8e8:8c29:254e","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 10:06:23");
INSERT INTO activity_logs VALUES("165","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 10:15:41");
INSERT INTO activity_logs VALUES("166","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 10:17:00");
INSERT INTO activity_logs VALUES("167","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 10:17:42");
INSERT INTO activity_logs VALUES("168","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 10:18:10");
INSERT INTO activity_logs VALUES("169","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 10:18:15");
INSERT INTO activity_logs VALUES("170","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 10:19:41");
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
INSERT INTO activity_logs VALUES("185","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 13:00:49");
INSERT INTO activity_logs VALUES("186","29","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-07 13:45:02");
INSERT INTO activity_logs VALUES("187","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.62 Safari/537.36","2018-06-07 13:47:18");
INSERT INTO activity_logs VALUES("188","6","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-07 14:02:19");
INSERT INTO activity_logs VALUES("189","6","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-07 14:02:49");
INSERT INTO activity_logs VALUES("190","7","User","192.168.0.100","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 14:08:53");
INSERT INTO activity_logs VALUES("191","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:34:28");
INSERT INTO activity_logs VALUES("192","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:40:51");
INSERT INTO activity_logs VALUES("193","20","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:41:34");
INSERT INTO activity_logs VALUES("194","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:44:39");
INSERT INTO activity_logs VALUES("195","15","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-07 14:47:58");
INSERT INTO activity_logs VALUES("196","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-07 15:04:12");
INSERT INTO activity_logs VALUES("197","6","User","192.168.0.112","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-07 15:11:36");
INSERT INTO activity_logs VALUES("198","7","User","192.168.0.102","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-08 15:36:10");
INSERT INTO activity_logs VALUES("199","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 09:46:52");
INSERT INTO activity_logs VALUES("200","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 09:52:49");
INSERT INTO activity_logs VALUES("201","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:14:22");
INSERT INTO activity_logs VALUES("202","1","Admin","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:26:53");
INSERT INTO activity_logs VALUES("203","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:45:17");
INSERT INTO activity_logs VALUES("204","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-10 10:47:33");
INSERT INTO activity_logs VALUES("205","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 10:57:15");
INSERT INTO activity_logs VALUES("206","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 11:02:47");
INSERT INTO activity_logs VALUES("207","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 11:30:44");
INSERT INTO activity_logs VALUES("208","7","User","192.168.0.111","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36","2018-06-10 12:16:30");
INSERT INTO activity_logs VALUES("209","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-10 12:29:24");
INSERT INTO activity_logs VALUES("210","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 12:37:10");
INSERT INTO activity_logs VALUES("211","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 12:40:10");
INSERT INTO activity_logs VALUES("212","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-10 13:37:00");
INSERT INTO activity_logs VALUES("213","10","Admin","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-10 13:37:08");
INSERT INTO activity_logs VALUES("214","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 13:48:50");
INSERT INTO activity_logs VALUES("215","15","User","fe80::822:dedb:1eb5:dff7","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-10 13:49:33");
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
INSERT INTO activity_logs VALUES("252","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-12 09:44:31");
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
INSERT INTO activity_logs VALUES("264","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.79 Safari/537.36","2018-06-13 09:51:29");
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
INSERT INTO activity_logs VALUES("285","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 11:42:55");
INSERT INTO activity_logs VALUES("286","7","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 12:13:10");
INSERT INTO activity_logs VALUES("287","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-22 15:12:45");
INSERT INTO activity_logs VALUES("288","5","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 15:59:22");
INSERT INTO activity_logs VALUES("289","15","User","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 16:00:25");
INSERT INTO activity_logs VALUES("290","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 16:33:46");
INSERT INTO activity_logs VALUES("291","15","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-22 16:36:58");
INSERT INTO activity_logs VALUES("292","20","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-22 19:11:56");
INSERT INTO activity_logs VALUES("293","15","User","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-22 19:19:25");
INSERT INTO activity_logs VALUES("294","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 11:19:16");
INSERT INTO activity_logs VALUES("295","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 11:23:14");
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
INSERT INTO activity_logs VALUES("314","30","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 18:29:39");
INSERT INTO activity_logs VALUES("315","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:31:41");
INSERT INTO activity_logs VALUES("316","24","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 18:44:31");
INSERT INTO activity_logs VALUES("317","24","User","192.168.0.110","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:47:56");
INSERT INTO activity_logs VALUES("318","1","Admin","192.168.0.116","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-23 18:54:21");
INSERT INTO activity_logs VALUES("319","4","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-23 18:55:04");
INSERT INTO activity_logs VALUES("320","1","Admin","fe80::456b:ad11:8a2e:3372","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0","2018-06-23 18:56:16");
INSERT INTO activity_logs VALUES("321","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-24 11:14:25");
INSERT INTO activity_logs VALUES("322","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-24 11:24:33");
INSERT INTO activity_logs VALUES("323","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-24 11:34:47");
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
INSERT INTO activity_logs VALUES("341","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 16:02:45");
INSERT INTO activity_logs VALUES("342","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 16:26:03");
INSERT INTO activity_logs VALUES("343","1","Admin","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 16:48:49");
INSERT INTO activity_logs VALUES("344","4","User","fe80::b857:c94c:39bd:d4d0","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 16:56:19");
INSERT INTO activity_logs VALUES("345","5","User","192.168.0.103","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 17:09:31");
INSERT INTO activity_logs VALUES("346","1","Admin","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 17:15:51");
INSERT INTO activity_logs VALUES("347","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 17:21:27");
INSERT INTO activity_logs VALUES("348","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-25 17:21:35");
INSERT INTO activity_logs VALUES("349","24","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 18:44:08");
INSERT INTO activity_logs VALUES("350","24","User","192.168.0.106","Mozilla/5.0 (Windows NT 6.1; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 18:45:09");
INSERT INTO activity_logs VALUES("351","32","User","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-25 18:52:54");
INSERT INTO activity_logs VALUES("352","24","User","192.168.0.112","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 19:02:28");
INSERT INTO activity_logs VALUES("353","7","User","192.168.0.107","Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-25 19:03:10");
INSERT INTO activity_logs VALUES("354","1","Admin","::1","Mozilla/5.0 (Windows NT 6.1; rv:59.0) Gecko/20100101 Firefox/59.0","2018-06-26 11:03:35");
INSERT INTO activity_logs VALUES("355","15","User","::1","Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36","2018-06-26 11:05:58");
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
INSERT INTO activity_logs VALUES("370","12","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 11:27:47");
INSERT INTO activity_logs VALUES("371","12","Admin","fe80::c8d2:ea6d:c50a:5409","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101 Firefox/60.0","2018-06-27 11:39:33");





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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO admins VALUES("1","admin","admin","techvill","admin@techvill.net","$2y$10$pJg16/2rcCvld4JD1xAlruq9ojgezeATYELkdgUOUtElGZG5r4o9m","Active","1","Q7Jlpo4SM13K7s9bIGml1vvhUm51jcmzNBYwmc9WCgPpIJGm9HY3c2FrlnUi","2018-04-26 07:56:09","2018-06-06 13:37:07","Jellyfish.jpg");
INSERT INTO admins VALUES("2","tuhin.techvill","Tuhin","Hossain","tuhin.techvill@gmail.com","$2y$10$cMy9yQ0.DoVvn4kAxpM2OuqQWLfyWM4AMC1oJNNbCcZpBCxB8WlJu","Active","1","hPkuZaG4Xeb0mXj6Rdesx0CvgGoG5TcZbUnHdA5GYbsjzYD99VVaiq1S42GB","2018-05-22 09:21:25","2018-05-28 14:08:38","");
INSERT INTO admins VALUES("3","tuhin2.techvill","Tuhin","Hossain","tuhin2.techvill@gmail.com","$2y$10$2AX6J2znElQeP2kaN8rNYu5lTC4LSjTqJ35YI5XWDa.rT9f/OVPJm","Active","1","","2018-05-22 09:55:04","2018-05-24 08:41:04","");
INSERT INTO admins VALUES("8","user2","Test","customer","user2@gmail.com","$2y$10$G9e2Dw.b5BML35h/XfjXW.IpR2e7KJhVx/ZIHqP4LNOORXKNvjJN6","Active","6","rS5MKw67Jcm0EHr1WiYOa2CFuvggUL4jGqj4iFQwLc8zQ4oePSylw5Fw0aps","2018-06-04 10:06:20","2018-06-04 10:06:20","");
INSERT INTO admins VALUES("9","borna.techvill","Farzana","Borna","borna.techvill@gmail.com","$2y$10$zh1WvynCRmex9iOO8kYqDeSb0dxhZfBH4SMbKMS1TLkLeeAVMxmDC","Active","6","rGVO31J1XduJ9Hvse9OOkyXwKvtDWzqEQtpsqeSJH1oJA9eqOc1KXTR7F8GB","2018-06-04 13:03:50","2018-06-04 13:03:50","");
INSERT INTO admins VALUES("10","parvezrobi","parvez","robi","parvezrobi@yahoo.com","$2y$10$j70ylLh3gn5Oq7ROZuJtl.nmzkcJOAxsI06alyVmHdFzHoRyq4Ob.","Active","6","Qc6tTGArzeNjFdD5i8GoSX55v3RZ1MEne5iG57TaeoQXxZ8rM6fPkGGeKS5W","2018-06-10 12:27:05","2018-06-11 11:08:18","15123081_10207467743481755_1773707475555528407_o.jpg");
INSERT INTO admins VALUES("12","test","test","test","test@gmail.com","$2y$10$ksyAIpit6vGPdlqgT8uWPuTuLkf2//lCEFt6oYUyyF1puuVj692Pe","Active","6","","2018-06-10 12:33:04","2018-06-10 12:33:04","");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO backups VALUES("1","2018-06-06-145559.sql","2018-06-06 14:55:59","");
INSERT INTO backups VALUES("2","2018-06-23-191803.sql","2018-06-23 19:18:03","");





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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO currencies VALUES("12","US Dollar","$","USD","one thousand","0.5","1526290617.jpg","Active","1","","");
INSERT INTO currencies VALUES("13","Pound Sterling","£","GBP","one thousand","0.75","1525873787.jpg","Active","0","","");
INSERT INTO currencies VALUES("14","Europe","€","EUR","one thousand","0.85","1529923387.jpg","Active","0","","");
INSERT INTO currencies VALUES("15","Czech Republic Koruna","K?","CZK","one thousand","78","","Active","0","","");
INSERT INTO currencies VALUES("16","Hong Kong Dollar","$","HKD","one thousand","12","","Active","0","","");
INSERT INTO currencies VALUES("17","Hungarian Forint","Ft","HUF","one thousand","1","","Active","0","","");
INSERT INTO currencies VALUES("18","Indonesian Rupiah","Rp","IDR","one thousand","3","","Active","0","","");
INSERT INTO currencies VALUES("19","Israeli New Sheke","?","ILS","one thousand","3.54","","Active","0","","");
INSERT INTO currencies VALUES("20","Japanese Yen","¥","JPY","one thousand","2","","Inactive","0","","");
INSERT INTO currencies VALUES("21","South Korean Won","?","KRW","one thousand","20","","Active","0","","");
INSERT INTO currencies VALUES("23","New Zealand Dollar","$","NZD","one thousand","10","","Active","0","","");
INSERT INTO currencies VALUES("24","Polish Zloty","z?","PLN","one thousand","1","","Inactive","0","","");
INSERT INTO currencies VALUES("25","Russian Ruble","P","RUB","one thousand","57.58","","Active","0","","");
INSERT INTO currencies VALUES("26","TAKA","?","BDT","one thousand","84.33","","Active","0","","");
INSERT INTO currencies VALUES("27","Indian Rupy","INR","INR","one thousand","67.53","","Active","0","","");
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

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





CREATE TABLE IF NOT EXISTS `currency_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned NOT NULL,
  `method_id` int(10) unsigned NOT NULL,
  `activated_for` json DEFAULT NULL COMMENT 'ex: deposit, withdrawal single, both or none',
  `method_data` json NOT NULL COMMENT 'input field''s name and value like client_id, client_secret etc',
  `processing_time` tinyint(4) NOT NULL COMMENT 'time in days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_payment_methods_currency_id_index` (`currency_id`),
  KEY `currency_payment_methods_method_id_index` (`method_id`),
  CONSTRAINT `currency_payment_methods_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_payment_methods_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO currency_payment_methods VALUES("1","12","3","{\"deposit\": \"\"}","{\"mode\": \"sandbox\", \"client_id\": \"AXxJWNphTMdyaHZmHv58qH3wFt0bai9j_t_a8R6T7EkC1GbT7-0AvgsULqFz4cqW44H1adjfwjWMdLmk\", \"client_secret\": \"EJKgSAHOwbiEaLSC-tLDD2tFWQ6Wvx5yawYdEoI7k-FAAEQJAkYNnyxhHzLd3Pm-_r192GpuEcNfWT80\"}","1","2018-06-12 00:00:00","2018-06-25 13:49:07");
INSERT INTO currency_payment_methods VALUES("2","12","2","{\"deposit\": \"\"}","{\"secret_key\": \"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\", \"publishable_key\": \"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","1","2018-06-12 00:00:00","2018-06-24 17:33:56");
INSERT INTO currency_payment_methods VALUES("3","13","4","{\"deposit\": \"\"}","{\"mode\": \"sandbox\", \"seller_id\": \"901381377\"}","1","2018-06-12 00:00:00","2018-06-25 15:44:48");
INSERT INTO currency_payment_methods VALUES("4","13","5","{\"deposit\": \"\"}","{\"key\": \"rjQUPktU\", \"mode\": \"sandbox\", \"salt\": \"e5iIg1jwi8\", \"gateway\": \"payumoney\"}","1","2018-06-12 00:00:00","2018-06-12 00:00:00");
INSERT INTO currency_payment_methods VALUES("5","12","7","{\"deposit\": \"\"}","{\"public_key\": \"Db7ddcee4Adcc425e6858F016027389189cA18f1c116BdE504fd67FdBe2aD571\", \"merchant_id\": \"95cb8822db315f03d9ec3206a3a368e6\", \"private_key\": \"5b72067ff7830fd8ba7dbbe94afc00831ea27a8139255f928b8171abf204f3b1\"}","2","2018-06-24 18:29:23","2018-06-24 18:29:23");
INSERT INTO currency_payment_methods VALUES("6","13","7","{\"deposit\": \"\"}","{\"public_key\": \"test\", \"merchant_id\": \"test\", \"private_key\": \"test\"}","4","2018-06-24 18:30:41","2018-06-24 19:20:41");
INSERT INTO currency_payment_methods VALUES("7","14","7","{\"deposit\": \"\"}","{\"public_key\": \"rr\", \"merchant_id\": \"rr\", \"private_key\": \"rr\"}","2","2018-06-24 19:21:04","2018-06-24 19:21:04");
INSERT INTO currency_payment_methods VALUES("8","14","2","{\"deposit\": \"\"}","{\"secret_key\": \"wwop\", \"publishable_key\": \"ww\"}","3","2018-06-25 13:08:40","2018-06-25 17:29:17");
INSERT INTO currency_payment_methods VALUES("9","13","2","{\"deposit\": \"\"}","{\"secret_key\": \"asss\", \"publishable_key\": \"sss\"}","127","2018-06-25 15:40:50","2018-06-25 15:40:50");
INSERT INTO currency_payment_methods VALUES("10","13","3","{\"deposit\": \"\"}","{\"mode\": null, \"client_id\": \"gg\", \"client_secret\": \"gg\"}","2","2018-06-25 17:35:14","2018-06-25 17:35:14");
INSERT INTO currency_payment_methods VALUES("11","21","2","{\"deposit\": \"\"}","{\"secret_key\": \"sk_test_UWTgGYIdj8igmbVMgTi0ILPm\", \"publishable_key\": \"pk_test_c2TDWXsjPkimdM8PIltO6d8H\"}","2","2018-06-26 11:19:27","2018-06-26 11:19:27");





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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO dispute_discussions VALUES("1","1","6","User","<p>dsf gsdfgs sdfgdsfg</p>","","2018-06-04 10:29:44","2018-06-04 10:29:44");
INSERT INTO dispute_discussions VALUES("2","1","6","User","<p>&nbsp;asdf a df sdfg&nbsp; sdfg sdfg</p>","","2018-06-04 10:29:56","2018-06-04 10:29:56");
INSERT INTO dispute_discussions VALUES("3","1","1","Admin","This is admin","","2018-06-04 10:30:39","2018-06-04 10:30:39");
INSERT INTO dispute_discussions VALUES("4","1","4","User","<p>This is claiment</p>","","2018-06-04 10:32:04","2018-06-04 10:32:04");
INSERT INTO dispute_discussions VALUES("5","1","4","User","<p>Hello testing with file</p>","1528088652_paypal.txt","2018-06-04 11:04:12","2018-06-04 11:04:12");
INSERT INTO dispute_discussions VALUES("6","1","1","Admin","sd fas asdf","1528088703_accounts.txt","2018-06-04 11:05:03","2018-06-04 11:05:03");
INSERT INTO dispute_discussions VALUES("7","4","4","User","hello","","2018-06-21 12:33:49","2018-06-21 12:33:49");
INSERT INTO dispute_discussions VALUES("8","16","24","User","tests","","2018-06-24 12:23:47","2018-06-24 12:23:47");
INSERT INTO dispute_discussions VALUES("9","16","24","User","test dispute","1529821455_Makent 1.5.6 (1).pdf","2018-06-24 12:24:15","2018-06-24 12:24:15");
INSERT INTO dispute_discussions VALUES("10","17","1","Admin","hi..","1529996841_210_vote_like_up_upvote-512.png","2018-06-26 13:07:21","2018-06-26 13:07:21");
INSERT INTO dispute_discussions VALUES("11","17","29","User","didn\'t get the product","1529996885_Screenshot_1.png","2018-06-26 13:08:05","2018-06-26 13:08:05");
INSERT INTO dispute_discussions VALUES("12","18","1","Admin","hello..","","2018-06-26 13:34:55","2018-06-26 13:34:55");





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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO disputes VALUES("1","4","6","6","1","This is a testing dispute","<p>tEST</p>","Open","2018-06-03 15:07:26","2018-06-04 11:05:46");
INSERT INTO disputes VALUES("2","15","15","384","1","uuuu","<p>jjjj</p>","Open","2018-06-06 12:43:32","2018-06-06 12:43:32");
INSERT INTO disputes VALUES("3","20","20","530","1","Food Delivery Issue","<p>please check auth system for solution</p>","Open","2018-06-10 11:04:06","2018-06-10 11:04:06");
INSERT INTO disputes VALUES("4","4","4","664","2","Product is not good","adsfasdfasdfsdfa","Open","2018-06-21 12:33:20","2018-06-21 12:33:20");
INSERT INTO disputes VALUES("5","4","4","664","1","asdf","asdf","Open","2018-06-21 12:37:29","2018-06-21 12:37:29");
INSERT INTO disputes VALUES("6","4","4","664","1","asdf","asdf","Open","2018-06-21 12:37:38","2018-06-21 12:37:38");
INSERT INTO disputes VALUES("7","4","4","664","1","asdf","asdf","Open","2018-06-21 12:37:42","2018-06-21 12:37:42");
INSERT INTO disputes VALUES("8","4","4","664","1","asdf","asdf","Open","2018-06-21 12:37:45","2018-06-21 12:37:45");
INSERT INTO disputes VALUES("9","4","4","664","1","asdf","asdf","Open","2018-06-21 12:37:49","2018-06-21 12:37:49");
INSERT INTO disputes VALUES("10","4","4","664","1","asdf","asdf","Open","2018-06-21 12:38:24","2018-06-21 12:38:24");
INSERT INTO disputes VALUES("11","4","4","664","1","asdf","asdf","Open","2018-06-21 12:38:27","2018-06-21 12:38:27");
INSERT INTO disputes VALUES("12","4","4","664","1","asdf","asdf","Open","2018-06-21 12:38:30","2018-06-21 12:38:30");
INSERT INTO disputes VALUES("13","4","4","664","1","asdf","asdf","Open","2018-06-21 12:38:33","2018-06-21 12:38:33");
INSERT INTO disputes VALUES("14","4","4","664","1","asdf","asdf","Open","2018-06-21 12:38:36","2018-06-21 12:38:36");
INSERT INTO disputes VALUES("15","24","24","669","1","Travel","test description","Open","2018-06-21 12:49:07","2018-06-21 12:49:07");
INSERT INTO disputes VALUES("16","24","24","669","2","Crowed Funding Platform","test","Open","2018-06-21 16:03:38","2018-06-21 16:03:38");
INSERT INTO disputes VALUES("17","29","24","820","1","Dispute about product","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley ","Closed","2018-06-26 13:04:47","2018-06-26 13:16:31");
INSERT INTO disputes VALUES("18","29","24","820","2","Test","TEst","Open","2018-06-26 13:28:42","2018-06-26 13:47:52");





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
  `language_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_language_id_index` (`language_id`),
  CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

INSERT INTO email_templates VALUES("1","1","Notice of Transfer!","Hi {sender_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was transferred from your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\n\n                                    <br><br>Transfer # {uuid} was created at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Receiver:</u></b> {receiver_id}\n\n                                    <br><br><b><u>Fee:</u></b> {fee}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("2","1","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("3","1","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("4","1","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("5","1","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("6","1","Subject","Body","es","6");
INSERT INTO email_templates VALUES("7","1","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("8","2","Notice to Receive!","Hi {receiver_id},\n                                    <br><br>The funds amount equal to {symbol}{amount} was received on your account.\n\n                                    <br><br>\n                                    <b><u><i>Here’s a brief overview of your Received Payment:</i></u></b>\n\n                                    <br><br>\n                                    Transfer # {uuid} was received at {created_at}.\n\n                                    <br><br>\n                                    <b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Sender:</u></b> {sender_id}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("9","2","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("10","2","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("11","2","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("12","2","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("13","2","Subject","Body","es","6");
INSERT INTO email_templates VALUES("14","2","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("15","3","Notice of Voucher Activation!","Hi {user_id},\n\n                                    <br><br>\n                                    Voucher # {uuid} has been activated by {activator_id}.\n                                    <br><br><b><u><i>\n                                    Here’s a brief overview of the Voucher Activation:</i></u></b>\n\n                                    <br><br>Voucher # {uuid} was activated at {created_at}.\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br><b><u>Code:</u></b> {code}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("16","3","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("17","3","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("18","3","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("19","3","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("20","3","Subject","Body","es","6");
INSERT INTO email_templates VALUES("21","3","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("22","4","Notice of Request Creation!","Hi {acceptor},\n\n                                    <br><br>Amount {symbol}{amount} has been requested to your account.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                    <br><br>\n                                    <b><u>Request #:</u></b> {uuid}\n\n                                    <br><br>\n                                    <b><u>Created At:</u></b> {created_at}\n\n                                    <br><br>\n                                    <b><u>Requested Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Purpose: </u></b> {purpose}\n\n                                    <br><br>\n                                    <b><u>Note: </u></b> {note}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("23","4","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("24","4","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("25","4","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("26","4","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("27","4","Subject","Body","es","6");
INSERT INTO email_templates VALUES("28","4","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("29","5","Notice of Request Acceptance!","Hi {creator},\n                                    <br><br>Your request of #{uuid} has been accepted by {acceptor}.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\n\n                                    <br><br>\n                                    <b><u>Accepted Date:</u></b> {created_at}.\n\n                                    <br><br>\n                                    <b><u>Requested Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>\n                                    <b><u>Requested Accepted Amount:</u></b> {symbol}{accept_amount}\n\n                                    <br><br>\n                                    <b><u>Currency:</u></b> {currency}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("30","5","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("31","5","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("32","5","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("33","5","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("34","5","Subject","Body","es","6");
INSERT INTO email_templates VALUES("35","5","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("36","6","Status of Transaction #{uuid} has been updated!","Hi {sender_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Transfer #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("37","6","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("38","6","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("39","6","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("40","6","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("41","6","Subject","Body","es","6");
INSERT INTO email_templates VALUES("42","6","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("43","7","Status of Transaction #{uuid} has been updated!","Hi {activator_id},\n\n                                    <br><br><b>\n                                    Transaction of Voucher #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    <u><i>Voucher Code:</i></u> {code}\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("44","7","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("45","7","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("46","7","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("47","7","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("48","7","Subject","Body","es","6");
INSERT INTO email_templates VALUES("49","7","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("50","8","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n\n                                    <br><br><b>\n                                    Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("51","8","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("52","8","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("53","8","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("54","8","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("55","8","Subject","Body","es","6");
INSERT INTO email_templates VALUES("56","8","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("57","9","Notice of Withdrawal!","Hi {user_id},\n\n                                    <br><br><b>\n                                    Your request of Withdrawal #{uuid} of {symbol}{amount} is being processed by system administrator!</b>\n\n                                    <br><br>\n                                    <b><u>Transaction Status:</u></b> {status}.\n\n                                    <br><br>\n                                    {symbol}{amount} is being subtracted from your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("58","9","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("59","9","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("60","9","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("61","9","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("62","9","Subject","Body","es","6");
INSERT INTO email_templates VALUES("63","9","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("64","10","Status of Transaction #{uuid} has been updated!","Hi {user_id},\n\n                                    <br><br><b>\n                                    Transaction of Withdrawal #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("65","10","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("66","10","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("67","10","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("68","10","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("69","10","Subject","Body","es","6");
INSERT INTO email_templates VALUES("70","10","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("71","11","Notice of Ticket!","Hi {assignee/user},\n\n                                    <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\n\n                                    <br><br>Ticket #{ticket_code} was created at {created_at}.\n\n                                    <br><br><b><u>{Assignee:}</u></b> {assignee}\n\n                                    <br><br><b><u>{User:}</u></b> {user}\n\n                                    <br><br><b><u>Ticket Subject:</u></b> {subject}\n\n                                    <br><br><b><u>Ticket Message:</u></b> {message}\n\n                                    <br><br><b><u>Ticket Status:</u></b> {status}\n\n                                    <br><br><b><u>Ticket Priority Level:</u></b> {priority}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("72","11","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("73","11","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("74","11","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("75","11","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("76","11","Subject","Body","es","6");
INSERT INTO email_templates VALUES("77","11","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("78","12","Notice of Ticket Reply!","Hi {user},\n\n                                    <br><br>A ticket reply has been sent to you by system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                    <br><br>This reply was initiated against ticket code #{ticket_code}.\n\n                                    <br><br><b><u>Assignee:</u></b> {assignee}\n\n                                    <br><br><b><u>Reply Message:</u></b> {message}\n\n                                    <br><br><b><u>Reply Status:</u></b> {status}\n\n                                    <br><br><b><u>Reply Priority Level:</u></b> {priority}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("79","12","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("80","12","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("81","12","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("82","12","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("83","12","Subject","Body","es","6");
INSERT INTO email_templates VALUES("84","12","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("85","13","Notice of Dispute Reply!","Hi {user},\n\n                                    <br><br>A dispute reply has been sent to you by system administrator.\n\n                                    <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\n\n                                    <br><br>This reply was initiated at {created_at}.\n\n                                    <br><br><b><u>{Claimant/Defendant:}</u></b> {claimant/defendant}\n\n                                    <br><br><b><u>Transaction ID:</u></b> {transaction_id}\n\n                                    <br><br><b><u>Subject:</u></b> {subject}\n\n                                    <br><br><b><u>Replied Message:</u></b> {message}\n\n                                    <br><br><b><u>Status:</u></b> {status}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>\n                                    ","en","1");
INSERT INTO email_templates VALUES("86","13","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("87","13","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("88","13","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("89","13","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("90","13","Subject","Body","es","6");
INSERT INTO email_templates VALUES("91","13","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("92","14","Status of Transaction #{uuid} has been updated!","Hi {paidByUser/merchantUser},\n\n                                    <br><br><b>\n                                    Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\n\n                                    <br><br>\n                                    {amount} is {added/subtracted} {from/to} your account.\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("93","14","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("94","14","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("95","14","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("96","14","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("97","14","Subject","Body","es","6");
INSERT INTO email_templates VALUES("98","14","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("99","15","Notice of Merchant Payment!","Hi {paidByUser/merchantUser},\n\n                                    <br><br><b>\n                                    The funds amount equal to {symbol}{amount} has been {sent/received} {from/to} your account</b>\n\n                                    <br><br><b><u><i>Here’s a brief overview of the payment:</i></u></b>\n\n                                    <br><br>Payment # {uuid} was created at {created_at}.\n\n                                    <br><br><b><u>{Merchant Id/Paid By}:</u></b> {merchant_id/user_id}\n\n                                    <br><br><b><u>Currency:</u></b> {currency_id}\n\n                                    <br><br><b><u>Payment Method:</u></b> {receiver_id}\n\n                                    <br><br><b><u>Fees:</u></b> {symbol}{fees}\n\n                                    <br><br><b><u>Amount:</u></b> {symbol}{amount}\n\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("100","15","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("101","15","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("102","15","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("103","15","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("104","15","Subject","Body","es","6");
INSERT INTO email_templates VALUES("105","15","Subject","Body","tr","7");
INSERT INTO email_templates VALUES("106","16","Status of Transaction #{uuid} has been updated!","Hi {user_id/receiver_id},\n                                    <br><br><b>\n                                    Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\n                                    <br><br>If you have any questions, please feel free to reply to this email.\n                                    <br><br>Regards,\n                                    <br><b>{soft_name}</b>","en","1");
INSERT INTO email_templates VALUES("107","16","Subject","Body","ar","2");
INSERT INTO email_templates VALUES("108","16","Subject","Body","fr","3");
INSERT INTO email_templates VALUES("109","16","Subject","Body","pt","4");
INSERT INTO email_templates VALUES("110","16","Subject","Body","ru","5");
INSERT INTO email_templates VALUES("111","16","Subject","Body","es","6");
INSERT INTO email_templates VALUES("112","16","Subject","Body","tr","7");





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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

INSERT INTO fees_limits VALUES("1","12","1","12.00","11.00","11.00","60000.00","Yes","2018-05-14 06:17:49","2018-06-04 12:42:03");
INSERT INTO fees_limits VALUES("2","12","2","5.00","10.00","2.00","90000.00","Yes","2018-05-14 06:18:15","2018-06-03 15:57:39");
INSERT INTO fees_limits VALUES("3","20","3","0.00","0.00","1.00","","No","2018-05-14 06:20:02","2018-06-03 11:14:24");
INSERT INTO fees_limits VALUES("4","16","5","2.00","0.00","1.00","800000.00","Yes","2018-05-14 06:39:37","2018-06-03 11:40:03");
INSERT INTO fees_limits VALUES("6","12","10","6.00","16.00","6.00","600.00","Yes","2018-05-14 06:40:21","2018-05-14 06:40:21");
INSERT INTO fees_limits VALUES("9","12","3","3.00","13.00","3.00","80000.00","Yes","2018-05-14 06:46:36","2018-06-13 11:41:01");
INSERT INTO fees_limits VALUES("10","20","3","0.00","0.00","1.00","","Yes","2018-05-14 07:05:08","2018-06-03 11:11:43");
INSERT INTO fees_limits VALUES("11","13","5","14.00","14.00","14.00","1400.00","Yes","2018-05-14 07:05:29","2018-05-14 07:05:29");
INSERT INTO fees_limits VALUES("15","32","1","5.00","5.00","10.00","10.00","No","2018-05-16 07:12:44","2018-06-06 15:43:52");
INSERT INTO fees_limits VALUES("17","12","1","11.00","11.00","11.00","100.00","No","2018-05-23 09:24:32","2018-05-23 09:28:54");
INSERT INTO fees_limits VALUES("18","13","1","0.00","0.00","1.00","","Yes","2018-05-24 06:53:05","2018-06-07 12:19:41");
INSERT INTO fees_limits VALUES("19","26","1","10.00","5.00","1.00","30000.00","Yes","2018-05-27 12:27:53","2018-06-03 10:33:38");
INSERT INTO fees_limits VALUES("21","16","1","0.00","0.00","0.00","500.00","Yes","2018-05-27 13:07:35","2018-06-03 11:59:28");
INSERT INTO fees_limits VALUES("22","16","2","2.00","2.00","1.00","10.00","No","2018-05-27 13:30:34","2018-06-07 11:44:19");
INSERT INTO fees_limits VALUES("23","15","3","0.00","0.00","1.00","","No","2018-05-27 14:43:18","2018-05-27 14:43:18");
INSERT INTO fees_limits VALUES("24","21","3","0.00","0.00","1.00","","No","2018-05-27 14:43:33","2018-05-27 14:43:33");
INSERT INTO fees_limits VALUES("25","14","3","5.00","5.00","1.00","50000.00","No","2018-05-27 15:06:15","2018-05-31 09:26:59");
INSERT INTO fees_limits VALUES("26","14","5","3.00","12.00","2.00","60000.00","Yes","2018-05-29 11:59:16","2018-06-06 14:48:52");
INSERT INTO fees_limits VALUES("27","26","5","2.00","10.00","1.00","30000.00","No","2018-05-31 09:25:42","2018-05-31 09:25:42");
INSERT INTO fees_limits VALUES("28","14","2","0.00","0.00","1.00","30000.00","Yes","2018-05-31 09:27:07","2018-06-07 11:44:25");
INSERT INTO fees_limits VALUES("29","21","1","1.20","5.00","1.00","700.00","Yes","2018-05-31 11:11:10","2018-06-26 11:17:57");
INSERT INTO fees_limits VALUES("30","23","1","2.00","2.00","1.00","","Yes","2018-05-31 11:27:28","2018-05-31 11:27:28");
INSERT INTO fees_limits VALUES("31","12","2","7.00","30.00","2.00","90000.00","No","2018-05-31 11:56:09","2018-06-03 10:33:16");
INSERT INTO fees_limits VALUES("32","26","8","3.00","4.00","1.00","15000.00","Yes","2018-05-31 14:53:07","2018-06-03 10:53:10");
INSERT INTO fees_limits VALUES("33","14","8","3.00","7.00","1.00","3000.00","No","2018-05-31 14:54:12","2018-05-31 14:54:12");
INSERT INTO fees_limits VALUES("34","26","3","10.00","5.00","3.00","300.00","No","2018-06-02 10:54:32","2018-06-02 10:54:32");
INSERT INTO fees_limits VALUES("35","13","2","8.00","18.00","1.00","","Yes","2018-06-02 12:13:04","2018-06-07 11:45:38");
INSERT INTO fees_limits VALUES("39","26","8","0.00","0.00","1.00","100.00","Yes","2018-06-03 10:24:55","2018-06-03 10:25:10");
INSERT INTO fees_limits VALUES("40","26","8","3.00","4.00","1.00","2000.00","Yes","2018-06-03 10:47:04","2018-06-03 10:49:47");
INSERT INTO fees_limits VALUES("41","26","8","3.00","4.00","1.00","3000.00","Yes","2018-06-03 10:51:36","2018-06-03 10:51:47");
INSERT INTO fees_limits VALUES("43","14","1","5.00","0.00","1.00","","Yes","2018-06-03 11:36:21","2018-06-07 11:39:44");
INSERT INTO fees_limits VALUES("44","12","5","2.00","2.00","1.00","","Yes","2018-06-03 12:16:29","2018-06-03 12:16:56");
INSERT INTO fees_limits VALUES("45","12","8","2.00","2.00","5.00","","Yes","2018-06-03 12:42:32","2018-06-11 11:03:29");
INSERT INTO fees_limits VALUES("46","31","1","0.00","0.00","1.00","","Yes","2018-06-06 15:45:22","2018-06-06 15:45:22");
INSERT INTO fees_limits VALUES("47","27","1","0.00","0.00","1.00","","Yes","2018-06-06 15:52:09","2018-06-06 15:52:09");
INSERT INTO fees_limits VALUES("48","25","2","0.00","0.00","1.00","","No","2018-06-07 11:44:53","2018-06-07 11:45:33");
INSERT INTO fees_limits VALUES("49","16","3","5.00","2.00","1.00","1000.00","No","2018-06-07 12:31:19","2018-06-26 16:54:34");
INSERT INTO fees_limits VALUES("50","18","5","0.00","0.00","1.00","","Yes","2018-06-23 13:53:00","2018-06-23 13:53:00");
INSERT INTO fees_limits VALUES("51","15","1","2.30","5.60","1.00","500.00","Yes","2018-06-26 11:13:30","2018-06-26 11:13:30");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `default` enum('1','0') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO languages VALUES("1","English","en","Active","1");
INSERT INTO languages VALUES("2","????","ar","Active","0");
INSERT INTO languages VALUES("3","Français","fr","Active","0");
INSERT INTO languages VALUES("4","Português","pt","Active","0");
INSERT INTO languages VALUES("5","???????","ru","Active","0");
INSERT INTO languages VALUES("6","Español","es","Active","0");
INSERT INTO languages VALUES("7","Türkçe","tr","Active","0");
INSERT INTO languages VALUES("9","wew","ew","Active","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO merchant_apps VALUES("1","3","123456","132wer3132331s21633s6sdf64wer51sf","","");
INSERT INTO merchant_apps VALUES("2","9","KAJHnxQSS45y6AueBdEaQMF86UaE2g","$2y$10$ZARm.64QsNnmWuRZ.rGONO7853Fr2tgDfLcLBbotVhPae3Y/x6hJ2","2018-06-06 12:24:05","2018-06-06 12:24:05");
INSERT INTO merchant_apps VALUES("3","11","qtE0gQXOk99wpzb6dkZX2RBh1NdbAM","NGLQK1n4U0oiJT5Yzpp6qAKeoKzZMm1aVDcR4gasrJwuM0RREjDcn96ENIegz0HsFVtMkU7cDhDyA2rgH88e7U8QikS3NCVZOmNe","2018-06-07 15:18:49","2018-06-07 15:18:49");
INSERT INTO merchant_apps VALUES("4","14","rAPwcSiCiIxnQ9UggXJyRLosCjBm5b","c38puVB9BzZmv9D5eSUa1FnVw3fjqlfMT8K7ll9n6GDtkneeHrNW8eRHq9rr4UYtOrTG3Iy5qav28x5w5bvmk9puQSWvXgtR3cgn","2018-06-11 12:49:47","2018-06-11 12:49:47");
INSERT INTO merchant_apps VALUES("5","15","FAUjfurHvuP8v8c9BMlRfcttH1MhbR","oFFtt13bmxxb6AbAxNYiRXzlioa0H4mKE3dI7V5RAc9lVos1muzdq8IInc5jsBPW7kLLSIQspxbDHr9U2Dz1nhhxZlpVMyJ9KUf9","2018-06-12 14:24:42","2018-06-12 14:24:42");
INSERT INTO merchant_apps VALUES("6","20","EeLbGkyFR4jzuUnitks6WKaF7rrQ67","bqGtCkvlYPXggJR2bDWgJOiz10jFnpcggKDoFyYPxXzqkHExkuJ4Gy98hwdiBKw7hjMoelJGhivVX6SPBgcJC9R5hW87P7jXEFgA","2018-06-26 12:58:17","2018-06-26 12:58:17");
INSERT INTO merchant_apps VALUES("7","22","CUr1rMHyuMU7a9GmwdvfoSztYDWrTP","TpcgZMuWaGcQWgMkWQExSwIXxDaIsH9IveWfkHjt6EuqOrHAIcArJLYaCIzfORb4NhOEJ87L7Quxry9ZUhsKB0ybHUfgliGNgtf3","2018-06-26 14:29:16","2018-06-26 14:29:16");





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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO merchant_payments VALUES("1","4","12","1","15","8O8RIDBQKQ3S2","01","shirts","8O8RIDBQKQ3S2","0.00","0.00","650.00","Success","2018-06-05 15:13:29");
INSERT INTO merchant_payments VALUES("2","1","12","1","15","AJG4ZFLVHSISR","1002","Shoes","AJG4ZFLVHSISR","0.00","0.00","30.00","Success","2018-06-05 15:14:08");
INSERT INTO merchant_payments VALUES("3","1","12","1","5","S3PVKP3E0PG0I","1001","phone","S3PVKP3E0PG0I","0.00","0.00","4.00","Success","2018-06-05 15:37:07");
INSERT INTO merchant_payments VALUES("4","1","12","2","5","ch_1CZbenDpvvQP5tMRGFCGRd8V","1001","phone","PXZHJ6T5HZ5ZS","0.00","0.00","2.00","Success","2018-06-05 15:40:16");
INSERT INTO merchant_payments VALUES("5","1","12","2","","ch_1CZbgzDpvvQP5tMRFZm0HcFE","1001","phone","TDNRAKTQXH2KC","0.00","0.00","2.00","Success","2018-06-05 15:42:31");
INSERT INTO merchant_payments VALUES("6","4","12","1","15","QA12PD069W0XA","000","pop","QA12PD069W0XA","0.00","0.00","888.00","Pending","2018-06-05 15:56:17");
INSERT INTO merchant_payments VALUES("7","4","12","2","","ch_1CZbvEDpvvQP5tMRjHTkAIru","000","pop","TUBNBZIVQLGIC","0.00","0.00","888.00","Success","2018-06-05 15:57:15");
INSERT INTO merchant_payments VALUES("8","4","12","1","4","FU2406FT9KMMM","000","pop","FU2406FT9KMMM","0.00","0.00","8.00","Success","2018-06-05 15:59:53");
INSERT INTO merchant_payments VALUES("9","4","12","2","","ch_1CZsngDpvvQP5tMRAbNnsQ1a","01","shirts","DO4FONEK7DZJG","0.00","0.00","650.00","Success","2018-06-06 09:58:34");
INSERT INTO merchant_payments VALUES("10","1","12","1","15","JXS77CGA7F8MF","1002","Shoes","JXS77CGA7F8MF","0.00","0.00","30.00","Success","2018-06-06 09:59:58");
INSERT INTO merchant_payments VALUES("11","4","12","1","20","23AMI5FK7U66S","01","pants","23AMI5FK7U66S","0.00","0.00","11.00","Success","2018-06-06 10:40:42");
INSERT INTO merchant_payments VALUES("12","4","12","1","20","MT9M2UNVMJ8NH","01","t-shirts","MT9M2UNVMJ8NH","0.00","0.00","20.00","Pending","2018-06-06 13:20:42");
INSERT INTO merchant_payments VALUES("13","9","12","2","4","ch_1CaJdJDpvvQP5tMRDCm5sJ4f","123456","test item name","2XUTUUKPNDDT4","0.00","0.00","2.00","Success","2018-06-07 14:37:38");
INSERT INTO merchant_payments VALUES("14","12","12","2","","ch_1CaKcXDpvvQP5tMRe2CbLKd3","1001","Burgers","LGIQQU2KRJQVI","0.00","0.00","7.00","Success","2018-06-07 15:40:55");
INSERT INTO merchant_payments VALUES("15","12","12","2","","ch_1CbLh1DpvvQP5tMRn4EhQulY","1001","Burgers","BRGQOCY2KIPT5","0.00","0.00","7.00","Success","2018-06-10 11:01:41");
INSERT INTO merchant_payments VALUES("16","12","12","1","20","TFQD3XMMWYLG8","1001","Burgers","TFQD3XMMWYLG8","0.00","0.00","7.00","Success","2018-06-10 11:03:16");
INSERT INTO merchant_payments VALUES("17","9","12","1","4","CDXXCYIVZPCXV","","","CDXXCYIVZPCXV","0.00","0.00","50.00","Success","2018-06-10 14:57:36");
INSERT INTO merchant_payments VALUES("18","9","12","1","6","T6TINABWVK0AA","","","T6TINABWVK0AA","0.00","0.00","50.00","Success","2018-06-10 15:15:42");
INSERT INTO merchant_payments VALUES("19","9","12","1","6","9LQ3ROBFVVW8F","","","9LQ3ROBFVVW8F","0.00","0.00","50.00","Success","2018-06-11 10:12:33");
INSERT INTO merchant_payments VALUES("20","9","12","1","24","QEG6VBBXPZYIX","","","QEG6VBBXPZYIX","0.00","0.00","50.00","Success","2018-06-12 13:45:47");
INSERT INTO merchant_payments VALUES("21","15","12","1","24","CCXYW5YA7L0YT","","","CCXYW5YA7L0YT","0.00","0.00","40.00","Success","2018-06-12 14:41:26");
INSERT INTO merchant_payments VALUES("22","15","12","1","29","JTSDFGGMPITSW","","","JTSDFGGMPITSW","0.00","0.00","20.00","Success","2018-06-12 14:46:32");
INSERT INTO merchant_payments VALUES("23","15","12","1","29","NEQQJJOZ7XCC9","","","NEQQJJOZ7XCC9","0.00","0.00","20.00","Success","2018-06-12 14:49:12");
INSERT INTO merchant_payments VALUES("24","12","12","1","20","HOHO3CWMWQBNK","1001","Burgers","HOHO3CWMWQBNK","0.00","0.00","7.00","Success","2018-06-12 16:03:22");
INSERT INTO merchant_payments VALUES("25","4","12","1","20","ACU5VPVFIVG54","991","Half shirt","ACU5VPVFIVG54","0.00","0.00","130.00","Success","2018-06-13 11:32:03");
INSERT INTO merchant_payments VALUES("26","4","12","1","20","ACU5VPVFIVG54","991","Half shirt","XG3P667VUC0YJ","0.00","0.00","130.00","Refund","2018-06-13 11:48:41");
INSERT INTO merchant_payments VALUES("27","16","12","1","5","JTY4ELNNKEJC0","1011","apples","JTY4ELNNKEJC0","0.00","0.00","7.50","Success","2018-06-13 12:19:59");
INSERT INTO merchant_payments VALUES("29","16","12","1","5","JTY4ELNNKEJC0","1011","apples","ZFWCO9QIP0F2B","0.00","0.00","7.50","Refund","2018-06-13 12:27:12");
INSERT INTO merchant_payments VALUES("30","16","12","1","5","J8JMEXHEMRMXI","1012","mangoes","J8JMEXHEMRMXI","0.00","0.00","11.24","Success","2018-06-13 12:38:40");
INSERT INTO merchant_payments VALUES("31","16","12","1","5","J8JMEXHEMRMXI","1012","mangoes","RNHGD0PJ52IPJ","0.00","0.00","11.24","Refund","2018-06-13 12:40:02");
INSERT INTO merchant_payments VALUES("32","16","12","1","5","GENMRCLEMJBTQ","1013","pineapples","GENMRCLEMJBTQ","0.00","0.00","9.24","Success","2018-06-13 14:36:24");
INSERT INTO merchant_payments VALUES("33","16","12","1","5","GENMRCLEMJBTQ","1013","pineapples","SY7ILVUZLRFCZ","0.00","0.00","9.24","Refund","2018-06-13 15:16:38");
INSERT INTO merchant_payments VALUES("34","16","12","1","5","IKVJ9KQBN2XAI","1014","rice","IKVJ9KQBN2XAI","0.00","0.00","3.33","Success","2018-06-13 15:22:36");
INSERT INTO merchant_payments VALUES("35","16","12","1","5","IKVJ9KQBN2XAI","1014","rice","0IYAPPIVIXDDE","0.00","0.00","3.33","Refund","2018-06-13 15:27:21");
INSERT INTO merchant_payments VALUES("36","9","12","2","4","ch_1CfMC7DpvvQP5tMRFrjZe0z1","wer43","test item name","LZEYC5RFKALTJ","0.00","0.00","10.00","Success","2018-06-21 12:23:00");
INSERT INTO merchant_payments VALUES("37","18","12","2","","ch_1CfMHSDpvvQP5tMRK92G9IXs","111","Television","2OAAUYKRQSOJD","0.00","0.00","2.00","Success","2018-06-21 12:28:30");
INSERT INTO merchant_payments VALUES("38","9","12","1","4","GNUDJGWVETUUK","wer43","test item name","GNUDJGWVETUUK","0.00","0.00","10.00","Success","2018-06-21 12:32:18");
INSERT INTO merchant_payments VALUES("39","18","12","2","29","ch_1CfMQuDpvvQP5tMR7Yy4swbr","111","Television","UNBKGEG4XFHTW","0.00","0.00","2.00","Success","2018-06-21 12:38:16");
INSERT INTO merchant_payments VALUES("40","18","12","1","29","J07179Z3W3DNH","111","Television","J07179Z3W3DNH","0.00","0.00","2.00","Success","2018-06-21 12:39:33");
INSERT INTO merchant_payments VALUES("41","18","12","1","24","0J0YJLIJSHHYQ","111","Television","0J0YJLIJSHHYQ","0.00","0.00","2.00","Success","2018-06-21 12:44:03");
INSERT INTO merchant_payments VALUES("43","9","12","2","4","ch_1CfMC7DpvvQP5tMRFrjZe0z1","wer43","test item name","NWUUVVGJSS3XK","0.00","0.00","10.00","Refund","2018-06-22 11:13:37");
INSERT INTO merchant_payments VALUES("44","18","12","2","","ch_1CfMHSDpvvQP5tMRK92G9IXs","111","Television","KZMFWOJKAXHNS","0.00","0.00","2.00","Refund","2018-06-22 11:39:47");
INSERT INTO merchant_payments VALUES("47","9","12","1","4","GNUDJGWVETUUK","wer43","test item name","Q1FZY2QPECM5I","0.00","0.00","10.00","Refund","2018-06-22 12:42:36");
INSERT INTO merchant_payments VALUES("48","19","12","1","29","I068YHL0Q8QRY","A-123","Panjabi","I068YHL0Q8QRY","0.00","0.00","5.00","Success","2018-06-26 12:33:25");





CREATE TABLE IF NOT EXISTS `merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID for each Merchant',
  `business_name` varchar(191) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `type` enum('standard','express') NOT NULL,
  `note` varchar(255) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `status` enum('Moderation','Disapproved','Approved') NOT NULL DEFAULT 'Moderation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchants_user_id_index` (`user_id`),
  CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO merchants VALUES("1","15","","Ecstasy","http://ecstasy.com","standard","test","1528086141.jpg","Approved","2018-06-04 10:22:21","2018-06-04 14:59:26");
INSERT INTO merchants VALUES("2","4","","Portfolio","http://tuhinhossain.info","standard","No comments","1528094020.jpg","Approved","2018-06-04 10:23:57","2018-06-04 12:33:40");
INSERT INTO merchants VALUES("3","4","","test","http://test1.com","express","123we","","Approved","2018-06-04 10:38:48","2018-06-06 11:28:58");
INSERT INTO merchants VALUES("4","15","","SilkRoad","http://silkroadbd.com","standard","SilkRoad","1528178740.jpg","Approved","2018-06-05 12:05:40","2018-06-05 12:05:56");
INSERT INTO merchants VALUES("8","7","","techvill","http://techvill.net","standard","test","","Approved","2018-06-05 14:53:39","2018-06-06 13:08:27");
INSERT INTO merchants VALUES("9","4","","ECom","http://ecom.com","express","This is note","","Approved","2018-06-06 12:24:05","2018-06-06 13:01:45");
INSERT INTO merchants VALUES("10","24","","LG","http://www.walton.com","standard","hjgjg","","Moderation","2018-06-07 11:30:21","2018-06-07 11:30:21");
INSERT INTO merchants VALUES("11","4","","test","http://test.com","express","test","","Moderation","2018-06-07 15:18:49","2018-06-07 15:18:49");
INSERT INTO merchants VALUES("12","20","","Food Panda","http://food-panda-bd.com","standard","test","1528364213.png","Approved","2018-06-07 15:36:53","2018-06-07 15:37:20");
INSERT INTO merchants VALUES("13","24","","Foring","http://catseye.net","standard","test","","Moderation","2018-06-10 11:05:49","2018-06-10 11:05:49");
INSERT INTO merchants VALUES("14","7","","Tecvhill","http://techvill.net","express","test","","Approved","2018-06-11 12:49:46","2018-06-11 12:50:38");
INSERT INTO merchants VALUES("15","24","","Aarong","http://www.aarong.com","express","Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one ","","Approved","2018-06-12 14:24:41","2018-06-12 14:26:09");
INSERT INTO merchants VALUES("16","15","","Agora","http://agora-bd.com","standard","agora-bd","1528870662.png","Approved","2018-06-13 12:17:42","2018-06-13 12:18:19");
INSERT INTO merchants VALUES("17","4","","ECom","http://test.com","standard","asdf","","Moderation","2018-06-21 12:23:48","2018-06-21 12:23:48");
INSERT INTO merchants VALUES("18","24","","LG","http://www.Lg.com","standard","test","","Approved","2018-06-21 12:24:17","2018-06-21 12:25:30");
INSERT INTO merchants VALUES("19","24","","Aarong","http://www.aarong.com","standard","This is aarong","1529994270.png","Approved","2018-06-26 12:24:31","2018-06-26 12:28:24");
INSERT INTO merchants VALUES("20","24","","Ecstasy","http://www.ecstasy.com","express","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su","1529996297.jpg","Moderation","2018-06-26 12:58:17","2018-06-26 12:58:17");
INSERT INTO merchants VALUES("21","24","","Techvillage","http://techvill.net","standard","test","","Moderation","2018-06-26 14:27:50","2018-06-26 14:27:50");
INSERT INTO merchants VALUES("22","24","","Techvillage","http://techvill.net","express","test","","Approved","2018-06-26 14:29:16","2018-06-26 14:29:37");





CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text,
  `keywords` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

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
INSERT INTO metas VALUES("53","portfolio","Portfolio","Portfolio","");
INSERT INTO metas VALUES("54","request_payment/store","Request Payment","Request Payment","");
INSERT INTO metas VALUES("55","forget-password","Forgot Password","Forgot Password","");
INSERT INTO metas VALUES("56","password/resets/{id}","Reset Password","Reset Password","");
INSERT INTO metas VALUES("57","request-money-confirm","Request Money","Request Money","");
INSERT INTO metas VALUES("58","request_payment/accepted","Request Payment","Request Payment","");
INSERT INTO metas VALUES("59","request_payment/accept-money-confirm","Request Payment","Request Payment","");
INSERT INTO metas VALUES("60","deposit/stripe_payment_store","Deposit","Deposit With Stripe","");
INSERT INTO metas VALUES("61","sss","sss","sss","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

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
INSERT INTO migrations VALUES("193","2018_03_22_000002_create_merchant_payments_table","100");
INSERT INTO migrations VALUES("194","2018_06_06_093803_create_merchant_apps_table","101");
INSERT INTO migrations VALUES("195","2018_06_06_093953_create_app_tokens_table","102");
INSERT INTO migrations VALUES("196","2018_06_06_094213_create_app_transactions_infos_table","102");
INSERT INTO migrations VALUES("197","2018_05_10_075012_create_transaction_types_table","103");
INSERT INTO migrations VALUES("198","2018_06_12_124543_create_currency_payment_methods_table","104");





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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO pages VALUES("1","Personal","personal","<p><b>Personal</b><p><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\'>Lorem Ipsum&nbsp;</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\'>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p></p><p></p></p>\n","[\"header\"]","active","2018-04-11 06:07:11","2018-06-10 14:18:09");
INSERT INTO pages VALUES("2","Help","help","<p><b>Help</b><h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\"padding: 0px; line-height: 24px;\"><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem Ipsum&nbsp;</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p></p></p>\n","[\"footer\"]","active","2018-04-11 06:07:40","2018-06-10 14:12:36");
INSERT INTO pages VALUES("3","About Us","about-us","<p><b>About Us</b><h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\"text-align: left; padding: 0px; line-height: 24px;\"><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem Ipsum&nbsp;&nbsp;</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p></p></p>\n","[\"footer\"]","active","2018-04-11 06:09:48","2018-06-10 14:12:51");
INSERT INTO pages VALUES("4","Contact Us","contact-us","<p>Conatct Us<h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\"text-align: left; padding: 0px; line-height: 24px;\"><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem Ipsum&nbsp;</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>&Atilde;&#130;&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p></p>\n","[\"footer\"]","active","2018-04-11 06:10:25","2018-06-10 14:11:36");
INSERT INTO pages VALUES("5","News","news","<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\"><br><p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 24px; font-family: DauphinPlain; font-size: 24px; color: rgb(0, 0, 0);\"><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem Ipsum&nbsp;</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>&Atilde;&#130;&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p><p></p></h2>\n","[\"header\",\"footer\"]","active","2018-05-21 07:16:52","2018-06-10 14:10:37");
INSERT INTO pages VALUES("7","Portfolio","portfolio","<p><br><h2 style=\"font-family: DauphinPlain; line-height: 24px; color: rgb(0, 0, 0); margin-top: 0px; margin-right: 0px; margin-left: 0px; font-size: 24px; padding: 0px;\"></h2><p style=\"padding: 0px; line-height: 24px;\"><strong style=\'margin: 0px; padding: 0px; font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>Lorem Ipsum&nbsp;</strong><span style=\'font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; text-align: justify;\'>&Atilde;&#130;&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p></p>\n","[\"header\",\"footer\"]","active","2018-06-04 11:55:32","2018-06-10 14:10:51");
INSERT INTO pages VALUES("8","sss","sss","<p>ssss<br></p>\n","[\"footer\"]","active","2018-06-25 16:04:06","2018-06-25 16:04:06");





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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO payout_settings VALUES("3","8","6","","borna","123","Uttara","Dhaka","Uttara, Dhaka","18","1234","Al falah","0","2018-06-03 16:03:11","2018-06-03 16:03:11");
INSERT INTO payout_settings VALUES("4","8","2","borna.techvill@gmail.com","","","","","","","","","0","2018-06-04 13:44:06","2018-06-04 13:44:06");
INSERT INTO payout_settings VALUES("5","19","1","borna.techvill@gmail.com","","","","","","","","","0","2018-06-04 15:31:46","2018-06-04 15:31:46");
INSERT INTO payout_settings VALUES("6","4","1","tuhin.techvill@gmail.com","","","","","","","","","0","2018-06-04 16:02:58","2018-06-04 16:02:58");
INSERT INTO payout_settings VALUES("7","7","3","lenin.rock@gmail.com","","","","","","","","","0","2018-06-05 14:21:50","2018-06-05 14:21:50");
INSERT INTO payout_settings VALUES("8","8","1","borna.techvill@gmail.com","","","","","","","","","0","2018-06-06 10:18:25","2018-06-06 10:18:25");
INSERT INTO payout_settings VALUES("9","24","3","borna@yahoo.com","","","","","","","","","0","2018-06-07 10:05:35","2018-06-07 10:05:35");
INSERT INTO payout_settings VALUES("10","7","3","lenin.rock@gmail.com","","","","","","","","","0","2018-06-12 11:58:50","2018-06-12 11:58:50");
INSERT INTO payout_settings VALUES("11","5","3","aminul.techvill@gmail.com","","","","","","","","","0","2018-06-25 12:06:04","2018-06-25 12:06:04");





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
INSERT INTO permission_role VALUES("101","1");
INSERT INTO permission_role VALUES("102","1");
INSERT INTO permission_role VALUES("103","1");
INSERT INTO permission_role VALUES("104","1");
INSERT INTO permission_role VALUES("105","1");
INSERT INTO permission_role VALUES("106","1");
INSERT INTO permission_role VALUES("107","1");
INSERT INTO permission_role VALUES("108","1");
INSERT INTO permission_role VALUES("109","1");
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
INSERT INTO permission_role VALUES("109","2");
INSERT INTO permission_role VALUES("110","2");
INSERT INTO permission_role VALUES("111","2");
INSERT INTO permission_role VALUES("112","2");
INSERT INTO permission_role VALUES("113","2");
INSERT INTO permission_role VALUES("114","2");
INSERT INTO permission_role VALUES("115","2");
INSERT INTO permission_role VALUES("116","2");
INSERT INTO permission_role VALUES("134","2");
INSERT INTO permission_role VALUES("135","2");
INSERT INTO permission_role VALUES("136","2");
INSERT INTO permission_role VALUES("109","4");
INSERT INTO permission_role VALUES("116","4");
INSERT INTO permission_role VALUES("117","4");
INSERT INTO permission_role VALUES("109","5");
INSERT INTO permission_role VALUES("110","5");
INSERT INTO permission_role VALUES("111","5");
INSERT INTO permission_role VALUES("112","5");
INSERT INTO permission_role VALUES("113","5");
INSERT INTO permission_role VALUES("114","5");
INSERT INTO permission_role VALUES("115","5");
INSERT INTO permission_role VALUES("116","5");
INSERT INTO permission_role VALUES("117","5");
INSERT INTO permission_role VALUES("134","5");
INSERT INTO permission_role VALUES("135","5");
INSERT INTO permission_role VALUES("136","5");
INSERT INTO permission_role VALUES("5","6");
INSERT INTO permission_role VALUES("9","6");
INSERT INTO permission_role VALUES("11","6");
INSERT INTO permission_role VALUES("13","6");
INSERT INTO permission_role VALUES("15","6");
INSERT INTO permission_role VALUES("17","6");
INSERT INTO permission_role VALUES("19","6");
INSERT INTO permission_role VALUES("21","6");
INSERT INTO permission_role VALUES("23","6");
INSERT INTO permission_role VALUES("25","6");
INSERT INTO permission_role VALUES("27","6");
INSERT INTO permission_role VALUES("29","6");
INSERT INTO permission_role VALUES("31","6");
INSERT INTO permission_role VALUES("33","6");
INSERT INTO permission_role VALUES("37","6");
INSERT INTO permission_role VALUES("39","6");
INSERT INTO permission_role VALUES("41","6");
INSERT INTO permission_role VALUES("47","6");
INSERT INTO permission_role VALUES("49","6");
INSERT INTO permission_role VALUES("51","6");
INSERT INTO permission_role VALUES("53","6");
INSERT INTO permission_role VALUES("55","6");
INSERT INTO permission_role VALUES("57","6");
INSERT INTO permission_role VALUES("59","6");
INSERT INTO permission_role VALUES("61","6");
INSERT INTO permission_role VALUES("65","6");
INSERT INTO permission_role VALUES("66","6");
INSERT INTO permission_role VALUES("69","6");
INSERT INTO permission_role VALUES("70","6");
INSERT INTO permission_role VALUES("71","6");
INSERT INTO permission_role VALUES("72","6");
INSERT INTO permission_role VALUES("73","6");
INSERT INTO permission_role VALUES("74","6");
INSERT INTO permission_role VALUES("76","6");
INSERT INTO permission_role VALUES("77","6");
INSERT INTO permission_role VALUES("78","6");
INSERT INTO permission_role VALUES("79","6");
INSERT INTO permission_role VALUES("80","6");
INSERT INTO permission_role VALUES("81","6");
INSERT INTO permission_role VALUES("82","6");
INSERT INTO permission_role VALUES("83","6");
INSERT INTO permission_role VALUES("84","6");
INSERT INTO permission_role VALUES("85","6");
INSERT INTO permission_role VALUES("86","6");
INSERT INTO permission_role VALUES("126","6");
INSERT INTO permission_role VALUES("130","6");
INSERT INTO permission_role VALUES("131","6");
INSERT INTO permission_role VALUES("132","6");
INSERT INTO permission_role VALUES("133","6");





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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

INSERT INTO permissions VALUES("1","User","view_user","View User","View User","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("2","User","add_user","Add User","Add User","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("3","User","edit_user","Edit User","Edit User","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("4","User","delete_user","Delete User","Delete User","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("5","Transaction","view_transaction","View Transaction","View Transaction","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("6","Transaction","add_transaction","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("7","Transaction","edit_transaction","Edit Transaction","Edit Transaction","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("8","Transaction","delete_transaction","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("9","Deposit","view_deposit","View Deposit","View Deposit","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("10","Deposit","add_deposit","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("11","Deposit","edit_deposit","Edit Deposit","Edit Deposit","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("12","Deposit","delete_deposit","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("13","Withdrawal","view_withdrawal","View Withdrawal","View Withdrawal","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("14","Withdrawal","add_withdrawal","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("15","Withdrawal","edit_withdrawal","Edit Withdrawal","Edit Withdrawal","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("16","Withdrawal","delete_withdrawal","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("17","Transfer","view_transfer","View Transfer","View Transfer","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("18","Transfer","add_transfer","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("19","Transfer","edit_transfer","Edit Transfer","Edit Transfer","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("20","Transfer","delete_transfer","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("21","Exchange","view_exchange","View Exchange","View Exchange","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("22","Exchange","add_exchange","","","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("23","Exchange","edit_exchange","Edit Exchange","Edit Exchange","Admin","2018-06-11 16:17:20","2018-06-11 16:17:20");
INSERT INTO permissions VALUES("24","Exchange","delete_exchange","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("25","Voucher","view_voucher","View Voucher","View Voucher","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("26","Voucher","add_voucher","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("27","Voucher","edit_voucher","Edit Voucher","Edit Voucher","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("28","Voucher","delete_voucher","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("29","Request Payment","view_request_payment","View Request Payment","View Request Payment","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("30","Request Payment","add_request_payment","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("31","Request Payment","edit_request_payment","Edit Request Payment","Edit Request Payment","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("32","Request Payment","delete_request_payment","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("33","Revenue","view_revenue","View Revenue","View Revenue","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("34","Revenue","add_revenue","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("35","Revenue","edit_revenue","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("36","Revenue","delete_revenue","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("37","Email Template","view_email_template","View Email Template","View Email Template","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("38","Email Template","add_email_template","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("39","Email Template","edit_email_template","Edit Email Template","Edit Email Template","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("40","Email Template","delete_email_template","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("41","Activity Log","view_activity_log","View Activity Log","View Activity Log","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("42","Activity Log","add_activity_log","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("43","Activity Log","edit_activity_log","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("44","Activity Log","delete_activity_log","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("45","General Setting","view_general_setting","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("46","General Setting","add_general_setting","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("47","General Setting","edit_general_setting","Edit General Setting","Edit General Setting","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("48","General Setting","delete_general_setting","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("49","Social Links","view_social_links","View Social Links","View Social Links","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("50","Social Links","add_social_links","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("51","Social Links","edit_social_links","Edit Social Links","Edit Social Links","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("52","Social Links","delete_social_links","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("53","API Credentials","view_api_credentials","View API Credentials","View API Credentials","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("54","API Credentials","add_api_credentials","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("55","API Credentials","edit_api_credentials","Edit API Credentials","Edit API Credentials","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("56","API Credentials","delete_api_credentials","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("57","Payment Methods","view_payment_methods","View Payment Methods","View Payment Methods","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("58","Payment Methods","add_payment_methods","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("59","Payment Methods","edit_payment_methods","Edit Payment Methods","Edit Payment Methods","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("60","Payment Methods","delete_payment_methods","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("61","Email Setting","view_email_setting","View Email Setting","View Email Setting","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("62","Email Setting","add_email_setting","","","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("63","Email Setting","edit_email_setting","Edit Email Setting","Edit Email Setting","Admin","2018-06-11 16:17:21","2018-06-11 16:17:21");
INSERT INTO permissions VALUES("64","Email Setting","delete_email_setting","","","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("65","Currency","view_currency","View Currency","View Currency","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("66","Currency","add_currency","Add Currency","Add Currency","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("67","Currency","edit_currency","Edit Currency","Edit Currency","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("68","Currency","delete_currency","Delete Currency","Delete Currency","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("69","Country","view_country","View Country","View Country","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("70","Country","add_country","Add Country","Add Country","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("71","Country","edit_country","Edit Country","Edit Country","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("72","Country","delete_country","Delete Country","Delete Country","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("73","Language","view_language","View Language","View Language","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("74","Language","add_language","Add Language","Add Language","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("75","Language","edit_language","Edit Language","Edit Language","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("76","Language","delete_language","Delete Language","Delete Language","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("77","Role","view_role","View Role","View Role","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("78","Role","add_role","Add Role","Add Role","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("79","Role","edit_role","Edit Role","Edit Role","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("80","Role","delete_role","Delete Role","Delete Role","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("81","Fees","view_fees","View Fees","View Fees","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("82","Fees","add_fees","Add Fees","Add Fees","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("83","Fees","edit_fees","Edit Fees","Edit Fees","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("84","Fees","delete_fees","Delete Fees","Delete Fees","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("85","Database Backup","view_database_backup","View Database Backup","View Database Backup","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("86","Database Backup","add_database_backup","Add Database Backup","Add Database Backup","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("87","Database Backup","edit_database_backup","Edit Database Backup","Edit Database Backup","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("88","Database Backup","delete_database_backup","","","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("89","Meta","view_meta","View Meta","View Meta","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("90","Meta","add_meta","","","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("91","Meta","edit_meta","Edit Meta","Edit Meta","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("92","Meta","delete_meta","","","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("93","Page","view_page","View Page","View Page","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("94","Page","add_page","Add Page","Add Page","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("95","Page","edit_page","Edit Page","Edit Page","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("96","Page","delete_page","Delete Page","Delete Page","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("97","Preference","view_preference","View Preference","View Preference","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("98","Preference","add_preference","","","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("99","Preference","edit_preference","Edit Preference","Edit Preference","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("100","Preference","delete_preference","","","Admin","2018-06-11 16:17:22","2018-06-11 16:17:22");
INSERT INTO permissions VALUES("101","Merchant","view_merchant","View Merchant","View Merchant","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("102","Merchant","add_merchant","","","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("103","Merchant","edit_merchant","Edit Merchant","Edit Merchant","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("104","Merchant","delete_merchant","","","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("105","Merchant Payment","view_merchant_payment","View Merchant Payment","View Merchant Payment","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("106","Merchant Payment","add_merchant_payment","","","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("107","Merchant Payment","edit_merchant_payment","Edit Merchant Payment","Edit Merchant Payment","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("108","Merchant Payment","delete_merchant_payment","","","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("109","Transaction","manage_transaction","Manage Transaction","Manage Transaction","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("110","Deposit","manage_deposit","Manage Deposit","Manage Deposit","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("111","Withdrawal","manage_withdrawal","Manage Withdrawal","Manage Withdrawal","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("112","Transfer","manage_transfer","Manage Transfer","Manage Transfer","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("113","Exchange","manage_exchange","Manage Exchange","Manage Exchange","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("114","Voucher","manage_voucher","Manage Voucher","Manage Voucher","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("115","Request Payment","manage_request_payment","Manage Request Payment","Manage Request Payment","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("116","Merchant","manage_merchant","Manage Merchant","Manage Merchant","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("117","Merchant Payment","manage_merchant_payment","Manage Merchant Payment","Manage Merchant Payment","User","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("118","User Group","view_group","View User Group","View User Group","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("119","User Group","add_group","Add User Group","Add User Group","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("120","User Group","edit_group","Edit User Group","Edit User Group","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("121","User Group","delete_group","Delete User Group","Delete User Group","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("122","Admins","view_admins","View Admins","View Admins","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("123","Admins","add_admin","Add Admin","Add Admin","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("124","Admins","edit_admin","Edit Admin","Edit Admin","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("125","Admins","delete_admin","Delete Admin","Delete Admin","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("126","Disputes","view_disputes","View Disputes","View Disputes","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("127","Disputes","add_dispute","","","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("128","Disputes","edit_dispute","Edit Dispute","Edit Dispute","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("129","Disputes","delete_dispute","","","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("130","Tickets","view_tickets","View Tickets","View Tickets","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("131","Tickets","add_ticket","Add Ticket","Add Ticket","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("132","Tickets","edit_ticket","Edit Ticket","Edit Ticket","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("133","Tickets","delete_ticket","Delete Ticket","Delete Ticket","Admin","2018-06-11 16:17:23","2018-06-11 16:17:23");
INSERT INTO permissions VALUES("134","Disputes","manage_dispute","Manage Disputes","Disputes","User","","");
INSERT INTO permissions VALUES("135","Tickets","manage_ticket","Manage Ticket","Manage Ticket","User","","");
INSERT INTO permissions VALUES("136","Settings","manage_setting","Manage Setting","Manage Setting","User","","");





CREATE TABLE IF NOT EXISTS `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO preferences VALUES("1","preference","row_per_page","50");
INSERT INTO preferences VALUES("2","preference","date_format","2");
INSERT INTO preferences VALUES("3","preference","date_sepa",".");
INSERT INTO preferences VALUES("4","preference","soft_name","Pay Money");
INSERT INTO preferences VALUES("5","company","site_short_name","SP");
INSERT INTO preferences VALUES("6","preference","percentage","2");
INSERT INTO preferences VALUES("7","preference","quantity","0");
INSERT INTO preferences VALUES("8","preference","date_format_type","mm.dd.yyyy");
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
INSERT INTO preferences VALUES("24","preference","money_format","after");
INSERT INTO preferences VALUES("25","preference","decimal_format_amount","2");
INSERT INTO preferences VALUES("26","preference","thousand_separator",",");





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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

INSERT INTO request_payments VALUES("1","5","10","12","3XSONKEPZVFEU","20.00","20.00","shakil.techvill@gmail.com","","","","Test Notes","Success","2018-06-04 09:43:37","2018-06-04 12:01:16");
INSERT INTO request_payments VALUES("2","5","10","12","8GA4F3PSU6MMB","10.00","6.00","shakil.techvill@gmail.com","","","","Test Notes goes here.","Success","2018-06-04 15:16:31","2018-06-04 15:20:35");
INSERT INTO request_payments VALUES("3","5","10","12","BY9AYR1URCIN6","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here.","Pending","2018-06-04 15:26:40","2018-06-04 15:26:40");
INSERT INTO request_payments VALUES("4","5","10","12","NYCKCNRS29BSP","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here.","Pending","2018-06-04 15:28:10","2018-06-04 15:28:10");
INSERT INTO request_payments VALUES("5","5","10","12","AGXCYJCPQNUGU","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here.","Pending","2018-06-04 15:28:19","2018-06-04 15:28:19");
INSERT INTO request_payments VALUES("6","5","10","12","HMGZANJFDMNDN","10.00","10.00","shakil.techvill@gmail.com","","","","asdfdsafdsafdsa","Success","2018-06-04 15:29:01","2018-06-05 10:33:37");
INSERT INTO request_payments VALUES("7","5","10","12","WJXGSFX2TTEZP","100.00","6.00","shakil.techvill@gmail.com","","","","Test Note goes here.","Success","2018-06-05 10:38:14","2018-06-05 10:38:59");
INSERT INTO request_payments VALUES("12","7","5","24","58GL6RAIJWEKW","100.00","0.00","aminul.techvill@gmail.com","","","","need some money","Pending","2018-06-05 14:21:08","2018-06-05 14:21:08");
INSERT INTO request_payments VALUES("13","7","5","24","MFEMZFOKFWCHY","100.00","0.00","aminul.techvill@gmail.com","","","","need some money","Pending","2018-06-05 14:21:18","2018-06-05 14:21:18");
INSERT INTO request_payments VALUES("14","5","10","12","IIR4HUURSRBPW","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:50:57","2018-06-06 09:50:57");
INSERT INTO request_payments VALUES("15","5","10","12","ZNNZLSTTOVCBH","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:51:03","2018-06-06 09:51:03");
INSERT INTO request_payments VALUES("16","5","10","12","LG4YYROQ38VNY","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:51:48","2018-06-06 09:51:48");
INSERT INTO request_payments VALUES("17","5","10","12","71RCDCEFI7XJF","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:51:57","2018-06-06 09:51:57");
INSERT INTO request_payments VALUES("18","5","10","12","JTVMAZYLGX7HN","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:52:28","2018-06-06 09:52:28");
INSERT INTO request_payments VALUES("19","5","10","12","4LLLAWAGAZTWG","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:53:39","2018-06-06 09:53:39");
INSERT INTO request_payments VALUES("20","5","10","12","MOUVDDCMPRN8T","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:55:10","2018-06-06 09:55:10");
INSERT INTO request_payments VALUES("21","5","10","12","IHLHX7TAPKL7V","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 09:59:32","2018-06-06 09:59:32");
INSERT INTO request_payments VALUES("22","5","10","12","LTXJXESLR2JIS","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 10:01:34","2018-06-06 10:01:34");
INSERT INTO request_payments VALUES("23","5","10","12","ILFKIFD3L91TL","10.00","10.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Success","2018-06-06 10:04:01","2018-06-06 10:07:39");
INSERT INTO request_payments VALUES("24","5","10","12","KI2ID2ENZNFXY","10.00","0.00","shakil.techvill@gmail.com","","","","Test Notes goes here","Pending","2018-06-06 10:15:57","2018-06-06 10:15:57");
INSERT INTO request_payments VALUES("25","5","10","12","ITZMORZBVAZYM","3.00","0.00","shakil.techvill@gmail.com","","","","Test","Pending","2018-06-07 10:22:29","2018-06-07 10:22:29");
INSERT INTO request_payments VALUES("26","5","10","12","LPYI6PSYOESVO","3.00","0.00","shakil.techvill@gmail.com","","","","Test","Pending","2018-06-07 10:32:55","2018-06-07 10:32:55");
INSERT INTO request_payments VALUES("27","10","","12","NUQYPZMT7QJLI","3.00","0.00","admin@techvill.net","","","","1","Pending","2018-06-07 10:37:09","2018-06-07 10:37:09");
INSERT INTO request_payments VALUES("28","10","5","12","KFMMZLIF6LRFT","3.00","0.00","aminul.techvill@gmail.com","","","","1","Pending","2018-06-07 10:37:39","2018-06-07 12:14:34");
INSERT INTO request_payments VALUES("29","10","5","12","BGOLTE11HR5RK","3.00","6.00","aminul.techvill@gmail.com","","","","1","Success","2018-06-07 10:42:06","2018-06-07 12:16:19");
INSERT INTO request_payments VALUES("30","15","6","12","VHY1OI8JLWUYN","50.00","0.00","shahin.techvill@gmail.com","","","","Test","Pending","2018-06-07 14:01:31","2018-06-07 14:01:31");
INSERT INTO request_payments VALUES("31","15","20","12","YINIDBXCYUHTP","199.00","0.00","parvez.agvbd@gmail.com","","","","yyyyy","Pending","2018-06-07 14:35:33","2018-06-07 14:35:33");
INSERT INTO request_payments VALUES("32","15","20","12","4FGPR6HWNQVSK","199.00","0.00","parvez.agvbd@gmail.com","","","","yyyyy","Pending","2018-06-07 14:37:03","2018-06-07 14:37:03");
INSERT INTO request_payments VALUES("33","15","20","12","COZOPQALDPMGU","199.00","0.00","parvez.agvbd@gmail.com","","","","yyyyy","Pending","2018-06-07 14:38:06","2018-06-07 14:38:06");
INSERT INTO request_payments VALUES("34","15","20","12","JUWON0XS10WNT","199.00","0.00","parvez.agvbd@gmail.com","","","","yyyyy","Pending","2018-06-07 14:39:51","2018-06-07 14:39:51");
INSERT INTO request_payments VALUES("35","20","15","12","HX9CLQ2MAIBLS","99.00","0.00","parvez.techvill@gmail.com","","","","99","Pending","2018-06-07 14:43:08","2018-06-07 14:43:08");
INSERT INTO request_payments VALUES("36","20","15","12","IGPDSRS2F8ZKN","99.00","0.00","parvez.techvill@gmail.com","","","","99","Pending","2018-06-07 14:43:17","2018-06-07 14:43:17");
INSERT INTO request_payments VALUES("37","20","15","12","BSW17SN6C5IQV","99.00","0.00","parvez.techvill@gmail.com","","","","99","Pending","2018-06-07 14:43:22","2018-06-07 14:43:22");
INSERT INTO request_payments VALUES("38","20","15","12","FI6BU2MMJEFK9","99.00","99.00","parvez.techvill@gmail.com","","","","99","Success","2018-06-07 14:44:31","2018-06-07 14:51:03");
INSERT INTO request_payments VALUES("39","20","15","12","LL6OLQDJ42H4A","77.00","77.00","parvez.techvill@gmail.com","","","","77","Success","2018-06-07 15:07:56","2018-06-07 15:08:22");
INSERT INTO request_payments VALUES("40","24","29","26","AHDBZKM6RYPEX","20.00","0.00","mahfuzasinthy@gmail.com","","","","test","Blocked","2018-06-10 12:35:49","2018-06-10 15:17:01");
INSERT INTO request_payments VALUES("41","24","29","14","DBUT00QWJUIZQ","10.00","0.00","mahfuzasinthy@gmail.com","","","","Give 10 EUR","Pending","2018-06-10 15:27:17","2018-06-10 15:27:17");
INSERT INTO request_payments VALUES("42","24","29","14","FSRESYZMS7X58","2.00","0.00","mahfuzasinthy@gmail.com","","","","test","Pending","2018-06-10 15:27:46","2018-06-10 15:27:46");
INSERT INTO request_payments VALUES("43","24","29","20","Z6GVATHFGALWR","1.00","0.00","mahfuzasinthy@gmail.com","","","","test","Pending","2018-06-10 15:29:01","2018-06-10 15:29:01");
INSERT INTO request_payments VALUES("44","24","5","23","3NMXDK1XXEUU7","3.00","0.00","aminul.techvill@gmail.com","","","","test","Pending","2018-06-10 15:33:59","2018-06-10 15:33:59");
INSERT INTO request_payments VALUES("45","5","","12","TBKNSKKUE1MHG","23.00","0.00","ashraf.techvill@gmail.com","","","","sdasdafsda","Pending","2018-06-10 15:41:34","2018-06-10 15:41:34");
INSERT INTO request_payments VALUES("46","24","29","19","FFBZDY55MDH2Y","5.00","0.00","mahfuzasinthy@gmail.com","","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Pending","2018-06-11 11:27:24","2018-06-11 11:27:24");
INSERT INTO request_payments VALUES("47","24","29","12","RFZYV4AW6EISL","5.00","6.00","mahfuzasinthy@gmail.com","","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Success","2018-06-11 11:52:11","2018-06-11 12:00:54");
INSERT INTO request_payments VALUES("48","24","29","12","31YTEMEDRGXWH","10.00","0.00","mahfuzasinthy@gmail.com","","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Pending","2018-06-11 12:06:26","2018-06-11 12:06:26");
INSERT INTO request_payments VALUES("49","24","29","12","OCFVHJHZZU4CQ","2.00","8.00","mahfuzasinthy@gmail.com","","","","There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.","Success","2018-06-11 12:13:42","2018-06-11 12:15:53");
INSERT INTO request_payments VALUES("50","24","29","14","OJED7FSW4VGGN","5.00","0.00","mahfuzasinthy@gmail.com","","","","after sending request","Pending","2018-06-11 12:24:43","2018-06-11 12:24:43");
INSERT INTO request_payments VALUES("51","24","29","16","1UWBCNSRNLZZF","5.00","5.00","mahfuzasinthy@gmail.com","","","","test","Blocked","2018-06-11 12:26:12","2018-06-11 12:26:51");
INSERT INTO request_payments VALUES("52","24","","15","YMUEG1M2WU2HF","100.00","0.00","irish@gmail.com","","","","Please send money for buying books","Pending","2018-06-13 14:33:40","2018-06-22 18:14:43");
INSERT INTO request_payments VALUES("53","24","29","12","IHC7GOGTFZW3K","2.00","8.00","mahfuzasinthy@gmail.com","","","","tt","Refund","2018-06-22 15:18:47","2018-06-22 15:18:47");
INSERT INTO request_payments VALUES("54","5","15","12","JABR11TZ3T3H7","10.00","7.00","parvez.techvill@gmail.com","","","","Test Request","Success","2018-06-22 15:59:49","2018-06-22 16:00:55");
INSERT INTO request_payments VALUES("55","5","15","12","X08SWI5XKWYS4","10.00","7.00","parvez.techvill@gmail.com","","","","Test Request","Refund","2018-06-22 16:16:28","2018-06-22 16:16:28");
INSERT INTO request_payments VALUES("56","20","15","12","OUCPELNHAWBOW","45.00","41.00","parvez.techvill@gmail.com","","","","test","Success","2018-06-22 16:34:10","2018-06-22 18:15:42");
INSERT INTO request_payments VALUES("57","20","15","12","70H20UZQJZO88","45.00","41.00","parvez.techvill@gmail.com","","","","test","Refund","2018-06-22 18:17:47","2018-06-22 18:17:47");
INSERT INTO request_payments VALUES("58","15","20","12","OOXSH09K1XGKN","23.00","17.00","parvez.agvbd@gmail.com","","","","ggg","Success","2018-06-22 18:27:57","2018-06-22 19:12:29");
INSERT INTO request_payments VALUES("59","15","20","12","TQAPDTXREXFY3","23.00","17.00","parvez.agvbd@gmail.com","","","","ggg","Refund","2018-06-22 19:15:05","2018-06-22 19:15:05");
INSERT INTO request_payments VALUES("60","20","15","12","T2PNB8KCSWMXJ","17.00","16.00","parvez.techvill@gmail.com","","","","ttt","Success","2018-06-22 19:19:01","2018-06-22 19:19:38");
INSERT INTO request_payments VALUES("65","20","15","12","RCUSU7BB0JO0O","17.00","16.00","parvez.techvill@gmail.com","","","","ttt","Refund","2018-06-23 12:50:48","2018-06-23 12:50:48");
INSERT INTO request_payments VALUES("66","15","20","12","X4GWKZA1NB8F5","41.00","37.00","parvez.agvbd@gmail.com","","","","41","Success","2018-06-23 13:05:45","2018-06-23 13:26:16");
INSERT INTO request_payments VALUES("67","15","20","12","XDN46JZLDHTMP","41.00","37.00","parvez.agvbd@gmail.com","","","","41","Refund","2018-06-23 13:38:59","2018-06-23 13:38:59");
INSERT INTO request_payments VALUES("68","15","20","12","HTKDPOXZEYK43","13.00","11.00","parvez.agvbd@gmail.com","","","","test","Success","2018-06-23 13:41:17","2018-06-23 13:48:46");
INSERT INTO request_payments VALUES("70","15","20","12","VE5KYU7EPYATC","13.00","11.00","parvez.agvbd@gmail.com","","","","test","Refund","2018-06-23 15:19:01","2018-06-23 15:19:01");
INSERT INTO request_payments VALUES("71","15","20","12","BKPVHHXGCLJVM","21.00","19.00","parvez.agvbd@gmail.com","","","","tty","Success","2018-06-23 15:28:25","2018-06-23 15:28:48");
INSERT INTO request_payments VALUES("72","15","5","12","EGRKZW4ERZDKH","23.00","0.00","aminul.techvill@gmail.com","","","","test","Pending","2018-06-23 15:29:30","2018-06-24 11:54:00");
INSERT INTO request_payments VALUES("73","7","24","12","MDR9FKZM2UBNA","20.00","0.00","borna.techvill@gmail.com","","","","test","Pending","2018-06-24 13:49:05","2018-06-24 13:49:05");
INSERT INTO request_payments VALUES("74","5","10","12","WAOHSWDIW3QMP","3.00","0.00","shakil.techvill@gmail.com","","","","asdfdsafdsa","Pending","2018-06-24 16:20:54","2018-06-24 16:20:54");
INSERT INTO request_payments VALUES("75","24","29","17","C4JIYVKLG4VQT","10.00","0.00","mahfuzasinthy@gmail.com","","","","test request","Pending","2018-06-24 17:21:49","2018-06-24 17:21:49");
INSERT INTO request_payments VALUES("76","24","29","17","QQPTZKH5GUEUY","10.00","0.00","mahfuzasinthy@gmail.com","","","","test request","Pending","2018-06-24 17:22:03","2018-06-24 17:22:03");
INSERT INTO request_payments VALUES("77","24","29","17","LTLEMZFO1AX7D","10.00","0.00","mahfuzasinthy@gmail.com","","","","test request","Pending","2018-06-24 17:22:37","2018-06-24 17:22:37");
INSERT INTO request_payments VALUES("78","24","29","17","2RCXSJGAP5I7G","10.00","0.00","mahfuzasinthy@gmail.com","","","","test request","Pending","2018-06-24 18:06:36","2018-06-24 18:06:36");
INSERT INTO request_payments VALUES("79","24","","12","XCNBH6W8FGAZF","10.00","0.00","admin@techvill.net","","","","test request","Pending","2018-06-24 18:15:48","2018-06-24 18:15:48");
INSERT INTO request_payments VALUES("80","24","","12","P9NJ0OVLCIMYS","10.00","0.00","admin@techvill.net","","","","test request","Pending","2018-06-24 18:15:52","2018-06-24 18:15:52");
INSERT INTO request_payments VALUES("81","24","","12","BGSVALCIN4BIZ","10.00","0.00","admin@techvill.net","","","","test request","Pending","2018-06-24 18:16:30","2018-06-24 18:16:30");
INSERT INTO request_payments VALUES("82","24","29","12","JBNSDTUWAIJHC","10.00","0.00","mahfuzasinthy@gmail.com","","","","test","Pending","2018-06-25 15:36:14","2018-06-25 15:36:14");
INSERT INTO request_payments VALUES("83","4","24","12","IARP0JQT3BTP5","20.00","0.00","borna.techvill@gmail.com","","","","asdf","Pending","2018-06-25 18:43:28","2018-06-25 18:43:28");
INSERT INTO request_payments VALUES("84","24","","14","ZYYVEWC27Z5QC","10.00","0.00","test@techvill.net","","","","test","Blocked","2018-06-25 18:49:44","2018-06-25 18:49:58");
INSERT INTO request_payments VALUES("85","24","","12","OAGVWCQPKDBX4","5.00","0.00","test@techvill.net","","","","test","Pending","2018-06-25 18:53:27","2018-06-25 18:53:27");
INSERT INTO request_payments VALUES("86","24","29","26","QFZ4NUVBMWPKH","5.00","0.00","mahfuzasinthy@gmail.com","","","","request money for buying books","Pending","2018-06-26 17:00:20","2018-06-26 17:00:20");
INSERT INTO request_payments VALUES("87","33","29","19","7AG0EFWYIVAXY","2.00","0.00","mahfuzasinthy@gmail.com","","","","test","Pending","2018-06-26 17:04:31","2018-06-26 17:04:31");





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
INSERT INTO role_user VALUES("9","6","Admin");
INSERT INTO role_user VALUES("10","2","User");
INSERT INTO role_user VALUES("10","6","Admin");
INSERT INTO role_user VALUES("12","6","Admin");
INSERT INTO role_user VALUES("14","5","User");
INSERT INTO role_user VALUES("15","2","User");
INSERT INTO role_user VALUES("20","2","User");
INSERT INTO role_user VALUES("21","2","User");
INSERT INTO role_user VALUES("22","2","User");
INSERT INTO role_user VALUES("24","5","User");
INSERT INTO role_user VALUES("29","2","User");
INSERT INTO role_user VALUES("30","2","User");
INSERT INTO role_user VALUES("31","2","User");
INSERT INTO role_user VALUES("32","2","User");
INSERT INTO role_user VALUES("33","2","User");





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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO roles VALUES("1","admin","Admin","Admin","Admin","2018-05-08 12:17:13","2018-05-08 12:17:13");
INSERT INTO roles VALUES("2","Default User","Default User","Default User","User","2018-05-08 12:17:13","2018-06-23 16:12:14");
INSERT INTO roles VALUES("4","test user","test user","test user","User","2018-05-21 08:41:27","2018-05-21 08:41:27");
INSERT INTO roles VALUES("5","User Role","User Role","User Role","User","2018-06-04 09:55:14","2018-06-04 09:55:14");
INSERT INTO roles VALUES("6","customer","customer","customer","Admin","2018-06-04 10:05:33","2018-06-04 10:05:33");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

INSERT INTO settings VALUES("42","name","Pay Money","general");
INSERT INTO settings VALUES("43","logo","1529926628_logo.jpg","general");
INSERT INTO settings VALUES("44","favicon","1528277676_favicon.jpg","general");
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
INSERT INTO settings VALUES("55","driver","sendmail","email");
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

INSERT INTO socials VALUES("1","facebook","<i class=\"ti-facebook\" aria-hidden=\"true\"></i>","http://facebook.com/parvez");
INSERT INTO socials VALUES("2","google_plus","<i class=\"ti-google plus\" aria-hidden=\"true\"></i>","http://plus.google.com/parvez");
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

INSERT INTO ticket_replies VALUES("6","1","7","3","<p>Hello,</p>\n\n<p>What was the main issues ?&nbsp;</p>","2018-06-04 11:42:17","user");
INSERT INTO ticket_replies VALUES("14","1","4","5","test ticket","2018-06-05 12:09:12","admin");
INSERT INTO ticket_replies VALUES("15","1","7","8","<p>Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.Your Invoice # INV-0003 for Quotation #QN-0001 from goBilling has been created.</p>","2018-06-05 14:44:24","user");
INSERT INTO ticket_replies VALUES("16","1","15","20","<p>sdfsdfsdf</p>","2018-06-10 14:47:36","user");
INSERT INTO ticket_replies VALUES("17","1","4","34","replying on june 26","2018-06-26 17:36:52","admin");





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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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
INSERT INTO tickets VALUES("34","1","4","1","asdf","asdf","TIC-5H89MS","Normal","2018-06-26 17:36:52","2018-06-21 12:36:49");





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
) ENGINE=InnoDB AUTO_INCREMENT=828 DEFAULT CHARSET=utf8;

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
INSERT INTO transactions VALUES("572","24","29","16","","","1UWBCNSRNLZZF","","51","9","registered","","","5.00","0.00","0.00","0.00","5.00","test","Success","2018-06-11 12:26:12","2018-06-11 12:26:39");
INSERT INTO transactions VALUES("573","29","24","16","","","1UWBCNSRNLZZF","","51","10","registered","","","5.00","0.00","0.00","0.00","-5.00","test","Blocked","2018-06-11 12:26:12","2018-06-11 12:26:51");
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
INSERT INTO transactions VALUES("779","24","","12","","","ML5WRTM858V6S","","29","7","registered","","","5.00","2.00","0.10","2.00","-7.10","","Success","2018-06-24 18:08:22","2018-06-24 18:08:22");
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO user_details VALUES("4","4","12","","","","","","");
INSERT INTO user_details VALUES("5","5","1","","","","","","");
INSERT INTO user_details VALUES("6","6","1","","","","","","");
INSERT INTO user_details VALUES("7","7","1","","","","","","");
INSERT INTO user_details VALUES("10","10","1","","","","","","");
INSERT INTO user_details VALUES("11","14","1","","","","","","");
INSERT INTO user_details VALUES("12","15","18","","","","","","");
INSERT INTO user_details VALUES("14","20","1","","","","","","");
INSERT INTO user_details VALUES("15","21","1","","","","","","");
INSERT INTO user_details VALUES("16","22","1","","","","","","");
INSERT INTO user_details VALUES("18","24","1","","","","","","");
INSERT INTO user_details VALUES("23","29","1","","","","","","");
INSERT INTO user_details VALUES("24","30","1","","","","","","");
INSERT INTO user_details VALUES("25","31","1","","","","","","");
INSERT INTO user_details VALUES("26","32","1","","","","","","");
INSERT INTO user_details VALUES("27","33","1","","","","","","");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` int(11) DEFAULT NULL,
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
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_role_id_index` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO users VALUES("4","tuhin.techvill","Tuhin","Hossain","123456","tuhin.techvill@gmail.com","$2y$10$XHyWMBWPrHJdArTk8.HVveNutiaNSD2bDG0kpryQVKx44fAW2ErI6","","Active","2","f01AN3ewqn0cSAS2hcPQOLbV8q6dEaM2CRTweoPatZbrc975HkBsldYhjR4A","2018-06-03 14:45:02","2018-06-07 12:16:11","1528189011.jpg","0");
INSERT INTO users VALUES("5","aminul.techvill","Aminul","Islam","2147483647","aminul.techvill@gmail.com","$2y$10$.iek8FEbAI2M1zKRbfAwl.BxVyK.ViZaP.7/BvyfA4EpoefE.P5lm","","Active","2","wYWZdgOPPWpaoCCeA472DaoEWX7A632i08bv0qLgxKddR6fnJhCvHjD2nHqV","2018-06-03 14:45:25","2018-06-05 10:02:59","1528171379.jpg","0");
INSERT INTO users VALUES("6","shahin.techvill","Shahin","Alam","1722113736","shahin.techvill@gmail.com","$2y$10$nrUJ.B3VI6Vd42PQAwGlN./UpAyNtrBKXWhmafMN92F6zC.2.zaJa","","Active","2","SBXPQyEdKiCZFK0VQr4Qrzu4rm4RXNuLS0OOjeHqE3a4OGP8tCUEkoUS9Qrc","2018-06-03 14:46:50","2018-06-07 14:03:05","","0");
INSERT INTO users VALUES("7","lenin.rock","Tauhidul","Hasan","1717170543","lenin.rock@gmail.com","$2y$10$qF9N4xxiMItkNmvhqMV8HO5dmyYi.prjiBH/AkVsiPzu3wnaKRPdK","","Active","2","YfoRV4zfo9jx5EoQ0elgFfqw3U8THga66TSC6Bh4AddFVabTFaB9zXNIIExp","2018-06-03 15:03:17","2018-06-03 15:03:17","","0");
INSERT INTO users VALUES("10","shakil.techvill","Atik","Shakil","765432","shakil.techvill@gmail.com","$2y$10$FvrrvvJd6.TYlx7K.nCTJ.X4SXQhO1n4iMEYTetM3DL2e333biyYi","","Active","2","gIFHKLhM3TqyEy2poHQOOf6QYBxiF8VnIXmTzL7wnn07lYSNTURZywPxhfH9","2018-06-04 09:42:14","2018-06-05 10:36:43","1528173403.jpg","0");
INSERT INTO users VALUES("14","user","User","User","168870000","user@gmail.com","$2y$10$MSsuewpIkTMV5TnbWrqbEeB99/Ju1./Djr6SQwKqn65lJjC9MKv7O","111","Active","5","pMvboNemMgRgwYUyAJM3P76rkrRKSbPJHLe3h2RxSwa3iERmSBh1QvjHqW0h","2018-06-04 10:00:49","2018-06-04 10:00:49","","0");
INSERT INTO users VALUES("15","parvez.techvill","Parvez","Robi","1521108069","parvez.techvill@gmail.com","$2y$10$eBxGc/bkTGlVcaH2JzJ.oOYhgb.x/8vx30Byg8IbUYunA8.ayjg0.","parveztechvill","Active","2","C5iKqB9WdHRJauRGNvrvdIjNMd27NVTSuXGitGr9NR0A7KWEA8gMDigpjs60","2018-06-04 10:21:24","2018-06-22 11:43:39","1529646218.jpg","0");
INSERT INTO users VALUES("20","parvez.agvbd","parvez","agvbd","1700000000","parvez.agvbd@gmail.com","$2y$10$GYZXOCmb6D9bOf6/BT/bEe3DJwLestRMHmbHCs9D6.H84BCY/p8AS","parvez","Active","2","kheWCsAdooJtpFidhxlL1rz8cLPxzt28OWOjkbfupBoBoOB6ixUc0CGn99qw","2018-06-05 11:09:46","2018-06-05 11:09:46","","0");
INSERT INTO users VALUES("21","sumi.techvill","Sany","Khan","1722113737","sumi.techvill@gmail.com","$2y$10$kds0EtfP9OZjJi9hSCNvgO/Y2FjQfXYcooOlYfRE.EZlS6SZRngyC","","Active","2","Ndpf5Z4KhGs6XKiS30v6cBuBrdXESCVAMrBmtMqy3WC4n7vnbgcPEWJ1SiQq","2018-06-05 12:17:11","2018-06-05 12:17:11","","0");
INSERT INTO users VALUES("22","tr.techvill","Reza","Khan","","tr.techvill@gmail.com","$2y$10$nuYRcb0FaasqR8fg6u1IhecwKtrXONMdQ37vZDeUZ5QXpOsEEV9pq","","Active","2","","2018-06-05 14:00:05","2018-06-05 14:00:05","","0");
INSERT INTO users VALUES("24","borna.techvill","Farzana","Borna","1688756715","borna.techvill@gmail.com","$2y$10$fLyQyy/zkqjSxBmvjI2EsOfP9f8KKljxu4Cl4aH8znmxxFBtnR.22","aaaaaaaaaaa","Active","5","8XXNwEG2D2VqhEMNqxngGvYbax9ukx22RZGR1hYXfWoNyUmhH3L3Wl4fSsIB","2018-06-06 14:21:54","2018-06-23 18:47:34","1528690159.jpg","0");
INSERT INTO users VALUES("29","mahfuzasinthy","Mahfuza","Sinthy","","mahfuzasinthy@gmail.com","$2y$10$6z8BcnF2N8KnQ8BGPIE3YOLakRKBLFlhJfEHMZt7kemZlhJoYYD1C","","Active","2","Z3DiLO8JUBxqIZDSFszpF8uyyPV2qPL7bmHSE84I4DxHZvFMGywOCG7so6b6","2018-06-07 13:42:54","2018-06-26 13:21:36","1529997696.jpg","0");
INSERT INTO users VALUES("30","testing","testing","testing","","testing@gmail.com","$2y$10$JTR05osFmk6u7PzANg4tne81ZZTC53we/v9jzLemnM5nHS9Cf91hi","","Active","2","t2PPxHzqbeyqGFiuiFZcsZYbWrbPhMdBFFbON65QAe1gesmOhhT3p8jW7jIP","2018-06-23 18:29:31","2018-06-23 18:29:31","","0");
INSERT INTO users VALUES("31","milon.techvill","milon","ahmed","","milon.techvill@gmail.com","$2y$10$lAgxMYGJn4dA.L0R3ayXju6qW9BS.XRelaRqUT7mRFEIDQp3RWWG2","","Active","2","","2018-06-25 18:11:30","2018-06-25 18:13:11","","0");
INSERT INTO users VALUES("32","test","test","test","","test@gmail.com","$2y$10$Oz6.M/LXg7WUV2GiPmoU4.CvweDMS2by5pKHVmJFOELguJZ9j89EK","","Active","2","QxpNJyegePf8QQnA94ZSf5XHCwzV7LGMSPO1ULgMc2BozUoSXBpXw6EX8509","2018-06-25 18:52:35","2018-06-25 18:52:35","","0");
INSERT INTO users VALUES("33","borna606","Farzana","Borna","","borna606@gmail.com","$2y$10$neGtxahIFoXrW4S0fUdbZuQkq7WA97wjQc0thVzH1GX25GPLvMRaa","","Active","2","YK3I72X0eq6Ccmimednw9nWvHhDek96w2syjsr36g8koLwWp4ZxubAv8MII8","2018-06-26 17:03:19","2018-06-26 17:03:50","1530011030.jpg","0");





CREATE TABLE IF NOT EXISTS `vouchers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `activator_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Voucher)',
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO vouchers VALUES("1","8","","12","AN8NNRDNMXZZB","10.00","OZ0UZMFAV76WRKGSCMGEW6QTH6U8IF","No","Pending","2018-06-04 13:39:31","2018-06-04 13:39:31");
INSERT INTO vouchers VALUES("2","8","8","12","EAS5VYVL5AMPY","10.00","N87H84KJVYRDRM2XLAOYBULVJKXWRL","No","Success","2018-06-04 13:39:44","2018-06-04 13:49:34");
INSERT INTO vouchers VALUES("3","19","9","12","GRBXNU9LGGKCK","5.00","39QYNAH7ZIPD86IDTJRELRTBWBJZRO","No","Success","2018-06-04 16:08:03","2018-06-04 16:09:45");
INSERT INTO vouchers VALUES("4","15","4","12","PLSSARP18G0XN","25.00","FZ5ABPN27OKI0DT4FYHP5VCDNSILWL","No","Success","2018-06-05 13:42:24","2018-06-05 13:42:54");
INSERT INTO vouchers VALUES("5","15","4","12","SQPMCVQJ7BSMT","20.00","ME1AP9ULRQQFK6RVSHGOZJ1ITC1WQM","No","Success","2018-06-05 13:46:52","2018-06-05 13:47:09");
INSERT INTO vouchers VALUES("6","7","","12","SNHTSUTGHURUT","10.00","AGWDSGC1YUKGOKULUZVBE25CT9G1LQ","No","Pending","2018-06-05 14:23:28","2018-06-05 14:23:28");
INSERT INTO vouchers VALUES("7","7","","12","DCPJXPMYVADTF","10.00","9QRFX5QUOJMKDFY4XTP1MZYZ1Y6U6F","No","Pending","2018-06-06 12:18:42","2018-06-06 12:18:42");
INSERT INTO vouchers VALUES("8","4","","12","PISIZP7OJV4V7","10.00","BETIAMXZVVP9UWEA6QCVPKAD9KSGFA","No","Pending","2018-06-07 11:56:32","2018-06-07 11:56:32");
INSERT INTO vouchers VALUES("9","4","","12","JMZWBPCZTPLQZ","10.33","B5WYZNQVYUD4HJCNCF48ICEJADR7D7","No","Pending","2018-06-07 13:02:48","2018-06-07 13:02:48");
INSERT INTO vouchers VALUES("10","4","","12","DYWZRW61R8H80","5.00","93ZZA53UCGTHLJHG4RELJBLAVBOFN7","No","Pending","2018-06-07 13:12:56","2018-06-07 13:12:56");
INSERT INTO vouchers VALUES("11","4","4","12","VLTNHQMRIRHIK","5.00","SKUXIHLXOONVFFF2HNELUSOAOTCAVH","No","Success","2018-06-07 13:14:16","2018-06-07 14:13:02");
INSERT INTO vouchers VALUES("12","4","4","12","ZDJPQXJ66ZHS1","2.22","LDTRBFQBQEVXEDZ1IEAEXHCXRT8QX6","Yes","Success","2018-06-07 13:38:35","2018-06-12 10:01:58");
INSERT INTO vouchers VALUES("13","7","","12","XYRSDHLKQ9GGT","10.00","FEBQ1ZJENICZVVUOZESSBM9SR8Z3YB","No","Pending","2018-06-07 14:17:39","2018-06-07 14:17:39");
INSERT INTO vouchers VALUES("14","24","","12","ZG3IRVAU3OIP6","5.00","G9S2YLGLYTZ4ABK8OOQV3XDZ0P3IBL","No","Pending","2018-06-07 15:30:28","2018-06-07 15:30:28");
INSERT INTO vouchers VALUES("15","7","","12","X51WKXWB077EO","10.00","KXKLCO5KIZ0NYP98NK6E51S2GZCWTW","No","Pending","2018-06-11 13:11:07","2018-06-11 13:11:07");
INSERT INTO vouchers VALUES("16","24","","12","I6ZY5NEGKRLGD","5.00","YDXPKL6OJX0HDPHFIGHWJOVKZPR0ZT","No","Pending","2018-06-11 14:13:03","2018-06-11 14:13:03");
INSERT INTO vouchers VALUES("17","4","4","12","PFCKSFUCQK63M","10.00","ZHZJ8DBPHKJBAAA1C5SCO2P7MU0JF1","Yes","Success","2018-06-12 10:29:00","2018-06-12 10:29:12");
INSERT INTO vouchers VALUES("18","24","","12","E6DYOZRKGTPQG","10.00","TGJNWR9KWUBNEYF6AUNG8PHYJW1869","No","Success","2018-06-12 13:47:54","2018-06-12 13:47:54");
INSERT INTO vouchers VALUES("19","24","","12","AYJMH63VGPUXX","10.00","CJB1RZ9W26CZK9OPDETIKYM7VWMDWL","No","Success","2018-06-23 17:33:14","2018-06-23 17:33:14");
INSERT INTO vouchers VALUES("20","7","","12","0EEWUNBXVBDJT","10.00","O9T3IEQOS5AXVUOT9IHFQP16M5F0MP","No","Success","2018-06-24 13:52:02","2018-06-24 13:52:02");
INSERT INTO vouchers VALUES("21","7","7","12","RRKS99YU8VPFS","10.00","CGVYXK6N0C9F0W1HVTGM9FB2XBMPCB","Yes","Success","2018-06-24 13:53:14","2018-06-24 14:01:49");
INSERT INTO vouchers VALUES("22","24","","12","IDIP1U8GT9P8S","10.00","VXO1MK5SZQJBXKUJAGEGN5KXZHFO14","No","Success","2018-06-24 14:42:49","2018-06-24 14:42:49");
INSERT INTO vouchers VALUES("23","24","","12","TOCFVRMRM4MIY","10.00","GMXJV2CFUAMBSL0I9BRSNTUZULQNQP","No","Success","2018-06-24 14:44:37","2018-06-24 14:44:37");
INSERT INTO vouchers VALUES("24","24","24","12","NSSAEIRGDV6PH","5.00","DMZWYPDJW5QB5B8GMJ9Q0R9PHOKX4Q","Yes","Success","2018-06-24 16:25:27","2018-06-24 16:27:15");
INSERT INTO vouchers VALUES("25","24","","12","SCNP9E2VAKCVJ","2.00","TYN1UZ4GUWNIQUROFLJCKVDJJUQRFV","No","Success","2018-06-24 16:32:32","2018-06-24 16:32:32");
INSERT INTO vouchers VALUES("26","24","","12","4JYYJE3MVUTWB","2.00","RX0HRBCKGD5VJQCQU7E2RDEO35P8BM","No","Success","2018-06-24 16:33:26","2018-06-24 16:33:26");
INSERT INTO vouchers VALUES("27","24","","12","YGCYMCDUC9NCF","5.00","OJBD6M4NBN7R5BOFABKX5TZCZSNMT0","No","Success","2018-06-24 16:35:05","2018-06-24 16:35:05");
INSERT INTO vouchers VALUES("28","24","","12","ZC7BEUKPKIZYD","5.00","XHPJBNY5T3K5LA8G78PPYBNVZ3DRTC","No","Success","2018-06-24 18:06:54","2018-06-24 18:06:54");
INSERT INTO vouchers VALUES("29","24","","12","ML5WRTM858V6S","5.00","ZRGYKD4IP1ASSWDXSCBBKXEXWCC1UO","No","Success","2018-06-24 18:08:22","2018-06-24 18:08:22");
INSERT INTO vouchers VALUES("30","24","","12","BWBIVE9ZHBN55","5.00","HELI92C4KXYXJLLWRPU2GAYFNKQ6EL","No","Success","2018-06-24 18:09:02","2018-06-24 18:09:02");
INSERT INTO vouchers VALUES("31","24","24","12","GCZUE7PPNDKQG","10.00","IBLDYHHBZDMIUOKI2ZYBM21NNGREHE","Yes","Success","2018-06-25 15:50:05","2018-06-25 16:19:55");





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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO wallets VALUES("4","4","12","636.38","Yes","2018-06-03 14:45:02","2018-06-26 11:28:35");
INSERT INTO wallets VALUES("5","5","12","4353.45","Yes","2018-06-03 14:45:25","2018-06-25 17:09:31");
INSERT INTO wallets VALUES("6","6","12","4822.50","Yes","2018-06-03 14:46:50","2018-06-11 10:12:33");
INSERT INTO wallets VALUES("7","5","14","10001.10","No","2018-06-03 14:47:16","2018-06-25 17:09:31");
INSERT INTO wallets VALUES("8","5","26","1200.00","No","2018-06-03 14:55:53","2018-06-25 17:09:31");
INSERT INTO wallets VALUES("9","7","12","500.26","Yes","2018-06-03 15:03:17","2018-06-26 13:33:15");
INSERT INTO wallets VALUES("15","10","12","9244.93","Yes","2018-06-04 09:42:14","2018-06-12 15:48:03");
INSERT INTO wallets VALUES("16","14","12","0.00","Yes","2018-06-04 10:00:49","2018-06-04 10:01:33");
INSERT INTO wallets VALUES("17","15","12","44849.59","Yes","2018-06-04 10:21:24","2018-06-26 11:05:58");
INSERT INTO wallets VALUES("18","7","13","9.10","No","2018-06-04 10:58:49","2018-06-26 13:33:15");
INSERT INTO wallets VALUES("19","15","13","214.50","No","2018-06-04 11:11:35","2018-06-26 11:05:58");
INSERT INTO wallets VALUES("24","20","12","14114.52","Yes","2018-06-05 11:09:46","2018-06-24 11:34:55");
INSERT INTO wallets VALUES("25","15","14","979.35","No","2018-06-05 11:21:57","2018-06-26 11:05:58");
INSERT INTO wallets VALUES("26","20","14","812.60","No","2018-06-05 11:22:22","2018-06-24 11:34:55");
INSERT INTO wallets VALUES("27","21","12","0.00","Yes","2018-06-05 12:17:11","2018-06-05 15:48:25");
INSERT INTO wallets VALUES("28","22","12","0.00","Yes","2018-06-05 14:00:05","2018-06-05 14:00:05");
INSERT INTO wallets VALUES("29","7","24","0.00","No","2018-06-05 14:21:08","2018-06-26 13:33:15");
INSERT INTO wallets VALUES("30","5","13","-50.42","No","2018-06-05 16:03:45","2018-06-25 17:09:31");
INSERT INTO wallets VALUES("32","24","13","-16.17","No","2018-06-06 14:21:54","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("33","7","14","43.91","No","2018-06-06 14:49:40","2018-06-26 13:33:15");
INSERT INTO wallets VALUES("34","24","12","474.99","Yes","2018-06-06 15:32:52","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("35","24","14","443.33","No","2018-06-06 15:55:16","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("36","24","16","-4.25","No","2018-06-07 12:23:49","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("42","29","12","41.16","Yes","2018-06-07 13:42:54","2018-06-26 12:33:25");
INSERT INTO wallets VALUES("43","29","16","50.00","No","2018-06-07 13:51:42","2018-06-26 16:56:59");
INSERT INTO wallets VALUES("44","24","26","0.00","No","2018-06-10 12:35:50","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("45","20","26","100.00","No","2018-06-10 14:52:05","2018-06-24 11:34:55");
INSERT INTO wallets VALUES("46","24","20","0.00","No","2018-06-10 15:29:01","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("47","24","23","0.00","No","2018-06-10 15:33:59","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("48","24","19","0.00","No","2018-06-11 11:27:25","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("49","29","14","12.00","No","2018-06-13 13:29:57","2018-06-21 17:57:41");
INSERT INTO wallets VALUES("50","24","15","0.00","No","2018-06-13 14:33:41","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("51","4","13","32.50","No","2018-06-21 12:06:21","2018-06-26 11:28:35");
INSERT INTO wallets VALUES("52","30","12","0.00","Yes","2018-06-23 18:29:31","2018-06-23 18:29:39");
INSERT INTO wallets VALUES("53","24","17","0.00","No","2018-06-24 17:21:49","2018-06-26 19:06:48");
INSERT INTO wallets VALUES("54","31","13","0.00","Yes","2018-06-25 18:11:30","2018-06-25 18:11:30");
INSERT INTO wallets VALUES("55","32","13","0.00","Yes","2018-06-25 18:52:35","2018-06-25 18:52:54");
INSERT INTO wallets VALUES("56","15","21","1200.00","No","2018-06-26 11:25:22","2018-06-26 11:54:02");
INSERT INTO wallets VALUES("57","4","21","600.00","No","2018-06-26 11:30:20","2018-06-26 11:45:13");
INSERT INTO wallets VALUES("58","33","12","0.00","Yes","2018-06-26 17:03:20","2018-06-26 17:03:28");
INSERT INTO wallets VALUES("59","33","19","0.00","No","2018-06-26 17:04:31","2018-06-26 17:04:31");





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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

INSERT INTO withdrawals VALUES("4","7","12","3","FW4XCP3GXR5KM","1.00","10.00","9.00","20.00","lenin.rock@gmail.com","Pending","2018-06-05 14:22:12","2018-06-05 14:22:12");
INSERT INTO withdrawals VALUES("5","24","12","3","AT8RZZPKD7XPL","0.50","10.00","-0.50","10.00","borna@yahoo.com","Pending","2018-06-07 11:28:52","2018-06-07 11:28:52");
INSERT INTO withdrawals VALUES("6","24","13","3","M8QGGUDPQ8UJT","0.72","18.00","-9.72","9.00","borna@yahoo.com","Pending","2018-06-07 11:58:47","2018-06-07 11:58:47");
INSERT INTO withdrawals VALUES("7","4","12","1","6JIFPK1V0CNHE","0.50","10.00","-0.50","10.00","tuhin.techvill@gmail.com","Pending","2018-06-07 14:23:32","2018-06-07 14:23:32");
INSERT INTO withdrawals VALUES("8","24","12","3","BOY5T6401GMTF","1.00","10.00","9.00","20.00","borna@yahoo.com","Pending","2018-06-11 10:45:13","2018-06-13 13:03:54");
INSERT INTO withdrawals VALUES("9","5","12","3","NIBRJDSJR8UC0","0.50","10.00","-0.50","10.00","aminul.techvill@gmail.com","Pending","2018-06-25 12:06:32","2018-06-25 12:06:32");
INSERT INTO withdrawals VALUES("10","24","12","3","KIHDUJAAK6IH0","5.00","10.00","85.00","100.00","borna@yahoo.com","Pending","2018-06-25 18:32:30","2018-06-25 18:32:30");
INSERT INTO withdrawals VALUES("11","24","12","3","ZJ5SCKMZQTWZY","0.50","10.00","-0.50","10.00","borna@yahoo.com","Pending","2018-06-25 18:37:33","2018-06-25 18:37:33");



