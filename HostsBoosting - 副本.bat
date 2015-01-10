@echo	off

set	release=2013-07-20	12:00:00

echo	Hosts自动修改脚本
echo		更新时间：%release%
ver	|	find	"5."	>nul
if	errorlevel	1	echo&	echo	请确认您已经以管理员身份运行

if	exist	%windir%\system32\drivers\etc\hosts	(
				takeown	/a	/f	%windir%\system32\drivers\etc\hosts
				ICACLS	%windir%\system32\drivers\etc\hosts	/Grant	Administrators:F
				)

cls
echo	Hosts是包含网址与IP的网络连接增强文件，合理使用可以加速网络连接，突破封锁，去除广告等。使用前请关闭所谓的安全卫士、管家，以免干扰程序的正常工作.
echo	本脚本将更新Google	Github	Twitter	Facebook	Wiki	Apple	Dropbox等ip,以及部分过滤广告IP.
echo	程序开源，请确保程序是从官方网址获取，用户自由选择是否继续执行，作者不承担任何责任。
echo	即将更新系统Hosts，按任意键表示你同意条款并继续
pause


if	exist	%windir%\System32\drivers\etc\hosts.backup1	del	%windir%\System32\drivers\etc\hosts.backup1	/q
if	exist	%windir%\System32\drivers\etc\hosts.backup	ren	%windir%\System32\drivers\etc\hosts.backup	hosts.backup1
if	exist	%windir%\System32\drivers\etc\hosts	ren	%windir%\System32\drivers\etc\hosts	hosts.backup
ren	%windir%\System32\drivers\etc\hostsdsw248	hosts


cls
echo	更新中，请耐心等待……


echo	Basic
echo	#Basic	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	localhost.localdomain	localhost	>>%windir%\System32\drivers\etc\hosts
echo	::1	localhost	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	ubuntu	>>%windir%\System32\drivers\etc\hosts
echo	255.255.255.255	broadcasthost	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	advertising.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	127.0.0.1	ubuntu	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


REM	echo	MySite	And	Host
REM	echo	#MySite	And	Host	>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	dsw248.tk')	do	set	dsw248=%%i
REM	echo	%dsw248%	dsw248.tk	>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	michaelting.tk')	do	set	dsw248=%%i
REM	echo	%dsw248%	michaelting.tk	>>%windir%\System32\drivers\etc\hosts
REM	echo.		>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	dsw248.blogspot.com')	do	set	dsw248=%%i
REM	echo	%dsw248%	dsw248.blogspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo.		>>%windir%\System32\drivers\etc\hosts
REM	for	/f	"tokens=2	delims=[]"	%%i	in	('ping	mail.google.com')	do	set	GAE=%%i
REM	echo	#MyHosts	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	dsw248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	pkm248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	webcms248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	weblog248.appspot.com	>>%windir%\System32\drivers\etc\hosts
REM	echo	%GAE%	webproxy248.appspot.com	#Online	Proxy>>%windir%\System32\drivers\etc\hosts
REM	echo.		>>%windir%\System32\drivers\etc\hosts


:Github
echo	Github
echo	#Github	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.239	github.com	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.252	nodeload.github.com	>>%windir%\System32\drivers\etc\hosts
echo	199.27.76.130	raw.github.com	>>%windir%\System32\drivers\etc\hosts
echo	204.232.175.78	documentcloud.github.com	>>%windir%\System32\drivers\etc\hosts
echo	107.20.136.254	help.github.com	>>%windir%\System32\drivers\etc\hosts
echo	204.232.175.94	gist.github.com	>>%windir%\System32\drivers\etc\hosts
echo	107.22.3.110	status.github.com	>>%windir%\System32\drivers\etc\hosts
echo	204.232.175.78	training.github.com	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.243	www.github.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


:Facebook
echo	#Facebook	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	api-read.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	api.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	apps.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	developers.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	graph.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	orcart.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	www.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	173.252.112.28	zh-CN.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	173.252.100.25	m.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	61.213.189.98	b.static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	61.213.189.120	b.static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	66.220.145.63	bigzipfiles.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	61.213.189.113	creative.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	66.152.103.74	external.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	#66.220.149.88	c.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.227.26	chat.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.147.96	check4.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#184.31.111.139	connect.facebook.net	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.227.19	creativeupload.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.240.99	d.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.149.90	error.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#61.213.189.113	fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#64.213.102.26	fbcdn-profile-a.akamaihd.net	>>%windir%\System32\drivers\etc\hosts
echo	#173.223.232.67	fbcdn-sphotos-a.akamaihd.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.151.33	hphotos-ak-snc1.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.151.33	hphotos-ak-snc3.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.240.10	hphotos-ash4.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#69.63.183.200	hphotos-pao1.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.151.33	hphotos-snc1.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.151.32	hphotos-snc3.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.151.22	hphotos-snc6.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.227.24	hphotos-snc7.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.144.43	ldap.thefacebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.149.96	o.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.245.18	photos-ak-ash1.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.245.18	photos-ash1.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.149.90	pixel.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#118.214.190.105	profile.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#61.213.189.114	profile.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.247.22	s-static.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#61.213.189.113	s-hprofile-sf2p.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#184.26.194.110	s-static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#23.5.157.177	s-static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.227.30	secure-media.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.227.30	secure-media.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.149.96	ssl.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.247.38	ssl.connect.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.63.189.76	star.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#61.213.189.98	static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#65.32.34.136	static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.229.17	upload.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.144.41	vpn.tfbnw.net	>>%windir%\System32\drivers\etc\hosts
echo	#120.29.145.50	vthumb.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	#66.220.151.31	vupload.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	#69.171.225.31	www.connect.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts



:Twitter
echo	Twitter
echo	#Twitter	>>%windir%\System32\drivers\etc\hosts
echo	199.59.150.141	twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	#199.59.150.141	mobile.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.150.142	api.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	199.16.156.47	pic.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.136	stream.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.137	sitestream.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.135	betastream.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.148	upload.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.137	dev.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.91	pay.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.149	urls-real.api.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.16.156.81	userstream.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.16.156.12	support.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	#199.59.148.210	t.co	>>%windir%\System32\drivers\etc\hosts
echo	69.58.188.34	bitly.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	208.87.33.151	api.mobilepicture.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.16	a0.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.16	a1.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.16	p.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	184.169.75.33	si0.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	184.169.75.33	si1.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	184.169.75.33	si2.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	184.169.75.33	si3.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	184.169.75.33	si4.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	184.169.75.33	si5.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	199.16.156.77	image-proxy-origin.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi40.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi41.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi42.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi43.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi44.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi45.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi46.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi47.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi48.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi49.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.143	oi50.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi51.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi52.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi53.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi54.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi55.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo	209.17.70.144	oi56.tinypic.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	50.97.168.42	web1.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.23.200.233	web10.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.97.168.43	web2.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.97.168.43	web3.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.97.168.40	web4.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.97.168.41	web5.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.23.200.231	web6.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.23.200.232	web7.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.23.200.229	web8.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	50.23.200.228	web9.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo	174.37.33.172	m1.twitpic.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts



:Wordpress
echo	Wordpress
echo	#Wordpress	>>%windir%\System32\drivers\etc\hosts
echo	72.233.119.209	i.polldaddy.com	>>%windir%\System32\drivers\etc\hosts
echo	72.233.119.209	i0.poll.fm	>>%windir%\System32\drivers\etc\hosts
echo	74.200.247.60	wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s0.wp.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s1.wp.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s2.wp.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s.wordpress.org	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s1.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s2.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s3.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	93.184.220.20	s.stats.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	lb.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	zh.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	zh-sg.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	dashboard.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	forums.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	en.forums.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	en.blog.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	stats.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	wpcom.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	72.233.69.6	botd2.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	72.233.69.6	botd.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	lucifr.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo	74.200.244.59	*.wordpress.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


:Dropbox
echo	Dropbox
echo	#Dropbox	>>%windir%\System32\drivers\etc\hosts
echo	199.47.217.179	dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo	199.47.216.170	www.dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo	107.20.207.62	dl.dropbox.com	dl-web.dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo	174.36.51.42	forums.dropbox.com	wiki.dropbox.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


:Apple
echo	Apple
echo	#Apple	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	adcdownload.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	deimos3.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	appldnld.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	swcdn.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	203.78.36.40	developer.apple.com	>>%windir%\System32\drivers\etc\hosts
echo	184.25.218.46	www.icloud.com	>>%windir%\System32\drivers\etc\hosts
echo	184.30.117.47	www.me.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


:multiupload
echo	multiupload
set	MULTIUPLOAD=85.17.76.195
echo	#multiupload	>>%windir%\System32\drivers\etc\hosts
echo	85.17.221.117	www.multiupload.com	>>%windir%\System32\drivers\etc\hosts
echo	85.17.221.117	multiupload.com	>>%windir%\System32\drivers\etc\hosts

echo	%MULTIUPLOAD%	multiupload.com	www.multiupload.com	www2.multiupload.com	www3.multiupload.com	www4.multiupload.com	www5.multiupload.com	www6.multiupload.com	www7.multiupload.com	www8.multiupload.com	www9.multiupload.com	www10.multiupload.com	www11.multiupload.com	www12.multiupload.com	www13.multiupload.com	www14.multiupload.com	www15.multiupload.com	www16.multiupload.com	www17.multiupload.com	www18.multiupload.com	www19.multiupload.com	www20.multiupload.com	www21.multiupload.com	www22.multiupload.com	www23.multiupload.com	www24.multiupload.com	www25.multiupload.com	www26.multiupload.com	www28.multiupload.com	www29.multiupload.com	www30.multiupload.com	www31.multiupload.com	www32.multiupload.com	www33.multiupload.com	www34.multiupload.com	www35.multiupload.com	www36.multiupload.com	www37.multiupload.com	www38.multiupload.com	www39.multiupload.com	www40.multiupload.com	www41.multiupload.com	www42.multiupload.com	www43.multiupload.com	www44.multiupload.com	www45.multiupload.com	www46.multiupload.com	www47.multiupload.com	www48.multiupload.com	www49.multiupload.com	www50.multiupload.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


echo	Wiki
echo	#Wiki	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	www.wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	en.wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	zh.wikipedia.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	www.wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	en.wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.204	zh.wikibooks.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	www.wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	en.wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.206	zh.wikinews.org	>>%windir%\System32\drivers\etc\hosts
echo	208.80.152.201	wikiquote.org	www.wikiquote.org	en.wikiquote.org	zh.wikiquote.org	zh.wikisource.org	en.wikisource.org	wiktionary.org	www.wiktionary.org	en.wiktionary.org	zh.wiktionary.org	wikimedia.org	www.wikimedia.org	bugs.wikimedia.org	bugzilla.wikimedia.org	commons.wikimedia.org	dumps.wikimedia.org	download.wikimedia.org	irc.wikimedia.org	ftp.wikimedia.org	ganglia.wikimedia.org	mail.wikimedia.org	meta.wikimedia.org	news.wikimedia.org	noc.wikimedia.org	kate.wikimedia.org	kohl.wikimedia.org	stats.wikimedia.org	ticket.wikimedia.org	tools.wikimedia.org	upload.wikimedia.org	wikimediafoundation.org	www.wikimediafoundation.org	mediawiki.org	www.mediawiki.org	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


set	AdsFree=0.0.0.0
echo	AD	Free
echo	#AD	Free	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts



echo	Google
:Google
echo	#Google	>>%windir%\System32\drivers\etc\hosts


echo	1使用内置IP(快速)
echo	2自动更新IP(推荐)
echo	3网络下载hosts(备用)
set	/p	choice=	请选择已成功获取的IP类别:

if	"%choice%"=="1"	goto	DefaultIP
if	"%choice%"=="2"	goto	AutoIP
if	"%choice%"=="3"	goto	DownloadIP


:DefaultIP
REM	方法1，内置文件echo	203.208.46.200	0.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	0.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	1.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	1.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	10.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	10.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	11.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	11.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	12.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	12.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	13.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	13.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	14.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	14.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	15.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	15.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	16.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	16.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	2.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	2.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	3.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	3.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	4.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	4.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	5.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	5.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	6.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	6.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	7.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	7.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	8.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	8.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	9.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	9.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	accounts.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	accounts.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	answers.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	apis.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	appengine.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	apps.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	appspot.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks0.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks1.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks10.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks2.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks3.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks4.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks5.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks6.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks7.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks8.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	bks9.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	blogsearch.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	browserchannel-docs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	browserchannel-spreadsheets.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	browsersync.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	browsersync.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	buzz.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cache.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cache.pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	calendar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbk0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbk1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbk2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbk3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbks0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbks1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbks2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	cbks3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	chart.apis.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.221	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	checkout.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	checkout.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	chrome.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	code.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	code.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	csi.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	desktop.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	desktop.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	desktop2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	developers.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ditu.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	dl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	dl.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	dl-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs8.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	docs9.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive8.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	drive9.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	earth.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted-tbn.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted-tbn0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted-tbn1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted-tbn2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted-tbn3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	feedburner.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	feedproxy.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.221	filetransferenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	finance.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	fusion.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	geoauth.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	gg.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ghs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ghs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ghs46.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ghs46.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	googleapis.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	googleapis-ajax.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	googleapis-ajax.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	googlecode.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	google-public-dns-a.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	google-public-dns-b.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	goto.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	groups.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	groups.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	groups-beta.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	gxc.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	id.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	id.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	images.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	images.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	investor.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	jmt0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	kh.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	kh.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khm.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khm.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khm0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khm1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khm2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khm3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khmdb.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khms.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khms.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khms0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khms1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khms2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	khms3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	labs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	large-uploads.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	lh2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	lh2.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	lh3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	lh4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	lh5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	lh6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	linkhelp.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	local.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	m.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.213	mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	map.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	maps.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	maps.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	maps-api-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mars.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mobile.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mobile-gtalk.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mobilemaps.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	#203.208.46.200	mtalk.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mts.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mts.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mts0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mts1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mts2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mts3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	music.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	music-streaming.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mw1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mw2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	news.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	news.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	photos.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	photos-ugc.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	picasa.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	picasaweb.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	picasaweb.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	places.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	play.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	productforums.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	profiles.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	reader.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	safebrowsing.cache.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	safebrowsing.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	safebrowsing.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	safebrowsing-cache.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sandbox.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sb.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sb.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sb-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sb-ssl.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	scholar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	scholar.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	script.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	services.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sites.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sketchup.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	sketchup.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheet.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets8.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets9.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	spreadsheets-china.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	suggestqueries.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	suggestqueries.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	support.google.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.70.125	talk.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	talkgadget.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	tbn0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	tbn1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	tbn2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	tbn3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	toolbar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	toolbarqueries.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	toolbarqueries.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	toolbarqueries.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	tools.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	tools.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	translate.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	trends.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	upload.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	upload.drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	uploads.code.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	uploadsj.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	v3.cache1.c.docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	video.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	video-stats.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	voice.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	wallet.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	wifi.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	wifi.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	wire.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	writely.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	writely.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	writely-china.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	writely-com.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www2.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www3.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www4.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ytstatic.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	0-open-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	1-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	1-open-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	1-ps.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	2-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	2-open-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	2-ps.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	3-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	3-ps.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	3hdrrlnlknhi77nrmsjnjr152ueo3soc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	3-open-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	4-ps.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	4fjvqid3r3oq66t548clrdj52df15coc-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	53rd6p0catml6vat6qra84rs0del836d-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	59cbv4l9s05pbaks9v77vc3mengeqors-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	8kubpeu8314p2efdd7jlv09an9i2ljdo-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	adstvca8k2ooaknjjmv89j22n9t676ve-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	blogger.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	bt26mravu2qpe56n8gnmjnpv2inl84bf-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	clients7.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	code-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	debh8vg7vd93bco3prdajidmm7dhql3f-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-00-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-08-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-0c-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-0g-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-0s-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-10-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	doc-14-7o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	feedback.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	googlehosted.l.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp0.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	gp6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	hsco54a20sh11q9jkmb51ad2n3hmkmrg-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	i8brh95qor6r54nkl52hidj2ggcs4jgm-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images1-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images2-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images3-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images4-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images5-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images6-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images7-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images8-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images9-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images-docs-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	images-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	k6v18tjr24doa89b55o3na41kn4v73eb-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	lh1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	lh2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	lh3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	lh4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	lh5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	lh6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	mail-attachment.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	music.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	music-onebox.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	oauth.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	ob7f2qc0i50kbjnc81vkhgmb5hsv7a8l-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	ode25pfjgmvpquh3b1oqo31ti5ibg5fr-a-calendar.opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	qhie5b8u979rnch1q0hqbrmbkn9estf7-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	r70rmsn4s0rhk6cehcbbcbfbs31pu0va-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	rbjhe237k979f79d87gmenp3gejfonu9-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	s1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	s2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	s3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	s4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	s5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	s6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	spreadsheets-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	static.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	t.doc-0-0-sj.sj.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	themes.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	translate.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	u807isd5egseeabjccgcns005p2miucq-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	upt14k1i2veesusrda9nfotcrbp9d7p5-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	webcache.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-fc-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-gm-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-kix-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-open-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-opensocial-sandbox.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.202	www-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	csi.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	g0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	g1.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	g2.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	g3.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	maps.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt1.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt2.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt3.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt4.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt5.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt6.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	mt7.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	ssl.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	t0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	t1.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	t2.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	t3.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.207	www.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	lh1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	lh2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	lh3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	lh4.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	lh5.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	lh6.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	nt0.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	nt1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	nt2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	nt3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	nt4.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	nt5.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.64.141	chrometophone.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	evolutionofweb.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	googcloudlabs.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	gv-gadget.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	magnifier.blogspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	moderator.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	newsfeed-dot-latest-dot-rovio-ad-engine.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	productideas.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r2303.latest.project-slingshot-hr.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r3085-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r3091-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r3101-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r3269-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r3432-dot-latest-dot-project-slingshot-hr.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	r4681-dot-latest-dot-project-slingshot-hr.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.170	r7647-dot-latest-dot-project-slingshot-hr.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	wcproxyx.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ajax.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	chart.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	fonts.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	maps.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt0.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt1.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt2.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt3.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	redirector-bigcache.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	translate.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.66.95	www.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	autoproxy-gfwlist.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	chromium.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	closure-library.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	earth-api-samples.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	gmaps-samples-flash.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	google-code-feed-gadget.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	blogsearch.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	ditu.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	gg.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	id.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	maps.gstatic.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	m.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt0.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt1.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt2.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	mt3.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	news.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	scholar.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	translate.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.gstatic.cn	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	accounts.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	blogsearch.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	books.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	clients1.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	desktop.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	encrypted.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	groups.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	gxc.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	id.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	images.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	m.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	maps.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	news.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	picasaweb.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	plus.url.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	scholar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	toolbar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	toolbarqueries.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	translate.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	translate.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	wenda.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	accounts.blogger.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	android.googlesource.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	auth.keyhole.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	chrome.angrybirds.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	developer.android.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	domains.googlesyndication.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	earthengine.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	feeds.feedburner.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	g.co	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	goo.gl	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.162	listen.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	m.googlemail.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	market.android.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.163	ngrams.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.37.99	panoramio.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	smarthosts.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	ssl.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.76.128	static.panoramio.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.blogger.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.googleadservices.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	www.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	www.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	www.googlesource.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.37.99	www.panoramio.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	plus.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	plus.url.google.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.200	plusone.google.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts

goto	Youtube


:AutoIP
REM	方法2,自动获取
REM	公共部分
echo	173.194.70.125	talk.google.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.64.141	chrometophone.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.66.95	www.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.162	listen.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.163	ngrams.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.37.99	panoramio.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	smarthosts.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	ssl.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.76.128	static.panoramio.com	>>%windir%\System32\drivers\etc\hosts
echo	203.208.46.222	www.googlesource.com	>>%windir%\System32\drivers\etc\hosts
echo	173.194.37.99	www.panoramio.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts

setlocal	enabledelayedexpansion
set	min=180
set	max=240
set	/a	mod=!max!-!min!+1
set	/a	r=!random!%%!mod!+!min!
set	GOOGLE0=203.208.46.%r%
echo	1.成功获取203随机IP
set	GOOGLE1=203.208.46.%r%

for	/f	"tokens=2	delims=[]"	%%i	in	('ping	mail.google.com')	do	set	GOOGLE2=%%i
	for	/f	"delims=."	%%i	in	("%GOOGLE2%")	do	if	%%i==74	(echo	2.成功获取74全球IP)

for	/f	"tokens=2	delims=[]"	%%i	in	('ping	www.g.cn')	do	set	GOOGLE3=%%i
	for	/f	"delims=."	%%i	in	("%GOOGLE3%")	do	(
				if	%%i==74	(echo	3.成功获取74香港IP)
				if	%%i==203	(echo	3.成功获取203北京IP)
				)

set	/p	IPs=	请选择已成功获取的IP类别(默认为1):
set	GoogleIP=%GOOGLE1%
if	"%IPs%"=="1"	set	GoogleIP=%GOOGLE1%
if	"%IPs%"=="2"	set	GoogleIP=%GOOGLE2%
if	"%IPs%"=="3"	set	GoogleIP=%GOOGLE3%

echo	%GoogleIP%	drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	doc-10-3o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	play.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	3hdrrlnlknhi77nrmsjnjr152ueo3soc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	accounts.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ajax.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	android.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	apis.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	appengine.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks0.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks1.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks2.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks3.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks4.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks5.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks6.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks7.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks8.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bks9.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	blogsearch.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	blogsearch.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	browserchannel-docs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	browserchannel-spreadsheets.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	browsersync.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	cache.pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	calendar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	checkout.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	chrome.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	clients7.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	code.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	csi.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	desktop.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	desktop2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ditu.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ditu.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	dl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	earth.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	encrypted.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	encrypted.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	encrypted-tbn0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	encrypted-tbn1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	encrypted-tbn2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	encrypted-tbn3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	feedback.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	finance.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	fonts.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	g0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	gg.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ghs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ghs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	googlecl.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	googlehosted.l.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	groups.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	id.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	id.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	id.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images1-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images2-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images3-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images4-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images5-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images6-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images-lso-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	images-pos-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	investor.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	khms0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	khms1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	labs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	large-uploads.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh4.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh5.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh6.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	lh6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	m.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mail-attachment.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	maps.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	maps.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	maps.gstatic.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	maps.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	maps-api-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt0.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt1.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt2.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt3.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mt3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mts0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mts1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	music.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	music.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	music-streaming.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	mw2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	news.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	news.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	news.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	newsfeed-dot-latest-dot-rovio-ad-engine.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	nt0.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	nt1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	nt2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	nt3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	oauth.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ode25pfjgmvpquh3b1oqo31ti5ibg5fr-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	pack.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	picasa.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	picasaweb.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	picasaweb.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	places.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	plus.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	plus.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	plusone.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	pop.gmail.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	profiles.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	s1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	s2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	s3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	s4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	s5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	s6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	safebrowsing.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	safebrowsing-cache.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	sandbox.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	scholar.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	scholar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	scholar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	scholar.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	services.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	sites.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	sketchup.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	spreadsheets.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ssl.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ssl.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	suggestqueries.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	t.doc-0-0-sj.sj.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	t0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	t1.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	t2.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	t3.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	talkgadget.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	talkx.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	themes.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	toolbar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	toolbar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	toolbarqueries.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	toolbarqueries.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	tools.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	translate.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	translate.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	translate.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	translate.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	uploadsj.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	v8mq9slfbk1dglresapkg0i5f8pm64lc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	video.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	video.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	video.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	voice.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	wave.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	webcache.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	wenda.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.gmail.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.googleadservices.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	www-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	r3270-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	bt26mravu2qpe56n8gnmjnpv2inl84bf-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	rbjhe237k979f79d87gmenp3gejfonu9-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	k6v18tjr24doa89b55o3na41kn4v73eb-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	8kubpeu8314p2efdd7jlv09an9i2ljdo-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	adstvca8k2ooaknjjmv89j22n9t676ve-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	ob7f2qc0i50kbjnc81vkhgmb5hsv7a8l-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	53rd6p0catml6vat6qra84rs0del836d-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	u807isd5egseeabjccgcns005p2miucq-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	r70rmsn4s0rhk6cehcbbcbfbs31pu0va-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	59cbv4l9s05pbaks9v77vc3mengeqors-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	i8brh95qor6r54nkl52hidj2ggcs4jgm-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	upt14k1i2veesusrda9nfotcrbp9d7p5-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	debh8vg7vd93bco3prdajidmm7dhql3f-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	4fjvqid3r3oq66t548clrdj52df15coc-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	hsco54a20sh11q9jkmb51ad2n3hmkmrg-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	qhie5b8u979rnch1q0hqbrmbkn9estf7-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	e6ha3snmi09c57cs4h4dnoa006cgfjfu-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	66fl6oqbdsqf5fjl032t5iulimtqjhpa-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	vvpk2b7flnbhcm2p10u4hcnatnp40i3i-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	0rgn8o7pqk7dq7rm8q0639erjd8gnf7g-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GoogleIP%	cfmmurgvo3fqrmfu0tjfcpgdt7mh6ccv-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo.	>>%windir%\System32\drivers\etc\hosts

goto	Youtube


REM	方法3,下载hosts文件
:DownloadIP
echo.		>>%windir%\System32\drivers\etc\hosts

goto	Youtube




:Youtube
echo	#Youtube	>>%windir%\System32\drivers\etc\hostsaccounts.youtube.com	
echo	203.208.46.206	apiblog.youtube.com	help.youtube.com	i.ytimg.com	i1.ytimg.com	i2.ytimg.com	i3.ytimg.com	i4.ytimg.com	insight.youtube.com	m.youtube.com	s.ytimg.com	www.youtube.com	ytimg.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo.		>>%windir%\System32\drivers\etc\hosts


ipconfig	/flushdns
echo.	配置完成
pause	

cls
echo.	说明：
echo.
echo.	您现在可以更好的访问以上名单中的网站，并且省去大多数广告的烦扰
echo.
echo.
echo.	如果您认为该程序对您有帮助，请支持作者
echo.
pause