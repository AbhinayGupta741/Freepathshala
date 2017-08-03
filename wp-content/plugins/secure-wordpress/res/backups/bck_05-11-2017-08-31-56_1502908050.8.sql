CREATE DATABASE IF NOT EXISTS 2336022_wpress84fba1d7;
USE 2336022_wpress84fba1d7;
DROP TABLE IF EXISTS wp__wsd_plugin_alerts;CREATE TABLE `wp__wsd_plugin_alerts` (
  `alertId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertType` tinyint(4) NOT NULL DEFAULT '0',
  `alertSeverity` int(11) NOT NULL DEFAULT '0',
  `alertActionName` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alertTitle` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alertDescription` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alertSolution` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alertDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `alertFirstSeen` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`alertId`),
  UNIQUE KEY `alertId_UNIQUE` (`alertId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp__wsd_plugin_alerts VALUES("1","0","3","fix_wp_version_hidden","WordPress version is displayed for all users","<p>Displaying your WordPress version on frontend and in the backend\'s footer to all visitors
                        and users of your website is a security risk because if a hacker knows which version of WordPress a website is running, it can make it easier for him to target a known WordPress security issue.</p>","<p>This plugin can automatically hide your WordPress version from frontend, backend and rss feeds if the option <strong>\"Hide WordPress version for all users but administrators\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("2","0","3","fix_wp_generators_frontend","WordPress meta tags are displayed on frontend to all users","<p>By default, WordPress creates a few meta tags, among which is the currently installed version, that give a hacker the knowledge about your WordPress installation. At the moment, these meta tags are available for anyone to see, which is a potentially security risk.</p>","<p>This plugin can automatically hide your WordPress\'s default meta tags if the option <strong>\"Remove various meta tags generators from the blog\'s head tag for non-administrators\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("3","0","0","fix_wp_rsd_frontend","WordPress Really Simple Discovery tag is displayed on frontend to all users","<p>By default, WordPress creates the <strong>rsd meta tag</strong> to allow bloggers to consume services like Flickr using the <a href=\"http://en.wikipedia.org/wiki/XML-RPC\" target=\"_blank\">XML-RPC</a> protocol.
                            If you don\'t use such services it is recommended to hide this meta tag.</p>","<p>This plugin can automatically hide the rsd meta tag if the option <strong>\"Remove Really Simple Discovery meta tags from front-end\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("4","0","2","fix_wp_wlw_frontend","WordPress Windows Live Writer tag is displayed on frontend for all users","<p>By default, WordPress creates the wlw meta tag to allow bloggers to publish their articles using the <strong>\"Windows Live Writer\"</strong> application.
                        It is recommended to hide this meta tag from all visitors. If the option <strong>\"Remove Windows Live Writer meta tags from front-end\"</strong> is checked on the plugin\'s settings page, this meta tag
                        will still be available for administrator users to use the <strong>\"Windows Live Writer\"</strong> application to publish their blog posts.</p>","<p>This plugin can automatically hide the wlw meta tag if the option <strong>\"Remove Windows Live Writer meta tags from front-end\"\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("5","0","3","fix_wp_error_reporting","The check for PHP and database error reporting is disabled","<p>By default, WordPress hides database errors, but there are times when a plugin might enable them thus it is very important to have this type of errors turned off
                            so if there is an error during a connection to the database the user will not get access to the error message generated during that request.</p>
                            <p>As regarding the PHP errors, with the <strong>display_error</strong> PHP configuration directive enabled, untrusted sources can see detailed web application environment
                            error messages which include sensitive information that can be used to craft further attacks.</p>
                            <p>Attackers will do anything to collect information in order to design their attack in a more sophisticated way to eventually hack your website or web application, and causing
                            errors to display is a common starting point. Website errors can always occur, but they should be suppressed from being displayed back to the public.</p>
                            <p>Therefore we highly recommend you to have the <strong>\"Disable error reporting (php + db) for all but administrators\"</strong> option checked on the plugin\'s settings page to ensure PHP and
                            database errors will be hidden from all users. For more information, please check the following <a href=\"http://www.acunetix.com/blog/web-security-zone/articles/php-security-directive-your-website-is-showing-php-errors/\" target=\"_blank\">article</a>.</p>","<p>This plugin can do this automatically if the option <strong>\"Disable error reporting (php + db) for all but administrators\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("6","0","3","fix_wp_core_update_notif","Core update notifications are displayed to all users","<p>These notifications are displayed at the top of the screen by the WordPress platform whenever the website was updated or needs an update.</p>
                    <p>These notifications should only be viewed by the website\'s administrators and not visible to any other users registered with that website.</p>","<p>This plugin can automatically hide these notifications if the option <strong>\"Remove core update notifications from back-end for all but administrators\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("7","0","2","fix_wp_plugins_update_notif","Plugins update notifications are displayed to all users","<p>These notifications are displayed at the top of the screen by the WordPress platform whenever the blog administrator
                        needs to be informed about an available update for a plugin.</p>
                    <p>These notifications should only be viewed by the website\'s administrators and not visible to any other users registered with that website.</p>","<p>This plugin can automatically hide these notifications if the option <strong>\"Remove plug-ins update notifications from back-end\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("8","0","0","fix_wp_themes_update_notif","Themes update notifications are displayed to all users.","<p>These notifications are displayed at the top of the screen by the WordPress platform whenever the blog administrator
                        needs to be informed about an available update for a theme.</p>
                    <p>These notifications should only be viewed by the website\'s administrators and not visible to any other users registered with that website.</p>","<p>This plugin can automatically hide these notifications if the option <strong>\"Remove themes update notifications from back-end\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("9","0","2","fix_wp_login_errors","WordPress login errors are displayed.","<p>Every time a failed login is encountered, the WordPress platform generates an error message that is displayed to the user.
                        This is a potential security risk because it let\'s the user know of his mistake (be it a wrong user name or password) thus making your
                        WordPress website more vulnerable to attacks.</p>
                    <p>We strongly recommend you to hide these login error messages from all users to ensure a better security of your blog.</p>","<p>This plugin can automatically hide these notifications if the option <strong>\"Remove login error notifications from front-end\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("10","0","2","fix_wp_admin_notices","WordPress admin notifications are displayed to all users.","<p>These notifications are displayed at the top of the screen by the WordPress platform whenever the blog administrator
                       needs to be informed about an event that has occurred inside WordPress, it could be about an available update for the
                       WordPress platform, a plugin or a theme that was updated or needs an update or to be configured, etc.</p>
                    <p>These notifications should only be viewed by the website\'s administrators and not visible to any other users registered with that website.</p>","<p>This plugin can automatically hide these notifications if the option <strong>\"Hide admin notifications for non admins\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("11","0","2","fix_wp_dir_listing","Directory listing check is disabled. This option should be enabled.","<p>A directory listing provides an attacker with the complete index of all the resources located inside of the directory.
                    The specific risks and consequences vary depending on which files are listed and accessible.
                    Therefore, it is important to protect your directories by having an empty index.php or index.htm file inside them.</p>","<p>This plugin can automatically create an empty <strong>index.php</strong> file in the following directories: wp-content, wp-content/plugins, wp-content/themes and wp-content/uploads if
                    the option <strong>\"Try to create the index.php file in the wp-content, wp-content/plugins, wp-content/themes and wp-content/uploads directories to prevent directory listing\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("12","0","3","fix_remove_wp_version_links","WordPress version is displayed in links for all users","<p>By default, WordPress will display the current version in links to javascript scripts or stylesheets.
                    Therefore, if anyone has access to this information it might be a security risk because if a hacker knows which version of WordPress a website is running,
                    it can make it easier for him to target a known WordPress security issue.</p>","<p>This plugin can automatically hide the WordPress version from links if the option <strong>\"Remove the version parameter from urls\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("13","0","2","fix_empty_root_readme_file","Clearing the content of the <strong>\"readme.html\"</strong> file from the <strong>\"root\"</strong> directory is disabled.","<p>A default WordPress installation contains a readme.html file. This file is a simple html file that does not contain executable content that can be exploited by hackers or malicious users.
                        Still, this file can provide hackers the version of your WordPress installation, therefore it is important to either delete this file or make it inaccessible for your visitors.</p>","<p>This plugin can automatically delete its content (assuming the file exists) if the option <strong>\"Empty the content of the readme.html file from the root directory\"</strong> is checked on the plugin\'s settings page.
                    You can also delete this file manually by connecting to your website through an FTP connection.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("14","0","3","check_table_prefix","The default WordPress database prefix (<strong>wp_</strong>) is used","<p>The majority of reported WordPress database security attacks were performed by exploiting SQL Injection vulnerabilities.
                        By renaming the WordPress database table prefixes you are securing your WordPress blog and website from zero day SQL injections attacks.</p>
                    <p>Therefore by renaming the WordPress database table prefixes, you are automatically enforcing your WordPress database security against such dangerous attacks
                        because the attacker would not be able to guess the table names.</p>
                    <p>We recommend to use difficult to guess prefixes, like long random strings which include both letters and numbers.</p>","<p>This plugin can automatically <a href=\"admin.php?page=wsd_database\">do this</a> for you, but if you want to do it manually then please read this <a href=\"http://www.websitedefender.com/wordpress-security/change-wordpress-database-prefix/\" target=\"_blank\">article</a> first.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("15","0","0","check_wp_current_version","You have the latest version of WordPress installed","<p>The latest WordPress version is usually more stable and secure, and is only released to include new features or fix technical and WordPress security bugs;
                            making it an important part of your website administration to keep up to date since some fixes might resolve security issues.<p>
                        <p>Running an older WordPress version could put your blog security at risk, allowing a hacker to exploit known vulnerabilities for your specific version and take full control over your web server.</p>","","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("16","0","0","check_index_wp_content","The <strong>\"index.php\"</strong> file was found in the <strong>\"/wp-content\"</strong> directory","<p>A directory listing provides an attacker with the complete index of all the resources located inside of the directory. The specific risks and consequences vary depending on which files are listed and accessible.</p>
                    <p>Therefore, it is important to protect your directories by having an empty index.php or index.htm file inside them.</p>","","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("17","0","0","check_index_wp_plugins","The <strong>\"index.php\"</strong> file was found in the <strong>\"/wp-content/plugins\"</strong> directory","<p>A directory listing provides an attacker with the complete index of all the resources located inside of the directory. The specific risks and consequences vary depending on which files are listed and accessible.</p>
                    <p>Therefore, it is important to protect your directories by having an empty index.php or index.htm file inside them.</p>","","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("18","0","0","check_index_wp_themes","The <strong>\"index.php\"</strong> file was found in the <strong>\"/wp-content/themes\"</strong> directory","<p>A directory listing provides an attacker with the complete index of all the resources located inside of the directory. The specific risks and consequences vary depending on which files are listed and accessible.</p>
                    <p>Therefore, it is important to protect your directories by having an empty index.php or index.htm file inside them.</p>","","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("19","0","2","check_htaccess_wp_admin","The <strong>\".htaccess\"</strong> file was not found in the <strong>\"wp-admin\"</strong> directory","<p>An .htaccess file is a configuration file which provides the ability to specify configuration settings for a specific directory in a website.
                    The .htaccess file can include one or more configuration settings which apply only for the directory in which the .htaccess file has been placed.
                    So while web servers have their own main configuration settings file, the .htaccess file can be used to override their main configuration settings.</p>","<p>Please refer to this <a href=\"http://www.acunetix.com/blog/web-security-zone/articles/what-is-an-htaccess-file/\" target=\"_blank\">article</a> for more information on how to create an .htaccess file.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("20","0","2","check_readme_wp_root","The <strong>readme.html</strong> file was found in the root directory","<p>A default WordPress installation contains a readme.html file.
                                This file is a simple html file that does not contain executable content that can be exploited by hackers or malicious users.
                                Still, this file can provide hackers the version of your WordPress installation, therefore it is important to either delete this file or make it inaccessible for your visitors.</p>","<p>This plugin can automatically delete its content if the option <strong>\"Empty the content of the readme.html file from the root directory.\"</strong> is checked on the plugin\'s settings page.
                                You can also delete this file manually by connecting to your website through an FTP connection.</p>","2017-05-11 20:31:55","2017-05-11 12:52:35");
INSERT INTO wp__wsd_plugin_alerts VALUES("21","0","0","check_username_admin ","User <strong>\"admin\"</strong> (with administrative rights) was not found","<p>One well known and dangerous WordPress security vulnerability is User Enumeration, in which a
                            malicious user is able to enumerate a valid WordPress user account to launch a brute force attack against it.
                            In order to help deter this type of attack, it is important not to have the default <a href=\"http://www.acunetix.com/blog/web-security-zone/articles/default-wordpress-administrator-account/\" target=\"_blank\">WordPress administrator</a>
                            username enabled on your blog.</p>","","2017-05-11 12:52:36","2017-05-11 12:52:36");
INSERT INTO wp__wsd_plugin_alerts VALUES("22","0","2","check_index_wp_uploads","The <strong>\"index.php\"</strong> file was not found in the <strong>\"/wp-content/uploads\"</strong> directory","<p>A directory listing provides an attacker with the complete index of all the resources located inside of the directory. The specific risks and consequences vary depending on which files are listed and accessible.</p>
                        <p>Therefore, it is important to protect your directories by having an empty index.php or index.htm file inside them.</p>","<p>This plugin can automatically create an empty <strong>\"index.php\"</strong> file in the following directories: wp-content, wp-content/plugins, wp-content/themes and wp-content/uploads if the
                        option <strong>\"Try to create the index.php file in the wp-content, wp-content/plugins, wp-content/themes and wp-content/uploads directories to prevent directory listing\"</strong> is checked on the plugin\'s settings page.</p>","2017-05-11 20:31:55","2017-05-11 12:54:47");
DROP TABLE IF EXISTS wp__wsd_plugin_live_traffic;CREATE TABLE `wp__wsd_plugin_live_traffic` (
  `entryId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entryTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entryIp` text COLLATE utf8mb4_unicode_520_ci,
  `entryReferrer` text COLLATE utf8mb4_unicode_520_ci,
  `entryUA` text COLLATE utf8mb4_unicode_520_ci,
  `entryRequestedUrl` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`entryId`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp__wsd_plugin_live_traffic VALUES("1","2017-05-11 12:52:37","43.249.228.11","http://cp1.biz.nf/zacky-installer.html?legacy=true&amp;vat_include=no","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("2","2017-05-11 12:52:46","43.249.228.11","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-login.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("3","2017-05-11 12:55:28","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("4","2017-05-11 12:57:06","166.88.123.105","","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("5","2017-05-11 12:58:18","166.88.123.105","http://t12pathshala.co.nf/","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("6","2017-05-11 12:59:22","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("7","2017-05-11 13:00:30","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("8","2017-05-11 13:01:33","43.249.228.11","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2Fthemes.php%3Fpage%3Donetone-options","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/?customize_changeset_uuid=88525a23-a223-4f49-9212-df2a32615d86&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("9","2017-05-11 13:01:57","43.249.228.11","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2Fthemes.php%3Fpage%3Donetone-options&amp;changeset_uuid=88525a23-a223-4f49-9212-df2a32615d86","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/?customize_changeset_uuid=88525a23-a223-4f49-9212-df2a32615d86&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-1");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("10","2017-05-11 13:02:14","43.249.228.11","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2Fthemes.php%3Fpage%3Donetone-options&amp;changeset_uuid=88525a23-a223-4f49-9212-df2a32615d86","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/?customize_changeset_uuid=88525a23-a223-4f49-9212-df2a32615d86&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-2");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("11","2017-05-11 13:03:58","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("12","2017-05-11 13:06:01","166.88.123.105","","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("13","2017-05-11 13:06:16","166.88.123.105","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0","http://t12pathshala.co.nf/wp-login.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("14","2017-05-11 13:06:31","166.88.123.105","http://t12pathshala.co.nf/wp-admin/customize.php","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0","http://t12pathshala.co.nf/?customize_changeset_uuid=ea64c99f-5cfc-4abd-9d62-c3580cd62bef&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("15","2017-05-11 13:07:21","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-config/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("16","2017-05-11 13:07:50","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-config.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("17","2017-05-11 13:08:00","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("18","2017-05-11 13:09:44","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-config.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("19","2017-05-11 13:10:19","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-config.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("20","2017-05-11 13:10:30","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/wp-Config.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("21","2017-05-11 13:10:53","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/our-journey");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("22","2017-05-11 13:10:54","43.249.228.11","","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0","http://t12pathshala.co.nf/our-journey/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("23","2017-05-11 13:50:23","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("24","2017-05-11 13:50:48","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("25","2017-05-11 13:50:59","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("26","2017-05-11 13:51:33","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("27","2017-05-11 13:51:42","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("28","2017-05-11 13:52:06","103.57.133.57","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/wp-login.php");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("29","2017-05-11 13:52:18","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("30","2017-05-11 13:53:12","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=2297738e-678a-4262-90fe-a84e5e04e2b8&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("31","2017-05-11 13:54:00","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("32","2017-05-11 13:54:37","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("33","2017-05-11 13:55:05","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-1");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("34","2017-05-11 13:55:28","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-2");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("35","2017-05-11 13:55:44","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-3");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("36","2017-05-11 13:56:41","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-4");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("37","2017-05-11 13:56:45","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-5");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("38","2017-05-11 13:59:35","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-6");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("39","2017-05-11 13:59:38","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-7");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("40","2017-05-11 14:00:38","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-8");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("41","2017-05-11 14:00:42","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-9");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("42","2017-05-11 14:00:45","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-10");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("43","2017-05-11 14:00:47","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-11");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("44","2017-05-11 14:00:50","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-12");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("45","2017-05-11 14:00:53","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-13");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("46","2017-05-11 14:00:56","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-14");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("47","2017-05-11 14:00:59","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-15");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("48","2017-05-11 14:01:03","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-16");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("49","2017-05-11 14:01:05","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-17");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("50","2017-05-11 14:01:26","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-19");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("51","2017-05-11 14:01:32","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-20");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("52","2017-05-11 14:01:37","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-21");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("53","2017-05-11 14:01:41","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-22");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("54","2017-05-11 14:01:44","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-23");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("55","2017-05-11 14:01:46","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-24");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("56","2017-05-11 14:01:48","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-25");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("57","2017-05-11 14:02:15","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6ac804d2-3f65-4752-823b-6d37b30c8988&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-26");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("58","2017-05-11 14:03:16","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("59","2017-05-11 14:03:27","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("60","2017-05-11 14:03:39","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("61","2017-05-11 14:04:46","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=da2ce2ed-e45a-4fd4-a268-3493db54c436&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("62","2017-05-11 14:05:45","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("63","2017-05-11 14:05:58","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-1");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("64","2017-05-11 14:06:00","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-2");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("65","2017-05-11 14:07:29","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-3");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("66","2017-05-11 14:07:41","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-4");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("67","2017-05-11 14:07:43","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-5");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("68","2017-05-11 14:07:49","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-6");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("69","2017-05-11 14:07:51","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-7");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("70","2017-05-11 14:07:53","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-8");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("71","2017-05-11 14:07:59","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-9");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("72","2017-05-11 14:08:02","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-10");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("73","2017-05-11 14:08:04","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-11");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("74","2017-05-11 14:08:06","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-12");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("75","2017-05-11 14:08:10","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-13");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("76","2017-05-11 14:08:13","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-14");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("77","2017-05-11 14:08:16","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-15");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("78","2017-05-11 14:08:19","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-16");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("79","2017-05-11 14:08:24","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-17");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("80","2017-05-11 14:08:27","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-18");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("81","2017-05-11 14:08:35","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-19");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("82","2017-05-11 14:08:39","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-20");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("83","2017-05-11 14:08:44","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-21");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("84","2017-05-11 14:08:49","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-22");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("85","2017-05-11 14:08:53","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-23");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("86","2017-05-11 14:09:00","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-24");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("87","2017-05-11 14:09:06","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-25");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("88","2017-05-11 14:09:08","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-26");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("89","2017-05-11 14:09:09","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-27");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("90","2017-05-11 14:09:09","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-28");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("91","2017-05-11 14:09:17","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-29");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("92","2017-05-11 14:09:18","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-30");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("93","2017-05-11 14:09:18","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-31");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("94","2017-05-11 14:09:20","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-32");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("95","2017-05-11 14:09:20","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-33");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("96","2017-05-11 14:09:31","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-34");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("97","2017-05-11 14:09:38","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-35");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("98","2017-05-11 14:10:12","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-36");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("99","2017-05-11 14:10:16","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-37");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("100","2017-05-11 14:10:52","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-38");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("101","2017-05-11 14:11:29","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=9f21c29e-570b-4926-892a-49473db68c31&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-39");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("102","2017-05-11 14:11:51","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("103","2017-05-11 14:13:53","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-40");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("104","2017-05-11 14:13:54","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-41");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("105","2017-05-11 14:14:00","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-42");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("106","2017-05-11 14:14:01","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-43");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("107","2017-05-11 14:14:06","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-46");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("108","2017-05-11 14:14:08","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=c9595bb3-4587-47a5-bc99-ceba0ed87c04&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-47");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("109","2017-05-11 14:15:19","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-48");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("110","2017-05-11 14:16:59","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-49");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("111","2017-05-11 14:17:00","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-50");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("112","2017-05-11 14:17:03","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?return=%2Fwp-admin%2F&amp;changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=dded57be-4bfb-4526-90c6-59ee4c7d40ec&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-51");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("113","2017-05-11 14:17:19","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("114","2017-05-11 15:01:01","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("115","2017-05-11 15:27:12","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("116","2017-05-11 15:41:44","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("117","2017-05-11 15:53:38","103.57.133.57","http://t12pathshala.co.nf/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/wp-content/uploads/2017/05/iskola%C3%A9rett.jpg");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("118","2017-05-11 15:53:39","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("119","2017-05-11 16:00:37","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("120","2017-05-11 16:01:32","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("121","2017-05-11 16:01:58","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("122","2017-05-11 16:02:49","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("123","2017-05-11 16:03:45","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("124","2017-05-11 16:06:18","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("125","2017-05-11 16:06:42","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("126","2017-05-11 16:07:24","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("127","2017-05-11 16:08:42","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?url=http%3A%2F%2Ft12pathshala.co.nf%2F","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=6fa7fcbd-f8fc-4d27-a35f-b96881a2de3b&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("128","2017-05-11 16:09:13","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?url=http%3A%2F%2Ft12pathshala.co.nf%2F","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("129","2017-05-11 16:11:59","103.57.133.57","http://t12pathshala.co.nf/wp-admin/themes.php?page=onetone-options","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("130","2017-05-11 16:12:21","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("131","2017-05-11 17:22:45","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("132","2017-05-11 17:23:51","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("133","2017-05-11 17:26:57","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("134","2017-05-11 17:29:09","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("135","2017-05-11 17:46:02","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("136","2017-05-11 17:47:20","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("137","2017-05-11 17:49:56","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("138","2017-05-11 18:03:08","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("139","2017-05-11 18:03:30","103.57.133.57","http://t12pathshala.co.nf/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/colors/color_tryit.asp?hex=00FFFF");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("140","2017-05-11 18:04:27","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("141","2017-05-11 18:05:21","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("142","2017-05-11 18:11:06","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("143","2017-05-11 18:12:42","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("144","2017-05-11 18:31:37","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("145","2017-05-11 18:32:43","162.217.31.99","http://t12pathshala.co.nf/wp-admin/customize.php","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0","http://t12pathshala.co.nf/?customize_changeset_uuid=0b1aae8d-a918-45c2-b623-2396951f9907&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("146","2017-05-11 18:33:27","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("147","2017-05-11 18:33:28","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("148","2017-05-11 18:34:55","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("149","2017-05-11 18:35:28","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("150","2017-05-11 18:38:35","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("151","2017-05-11 18:41:11","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("152","2017-05-11 18:43:34","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=331d3943-606b-46c8-a9e7-8afcb7a15f82&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("153","2017-05-11 18:47:52","103.57.133.57","http://t12pathshala.co.nf/wp-admin/customize.php?changeset_uuid=331d3943-606b-46c8-a9e7-8afcb7a15f82","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/?customize_changeset_uuid=331d3943-606b-46c8-a9e7-8afcb7a15f82&amp;customize_theme=onetone&amp;customize_messenger_channel=preview-0");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("154","2017-05-11 18:48:47","103.57.133.57","http://t12pathshala.co.nf/wp-admin/","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("155","2017-05-11 18:50:26","103.57.133.57","","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("156","2017-05-11 19:13:13","103.57.133.57","http://t12pathshala.co.nf/wp-admin/index.php","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("157","2017-05-11 20:27:25","103.57.133.57","http://t12pathshala.co.nf/wp-admin/export.php","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
INSERT INTO wp__wsd_plugin_live_traffic VALUES("158","2017-05-11 20:27:37","103.57.133.57","http://t12pathshala.co.nf/wp-admin/export.php","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30","http://t12pathshala.co.nf/");
DROP TABLE IF EXISTS wp_blc_filters;CREATE TABLE `wp_blc_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
DROP TABLE IF EXISTS wp_blc_instances;CREATE TABLE `wp_blc_instances` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `container_id` int(10) unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `link_text` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parser_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'link',
  `container_field` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_context` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `raw_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`instance_id`),
  KEY `link_id` (`link_id`),
  KEY `source_id` (`container_type`,`container_id`),
  KEY `parser_type` (`parser_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_blc_instances VALUES("1","1","1","comment","A WordPress Commenter","url_field","comment_author_url","","https://wordpress.org/");
INSERT INTO wp_blc_instances VALUES("2","2","1","comment","Gravatar","link","comment_content","","https://gravatar.com");
INSERT INTO wp_blc_instances VALUES("3","3","2","page","your dashboard","link","post_content","","http://t12pathshala.co.nf/wp-admin/");
DROP TABLE IF EXISTS wp_blc_links;CREATE TABLE `wp_blc_links` (
  `link_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_failure` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_success` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_check_attempt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_count` int(4) unsigned NOT NULL DEFAULT '0',
  `final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `redirect_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `http_code` smallint(6) NOT NULL DEFAULT '0',
  `status_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `status_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `request_duration` float NOT NULL DEFAULT '0',
  `timeout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `broken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `warning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `may_recheck` tinyint(1) NOT NULL DEFAULT '1',
  `being_checked` tinyint(1) NOT NULL DEFAULT '0',
  `result_hash` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `false_positive` tinyint(1) NOT NULL DEFAULT '0',
  `dismissed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `url` (`url`(150)),
  KEY `final_url` (`final_url`(150)),
  KEY `http_code` (`http_code`),
  KEY `broken` (`broken`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_blc_links VALUES("1","https://wordpress.org/","0000-00-00 00:00:00","2017-05-11 12:52:14","2017-05-11 12:52:14","2017-05-11 12:52:14","0","https://wordpress.org/","0","=== HTTP code : 200 ===
Response headers
================
HTTP/1.1 200 OK
Server: nginx
Date: Thu, 11 May 2017 12:52:15 GMT
Content-Type: text/html; charset=utf-8
Connection: close
Vary: Accept-Encoding
Strict-Transport-Security: max-age=360
X-Olaf: ?
X-Frame-Options: SAMEORIGIN
X-nc: HIT lax 249
Request headers
================
HEAD / HTTP/1.1
User-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)
Host: wordpress.org
Accept: */*
Referer: http://t12pathshala.co.nf
Connection: close
Link is valid.","200","","","0.864093","0","0","0","1","0","200|0|0|https://wordpress.org/","0","0");
INSERT INTO wp_blc_links VALUES("2","https://gravatar.com","2017-05-11 12:52:13","2017-05-11 12:52:13","0000-00-00 00:00:00","2017-05-11 12:52:13","1","https://gravatar.com/","0","Failed to connect to gravatar.com port 443: Connection refused [Error #7]
=== (No response) ===
Response headers
================
==========
Severity: Warning
Reason: Connection failures are sometimes caused by high server load or other temporary issues.
==========
Link is broken.","0","warning","Connection Failed","0.000404","0","0","1","1","0","0|broken|0|https://gravatar.com/","0","0");
INSERT INTO wp_blc_links VALUES("3","http://t12pathshala.co.nf/wp-admin/","0000-00-00 00:00:00","2017-05-11 12:52:13","2017-05-11 12:52:13","2017-05-11 12:52:13","0","http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&reauth=1","1","=== HTTP code : 200 ===
Response headers
================
HTTP/1.1 302 Moved Temporarily
Date: Thu, 11 May 2017 12:52:13 GMT
Server: Apache
Expires: Wed, 11 Jan 1984 05:00:00 GMT
Cache-Control: no-cache, must-revalidate, max-age=0
Location: http://t12pathshala.co.nf/wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1
Connection: close
Content-Type: text/html; charset=UTF-8
HTTP/1.1 200 OK
Date: Thu, 11 May 2017 12:52:13 GMT
Server: Apache
Expires: Wed, 11 Jan 1984 05:00:00 GMT
Cache-Control: no-cache, must-revalidate, max-age=0
X-Frame-Options: SAMEORIGIN
Set-Cookie: wordpress_test_cookie=WP+Cookie+check; path=/
Set-Cookie: wordpress_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/wp-admin
Set-Cookie: wordpress_sec_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/wp-admin
Set-Cookie: wordpress_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/wp-content/plugins
Set-Cookie: wordpress_sec_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/wp-content/plugins
Set-Cookie: wordpress_logged_in_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpress_logged_in_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpress_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpress_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpress_sec_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpress_sec_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpressuser_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpresspass_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpressuser_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Set-Cookie: wordpresspass_6f5ac9e7262d796dce85749c558d06ce=+; expires=Wed, 11-May-2016 12:52:14 GMT; Max-Age=-31536000; path=/
Connection: close
Content-Type: text/html; charset=UTF-8
Request headers
================
HEAD /wp-login.php?redirect_to=http%3A%2F%2Ft12pathshala.co.nf%2Fwp-admin%2F&amp;reauth=1 HTTP/1.1
User-Agent: Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)
Host: t12pathshala.co.nf
Accept: */*
Referer: http://t12pathshala.co.nf
Connection: close
Link is valid.","200","","","1.18828","0","0","0","1","0","200|0|0|http://t12pathshala.co.nf/wp-login.php","0","0");
DROP TABLE IF EXISTS wp_blc_synch;CREATE TABLE `wp_blc_synch` (
  `container_id` int(20) unsigned NOT NULL,
  `container_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `synched` tinyint(2) unsigned NOT NULL,
  `last_synch` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`container_type`,`container_id`),
  KEY `synched` (`synched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_blc_synch VALUES("1","comment","1","2017-05-11 12:52:12");
INSERT INTO wp_blc_synch VALUES("2","page","1","2017-05-11 12:52:13");
INSERT INTO wp_blc_synch VALUES("1","post","1","2017-05-11 12:52:13");
INSERT INTO wp_blc_synch VALUES("6","page","1","2017-05-11 12:57:55");
DROP TABLE IF EXISTS wp_commentmeta;CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
DROP TABLE IF EXISTS wp_comments;CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_comments VALUES("1","1","A WordPress Commenter","wapuu@wordpress.example","https://wordpress.org/","","2017-05-11 12:51:32","2017-05-11 12:51:32","Hi, this is a comment.
To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.
Commenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");
DROP TABLE IF EXISTS wp_links;CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
DROP TABLE IF EXISTS wp_options;CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_options VALUES("1","siteurl","http://t12pathshala.co.nf","yes");
INSERT INTO wp_options VALUES("2","home","http://t12pathshala.co.nf","yes");
INSERT INTO wp_options VALUES("3","blogname","Freepathshala","yes");
INSERT INTO wp_options VALUES("4","blogdescription","Just another WordPress site","yes");
INSERT INTO wp_options VALUES("5","users_can_register","0","yes");
INSERT INTO wp_options VALUES("6","admin_email","freepathshalaweb@gmail.com","yes");
INSERT INTO wp_options VALUES("7","start_of_week","1","yes");
INSERT INTO wp_options VALUES("8","use_balanceTags","0","yes");
INSERT INTO wp_options VALUES("9","use_smilies","1","yes");
INSERT INTO wp_options VALUES("10","require_name_email","1","yes");
INSERT INTO wp_options VALUES("11","comments_notify","","yes");
INSERT INTO wp_options VALUES("12","posts_per_rss","10","yes");
INSERT INTO wp_options VALUES("13","rss_use_excerpt","0","yes");
INSERT INTO wp_options VALUES("14","mailserver_url","mail.example.com","yes");
INSERT INTO wp_options VALUES("15","mailserver_login","login@example.com","yes");
INSERT INTO wp_options VALUES("16","mailserver_pass","password","yes");
INSERT INTO wp_options VALUES("17","mailserver_port","110","yes");
INSERT INTO wp_options VALUES("18","default_category","1","yes");
INSERT INTO wp_options VALUES("19","default_comment_status","open","yes");
INSERT INTO wp_options VALUES("20","default_ping_status","open","yes");
INSERT INTO wp_options VALUES("21","default_pingback_flag","","yes");
INSERT INTO wp_options VALUES("22","posts_per_page","10","yes");
INSERT INTO wp_options VALUES("23","date_format","F j, Y","yes");
INSERT INTO wp_options VALUES("24","time_format","g:i a","yes");
INSERT INTO wp_options VALUES("25","links_updated_date_format","F j, Y g:i a","yes");
INSERT INTO wp_options VALUES("26","comment_moderation","","yes");
INSERT INTO wp_options VALUES("27","moderation_notify","","yes");
INSERT INTO wp_options VALUES("28","permalink_structure","/%year%/%monthnum%/%day%/%postname%/","yes");
INSERT INTO wp_options VALUES("29","rewrite_rules","a:94:{s:34:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$\";s:40:\"index.php?xml_sitemap=params=$matches[2]\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$\";s:49:\"index.php?xml_sitemap=params=$matches[2];zip=true\";s:35:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$\";s:50:\"index.php?xml_sitemap=params=$matches[2];html=true\";s:38:\"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$\";s:59:\"index.php?xml_sitemap=params=$matches[2];html=true;zip=true\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes");
INSERT INTO wp_options VALUES("30","hack_file","0","yes");
INSERT INTO wp_options VALUES("31","blog_charset","UTF-8","yes");
INSERT INTO wp_options VALUES("32","moderation_keys","","no");
INSERT INTO wp_options VALUES("33","active_plugins","a:7:{i:0;s:19:\"akismet/akismet.php\";i:1;s:43:\"broken-link-checker/broken-link-checker.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:36:\"google-sitemap-generator/sitemap.php\";i:4;s:26:\"secure-wordpress/index.php\";i:5;s:27:\"updraftplus/updraftplus.php\";i:6;s:27:\"wp-super-cache/wp-cache.php\";}","yes");
INSERT INTO wp_options VALUES("34","category_base","","yes");
INSERT INTO wp_options VALUES("35","ping_sites","http://rpc.pingomatic.com/","yes");
INSERT INTO wp_options VALUES("36","comment_max_links","2","yes");
INSERT INTO wp_options VALUES("37","gmt_offset","0","yes");
INSERT INTO wp_options VALUES("38","default_email_category","1","yes");
INSERT INTO wp_options VALUES("39","recently_edited","","no");
INSERT INTO wp_options VALUES("40","template","onetone","yes");
INSERT INTO wp_options VALUES("41","stylesheet","onetone","yes");
INSERT INTO wp_options VALUES("42","comment_whitelist","1","yes");
INSERT INTO wp_options VALUES("43","blacklist_keys","","no");
INSERT INTO wp_options VALUES("44","comment_registration","1","yes");
INSERT INTO wp_options VALUES("45","html_type","text/html","yes");
INSERT INTO wp_options VALUES("46","use_trackback","0","yes");
INSERT INTO wp_options VALUES("47","default_role","subscriber","yes");
INSERT INTO wp_options VALUES("48","db_version","38590","yes");
INSERT INTO wp_options VALUES("49","uploads_use_yearmonth_folders","1","yes");
INSERT INTO wp_options VALUES("50","upload_path","","yes");
INSERT INTO wp_options VALUES("51","blog_public","0","yes");
INSERT INTO wp_options VALUES("52","default_link_category","2","yes");
INSERT INTO wp_options VALUES("53","show_on_front","posts","yes");
INSERT INTO wp_options VALUES("54","tag_base","","yes");
INSERT INTO wp_options VALUES("55","show_avatars","1","yes");
INSERT INTO wp_options VALUES("56","avatar_rating","G","yes");
INSERT INTO wp_options VALUES("57","upload_url_path","","yes");
INSERT INTO wp_options VALUES("58","thumbnail_size_w","150","yes");
INSERT INTO wp_options VALUES("59","thumbnail_size_h","150","yes");
INSERT INTO wp_options VALUES("60","thumbnail_crop","1","yes");
INSERT INTO wp_options VALUES("61","medium_size_w","300","yes");
INSERT INTO wp_options VALUES("62","medium_size_h","300","yes");
INSERT INTO wp_options VALUES("63","avatar_default","mystery","yes");
INSERT INTO wp_options VALUES("64","large_size_w","1024","yes");
INSERT INTO wp_options VALUES("65","large_size_h","1024","yes");
INSERT INTO wp_options VALUES("66","image_default_link_type","none","yes");
INSERT INTO wp_options VALUES("67","image_default_size","","yes");
INSERT INTO wp_options VALUES("68","image_default_align","","yes");
INSERT INTO wp_options VALUES("69","close_comments_for_old_posts","1","yes");
INSERT INTO wp_options VALUES("70","close_comments_days_old","14","yes");
INSERT INTO wp_options VALUES("71","thread_comments","1","yes");
INSERT INTO wp_options VALUES("72","thread_comments_depth","5","yes");
INSERT INTO wp_options VALUES("73","page_comments","","yes");
INSERT INTO wp_options VALUES("74","comments_per_page","50","yes");
INSERT INTO wp_options VALUES("75","default_comments_page","newest","yes");
INSERT INTO wp_options VALUES("76","comment_order","asc","yes");
INSERT INTO wp_options VALUES("77","sticky_posts","a:0:{}","yes");
INSERT INTO wp_options VALUES("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("79","widget_text","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("80","widget_rss","a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("81","uninstall_plugins","a:2:{s:27:\"wp-super-cache/wp-cache.php\";s:22:\"wpsupercache_uninstall\";s:26:\"secure-wordpress/index.php\";a:2:{i:0;s:10:\"SwpaPlugin\";i:1;s:9:\"uninstall\";}}","no");
INSERT INTO wp_options VALUES("82","timezone_string","","yes");
INSERT INTO wp_options VALUES("83","page_for_posts","0","yes");
INSERT INTO wp_options VALUES("84","page_on_front","0","yes");
INSERT INTO wp_options VALUES("85","default_post_format","0","yes");
INSERT INTO wp_options VALUES("86","link_manager_enabled","0","yes");
INSERT INTO wp_options VALUES("87","finished_splitting_shared_terms","1","yes");
INSERT INTO wp_options VALUES("88","site_icon","0","yes");
INSERT INTO wp_options VALUES("89","medium_large_size_w","768","yes");
INSERT INTO wp_options VALUES("90","medium_large_size_h","0","yes");
INSERT INTO wp_options VALUES("91","initial_db_version","38590","yes");
INSERT INTO wp_options VALUES("92","wp_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes");
INSERT INTO wp_options VALUES("93","fresh_site","0","yes");
INSERT INTO wp_options VALUES("94","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("95","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("96","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("97","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("98","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("99","sidebars_widgets","a:15:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"default_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";N;s:9:\"sidebar-4\";N;s:9:\"sidebar-5\";N;s:9:\"sidebar-6\";N;s:9:\"sidebar-7\";N;s:9:\"sidebar-8\";N;s:15:\"footer_widget_1\";N;s:15:\"footer_widget_2\";N;s:15:\"footer_widget_3\";N;s:15:\"footer_widget_4\";N;s:13:\"array_version\";i:3;}","yes");
INSERT INTO wp_options VALUES("100","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("101","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("102","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("103","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("104","cron","a:9:{i:1494535922;a:1:{s:20:\"blc_cron_check_links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1494535955;a:2:{s:21:\"swpa_check_user_admin\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:2:\"8h\";s:4:\"args\";a:0:{}s:8:\"interval\";i:28800;}}s:25:\"swpa_cleanup_live_traffic\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1494550294;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1494593522;a:1:{s:28:\"blc_cron_email_notifications\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1494593567;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1494593833;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1494597137;a:1:{s:13:\"sm_ping_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1495443122;a:1:{s:29:\"blc_cron_database_maintenance\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"bimonthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:936000;}}}s:7:\"version\";i:2;}","yes");
INSERT INTO wp_options VALUES("105","theme_mods_twentyseventeen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1494507110;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes");
INSERT INTO wp_options VALUES("123","theme_switched","","yes");
INSERT INTO wp_options VALUES("124","widget_vmenuwidget","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("109","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.4\";s:7:\"version\";s:5:\"4.7.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1494508560;s:15:\"version_checked\";s:5:\"4.7.4\";s:12:\"translations\";a:0:{}}","no");
INSERT INTO wp_options VALUES("216","_site_transient_timeout_theme_roots","1494529342","no");
INSERT INTO wp_options VALUES("217","_site_transient_theme_roots","a:5:{s:16:\"business-arsenic\";s:7:\"/themes\";s:7:\"onetone\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}","no");
INSERT INTO wp_options VALUES("170","theme_mods_onetone","a:2:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;}","yes");
INSERT INTO wp_options VALUES("121","current_theme","Onetone","yes");
INSERT INTO wp_options VALUES("122","theme_mods_business-arsenic","a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1494507298;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"header-widget-area\";a:0:{}s:21:\"first-nav-widget-area\";a:0:{}s:22:\"second-nav-widget-area\";N;s:21:\"first-top-widget-area\";N;s:22:\"second-top-widget-area\";N;s:24:\"first-bottom-widget-area\";N;s:25:\"second-bottom-widget-area\";N;}}}","yes");
INSERT INTO wp_options VALUES("116","_site_transient_timeout_browser_b8f0232717c1a5bb4d64b4304c312962","1495111904","no");
INSERT INTO wp_options VALUES("117","_site_transient_browser_b8f0232717c1a5bb4d64b4304c312962","a:8:{s:4:\"name\";N;s:7:\"version\";N;s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","no");
INSERT INTO wp_options VALUES("125","widget_loginwidget","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("128","ossdl_off_cdn_url","http://t12pathshala.co.nf","yes");
INSERT INTO wp_options VALUES("129","ossdl_off_include_dirs","wp-content,wp-includes","yes");
INSERT INTO wp_options VALUES("130","ossdl_off_exclude",".php","yes");
INSERT INTO wp_options VALUES("131","ossdl_cname","","yes");
INSERT INTO wp_options VALUES("169","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1494508563;s:7:\"checked\";a:5:{s:16:\"business-arsenic\";s:3:\"1.0\";s:7:\"onetone\";s:5:\"2.0.9\";s:13:\"twentyfifteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"1.2\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:1:{s:7:\"onetone\";a:4:{s:5:\"theme\";s:7:\"onetone\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:37:\"https://wordpress.org/themes/onetone/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/onetone.2.1.0.zip\";}}s:12:\"translations\";a:0:{}}","no");
INSERT INTO wp_options VALUES("133","wsblc_options","{\"max_execution_time\":420,\"check_threshold\":72,\"recheck_count\":3,\"recheck_threshold\":1800,\"run_in_dashboard\":true,\"run_via_cron\":true,\"mark_broken_links\":true,\"broken_link_css\":\".broken_link, a.broken_link {\\n\\ttext-decoration: line-through;\\n}\",\"nofollow_broken_links\":false,\"mark_removed_links\":false,\"removed_link_css\":\".removed_link, a.removed_link {\\n\\ttext-decoration: line-through;\\n}\",\"exclusion_list\":[],\"send_email_notifications\":true,\"send_authors_email_notifications\":false,\"notification_email_address\":\"\",\"notification_schedule\":\"daily\",\"last_notification_sent\":0,\"suggestions_enabled\":true,\"warnings_enabled\":true,\"server_load_limit\":null,\"enable_load_limit\":false,\"custom_fields\":[],\"enabled_post_statuses\":[\"publish\"],\"autoexpand_widget\":true,\"dashboard_widget_capability\":\"edit_others_posts\",\"show_link_count_bubble\":true,\"table_layout\":\"flexible\",\"table_compact\":true,\"table_visible_columns\":[\"new-url\",\"status\",\"used-in\",\"new-link-text\"],\"table_links_per_page\":30,\"table_color_code_status\":true,\"need_resynch\":false,\"current_db_version\":9,\"timeout\":30,\"highlight_permanent_failures\":false,\"failure_duration_threshold\":3,\"logging_enabled\":false,\"log_file\":\"\",\"custom_log_file_enabled\":false,\"installation_complete\":true,\"installation_flag_cleared_on\":\"2017-05-11T12:52:00+00:00 (1494507120.15)\",\"installation_flag_set_on\":\"2017-05-11T12:52:00+00:00 (1494507120.49)\",\"user_has_donated\":false,\"donation_flag_fixed\":false,\"show_link_actions\":{\"blc-deredirect-action\":false},\"first_installation_timestamp\":1494507120,\"active_modules\":{\"http\":{\"ModuleID\":\"http\",\"ModuleCategory\":\"checker\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcHttpChecker\",\"ModulePriority\":-1,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"Basic HTTP\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Check all links that have the HTTP\\/HTTPS protocol.\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Basic HTTP\",\"AuthorName\":\"Janis Elsts\",\"file\":\"checkers\\/http.php\"},\"link\":{\"ModuleID\":\"link\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcHTMLLink\",\"ModulePriority\":1000,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"HTML links\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Example : <code>&lt;a href=\\\"http:\\/\\/example.com\\/\\\"&gt;link text&lt;\\/a&gt;<\\/code>\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"HTML links\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/html_link.php\"},\"image\":{\"ModuleID\":\"image\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcHTMLImage\",\"ModulePriority\":900,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"HTML images\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"e.g. <code>&lt;img src=\\\"http:\\/\\/example.com\\/fluffy.jpg\\\"&gt;<\\/code>\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"HTML images\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/image.php\"},\"metadata\":{\"ModuleID\":\"metadata\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcMetadataParser\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":true,\"ModuleAlwaysActive\":true,\"ModuleRequiresPro\":false,\"Name\":\"Metadata\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Parses metadata (AKA custom fields)\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Metadata\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/metadata.php\"},\"url_field\":{\"ModuleID\":\"url_field\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcUrlField\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":true,\"ModuleAlwaysActive\":true,\"ModuleRequiresPro\":false,\"Name\":\"URL fields\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Parses data fields that contain a single, plaintext URL.\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"URL fields\",\"AuthorName\":\"Janis Elsts\",\"file\":\"parsers\\/url_field.php\"},\"comment\":{\"ModuleID\":\"comment\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleLazyInit\":false,\"ModuleClassName\":\"blcCommentManager\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"Comments\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Comments\",\"AuthorName\":\"Janis Elsts\",\"file\":\"containers\\/comment.php\"},\"post\":{\"Name\":\"Posts\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleClassName\":\"blcAnyPostContainerManager\",\"ModuleID\":\"post\",\"file\":\"\",\"ModuleLazyInit\":false,\"ModulePriority\":0,\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"TextDomain\":\"broken-link-checker\",\"virtual\":true},\"page\":{\"Name\":\"Pages\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleClassName\":\"blcAnyPostContainerManager\",\"ModuleID\":\"page\",\"file\":\"\",\"ModuleLazyInit\":false,\"ModulePriority\":0,\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"TextDomain\":\"broken-link-checker\",\"virtual\":true},\"youtube-checker\":{\"ModuleID\":\"youtube-checker\",\"ModuleCategory\":\"checker\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcYouTubeChecker\",\"ModulePriority\":100,\"ModuleCheckerUrlPattern\":\"@^https?:\\/\\/(?:([\\\\w\\\\d]+\\\\.)*youtube\\\\.[^\\/]+\\/watch\\\\?.*v=[^\\/#]|youtu\\\\.be\\/[^\\/#\\\\?]+|(?:[\\\\w\\\\d]+\\\\.)*?youtube\\\\.[^\\/]+\\/(playlist|view_play_list)\\\\?[^\\/#]{15,}?)@i\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"YouTube API\",\"PluginURI\":\"\",\"Version\":\"3\",\"Description\":\"Check links to YouTube videos and playlists using the YouTube API.\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"YouTube API\",\"AuthorName\":\"Janis Elsts\",\"file\":\"extras\\/youtube.php\"},\"youtube-iframe\":{\"ModuleID\":\"youtube-iframe\",\"ModuleCategory\":\"parser\",\"ModuleContext\":\"on-demand\",\"ModuleLazyInit\":true,\"ModuleClassName\":\"blcYouTubeIframe\",\"ModulePriority\":120,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":false,\"ModuleAlwaysActive\":false,\"ModuleRequiresPro\":false,\"Name\":\"Embedded YouTube videos\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"Parse embedded videos from YouTube\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Embedded YouTube videos\",\"AuthorName\":\"Janis Elsts\",\"file\":\"extras\\/youtube-iframe.php\"},\"dummy\":{\"ModuleID\":\"dummy\",\"ModuleCategory\":\"container\",\"ModuleContext\":\"all\",\"ModuleLazyInit\":false,\"ModuleClassName\":\"blcDummyManager\",\"ModulePriority\":0,\"ModuleCheckerUrlPattern\":\"\",\"ModuleHidden\":true,\"ModuleAlwaysActive\":true,\"ModuleRequiresPro\":false,\"Name\":\"Dummy\",\"PluginURI\":\"\",\"Version\":\"1.0\",\"Description\":\"\",\"Author\":\"Janis Elsts\",\"AuthorURI\":\"\",\"TextDomain\":\"broken-link-checker\",\"DomainPath\":\"\",\"Network\":false,\"Title\":\"Dummy\",\"AuthorName\":\"Janis Elsts\",\"file\":\"containers\\/dummy.php\"}},\"module_deactivated_when\":{\"custom_field\":1494507120}}","yes");
INSERT INTO wp_options VALUES("134","blc_installation_log","a:63:{i:0;a:3:{i:0;i:1;i:1;s:40:\"Plugin activated at 2017-05-11 12:52:00.\";i:2;N;}i:1;a:3:{i:0;i:1;i:1;s:27:\"Installation/update begins.\";i:2;N;}i:2;a:3:{i:0;i:1;i:1;s:25:\"Upgrading the database...\";i:2;N;}i:3;a:3:{i:0;i:1;i:1;s:31:\"... SHOW TABLES (0.002 seconds)\";i:2;N;}i:4;a:3:{i:0;i:1;i:1;s:272:\" [OK] 	
	CREATE TABLE IF NOT EXISTS `wp_blc_filters` (
		`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
		`name` varchar(100) NOT NULL,
		`params` text NOT NULL,
		PRIMARY KEY (`id`)
	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.114 seconds)\";i:2;N;}i:5;a:3:{i:0;i:1;i:1;s:731:\" [OK] 
	CREATE TABLE IF NOT EXISTS `wp_blc_instances` (
		`instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
		`link_id` int(10) unsigned NOT NULL,
		`container_id` int(10) unsigned NOT NULL,
		`container_type` varchar(40) NOT NULL DEFAULT \'post\',
		`link_text` text NOT NULL DEFAULT \'\',
		`parser_type` varchar(40) NOT NULL DEFAULT \'link\',
		`container_field` varchar(250) NOT NULL DEFAULT \'\',
		`link_context` varchar(250) NOT NULL DEFAULT \'\',
		`raw_url` text NOT NULL,
		PRIMARY KEY (`instance_id`),
		KEY `link_id` (`link_id`),
		KEY `source_id` (`container_type`, `container_id`),
		KEY `parser_type` (`parser_type`)
	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.032 seconds)\";i:2;N;}i:6;a:3:{i:0;i:1;i:1;s:1505:\" [OK] 
	CREATE TABLE IF NOT EXISTS `wp_blc_links` (
		`link_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
		`url` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
		`first_failure` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',
		`last_check` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',
		`last_success` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',
		`last_check_attempt` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',
		`check_count` int(4) unsigned NOT NULL DEFAULT \'0\',
		`final_url` text CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
		`redirect_count` smallint(5) unsigned NOT NULL DEFAULT \'0\',
		`log` text NOT NULL,
		`http_code` smallint(6) NOT NULL DEFAULT \'0\',
		`status_code` varchar(100) DEFAULT \'\',
		`status_text` varchar(250) DEFAULT \'\',
		`request_duration` float NOT NULL DEFAULT \'0\',
		`timeout` tinyint(1) unsigned NOT NULL DEFAULT \'0\',
		`broken` tinyint(1) unsigned NOT NULL DEFAULT \'0\',
		`warning` tinyint(1) unsigned NOT NULL DEFAULT \'0\',
		`may_recheck` tinyint(1) NOT NULL DEFAULT \'1\',
		`being_checked` tinyint(1) NOT NULL DEFAULT \'0\',
		`result_hash` varchar(200) NOT NULL DEFAULT \'\',
		`false_positive` tinyint(1) NOT NULL DEFAULT \'0\',
		`dismissed` tinyint(1) NOT NULL DEFAULT \'0\',
		PRIMARY KEY (`link_id`),
		KEY `url` (`url`(150)),
		KEY `final_url` (`final_url`(150)),
		KEY `http_code` (`http_code`),
		KEY `broken` (`broken`)
	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.032 seconds)\";i:2;N;}i:7;a:3:{i:0;i:1;i:1;s:414:\" [OK] 
	CREATE TABLE IF NOT EXISTS `wp_blc_synch` (
		`container_id` int(20) unsigned NOT NULL,
		`container_type` varchar(40) NOT NULL,
		`synched` tinyint(2) unsigned NOT NULL,
		`last_synch` datetime NOT NULL DEFAULT \'0000-00-00 00:00:00\',
		PRIMARY KEY (`container_type`,`container_id`),
		KEY `synched` (`synched`)
	) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci (0.027 seconds)\";i:2;N;}i:8;a:3:{i:0;i:1;i:1;s:32:\"Schema update took 0.208 seconds\";i:2;N;}i:9;a:3:{i:0;i:1;i:1;s:24:\"Database schema updated.\";i:2;N;}i:10;a:3:{i:0;i:1;i:1;s:31:\"Database successfully upgraded.\";i:2;N;}i:11;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.215 seconds\";i:2;N;}i:12;a:3:{i:0;i:1;i:1;s:27:\"Cleaning up the database...\";i:2;N;}i:13;a:3:{i:0;i:1;i:1;s:38:\"... Deleting invalid container records\";i:2;N;}i:14;a:3:{i:0;i:0;i:1;s:44:\"... 0 synch records deleted in 0.002 seconds\";i:2;N;}i:15;a:3:{i:0;i:1;i:1;s:35:\"... Deleting invalid link instances\";i:2;N;}i:16;a:3:{i:0;i:0;i:1;s:40:\"... 0 instances deleted in 0.002 seconds\";i:2;N;}i:17;a:3:{i:0;i:0;i:1;s:45:\"... 0 more instances deleted in 0.002 seconds\";i:2;N;}i:18;a:3:{i:0;i:1;i:1;s:27:\"... Deleting orphaned links\";i:2;N;}i:19;a:3:{i:0;i:0;i:1;s:36:\"... 0 links deleted in 0.004 seconds\";i:2;N;}i:20;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.011 seconds\";i:2;N;}i:21;a:3:{i:0;i:1;i:1;s:20:\"Notifying modules...\";i:2;N;}i:22;a:3:{i:0;i:0;i:1;s:25:\"... Updating module cache\";i:2;N;}i:23;a:3:{i:0;i:1;i:1;s:36:\"... Cache refresh took 0.000 seconds\";i:2;N;}i:24;a:3:{i:0;i:0;i:1;s:19:\"... Loading modules\";i:2;N;}i:25;a:3:{i:0;i:1;i:1;s:37:\"... 5 modules loaded in 0.002 seconds\";i:2;N;}i:26;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"http\"\";i:2;N;}i:27;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"link\"\";i:2;N;}i:28;a:3:{i:0;i:0;i:1;s:28:\"... Notifying module \"image\"\";i:2;N;}i:29;a:3:{i:0;i:0;i:1;s:31:\"... Notifying module \"metadata\"\";i:2;N;}i:30;a:3:{i:0;i:0;i:1;s:32:\"... Notifying module \"url_field\"\";i:2;N;}i:31;a:3:{i:0;i:0;i:1;s:30:\"... Notifying module \"comment\"\";i:2;N;}i:32;a:3:{i:0;i:0;i:1;s:51:\"...... Deleting synch. records for removed comments\";i:2;N;}i:33;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows deleted in 0.004 seconds\";i:2;N;}i:34;a:3:{i:0;i:0;i:1;s:47:\"...... Creating synch. records for new comments\";i:2;N;}i:35;a:3:{i:0;i:0;i:1;s:39:\"...... 1 rows inserted in 0.020 seconds\";i:2;N;}i:36;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"post\"\";i:2;N;}i:37;a:3:{i:0;i:0;i:1;s:47:\"...... Deleting synch records for removed posts\";i:2;N;}i:38;a:3:{i:0;i:0;i:1;s:207:\"DELETE synch.*
				  FROM 
					 wp_blc_synch AS synch LEFT JOIN wp_posts AS posts
					 ON posts.ID = synch.container_id
				  WHERE 
					 synch.container_type IN (\'page\', \'post\') AND posts.ID IS NULL\";i:2;N;}i:39;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows deleted in 0.003 seconds\";i:2;N;}i:40;a:3:{i:0;i:0;i:1;s:69:\"...... Deleting synch records for posts that have a disallowed status\";i:2;N;}i:41;a:3:{i:0;i:0;i:1;s:232:\"DELETE synch.*
				  FROM
					 wp_blc_synch AS synch
					 LEFT JOIN wp_posts AS posts
					 ON (synch.container_id = posts.ID and synch.container_type = posts.post_type)
				  WHERE
					 posts.post_status NOT IN (\'publish\')\";i:2;N;}i:42;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows deleted in 0.002 seconds\";i:2;N;}i:43;a:3:{i:0;i:0;i:1;s:41:\"...... Marking changed posts as unsynched\";i:2;N;}i:44;a:3:{i:0;i:0;i:1;s:227:\"UPDATE
					wp_blc_synch AS synch
					JOIN wp_posts AS posts ON (synch.container_id = posts.ID and synch.container_type=posts.post_type)
				  SET 
					synched = 0
				  WHERE
					synch.last_synch < posts.post_modified\";i:2;N;}i:45;a:3:{i:0;i:0;i:1;s:38:\"...... 0 rows updated in 0.002 seconds\";i:2;N;}i:46;a:3:{i:0;i:0;i:1;s:43:\"...... Creating synch records for new posts\";i:2;N;}i:47;a:3:{i:0;i:0;i:1;s:400:\"INSERT INTO wp_blc_synch(container_id, container_type, synched)
				  SELECT posts.id, posts.post_type, 0
				  FROM 
				    wp_posts AS posts LEFT JOIN wp_blc_synch AS synch
					ON (synch.container_id = posts.ID and synch.container_type=posts.post_type)  
				  WHERE
				  	posts.post_status IN (\'publish\')
	 				AND posts.post_type IN (\'page\', \'post\')
					AND synch.container_id IS NULL\";i:2;N;}i:48;a:3:{i:0;i:0;i:1;s:39:\"...... 2 rows inserted in 0.003 seconds\";i:2;N;}i:49;a:3:{i:0;i:0;i:1;s:27:\"... Notifying module \"page\"\";i:2;N;}i:50;a:3:{i:0;i:0;i:1;s:74:\"...... Skipping \"page\" resyncyh since all post types were already synched.\";i:2;N;}i:51;a:3:{i:0;i:0;i:1;s:38:\"... Notifying module \"youtube-checker\"\";i:2;N;}i:52;a:3:{i:0;i:0;i:1;s:37:\"... Notifying module \"youtube-iframe\"\";i:2;N;}i:53;a:3:{i:0;i:0;i:1;s:28:\"... Notifying module \"dummy\"\";i:2;N;}i:54;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.048 seconds\";i:2;N;}i:55;a:3:{i:0;i:1;i:1;s:38:\"Updating server load limit settings...\";i:2;N;}i:56;a:3:{i:0;i:1;i:1;s:57:\"Disable load limit. Cannot retrieve current load average.\";i:2;N;}i:57;a:3:{i:0;i:1;i:1;s:26:\"Optimizing the database...\";i:2;N;}i:58;a:3:{i:0;i:1;i:1;s:24:\"--- Total: 0.003 seconds\";i:2;N;}i:59;a:3:{i:0;i:1;i:1;s:26:\"Completing installation...\";i:2;N;}i:60;a:3:{i:0;i:1;i:1;s:20:\"Configuration saved.\";i:2;N;}i:61;a:3:{i:0;i:1;i:1;s:78:\"Installation/update completed at 2017-05-11 12:52:00 with 24 queries executed.\";i:2;N;}i:62;a:3:{i:0;i:1;i:1;s:25:\"Total time: 0.344 seconds\";i:2;N;}}","yes");
INSERT INTO wp_options VALUES("136","wpcf7","a:2:{s:7:\"version\";s:3:\"4.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1494507126;s:7:\"version\";s:5:\"4.6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}","yes");
INSERT INTO wp_options VALUES("142","wsdplugin_settings","a:15:{s:17:\"fix_hideWpVersion\";a:3:{s:4:\"name\";s:17:\"fix_hideWpVersion\";s:5:\"value\";i:0;s:4:\"desc\";s:55:\"Hide WordPress version for all users but administrators\";}s:34:\"fix_removeWpMetaGeneratorsFrontend\";a:3:{s:4:\"name\";s:34:\"fix_removeWpMetaGeneratorsFrontend\";s:5:\"value\";i:0;s:4:\"desc\";s:84:\"Remove various meta tags generators from the blog\'s head tag for non-administrators.\";}s:31:\"fix_removeReallySimpleDiscovery\";a:3:{s:4:\"name\";s:31:\"fix_removeReallySimpleDiscovery\";s:5:\"value\";i:0;s:4:\"desc\";s:55:\"Remove Really Simple Discovery meta tags from front-end\";}s:27:\"fix_removeWindowsLiveWriter\";a:3:{s:4:\"name\";s:27:\"fix_removeWindowsLiveWriter\";s:5:\"value\";i:0;s:4:\"desc\";s:51:\"Remove Windows Live Writer meta tags from front-end\";}s:25:\"fix_disableErrorReporting\";a:3:{s:4:\"name\";s:25:\"fix_disableErrorReporting\";s:5:\"value\";i:0;s:4:\"desc\";s:61:\"Disable error reporting (php + db) for all but administrators\";}s:32:\"fix_removeCoreUpdateNotification\";a:3:{s:4:\"name\";s:32:\"fix_removeCoreUpdateNotification\";s:5:\"value\";i:0;s:4:\"desc\";s:73:\"Remove core update notifications from back-end for all but administrators\";}s:35:\"fix_removePluginUpdateNotifications\";a:3:{s:4:\"name\";s:35:\"fix_removePluginUpdateNotifications\";s:5:\"value\";i:0;s:4:\"desc\";s:50:\"Remove plug-ins update notifications from back-end\";}s:34:\"fix_removeThemeUpdateNotifications\";a:3:{s:4:\"name\";s:34:\"fix_removeThemeUpdateNotifications\";s:5:\"value\";i:0;s:4:\"desc\";s:48:\"Remove themes update notifications from back-end\";}s:41:\"fix_removeLoginErrorNotificationsFrontEnd\";a:3:{s:4:\"name\";s:41:\"fix_removeLoginErrorNotificationsFrontEnd\";s:5:\"value\";i:0;s:4:\"desc\";s:47:\"Remove login error notifications from front-end\";}s:26:\"fix_hideAdminNotifications\";a:3:{s:4:\"name\";s:26:\"fix_hideAdminNotifications\";s:5:\"value\";i:0;s:4:\"desc\";s:40:\"Hide admin notifications for non admins.\";}s:27:\"fix_preventDirectoryListing\";a:3:{s:4:\"name\";s:27:\"fix_preventDirectoryListing\";s:5:\"value\";i:0;s:4:\"desc\";s:153:\"Try to create the index.php file in the wp-content, wp-content/plugins, wp-content/themes and wp-content/uploads directories to prevent directory listing\";}s:28:\"fix_removeWpVersionFromLinks\";a:3:{s:4:\"name\";s:28:\"fix_removeWpVersionFromLinks\";s:5:\"value\";i:0;s:4:\"desc\";s:38:\"Remove the version parameter from urls\";}s:27:\"fix_emptyReadmeFileFromRoot\";a:3:{s:4:\"name\";s:27:\"fix_emptyReadmeFileFromRoot\";s:5:\"value\";i:0;s:4:\"desc\";s:66:\"Empty the content of the readme.html file from the root directory.\";}s:25:\"keepNumEntriesLiveTraffic\";i:500;s:26:\"liveTrafficRefreshRateAjax\";i:10;}","yes");
INSERT INTO wp_options VALUES("139","sm_rewrite_done","$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $","yes");
INSERT INTO wp_options VALUES("141","WSD-PLUGIN-CAN-RUN-TASKS","1","yes");
INSERT INTO wp_options VALUES("144","SWPA_PLUGIN_ENTRIES_LIVE_TRAFFIC","158","yes");
INSERT INTO wp_options VALUES("192","_site_transient_timeout_browser_69440949da6264b03a413f21a0145389","1495115528","no");
INSERT INTO wp_options VALUES("193","_site_transient_browser_69440949da6264b03a413f21a0145389","a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"10.1\";s:10:\"update_url\";s:28:\"http://www.apple.com/safari/\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/safari.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/safari.png\";s:15:\"current_version\";s:1:\"5\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","no");
INSERT INTO wp_options VALUES("187","_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a","1494519227","no");
INSERT INTO wp_options VALUES("146","_site_transient_timeout_browser_5a44afb513ff98a874122cd432a844f1","1495111969","no");
INSERT INTO wp_options VALUES("147","_site_transient_browser_5a44afb513ff98a874122cd432a844f1","a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"54.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","no");
INSERT INTO wp_options VALUES("149","can_compress_scripts","1","no");
INSERT INTO wp_options VALUES("150","_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca","1494550381","no");
INSERT INTO wp_options VALUES("151","_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 17:54:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=4.8-alpha-40586\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:36:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.7.4 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2017/04/wordpress-4-7-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 17:54:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:3:\"4.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4710\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:376:\"After almost sixty million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release. This release contains 47 bug fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Pascal Birchler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4518:\"<p>After almost sixty�million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release.</p>
<p>This release contains 47 maintenance�fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API. For a full list of changes, consult the�<a href=\"https://codex.wordpress.org/Version_4.7.4\">release notes</a>�and the�<a href=\"https://core.trac.wordpress.org/log/branches/4.7?rev=40487&amp;stop_rev=40224\">list of changes</a>.</p>
<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.7.4</a>�or visit�<strong>Dashboard ? Updates</strong> and simply click �Update Now.� Sites that support automatic background updates are already beginning to update to WordPress 4.7.4.</p>
<p>Thanks to everyone who contributed to 4.7.4:<br />
<a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aussieguy123/\">aussieguy123</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boldwater/\">boldwater</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/chesio/\">chesio</a>, <a href=\"https://profiles.wordpress.org/curdin/\">Curdin Krummenacher</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davidbenton/\">davidbenton</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/eclev91/\">eclev91</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ghosttoast/\">Gustave F. Gerhardt</a>, <a href=\"https://profiles.wordpress.org/ig_communitysites/\">ig_communitysites</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/karinedo/\">karinedo</a>, <a href=\"https://profiles.wordpress.org/lukasbesch/\">lukasbesch</a>, <a href=\"https://profiles.wordpress.org/maguiar/\">maguiar</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez/\">MatheusGimenez</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mayurk/\">Mayur Keshwani</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/delawski/\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/pratikshrestha/\">Pratik Shrestha</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/sagarkbhatt/\">sagarkbhatt</a>, <a href=\"https://profiles.wordpress.org/sagarprajapati/\">Sagar Prajapati</a>, <a href=\"https://profiles.wordpress.org/sboisvert/\">sboisvert</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford/\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4710\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.7.3 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Mar 2017 17:53:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"4.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4696\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:396:\"WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by six�security issues: Cross-site scripting (XSS) via�media file metadata. �Reported by Chris Andr� Dale, Yorick Koster,�and Simon P. Briggs. Control characters can trick redirect [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"James Nylen\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6191:\"<p>WordPress 4.7.3 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>
<p>WordPress versions 4.7.2 and earlier are affected by six�security issues:</p>
<ol>
<li>Cross-site scripting (XSS) via�media file metadata. �Reported by <a href=\"https://www.securesolutions.no/\">Chris Andr� Dale</a>, <a href=\"https://twitter.com/yorickkoster\">Yorick Koster</a>,�and Simon P. Briggs.</li>
<li>Control characters can trick redirect URL validation. �Reported by <a href=\"http://www.danielchatfield.com/\">Daniel Chatfield</a>.</li>
<li>Unintended�files can be deleted by administrators using the plugin deletion functionality. �Reported by <a href=\"https://hackerone.com/triginc\">TrigInc</a> and <a href=\"http://b.360.cn/\">xuliang</a>.</li>
<li>Cross-site scripting (XSS) via�video URL in YouTube embeds. �Reported by <a href=\"https://twitter.com/marcs0h\">Marc Montpas</a>.</li>
<li>Cross-site scripting (XSS) via taxonomy term names. �Reported by <a href=\"https://profiles.wordpress.org/deltamgm2\">Delta</a>.</li>
<li>Cross-site request forgery (CSRF) in Press This leading to excessive use of server�resources. �Reported by Sipke Mellema.</li>
</ol>
<p>Thank you to the�reporters for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">responsible disclosure</a>.</p>
<p>In addition to the security issues above, WordPress 4.7.3 contains 39 maintenance fixes to the�4.7 release series.�For more information, see the <a href=\"https://codex.wordpress.org/Version_4.7.3\">release notes</a>�or consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">list of changes</a>.</p>
<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.7.3</a>�or venture over to Dashboard ? Updates and simply click �Update Now.� Sites that support automatic background updates are already beginning to update to WordPress 4.7.3.</p>
<p>Thanks to everyone who contributed to 4.7.3: <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/asalce/\">asalce</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">blobfolio</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/bradyvercher/\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/drrobotnik/\">Brandon Lavigne</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90/\">Bunty</a>, <a href=\"https://profiles.wordpress.org/ccprog/\">ccprog</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dhanendran/\">Dhanendran</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/drivingralle/\">Drivingralle</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jazbek/\">jazbek</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry/\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez/\">MatheusGimenez</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Mike Nelson</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/codegeass/\">Muhammet Arslan</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pavelevap/\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/reldev/\">reldev</a>, <a href=\"https://profiles.wordpress.org/sanchothefat/\">Robert O&#8217;Rourke</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/sanketparmar/\">Sanket Parmar</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/triplejumper12/\">triplejumper12</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, and <a href=\"https://profiles.wordpress.org/wpfo/\">wpfo</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4696\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 4.7.2 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2017/01/wordpress-4-7-2-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Jan 2017 19:34:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"4.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4676\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:357:\"WordPress 4.7.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.1 and earlier are affected by three�security issues: The user interface for assigning taxonomy terms in Press This is shown to users who do not have�permissions to use it. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2142:\"<p>WordPress 4.7.2 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>
<p>WordPress versions 4.7.1 and earlier are affected by three�security issues:</p>
<ol>
<li>The user interface for assigning taxonomy terms in Press This is shown to users who do not have�permissions to use it. Reported by David Herrera of <a href=\"https://www.alleyinteractive.com/\">Alley Interactive</a>.</li>
<li><code>WP_Query</code>�is vulnerable to a SQL injection (SQLi) when passing unsafe�data. WordPress core is not directly vulnerable to this issue, but we&#8217;ve added hardening to prevent plugins and themes from accidentally causing a vulnerability.�Reported by�<a href=\"https://github.com/mjangda\">Mo Jangda</a> (batmoo).</li>
<li>A cross-site scripting (XSS) vulnerability was discovered in the posts list table. Reported by <a href=\"https://iandunn.name/\">Ian Dunn</a>�of the WordPress Security Team.</li>
<li>An unauthenticated privilege escalation vulnerability was discovered in a REST API endpoint. Reported by�<a href=\"https://twitter.com/MarcS0h\">Marc-Alexandre Montpas</a>�of Sucuri Security. *</li>
</ol>
<p>Thank you to the reporters of these issues for practicing�<a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">responsible disclosure</a>.</p>
<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.7.2</a>�or venture over to Dashboard ? Updates and simply click �Update Now.� Sites that support automatic background updates are already beginning to update to WordPress 4.7.2.</p>
<p>Thanks to everyone who contributed to 4.7.2.</p>
<p>* Update: An additional serious vulnerability was fixed in this release and public disclosure was delayed. For more information on this vulnerability, additional mitigation steps taken, and an explanation for why disclosure was delayed, please read�<a href=\"https://make.wordpress.org/core/2017/02/01/disclosure-of-additional-security-fix-in-wordpress-4-7-2/\">Disclosure of Additional Security Fix in WordPress 4.7.2</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4676\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.7.1 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2017/01/wordpress-4-7-1-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Jan 2017 03:53:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"4.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4650\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:375:\"WordPress 4.7 has been�downloaded over 10 million times�since its release on December 6, 2016�and we are pleased to announce the immediate availability of WordPress 4.7.1. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7 and earlier are affected by eight security issues: [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6520:\"<p>WordPress 4.7 has been�<a href=\"https://wordpress.org/download/counter/\">downloaded over 10 million times</a>�since its release on December 6, 2016�and we are pleased to announce the immediate availability of WordPress 4.7.1. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>
<p>WordPress versions 4.7 and earlier are affected by eight security issues:</p>
<ol>
<li>Remote code execution (RCE) in PHPMailer &#8211; <em>No specific issue appears to affect WordPress</em> or any of the major plugins we investigated but, out of an abundance of caution, we updated PHPMailer in this release. This issue was fixed in PHPMailer thanks to <a href=\"https://legalhackers.com/\">Dawid Golunski</a> and <a href=\"https://twitter.com/Zenexer\">Paul Buonopane</a>.</li>
<li>The REST API exposed user data for all users who had authored a post of a public post type. WordPress 4.7.1 limits this to only�post types which have specified that they should be shown�within the REST API. Reported by <a href=\"https://poststatus.com/\">Krogsgard</a> and <a href=\"https://ithemes.com/\">Chris Jean</a>.</li>
<li>Cross-site scripting (XSS) via the plugin name or version header on <code>update-core.php</code>.�Reported by�<a href=\"https://dominikschilling.de/\">Dominik Schilling</a>�of the WordPress Security Team.</li>
<li>Cross-site request forgery (CSRF) bypass via uploading a Flash file. Reported by�<a href=\"https://twitter.com/Abdulahhusam\">Abdullah Hussam</a>.</li>
<li>Cross-site scripting (XSS) via theme name fallback. Reported by�<a href=\"https://pentest.blog/\">Mehmet Ince</a>.</li>
<li>Post via email checks <code>mail.example.com</code>�if default settings aren&#8217;t changed. Reported by John Blackbourn of the WordPress Security Team.</li>
<li>A cross-site request forgery (CSRF) was discovered in the accessibility mode of widget editing. Reported by�<a href=\"https://dk.linkedin.com/in/ronni-skansing-36143b65\">Ronnie Skansing</a>.</li>
<li>Weak cryptographic security for multisite activation key. Reported by <a href=\"https://itsjack.cc/\">Jack</a>.</li>
</ol>
<p>Thank you to the�reporters for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">responsible disclosure</a>.</p>
<p>In addition to the security issues above, WordPress 4.7.1 fixes 62�bugs from 4.7.�For more information, see the <a href=\"https://codex.wordpress.org/Version_4.7.1\">release notes</a>�or consult the <a href=\"https://core.trac.wordpress.org/query?milestone=4.7.1\">list of changes</a>.</p>
<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.7.1</a>�or venture over to Dashboard ? Updates and simply click �Update Now.� Sites that support automatic background updates are already beginning to update to WordPress 4.7.1.</p>
<p>Thanks to everyone who contributed to 4.7.1: <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/chandrapatel/\">Chandra Patel</a>, <a href=\"https://profiles.wordpress.org/christian1012/\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dshanske/\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/dreamon11/\">DreamOn11</a>, <a href=\"https://profiles.wordpress.org/chopinbach/\">Edwin Cromley</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella van Dorpe</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/hristo-sg/\">Hristo Pandjarov</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jblz/\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry/\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/kkoppenhaver/\">Keanan Koppenhaver</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/laurelfulford/\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/tyxla/\">Marin Atanasov</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/monikarao/\">monikarao</a>, <a href=\"https://profiles.wordpress.org/natereist/\">Nate Reist</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/nikschavan/\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/nullvariable/\">nullvariable</a>, <a href=\"https://profiles.wordpress.org/sirbrillig/\">Payton Swick</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rmccue/\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/sanketparmar/\">Sanket Parmar</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula/\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sfpt/\">sfpt</a>, <a href=\"https://profiles.wordpress.org/shazahm1hotmailcom/\">shazahm1</a>, <a href=\"https://profiles.wordpress.org/sstoqnov/\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/stevenkword/\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/szaqal21/\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/timph/\">timph</a>, <a href=\"https://profiles.wordpress.org/voldemortensen/\">voldemortensen</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4650\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:36:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"WordPress 4.7 �Vaughan�\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wordpress.org/news/2016/12/vaughan/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Dec 2016 19:27:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4596\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:240:\"Version 4.7 of WordPress, named �Vaughan� in honor of legendary jazz vocalist Sarah \"Sassy\" Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"enclosure\";a:3:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:60:\"https://wordpress.org/news/files/2016/12/starter-content.mp4\";s:6:\"length\";s:7:\"3736020\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:59:\"https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4\";s:6:\"length\";s:7:\"1127483\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"url\";s:58:\"https://wordpress.org/news/files/2016/12/video-headers.mp4\";s:6:\"length\";s:7:\"1549803\";s:4:\"type\";s:9:\"video/mp4\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:45494:\"<p>Version 4.7 of WordPress, named �Vaughan� in honor of legendary jazz vocalist Sarah &#8220;Sassy&#8221; Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.</p>
<div id=\"v-AHz0Ca46-1\" class=\"video-player\"><video id=\"v-AHz0Ca46-1-video\" width=\"632\" height=\"354\" poster=\"https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_scruberthumbnail_0.jpg\" controls=\"true\" preload=\"metadata\" dir=\"ltr\" lang=\"en\"><source src=\"https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_dvd.mp4\" type=\"video/mp4; codecs=&quot;avc1.64001E, mp4a.40.2&quot;\" /><source src=\"https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_fmt1.ogv\" type=\"video/ogg; codecs=&quot;theora, vorbis&quot;\" /><div><img alt=\"Introducing WordPress 4.7\" src=\"https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_scruberthumbnail_0.jpg?resize=632%2C354\" data-recalc-dims=\"1\" /></div><p>Introducing WordPress 4.7</p></video></div>
<hr />
<h2 style=\"text-align:center\">Presenting Twenty Seventeen</h2>
<p>A brand new default theme brings your site to life with immersive featured images and video headers.</p>
<p><img class=\"alignnone wp-image-4618 size-large\" src=\"https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Twenty-Seventeen-1.jpg?resize=632%2C356&#038;ssl=1\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Twenty-Seventeen-1.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Twenty-Seventeen-1.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Twenty-Seventeen-1.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Twenty-Seventeen-1.jpg?w=1600&amp;ssl=1 1600w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Twenty-Seventeen-1.jpg?w=1264&amp;ssl=1 1264w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></p>
<p>Twenty Seventeen focuses on business sites and features a customizable front page with multiple sections. Personalize it with widgets, navigation, social menus, a logo, custom colors, and more. Our default theme for 2017 works great in many languages, on any device, and for a wide range of users.</p>
<hr />
<h2 style=\"text-align:center\">Your Site, Your Way</h2>
<p>WordPress 4.7 adds new features to the customizer to help take you through the initial setup of a theme, with non-destructive live previews of all your changes in one uninterrupted workflow.</p>
<h3>Theme Starter Content</h3>
<div style=\"width: 632px;\" class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->
<video class=\"wp-video-shortcode\" id=\"video-4596-1\" width=\"632\" height=\"346\" loop=\"1\" autoplay=\"1\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"https://wordpress.org/news/files/2016/12/starter-content.mp4?_=1\" /><a href=\"https://wordpress.org/news/files/2016/12/starter-content.mp4\">https://wordpress.org/news/files/2016/12/starter-content.mp4</a></video></div>
<p>To help give you a solid base to build from, individual themes can provide starter content that appears when you go to customize your brand new site. This can range from placing a business information widget in the best location to providing a sample menu with social icon links to a static front page complete with beautiful images. Don�t worry &#8211; nothing new will appear on the live site until you�re ready to save and publish your initial theme setup.</p>
<div style=\"float: left;width: 48%;margin: 0\">
<h3>Edit Shortcuts</h3>
<div style=\"width: 300px;\" class=\"wp-video\"><video class=\"wp-video-shortcode\" id=\"video-4596-2\" width=\"300\" height=\"173\" poster=\"https://wordpress.org/news/files/2016/12/4.7-�-Edit-Shortcuts.jpg\" loop=\"1\" autoplay=\"1\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4?_=2\" /><a href=\"https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4\">https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4</a></video></div>
<p>Visible icons appear to show you which parts of your site can be customized while live previewing. Click on a shortcut and get straight to editing. Paired with starter content, getting started with customizing your site is faster than ever.</p>
</div>
<div style=\"float: right;width: 48%;margin: 0\">
<h3>Video Headers</h3>
<div style=\"width: 300px;\" class=\"wp-video\"><video class=\"wp-video-shortcode\" id=\"video-4596-3\" width=\"300\" height=\"173\" poster=\"https://wordpress.org/news/files/2016/12/4.7-�-Header-Video.jpg\" loop=\"1\" autoplay=\"1\" preload=\"metadata\" controls=\"controls\"><source type=\"video/mp4\" src=\"https://wordpress.org/news/files/2016/12/video-headers.mp4?_=3\" /><a href=\"https://wordpress.org/news/files/2016/12/video-headers.mp4\">https://wordpress.org/news/files/2016/12/video-headers.mp4</a></video></div>
<p>Sometimes a big atmospheric video as a moving header image is just what you need to showcase your wares; go ahead and try it out with Twenty Seventeen. Need some video inspiration? Try searching for sites with video headers available for download and use.</p>
</div>
<div style=\"clear: both\"></div>
<div style=\"float: left;width: 48%;margin: 0\">
<h3>Smoother Menu Building</h3>
<p><img class=\"wp-image-4606 size-medium alignright\" src=\"https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-Nav.jpg?resize=300%2C158&#038;ssl=1\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-Nav.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-Nav.jpg?w=760&amp;ssl=1 760w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></p>
<p>Many menus for sites contain links to the pages of your site, but what happens when you don�t have any pages yet? Now you can add new pages while building menus instead of leaving the customizer and abandoning your changes. Once you�ve published your customizations, you�ll have new pages ready for you to fill with content.</p>
</div>
<div style=\"float: right;width: 48%;margin: 0\">
<h3>Custom CSS</h3>
<p><img class=\"wp-image-4607 size-medium alignright\" src=\"https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-CSS.jpg?resize=300%2C158&#038;ssl=1\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-CSS.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-CSS.jpg?w=760&amp;ssl=1 760w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></p>
<p>Sometimes you just need a few visual tweaks to make your site perfect. WordPress 4.7 allows you to add custom CSS and instantly see how your changes affect your site. The live preview allows you to work quickly without page refreshes slowing you down.</p>
</div>
<div style=\"clear: both\"></div>
<hr />
<div style=\"float: left;width: 48%;margin: 0\">
<h3>PDF Thumbnail Previews</h3>
<p><img class=\"wp-image-4609 size-medium alignright\" src=\"https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-PDF.jpg?resize=300%2C158&#038;ssl=1\" srcset=\"https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-PDF.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-�-PDF.jpg?w=760&amp;ssl=1 760w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></p>
<p>Managing your document collection is easier with WordPress 4.7. Uploading PDFs will generate thumbnail images so you can more easily distinguish between all your documents.</p>
</div>
<div style=\"float: right;width: 48%;margin: 0\">
<h3>Dashboard in your language</h3>
<p><img class=\"wp-image-4608 size-medium alignright\" src=\"https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Language.jpg?resize=300%2C158&#038;ssl=1\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Language.jpg?resize=300%2C158&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-Language.jpg?w=760&amp;ssl=1 760w\" sizes=\"(max-width: 300px) 100vw, 300px\" data-recalc-dims=\"1\" /></p>
<p>Just because your site is in one language doesn�t mean that everybody helping manage it prefers that language for their admin. Add more languages to your site and a user language option will show up in your user�s profiles.</p>
</div>
<div style=\"clear: both\"></div>
<hr />
<h2 style=\"text-align:center\">Introducing REST API Content Endpoints</h2>
<p>WordPress 4.7 comes with REST API endpoints for posts, comments, terms, users, meta, and settings.</p>
<p><img class=\"size-large wp-image-4600 alignnone\" src=\"https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-API.jpg?resize=632%2C205&#038;ssl=1\" alt=\"\" srcset=\"https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-API.jpg?resize=1024%2C332&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-API.jpg?resize=300%2C97&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-API.jpg?resize=768%2C249&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-API.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-�-API.jpg?w=1896&amp;ssl=1 1896w\" sizes=\"(max-width: 632px) 100vw, 632px\" data-recalc-dims=\"1\" /></p>
<p>Content endpoints provide machine-readable external access to your WordPress site with a clear, standards-driven interface, paving the way for new and innovative methods of interacting with sites through plugins, themes, apps, and beyond. Ready to get started with development? <a href=\"https://developer.wordpress.org/rest-api/reference/\">Check out the REST API reference.</a></p>
<hr />
<h2 style=\"text-align:center\">Even More Developer Happiness <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f60a.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></h2>
<h3><a href=\"https://make.wordpress.org/core/2016/11/03/post-type-templates-in-4-7/\">Post Type Templates</a></h3>
<p>By opening up the page template functionality to all post types, theme developers have even more flexibility with the WordPress template hierarchy.</p>
<h3>More Theme API Goodies</h3>
<p>WordPress 4.7 includes <a href=\"https://make.wordpress.org/core/2016/09/09/new-functions-hooks-and-behaviour-for-theme-developers-in-wordpress-4-7/\">new functions, hooks, and behavior</a> for theme developers.</p>
<h3><a href=\"https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/\">Custom Bulk Actions</a></h3>
<p>List tables, now with more than bulk edit and delete.</p>
<h3><a href=\"https://make.wordpress.org/core/2016/09/08/wp_hook-next-generation-actions-and-filters/\"><code>WP_Hook</code></a></h3>
<p>The code that lies beneath actions and filters has been overhauled and modernized, fixing bugs along the way.</p>
<h3>Settings Registration API</h3>
<p>register_setting() <a href=\"https://make.wordpress.org/core/2016/10/26/registering-your-settings-in-wordpress-4-7/\">has been enhanced</a> to include type, description, and REST API visibility.</p>
<h3><a href=\"https://make.wordpress.org/core/2016/10/12/customize-changesets-technical-design-decisions/\">Customize Changesets</a></h3>
<p>Customize changesets make changes in the customizer persistent, like autosave drafts. They also make exciting new features like starter content possible.</p>
<hr />
<h2 style=\"text-align:center\">The Squad</h2>
<p>This release was led by <a href=\"https://helen.blog\">Helen Hou-Sand�</a>, backed up by <a href=\"https://profiles.wordpress.org/jbpaul17\">Jeff Paul</a> and <a href=\"http://aaron.jorb.in/\">Aaron Jorbin</a> as Release Deputies, and with the help of these fine individuals. There are 482 contributors with props in this release�the most ever�with 205 of them contributing for the first time. Pull up some sassy Sarah Vaughan on your music service of choice, and check out some of their profiles:</p>
<a href=\"https://profiles.wordpress.org/wraithkenny\">[Inactive]</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/abrightclearweb\">abrightclearweb</a>, <a href=\"https://profiles.wordpress.org/ibachal\">Achal Jain</a>, <a href=\"https://profiles.wordpress.org/achbed\">achbed</a>, <a href=\"https://profiles.wordpress.org/acmethemes\">Acme Themes</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adammacias\">adammacias</a>, <a href=\"https://profiles.wordpress.org/mrahmadawais\">Ahmad Awais</a>, <a href=\"https://profiles.wordpress.org/ahmadawais\">ahmadawais</a>, <a href=\"https://profiles.wordpress.org/airesvsg\">airesvsg</a>, <a href=\"https://profiles.wordpress.org/ajoah\">ajoah</a>, <a href=\"https://profiles.wordpress.org/akibjorklund\">Aki Bj&#246;rklund</a>, <a href=\"https://profiles.wordpress.org/akshayvinchurkar\">akshayvinchurkar</a>, <a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/xavortm\">Alex Dimitrov</a>, <a href=\"https://profiles.wordpress.org/ironpaperweight\">Alex Hon</a>, <a href=\"https://profiles.wordpress.org/alex27\">alex27</a>, <a href=\"https://profiles.wordpress.org/allancole\">allancole</a>, <a href=\"https://profiles.wordpress.org/arush\">Amanda Rush</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andrewp-2\">Andreas Panag</a>, <a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst\">Andrey \"Rarst\" Savchenko</a>, <a href=\"https://profiles.wordpress.org/andizer\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/kelderic\">Andy Mercer</a>, <a href=\"https://profiles.wordpress.org/andy\">Andy Skelton</a>, <a href=\"https://profiles.wordpress.org/aniketpant\">Aniket Pant</a>, <a href=\"https://profiles.wordpress.org/anilbasnet\">Anil Basnet</a>, <a href=\"https://profiles.wordpress.org/ankit-k-gupta\">Ankit K Gupta</a>, <a href=\"https://profiles.wordpress.org/ahortin\">Anthony Hortin</a>, <a href=\"https://profiles.wordpress.org/antisilent\">antisilent</a>, <a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/zuige\">Antti Kuosmanen</a>, <a href=\"https://profiles.wordpress.org/apokalyptik\">apokalyptik</a>, <a href=\"https://profiles.wordpress.org/artoliukkonen\">artoliukkonen</a>, <a href=\"https://profiles.wordpress.org/ideag\">Arunas Liuiza</a>, <a href=\"https://profiles.wordpress.org/attitude\">attitude</a>, <a href=\"https://profiles.wordpress.org/backermann\">backermann</a>, <a href=\"https://profiles.wordpress.org/b-07\">Bappi</a>, <a href=\"https://profiles.wordpress.org/bcole808\">Ben Cole</a>, <a href=\"https://profiles.wordpress.org/kau-boy\">Bernhard Kau</a>, <a href=\"https://profiles.wordpress.org/binarymoon\">binarymoon</a>, <a href=\"https://profiles.wordpress.org/birgire\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw\">BjornW</a>, <a href=\"https://profiles.wordpress.org/bobbingwide\">bobbingwide</a>, <a href=\"https://profiles.wordpress.org/boblinthorst\">boblinthorst</a>, <a href=\"https://profiles.wordpress.org/boboudreau\">boboudreau</a>, <a href=\"https://profiles.wordpress.org/gitlost\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone B. Gorges</a>, <a href=\"https://profiles.wordpress.org/bradyvercher\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/brainstormforce\">Brainstorm Force</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brianhogg\">Brian Hogg</a>, <a href=\"https://profiles.wordpress.org/krogsgard\">Brian Krogsgard</a>, <a href=\"https://profiles.wordpress.org/bronsonquick\">Bronson Quick</a>, <a href=\"https://profiles.wordpress.org/sixhours\">Caroline Moore</a>, <a href=\"https://profiles.wordpress.org/caseypatrickdriscoll\">Casey Driscoll</a>, <a href=\"https://profiles.wordpress.org/caspie\">Caspie</a>, <a href=\"https://profiles.wordpress.org/chandrapatel\">Chandra Patel</a>, <a href=\"https://profiles.wordpress.org/chaos-engine\">Chaos Engine</a>, <a href=\"https://profiles.wordpress.org/cheeserolls\">cheeserolls</a>, <a href=\"https://profiles.wordpress.org/chesio\">chesio</a>, <a href=\"https://profiles.wordpress.org/ketuchetan\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/choongsavvii\">choong</a>, <a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chredd\">chredd</a>, <a href=\"https://profiles.wordpress.org/chrisjean\">Chris Jean</a>, <a href=\"https://profiles.wordpress.org/cmmarslender\">Chris Marslender</a>, <a href=\"https://profiles.wordpress.org/chris_d2d\">Chris Smith</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/chriswiegman\">Chris Wiegman</a>, <a href=\"https://profiles.wordpress.org/chriscct7\">chriscct7</a>, <a href=\"https://profiles.wordpress.org/chriseverson\">chriseverson</a>, <a href=\"https://profiles.wordpress.org/christian1012\">Christian Chung</a>, <a href=\"https://profiles.wordpress.org/cwpnolen\">Christian Nolen</a>, <a href=\"https://profiles.wordpress.org/needle\">Christian Wach</a>, <a href=\"https://profiles.wordpress.org/christophherr\">Christoph Herr</a>, <a href=\"https://profiles.wordpress.org/clarionwpdeveloper\">Clarion Technologies</a>, <a href=\"https://profiles.wordpress.org/claudiosmweb\">Claudio Sanches</a>, <a href=\"https://profiles.wordpress.org/claudiosanches\">Claudio Sanches</a>, <a href=\"https://profiles.wordpress.org/claudiolabarbera\">ClaudioLaBarbera</a>, <a href=\"https://profiles.wordpress.org/codemovementpk\">codemovement.pk</a>, <a href=\"https://profiles.wordpress.org/coderkevin\">coderkevin</a>, <a href=\"https://profiles.wordpress.org/codfish\">codfish</a>, <a href=\"https://profiles.wordpress.org/coreymcollins\">coreymcollins</a>, <a href=\"https://profiles.wordpress.org/curdin\">Curdin Krummenacher</a>, <a href=\"https://profiles.wordpress.org/cgrymala\">Curtiss Grymala</a>, <a href=\"https://profiles.wordpress.org/cdog\">C?t?lin Dogaru</a>, <a href=\"https://profiles.wordpress.org/danhgilmore\">danhgilmore</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber </a>, <a href=\"https://profiles.wordpress.org/danielkanchev\">Daniel Kanchev</a>, <a href=\"https://profiles.wordpress.org/danielpietrasik\">Daniel Pietrasik</a>, <a href=\"https://profiles.wordpress.org/mte90\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/dllh\">Daryl L. L. Houston (dllh)</a>, <a href=\"https://profiles.wordpress.org/davepullig\">Dave Pullig</a>, <a href=\"https://profiles.wordpress.org/goto10\">Dave Romsey (goto10)</a>, <a href=\"https://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/turtlepod\">David Chandra Purnama</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dglingren\">David Lingren</a>, <a href=\"https://profiles.wordpress.org/davidmosterd\">David Mosterd</a>, <a href=\"https://profiles.wordpress.org/dshanske\">David Shanske</a>, <a href=\"https://profiles.wordpress.org/davidbhayes\">davidbhayes</a>, <a href=\"https://profiles.wordpress.org/folletto\">Davide \'Folletto\' Casali</a>, <a href=\"https://profiles.wordpress.org/deeptiboddapati\">deeptiboddapati</a>, <a href=\"https://profiles.wordpress.org/delphinus\">delphinus</a>, <a href=\"https://profiles.wordpress.org/deltafactory\">deltafactory</a>, <a href=\"https://profiles.wordpress.org/denis-de-bernardy\">Denis de Bernardy</a>, <a href=\"https://profiles.wordpress.org/valendesigns\">Derek Herman</a>, <a href=\"https://profiles.wordpress.org/pcfreak30\">Derrick Hammer</a>, <a href=\"https://profiles.wordpress.org/derrickkoo\">Derrick Koo</a>, <a href=\"https://profiles.wordpress.org/dimchik\">dimchik</a>, <a href=\"https://profiles.wordpress.org/dineshc\">Dinesh Chouhan</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dipeshkakadiya\">dipeshkakadiya</a>, <a href=\"https://profiles.wordpress.org/dmsnell\">dmsnell</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/dotancohen\">Dotan Cohen</a>, <a href=\"https://profiles.wordpress.org/dougwollison\">Doug Wollison</a>, <a href=\"https://profiles.wordpress.org/doughamlin\">doughamlin</a>, <a href=\"https://profiles.wordpress.org/dreamon11\">DreamOn11</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/duncanjbrown\">duncanjbrown</a>, <a href=\"https://profiles.wordpress.org/dungengronovius\">dungengronovius</a>, <a href=\"https://profiles.wordpress.org/dylanauty\">DylanAuty</a>, <a href=\"https://profiles.wordpress.org/hurtige\">Eddie Hurtig</a>, <a href=\"https://profiles.wordpress.org/oso96_2000\">Eduardo Reveles</a>, <a href=\"https://profiles.wordpress.org/chopinbach\">Edwin Cromley</a>, <a href=\"https://profiles.wordpress.org/electricfeet\">ElectricFeet</a>, <a href=\"https://profiles.wordpress.org/eliorivero\">Elio Rivero</a>, <a href=\"https://profiles.wordpress.org/iseulde\">Ella Iseulde Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/elyobo\">elyobo</a>, <a href=\"https://profiles.wordpress.org/enodekciw\">enodekciw</a>, <a href=\"https://profiles.wordpress.org/enshrined\">enshrined</a>, <a href=\"https://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>, <a href=\"https://profiles.wordpress.org/pushred\">Eric Lanehart</a>, <a href=\"https://profiles.wordpress.org/eherman24\">Evan Herman</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/fencer04\">Fencer04</a>, <a href=\"https://profiles.wordpress.org/florianbrinkmann\">Florian Brinkmann</a>, <a href=\"https://profiles.wordpress.org/mista-flo\">Florian TIAR</a>, <a href=\"https://profiles.wordpress.org/foliovision\">FolioVision</a>, <a href=\"https://profiles.wordpress.org/fomenkoandrey\">fomenkoandrey</a>, <a href=\"https://profiles.wordpress.org/frankiet\">Francesco Taurino</a>, <a href=\"https://profiles.wordpress.org/frank-klein\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/fjarrett\">Frankie Jarrett</a>, <a href=\"https://profiles.wordpress.org/akeif\">Fred</a>, <a href=\"https://profiles.wordpress.org/frozzare\">Fredrik Forsmo</a>, <a href=\"https://profiles.wordpress.org/fuscata\">fuscata</a>, <a href=\"https://profiles.wordpress.org/gma992\">Gabriel Maldonado</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/garyj\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/geekysoft\">Geeky Software</a>, <a href=\"https://profiles.wordpress.org/georgestephanis\">George Stephanis</a>, <a href=\"https://profiles.wordpress.org/goranseric\">Goran &#352;eri?</a>, <a href=\"https://profiles.wordpress.org/grahamarmfield\">Graham Armfield</a>, <a href=\"https://profiles.wordpress.org/grantderepas\">Grant Derepas</a>, <a href=\"https://profiles.wordpress.org/tivnet\">Gregory Karpinsky (@tivnet)</a>, <a href=\"https://profiles.wordpress.org/hardeepasrani\">Hardeep Asrani</a>, <a href=\"https://profiles.wordpress.org/henrywright\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/hiddenpearls\">hiddenpearls</a>, <a href=\"https://profiles.wordpress.org/hnle\">Hinaloe</a>, <a href=\"https://profiles.wordpress.org/hristo-sg\">Hristo Pandjarov</a>, <a href=\"https://profiles.wordpress.org/hugobaeta\">Hugo Baeta</a>, <a href=\"https://profiles.wordpress.org/polevaultweb\">Iain Poulson</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianedington\">Ian Edington</a>, <a href=\"https://profiles.wordpress.org/idealien\">idealien</a>, <a href=\"https://profiles.wordpress.org/igmoweb\">Ignacio Cruz Moreno</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/imnok\">Imnok</a>, <a href=\"https://profiles.wordpress.org/implenton\">implenton</a>, <a href=\"https://profiles.wordpress.org/ionutst\">Ionut Stanciu</a>, <a href=\"https://profiles.wordpress.org/ipstenu\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/ivdimova\">ivdimova</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jakept\">Jacob Peattie</a>, <a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock</a>, <a href=\"https://profiles.wordpress.org/jnylen0\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jamesacero\">jamesacero</a>, <a href=\"https://profiles.wordpress.org/japh\">Japh</a>, <a href=\"https://profiles.wordpress.org/jaredcobb\">Jared Cobb</a>, <a href=\"https://profiles.wordpress.org/jayarjo\">jayarjo</a>, <a href=\"https://profiles.wordpress.org/jdolan\">jdolan</a>, <a href=\"https://profiles.wordpress.org/jdoubleu\">jdoubleu</a>, <a href=\"https://profiles.wordpress.org/jblz\">Jeff Bowen</a>, <a href=\"https://profiles.wordpress.org/cheffheid\">Jeffrey de Wit</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/jimt\">jimt</a>, <a href=\"https://profiles.wordpress.org/jipmoors\">Jip Moors</a>, <a href=\"https://profiles.wordpress.org/jmusal\">jmusal</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joelcj91\">Joel James</a>, <a href=\"https://profiles.wordpress.org/johanmynhardt\">johanmynhardt</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/zyphonic\">John Dittmar</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/johnpbloch\">John P. Bloch</a>, <a href=\"https://profiles.wordpress.org/johnregan3\">John Regan</a>, <a href=\"https://profiles.wordpress.org/johnpgreen\">johnpgreen</a>, <a href=\"https://profiles.wordpress.org/kenshino\">Jon (Kenshino)</a>, <a href=\"https://profiles.wordpress.org/jonathanbardo\">Jonathan Bardo</a>, <a href=\"https://profiles.wordpress.org/jbrinley\">Jonathan Brinley</a>, <a href=\"https://profiles.wordpress.org/daggerhart\">Jonathan Daggerhart</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonnyauk\">jonnyauk</a>, <a href=\"https://profiles.wordpress.org/jordesign\">jordesign</a>, <a href=\"https://profiles.wordpress.org/jorritschippers\">JorritSchippers</a>, <a href=\"https://profiles.wordpress.org/joefusco\">Joseph Fusco</a>, <a href=\"https://profiles.wordpress.org/jjeaton\">Josh Eaton</a>, <a href=\"https://profiles.wordpress.org/shelob9\">Josh Pollock</a>, <a href=\"https://profiles.wordpress.org/joshcummingsdesign\">joshcummingsdesign</a>, <a href=\"https://profiles.wordpress.org/joshkadis\">joshkadis</a>, <a href=\"https://profiles.wordpress.org/joyously\">Joy</a>, <a href=\"https://profiles.wordpress.org/jrf\">jrf</a>, <a href=\"https://profiles.wordpress.org/jrgould\">JRGould</a>, <a href=\"https://profiles.wordpress.org/juanfra\">Juanfra Aldasoro</a>, <a href=\"https://profiles.wordpress.org/juhise\">Juhi Saxena</a>, <a href=\"https://profiles.wordpress.org/nukaga\">Junko Nukaga</a>, <a href=\"https://profiles.wordpress.org/justinbusa\">Justin Busa</a>, <a href=\"https://profiles.wordpress.org/justinsainton\">Justin Sainton</a>, <a href=\"https://profiles.wordpress.org/jshreve\">Justin Shreve</a>, <a href=\"https://profiles.wordpress.org/jtsternberg\">Justin Sternberg</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>, <a href=\"https://profiles.wordpress.org/kacperszurek\">kacperszurek</a>, <a href=\"https://profiles.wordpress.org/trepmal\">Kailey (trepmal)</a>, <a href=\"https://profiles.wordpress.org/kalenjohnson\">KalenJohnson</a>, <a href=\"https://profiles.wordpress.org/codebykat\">Kat Hagan</a>, <a href=\"https://profiles.wordpress.org/kkoppenhaver\">Keanan Koppenhaver</a>, <a href=\"https://profiles.wordpress.org/keesiemeijer\">keesiemeijer</a>, <a href=\"https://profiles.wordpress.org/kellbot\">kellbot</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/khag7\">Kevin Hagerty</a>, <a href=\"https://profiles.wordpress.org/kwight\">Kirk Wight</a>, <a href=\"https://profiles.wordpress.org/kitchin\">kitchin</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjbenk\">kjbenk</a>, <a href=\"https://profiles.wordpress.org/knutsp\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/koenschipper\">koenschipper</a>, <a href=\"https://profiles.wordpress.org/kokarn\">kokarn</a>, <a href=\"https://profiles.wordpress.org/kovshenin\">Konstantin Kovshenin</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/kouratoras\">Konstantinos Kouratoras</a>, <a href=\"https://profiles.wordpress.org/kuchenundkakao\">kuchenundkakao</a>, <a href=\"https://profiles.wordpress.org/kuldipem\">kuldipem</a>, <a href=\"https://profiles.wordpress.org/laurelfulford\">Laurel Fulford</a>, <a href=\"https://profiles.wordpress.org/leewillis77\">Lee Willis</a>, <a href=\"https://profiles.wordpress.org/leobaiano\">Leo Baiano</a>, <a href=\"https://profiles.wordpress.org/littlebigthing\">LittleBigThings (Csaba)</a>, <a href=\"https://profiles.wordpress.org/lucasstark\">Lucas Stark</a>, <a href=\"https://profiles.wordpress.org/lukecavanagh\">Luke Cavanagh</a>, <a href=\"https://profiles.wordpress.org/lgedeon\">Luke Gedeon</a>, <a href=\"https://profiles.wordpress.org/lukepettway\">Luke Pettway</a>, <a href=\"https://profiles.wordpress.org/lyubomir_popov\">lyubomir_popov</a>, <a href=\"https://profiles.wordpress.org/mageshp\">mageshp</a>, <a href=\"https://profiles.wordpress.org/mahesh901122\">Mahesh Waghmare</a>, <a href=\"https://profiles.wordpress.org/mangeshp\">Mangesh Parte</a>, <a href=\"https://profiles.wordpress.org/manishsongirkar36\">Manish Songirkar</a>, <a href=\"https://profiles.wordpress.org/mantismamita\">mantismamita</a>, <a href=\"https://profiles.wordpress.org/mbootsman\">Marcel Bootsman</a>, <a href=\"https://profiles.wordpress.org/tyxla\">Marin Atanasov</a>, <a href=\"https://profiles.wordpress.org/mariovalney\">Mario Valney</a>, <a href=\"https://profiles.wordpress.org/clorith\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/mrwweb\">Mark Root-Wiley</a>, <a href=\"https://profiles.wordpress.org/mapk\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markoheijnen\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/markshep\">markshep</a>, <a href=\"https://profiles.wordpress.org/matrixik\">matrixik</a>, <a href=\"https://profiles.wordpress.org/mjbanks\">Matt Banks</a>, <a href=\"https://profiles.wordpress.org/jaworskimatt\">Matt Jaworski</a>, <a href=\"https://profiles.wordpress.org/mattking5000\">Matt King</a>, <a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>, <a href=\"https://profiles.wordpress.org/veraxus\">Matt van Andel</a>, <a href=\"https://profiles.wordpress.org/mattwiebe\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mattheu\">Matthew Haines-Young</a>, <a href=\"https://profiles.wordpress.org/mattyrob\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/maxcutler\">Max Cutler</a>, <a href=\"https://profiles.wordpress.org/maximeculea\">Maxime Culea</a>, <a href=\"https://profiles.wordpress.org/mayukojpn\">Mayo Moriyama</a>, <a href=\"https://profiles.wordpress.org/mbelchev\">mbelchev</a>, <a href=\"https://profiles.wordpress.org/mckernanin\">mckernanin</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mhowell\">mhowell</a>, <a href=\"https://profiles.wordpress.org/michael-arestad\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michaelarestad\">Michael Arestad</a>, <a href=\"https://profiles.wordpress.org/michalzuber\">michalzuber</a>, <a href=\"https://profiles.wordpress.org/stubgo\">Miina Sikk</a>, <a href=\"https://profiles.wordpress.org/mauteri\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mihai2u\">Mike Crantea</a>, <a href=\"https://profiles.wordpress.org/mdgl\">Mike Glendinning</a>, <a href=\"https://profiles.wordpress.org/mikehansenme\">Mike Hansen</a>, <a href=\"https://profiles.wordpress.org/mikelittle\">Mike Little</a>, <a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeviele\">Mike Viele</a>, <a href=\"https://profiles.wordpress.org/dimadin\">Milan Dini?</a>, <a href=\"https://profiles.wordpress.org/modemlooper\">modemlooper</a>, <a href=\"https://profiles.wordpress.org/batmoo\">Mohammad Jangda</a>, <a href=\"https://profiles.wordpress.org/deremohan\">Mohan Dere</a>, <a href=\"https://profiles.wordpress.org/monikarao\">monikarao</a>, <a href=\"https://profiles.wordpress.org/morettigeorgiev\">morettigeorgiev</a>, <a href=\"https://profiles.wordpress.org/morganestes\">Morgan Estes</a>, <a href=\"https://profiles.wordpress.org/mor10\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/mt8biz\">moto hachi ( mt8.biz )</a>, <a href=\"https://profiles.wordpress.org/mrbobbybryant\">mrbobbybryant</a>, <a href=\"https://profiles.wordpress.org/nnaimov\">Naim Naimov</a>, <a href=\"https://profiles.wordpress.org/natereist\">Nate Reist</a>, <a href=\"https://profiles.wordpress.org/natewr\">NateWr</a>, <a href=\"https://profiles.wordpress.org/nathanrice\">nathanrice</a>, <a href=\"https://profiles.wordpress.org/nazgul\">Nazgul</a>, <a href=\"https://profiles.wordpress.org/greatislander\">Ned Zimmerman</a>, <a href=\"https://profiles.wordpress.org/krstarica\">net</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey </a>, <a href=\"https://profiles.wordpress.org/nikeo\">Nicolas GUILLAUME</a>, <a href=\"https://profiles.wordpress.org/nikschavan\">Nikhil Chavan</a>, <a href=\"https://profiles.wordpress.org/nikv\">Nikhil Vimal</a>, <a href=\"https://profiles.wordpress.org/nbachiyski\">Nikolay Bachiyski</a>, <a href=\"https://profiles.wordpress.org/rabmalin\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/noplanman\">noplanman</a>, <a href=\"https://profiles.wordpress.org/nullvariable\">nullvariable</a>, <a href=\"https://profiles.wordpress.org/odie2\">odie2</a>, <a href=\"https://profiles.wordpress.org/odysseygate\">odyssey</a>, <a href=\"https://profiles.wordpress.org/hideokamoto\">Okamoto Hidetaka</a>, <a href=\"https://profiles.wordpress.org/orvils\">orvils</a>, <a href=\"https://profiles.wordpress.org/oskosk\">oskosk</a>, <a href=\"https://profiles.wordpress.org/ottok\">Otto Kek&#228;l&#228;inen</a>, <a href=\"https://profiles.wordpress.org/ovann86\">ovann86</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/patilvikasj\">patilvikasj</a>, <a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/paulwilde\">Paul Wilde</a>, <a href=\"https://profiles.wordpress.org/sirbrillig\">Payton Swick</a>, <a href=\"https://profiles.wordpress.org/pdufour\">pdufour</a>, <a href=\"https://profiles.wordpress.org/piewp\">Perdaan</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/phh\">phh</a>, <a href=\"https://profiles.wordpress.org/php\">php</a>, <a href=\"https://profiles.wordpress.org/delawski\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/pippinsplugins\">pippinsplugins</a>, <a href=\"https://profiles.wordpress.org/pjgalbraith\">pjgalbraith</a>, <a href=\"https://profiles.wordpress.org/pkevan\">pkevan</a>, <a href=\"https://profiles.wordpress.org/pratikchaskar\">Pratik</a>, <a href=\"https://profiles.wordpress.org/pressionate\">Pressionate</a>, <a href=\"https://profiles.wordpress.org/presskopp\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/procodewp\">procodewp</a>, <a href=\"https://profiles.wordpress.org/quasel\">quasel</a>, <a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rahulsprajapati\">Rahul Prajapati</a>, <a href=\"https://profiles.wordpress.org/superpoincare\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramiabraham\">ramiabraham</a>, <a href=\"https://profiles.wordpress.org/ranh\">ranh</a>, <a href=\"https://profiles.wordpress.org/redsand\">Red Sand Media Group</a>, <a href=\"https://profiles.wordpress.org/youknowriad\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rianrietveld\">Rian Rietveld</a>, <a href=\"https://profiles.wordpress.org/iamfriendly\">Richard Tape</a>, <a href=\"https://profiles.wordpress.org/rpayne7264\">Robert D Payne</a>, <a href=\"https://profiles.wordpress.org/iamjolly\">Robert Jolly</a>, <a href=\"https://profiles.wordpress.org/rnoakes3rd\">Robert Noakes</a>, <a href=\"https://profiles.wordpress.org/d4z_c0nf\">Rocco Aliberti</a>, <a href=\"https://profiles.wordpress.org/rodrigosprimo\">Rodrigo Primo</a>, <a href=\"https://profiles.wordpress.org/rommelxcastro\">Rommel Castro</a>, <a href=\"https://profiles.wordpress.org/fronaldaraujo\">Ronald Ara&#250;jo</a>, <a href=\"https://profiles.wordpress.org/magicroundabout\">Ross Wintle</a>, <a href=\"https://profiles.wordpress.org/guavaworks\">Roy Sivan</a>, <a href=\"https://profiles.wordpress.org/ryankienstra\">Ryan Kienstra</a>, <a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>, <a href=\"https://profiles.wordpress.org/ryanplas\">Ryan Plas</a>, <a href=\"https://profiles.wordpress.org/welcher\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/salcode\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/samikeijonen\">Sami Keijonen</a>, <a href=\"https://profiles.wordpress.org/solarissmoke\">Samir Shah</a>, <a href=\"https://profiles.wordpress.org/samuelsidler\">Samuel Sidler</a>, <a href=\"https://profiles.wordpress.org/sandesh055\">Sandesh</a>, <a href=\"https://profiles.wordpress.org/smyoon315\">Sang-Min Yoon</a>, <a href=\"https://profiles.wordpress.org/sanketparmar\">Sanket Parmar</a>, <a href=\"https://profiles.wordpress.org/pollyplummer\">Sarah Gooding</a>, <a href=\"https://profiles.wordpress.org/sayedwp\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/schrapel\">schrapel</a>, <a href=\"https://profiles.wordpress.org/coffee2code\">Scott Reilly</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/scrappyhuborg\">scrappy@hub.org</a>, <a href=\"https://profiles.wordpress.org/scribu\">scribu</a>, <a href=\"https://profiles.wordpress.org/seancjones\">seancjones</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sgr33n\">Sergio De Falco</a>, <a href=\"https://profiles.wordpress.org/sfpt\">sfpt</a>, <a href=\"https://profiles.wordpress.org/shayanys\">shayanys</a>, <a href=\"https://profiles.wordpress.org/shazahm1hotmailcom\">shazahm1</a>, <a href=\"https://profiles.wordpress.org/shprink\">shprink</a>, <a href=\"https://profiles.wordpress.org/simonlampen\">simonlampen</a>, <a href=\"https://profiles.wordpress.org/skippy\">skippy</a>, <a href=\"https://profiles.wordpress.org/smerriman\">smerriman</a>, <a href=\"https://profiles.wordpress.org/snacking\">snacking</a>, <a href=\"https://profiles.wordpress.org/soean\">Soeren Wrede</a>, <a href=\"https://profiles.wordpress.org/solal\">solal</a>, <a href=\"https://profiles.wordpress.org/sstoqnov\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/metodiew\">Stanko Metodiev</a>, <a href=\"https://profiles.wordpress.org/sharkomatic\">Steph</a>, <a href=\"https://profiles.wordpress.org/sswells\">Steph Wells</a>, <a href=\"https://profiles.wordpress.org/sillybean\">Stephanie Leary</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stephenharris\">Stephen Harris</a>, <a href=\"https://profiles.wordpress.org/stevenkword\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/stevenlinx\">stevenlinx</a>, <a href=\"https://profiles.wordpress.org/sudar\">Sudar Muthu</a>, <a href=\"https://profiles.wordpress.org/patilswapnilv\">Swapnil V. Patil</a>, <a href=\"https://profiles.wordpress.org/swapnild\">swapnild</a>, <a href=\"https://profiles.wordpress.org/szaqal21\">szaqal21</a>, <a href=\"https://profiles.wordpress.org/takahashi_fumiki\">Takahashi Fumiki</a>, <a href=\"https://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/tapsboy\">tapsboy</a>, <a href=\"https://profiles.wordpress.org/tlovett1\">Taylor Lovett</a>, <a href=\"https://profiles.wordpress.org/team\">team</a>, <a href=\"https://profiles.wordpress.org/tg29359\">tg29359</a>, <a href=\"https://profiles.wordpress.org/tharsheblows\">tharsheblows</a>, <a href=\"https://profiles.wordpress.org/the\">the</a>, <a href=\"https://profiles.wordpress.org/themeshaper\">themeshaper</a>, <a href=\"https://profiles.wordpress.org/thenbrent\">thenbrent</a>, <a href=\"https://profiles.wordpress.org/thomaswm\">thomaswm</a>, <a href=\"https://profiles.wordpress.org/tfrommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/tierra\">tierra</a>, <a href=\"https://profiles.wordpress.org/tnash\">Tim Nash</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timph\">timph</a>, <a href=\"https://profiles.wordpress.org/tkama\">Tkama</a>, <a href=\"https://profiles.wordpress.org/tnegri\">tnegri</a>, <a href=\"https://profiles.wordpress.org/tomauger\">Tom Auger</a>, <a href=\"https://profiles.wordpress.org/tjnowell\">Tom J Nowell</a>, <a href=\"https://profiles.wordpress.org/tomdxw\">tomdxw</a>, <a href=\"https://profiles.wordpress.org/toro_unit\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/zodiac1978\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/transl8or\">transl8or</a>, <a href=\"https://profiles.wordpress.org/traversal\">traversal</a>, <a href=\"https://profiles.wordpress.org/wpsmith\">Travis Smith</a>, <a href=\"https://profiles.wordpress.org/nmt90\">Triet Minh</a>, <a href=\"https://profiles.wordpress.org/trishasalas\">Trisha Salas</a>, <a href=\"https://profiles.wordpress.org/tristangemus\">tristangemus</a>, <a href=\"https://profiles.wordpress.org/truongwp\">Truong Giang</a>, <a href=\"https://profiles.wordpress.org/tsl143\">tsl143</a>, <a href=\"https://profiles.wordpress.org/tywayne\">Ty Carlson</a>, <a href=\"https://profiles.wordpress.org/grapplerulrich\">Ulrich</a>, <a href=\"https://profiles.wordpress.org/utkarshpatel\">Utkarsh</a>, <a href=\"https://profiles.wordpress.org/valeriutihai\">Valeriu Tihai</a>, <a href=\"https://profiles.wordpress.org/vishalkakadiya\">Vishal Kakadiya</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a>, <a href=\"https://profiles.wordpress.org/vrundakansara-1\">Vrunda Kansara</a>, <a href=\"https://profiles.wordpress.org/webbgaraget\">webbgaraget</a>, <a href=\"https://profiles.wordpress.org/webmandesign\">WebMan Design &#124; Oliver Juhas</a>, <a href=\"https://profiles.wordpress.org/websupporter\">websupporter</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/earnjam\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton\">williampatton</a>, <a href=\"https://profiles.wordpress.org/wolly\">Wolly aka Paolo Valenti</a>, <a href=\"https://profiles.wordpress.org/yale01\">yale01</a>, <a href=\"https://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/yogasukma\">Yoga Sukma</a>, <a href=\"https://profiles.wordpress.org/oxymoron\">Zach Wills</a>, <a href=\"https://profiles.wordpress.org/tollmanz\">Zack Tollman</a>, <a href=\"https://profiles.wordpress.org/vanillalounge\">Ze Fontainhas</a>, <a href=\"https://profiles.wordpress.org/zhildzik\">zhildzik</a>, and <a href=\"https://profiles.wordpress.org/zsusag\">zsusag</a>.
<p>&nbsp;<br />
Special thanks go to <a href=\"https://ramiabraham.com/\">Rami Abraham</a> for producing the release video and the many fine haiku we saw in the <a href=\"https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/\">beta</a> and <a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-release-candidate/\">RC</a> announcement posts.</p>
<p>Finally, thanks to all the community translators who worked on WordPress 4.7. Their efforts bring WordPress 4.7 fully translated to 52 languages at release time with more on the way. Additionally, the WordPress 4.7 release video has been captioned into 44 languages.</p>
<p>If you want to follow along or help out, check out <a href=\"https://make.wordpress.org/\">Make WordPress</a> and our <a href=\"https://make.wordpress.org/core/\">core development blog</a>. Thanks for choosing WordPress &#8211; we hope you enjoy!</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4596\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:33:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Moving Toward SSL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2016/12/moving-toward-ssl/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 01 Dec 2016 17:20:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4588\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:327:\"We�re at a turning point: 2017 is going to be the year that we�re going to see features in WordPress which require hosts to have HTTPS available. Just as JavaScript is a near necessity for smoother user experiences and more modern PHP versions are critical for performance, SSL just makes sense as the next hurdle [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1627:\"<p>We�re at a turning point: 2017 is going to be the year that we�re going to see features in WordPress which require hosts to have HTTPS available. Just as JavaScript is a near necessity for smoother user experiences and more modern PHP versions are critical for performance, SSL just makes sense as the next hurdle our users are going to face.</p>
<p>SSL basically means the link between your browser and the server is encrypted. SSL used to be difficult to implement, and often expensive or slow. Modern browsers, and the incredible success of projects like <a href=\"https://letsencrypt.org/\">Let&#8217;s Encrypt</a> have made getting a certificate to secure your site fast, free, and something we think every host should support by default, especially in a post-Snowden era. Google also weighs <a href=\"https://security.googleblog.com/2014/08/https-as-ranking-signal_6.html\">SSL as a search engine ranking factor</a> and will begin <a href=\"http://motherboard.vice.com/read/google-will-soon-shame-all-websites-that-are-unencrypted-chrome-https\">flagging unencrypted sites in Chrome</a>.</p>
<p>First, early in 2017, we will only promote hosting partners that provide a SSL certificate by default in their accounts. Later we will begin to assess which features, such as API authentication, would benefit the most from SSL and make them only enabled when SSL is there.</p>
<p>Separately, I�also think the performance improvements in PHP7 are particularly impressive, and major kudos to everyone who worked on that. We will consider whether hosts use PHP7 by default for new accounts next year as well.</p>
<p>&nbsp;</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4588\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:33:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 4.7 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2016/11/wordpress-4-7-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 Nov 2016 04:26:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4579\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:328:\"The release candidate for WordPress 4.7 is now available. RC means we think we�re done, but with millions of users and thousands of plugins and themes, it�s possible we�ve missed something. We hope to ship WordPress 4.7 on Tuesday, December 6, but we need your help to get there. If you haven�t tested 4.7 yet, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4331:\"<p>The release candidate for WordPress 4.7 is now available.</p>
<p>RC means we think we�re done, but with millions of users and thousands of plugins and themes, it�s possible we�ve missed something. We hope to ship WordPress 4.7 on <strong>Tuesday, December 6</strong>, but we need <em>your</em> help to get there. If you haven�t tested 4.7 yet, now is the time! To test WordPress 4.7, you can use the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin or you can <a href=\"https://wordpress.org/wordpress-4.7-RC1.zip\">download the release candidate here</a> (zip).</p>
<p>WordPress 4.7 is a jam-packed release, with a number of features focused on getting a theme set up for the first time. Highlights include a <a href=\"http://2017.wordpress.net/\">new default theme</a>, video headers, custom CSS, customizer edit shortcuts, PDF thumbnail previews, user admin languages, REST API content endpoints, post type templates, and more.</p>
<p>We�ve made <a href=\"https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39353&amp;stop_rev=39263&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=\">quite a few refinements</a> since releasing Beta 4 a week ago, including usability and accessibility enhancements for video headers, media and page template support in starter content, and polishing of how custom CSS can be migrated to and extended by plugins and themes. The REST API endpoints saw a number of bugfixes and notably now have anonymous comment off by default.</p>
<p>Not sure where to start with testing? Try setting up a fresh site on a new installation with Twenty Seventeen (hint: head into customizing your site before touching any pages or widgets) and taking notes on what you enjoyed and what got you stuck. For more details about what&#8217;s new in version 4.7, check out the�<a href=\"https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/\">Beta 1</a>,�<a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/\">Beta 2</a>, <a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/\">Beta 3</a>, and <a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-4/\">Beta 4</a>�blog posts.</p>
<p><strong>Think you�ve found a bug?</strong> Please post to the <a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta support forum</a>. If any known issues come up, you�ll be able to <a href=\"https://core.trac.wordpress.org/report/5\">find them here</a>.</p>
<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.7 and update your plugin�s <em>Tested up to</em> version in the readme to 4.7. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release � we work hard to avoid breaking things. An in-depth field guide to developer-focused changes is coming soon on the <a href=\"https://make.wordpress.org/core/\">core development blog</a>.</p>
<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a> And if you haven&#8217;t yet done so, now is a great time to <a href=\"https://wordpressdotorg.polldaddy.com/s/wordpress-2016-survey\">take the Annual WordPress Survey</a> and send it on to your friends.</p>
<p>Happy testing! And now for another <a href=\"https://profiles.wordpress.org/ramiabraham\">Rami Abraham</a> haiku break.</p>
<p><em>Select your language</em><br />
<em>Then let your users choose theirs</em><br />
<em><code>get_user_locale()</code></em></p>
<p><em>Theme authors rejoice</em><br />
<em>Any option may employ</em><br />
<em>Selective refresh</em></p>
<p><em>Custom header video</em><br />
<em>Make sure to <code>add_theme_support</code></em><br />
<em>Bling above the fold</em></p>
<p><em>A new template dawns</em><br />
<em>A hierarchy member</em><br />
<em>Post-type templates live</em></p>
<p><em>PDF updates</em><br />
<em>Pack a parade of polish</em><br />
<em>Prettier previews</em></p>
<p><em>Template Post Type: New</em><br />
<em>Template Post Type: And Useful</em><br />
<em>Template Post Type: Thing</em></p>
<p><em>Let lists live lively</em><br />
<em>Laud <code>wp_list_sort()</code></em><br />
<em>Less laconic lists</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4579\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:33:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.7 Beta 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Nov 2016 01:51:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4576\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:329:\"WordPress 4.7 Beta 4 is now available! This software is still in development, so we don�t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you�ll want �bleeding edge nightlies�). Or you can [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2019:\"<p>WordPress 4.7 Beta 4 is now available!</p>
<p><strong>This software is still in development,</strong> so we don�t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you�ll want �bleeding edge nightlies�). Or you can <a href=\"https://wordpress.org/wordpress-4.7-beta4.zip\">download the beta here</a> (zip).</p>
<p>For more information on what�s new in 4.7, check out the�<a href=\"https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/\">Beta 1,</a> <a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/\">Beta 2</a>, and <a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/\">Beta 3</a> blog posts, along with <a href=\"https://make.wordpress.org/core/tag/4-7+dev-notes/\">in-depth developer guides on make/core</a>. We�ve made <a href=\"https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39262&amp;stop_rev=39201&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=\">about 60 changes</a> in the last few days for beta 4, including tweaks to Twenty Seventeen, custom CSS, and the REST API content endpoints.</p>
<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>
<p><strong>If you think you�ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We�d love to hear from you! If you�re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>
<p><em>We are almost there<br />
Please test your plugins and themes<br />
RC coming soon<br />
</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4576\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"WordCamp US 2017-2018 in Nashville\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2016/11/wordcamp-us-2017-2018-in-nashville/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Nov 2016 23:24:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4571\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:330:\"The title says it all. We had some great applications for cities to host WordCamp US after we finish up in Philadelphia this year, and the city chosen for 2017-2018 is Nashville, Tennessee. Based on the other great applications we got I&#8217;m also excited about the pipeline of communities that could host it in future [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Matt Mullenweg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1001:\"<p><img class=\"aligncenter\" src=\"https://wpdotorg.files.wordpress.com/2008/07/27492741871_c6fcebcad3_k-e1479248587522.jpg?resize=632%2C253\" data-recalc-dims=\"1\" /></p>
<p>The title says it all. We had some great applications for cities to host <a href=\"http://us.wordcamp.org/\">WordCamp US</a> after we finish up in Philadelphia this year, and the city chosen for 2017-2018 is <strong>Nashville, Tennessee</strong>.</p>
<p>Based on the other great applications we got I&#8217;m also excited about the pipeline of communities that could host it in future years as WordCamp US travels across the United States and gives us an opportunity to learn and love a new city, as we have with Philadelphia.</p>
<p>By the way, if you haven&#8217;t yet, now is a great time to <a href=\"https://wordpressdotorg.polldaddy.com/s/wordpress-2016-survey\">take the Annual WordPress Survey</a> and ask your friends to as well.</p>
<p><a href=\"https://www.flickr.com/photos/143951935@N07/27492741871\">Photo Credit</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4571\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.7 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Nov 2016 03:30:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:3:\"4.7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4566\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:329:\"WordPress 4.7 Beta 3 is now available! This software is still in development, so we don�t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you�ll want �bleeding edge nightlies�). Or you can [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Helen Hou-Sandi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3120:\"<p>WordPress 4.7 Beta 3 is now available!</p>
<p><strong>This software is still in development,</strong> so we don�t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you�ll want �bleeding edge nightlies�). Or you can <a href=\"https://wordpress.org/wordpress-4.7-beta3.zip\">download the beta here</a> (zip).</p>
<p>For more information on what�s new in 4.7, check out the�<a href=\"https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/\">Beta 1</a> and <a href=\"https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/\">Beta 2</a> blog posts, along with <a href=\"https://make.wordpress.org/core/tag/4-7+dev-notes/\">in-depth field guides on make/core</a>. Some of the changes in Beta 3 include:</p>
<ul>
<li><strong>REST API:</strong> The <code>unfiltered_html</code> capability is now respected and <code>rest_base</code> has been added to response objects of <code>wp/v2/taxonomies</code> and <code>wp/v2/types</code>, while <code>get_allowed_query_vars()</code> and the <code>rest_get_post</code> filter have been removed.</li>
<li><strong>Roles/Capabilities:</strong> Added meta-caps for comment, term, and user meta, which are currently only used in the REST API.</li>
<li><strong>I18N:</strong> Added the ability to change user&#8217;s locale back to site&#8217;s locale. (<a href=\"https://core.trac.wordpress.org/ticket/38632\">#38632</a>)</li>
<li><strong>Custom CSS:</strong> Renamed the <code>unfiltered_css</code> meta capability to <code>edit_css</code> and added revisions support to the <code>custom_css</code> post type.</li>
<li><strong>Edit shortcuts:</strong> Theme authors should take a look at <a href=\"https://make.wordpress.org/core/2016/11/10/visible-edit-shortcuts-in-the-customizer-preview/\">the developer guide to the customizer preview&#8217;s visible edit shortcuts</a> and update their themes to take advantage of them if not already implementing selective refresh.</li>
<li><strong>Various bug fixes:</strong> We�ve made <a href=\"https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39200&amp;stop_rev=39143&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=\">over 50 changes</a> in the last week.</li>
</ul>
<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>
<p><strong>If you think you�ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We�d love to hear from you! If you�re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>
<p><em>Building the future</em><br />
<em>A global community</em><br />
<em>Stronger together</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4566\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 11 May 2017 12:53:01 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"?\";s:13:\"last-modified\";s:29:\"Thu, 20 Apr 2017 17:54:32 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}}s:5:\"build\";s:14:\"20130911010210\";}","no");
INSERT INTO wp_options VALUES("152","_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca","1494550381","no");
INSERT INTO wp_options VALUES("153","_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca","1494507181","no");
INSERT INTO wp_options VALUES("154","_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9","1494550383","no");
INSERT INTO wp_options VALUES("155","_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: VersionPress 4.0 Tentatively Scheduled to Ship in September\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=69948&preview=true&preview_id=69948\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/versionpress-4-0-tentatively-scheduled-to-ship-in-september\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2320:\"<p>Nealy a year ago, <a href=\"https://wptavern.com/versionpress-3-0-adds-new-search-feature-bulk-undo-and-commit-tracking-per-environment\">VersionPress 3.0 was released</a>. This version added new search capabilities, bulk undo, and a number of bug fixes. It was the first release since it became a <a href=\"https://wptavern.com/versionpress-transitions-into-a-free-open-source-project\">free, open source project</a>.</p>
<p>In a post on the <a href=\"https://blog.versionpress.net/2017/05/versionpress-4-0-update/\">project&#8217;s development blog</a>, Borek Bernard, co-founder of VersionPress,�describes what the team is focusing on for 4.0�which includes a tentative release schedule.</p>
<p>VersionPress 4.0 beta is planned to ship�in June with 4.0-final scheduled�to ship in September. In addition, the team will be labeling the project as a Developer Preview to better indicate its production-readiness.</p>
<p>&#8220;With every major release, you rightfully ask about the status of the project when it comes to production-readiness,&#8221; Bernard said. &#8220;The answer is &#8216;your mileage may vary&#8217; but we feel we should better indicate that it�s only really intended for developers, currently. Therefore, we�ll be adding the �Developer Preview� label for the project as a whole.&#8221;</p>
<p>VersionPress 4.0 beta 1 will�support Jetpack and WooCommerce via�<a href=\"https://github.com/versionpress/versionpress/blob/master/docs/Plugin-Support.md\">plugin definitions</a>.�Updates to internal data structures, compatibility fixes with WordPress 4.7, and other improvements are also slated to be in 4.0.</p>
<p>Bernard also provides an outline of what to expect from the project in the near future.�The team hopes to release Version 5.0 later this year or early next year with definitions for the most popular plugins. It will also be the first version rolled out on the project&#8217;s upcoming platform. Version 6.0 is expected a year after that.</p>
<p>To contribute to VersionPress, you can get in touch with the founders through <a href=\"https://gitter.im/versionpress/versionpress\">Gitter</a>�or visit the <a href=\"https://github.com/versionpress/versionpress/projects/2\">project&#8217;s Github page</a>�where pull requests are welcomed.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 May 2017 00:34:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Akismet: Akismet WordPress Plugin 3.3.2 Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1940\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://blog.akismet.com/2017/05/10/akismet-wordpress-plugin-3-3-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:869:\"<p>Version 3.3.2 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available. This update fixes a bug that was preventing some JavaScript from executing in wp-admin in some older browsers.</p>
<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1940/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1940/\" /></a> <img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1940&subd=akismet&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 May 2017 17:19:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Christopher Finke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"HeroPress: There is No Shortcut to Success � ????? ?? ??? ??????? ???? ??\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=1813\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://heropress.com/essays/no-shortcut-success/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:13563:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/05/051017-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: WordPress gave me a chance in my life to prove that I could do something different.\" /><p><a href=\"http://heropress.com/feed/#hindi\">??????????? ???? ???? ??????? ??? ??? ??? ???? ?? ????? ?????</a></p>
<p>Udaipur is known as the city of lakes, is one of the beautiful city in Rajasthan and that is where I come from. Since the beginning, I have been close to Udaipur. With the studies and growing up here, the thought of leaving this beautiful city have never occurred to me. Everything I have achieved in life could never have been possible without the support of my parents.</p>
<p>The 6 months after the graduation have been the most troublesome. At the time it felt as if finding a job was a big challenge, but I never gave up. There is a saying that �No work is big or small. It�s not the stature of work that matters, but what you learn from working that counts� and that is when I started to look for a job out of my field of expertise. My life had a new turn and me, fortunately, got a job at KPO and that was a new beginning of my life.</p>
<h3>How I got into WordPress</h3>
<p>Before joining into IdeaBox I don&#8217;t know much about WordPress. Before knowing about WordPress my identity was just a beginner. By keep working on WordPress I got so much involvement in that. WordPress gave me a chance in my life to prove that I could do something different and I felt like I have the skills and potential and I could do something. I got my confidence back. I always try to learn something new in WordPress.</p>
<p>I do theme development in WordPress. I have learned so much from WordPress. I can proudly say I am the part of WordPress community. One thing I got a chance to learn is in life, there is no shortcut for success. Whatever person get in life is only because of the hard work.</p>
<p>I have completed 3 years in WordPress and I love to be a part of it. I love WordPress and it has the wonderful community. In my free time, I do WordPress translations. I try to contribute in every possible way by giving support, translating and any other things.</p>
<h3>First Speaking Experience at WordCamp</h3>
<p>WordCamp Udaipur got organized recently. In that, I was the organizer and speaker. It was the amazing experience which I never felt before. After WordCamp only I get to know that how big community it is. When I become the speaker of the WordPress is the most memorable and the greatest experience of my life. I will never forget this moment in my life.</p>
<p>One thing is I was part of the organizing team and my first session. I was totally nervous. The session went so well and all nervousness went away in happiness. Because I realized that talking in front of these many people is not an easy task. So, I was very Happy. If I get a chance to perform In WordPress community, I will do my contribution in any way.</p>
<h3>Thank you note</h3>
<p>Thanks to WordPress for changing my life and I want to especially thank my parents for supporting and believe me always.</p>
<hr />
<h1 id=\"hindi\">????? ?? ??? ??????? ???? ??</h1>
<p>?????? ?? ????? ?? ??? ?? ??? ??? ?? ???? ???? ??, ?? ???????? ?? ??????? ??? ??? ?? ?? ?? ?? ??? ?? ??? ?? ???? ?? ??? ???? ?????? ?? ?? ??? ?????? ??? ???? ?? ???? ?? ??? ?? ???? ??? ??? ???? ?? ??? ?? ?? ??????? ??? ?? ????? ?? ????? ???? ??? ???? ???? ???? ??? ?? ??? ?? ????? ???? ??, ?? ???? ????-???? ?? ?????? ?? ???? ??? ???? ???? ?? ???? ???</p>
<p>???? ???? ???? ?? ? ????? ??? ?? ???? ?????? ??????? ???? ??? ?? ??? ??? ????? ??? ???? ??? ?????? ??? ???? ?? ?????? ???? ??, ????? ????? ???? ????? ????? ???? ???? ?? ????? ?? ??? ????? ???? ?? ??? ???? ?? &#8220;??? ??? ???? ?? ???? ???? ??, ???? ??? ?? ???? ?? ?? ?? ????? ?? ?? ????? ???? ??&#8221; ?? ?? ????? ???? ?????????? ?? ??????? ?? ???? ????? ????? ???? ?? ????? ???? ?????? ?? ?? ??? ???? ?? ?? ???? ??????? ?? ????? ??? ????? ???? ?? ??? ?? ??? ?? ???? ???? ???? ?? ?? ?? ?????? ???? ????</p>
<h3>???? ????? WordPress ?? ????</h3>
<p>??????????? ??? ????? ???? ?? ???? ???? ????????? ?? ???? ??? ???? ??????? ???? ??? ????????? ?? ???? ??? ????? ?? ???? ???? ????? ????? ?? ???????? ?? ??? ??? ??? ????????? ?? ??? ???? ???? ??, ???? ????? ???????? ???? ???? ????????? ?? ???? ???? ???? ??? ?? ???? ???? ?? ???? ????? ?? ?? ??? ??? ??? ?? ???? ??? ?? ???? ??? ?? ???? ??? ???? ?? ?????? ?? ?? ??? ??? ?? ???? ???? ???? ???? ??????????? ???? ??? ???? ??? ????? ????????? ??? ??? ??? ????? ?? ????? ???? ????</p>
<p>??? ????????? ??? ??? ????????? ???? ???? ????? ????????? ??? ???? ??? ???? ??? ??? ???? ?? ?? ???? ??? ?? ??? ????????? ?????? ?? ?????? ???? ?? ??? ???? ???? ??? ????? ?? ???? ?? ?? ????? ?? ??? ??? ??????? ???? ??? ?? ??? ?? ???? ??? ????? ??, ???? ????? ?? ???? ?? ????? ???</p>
<p>????? ????????? ??? 3 ??? ???? ??? ??? ?? ??? ???? ?????? ???? ???? ??? ???? ???? ????????? ???? ?? ?? ????? ?????? ?????? ?? ???? ???? ??? ??? ??? ????????? ?????? ???? ???? ??? ????????? ??? ??????, ?????? ?? ???? ????? ???? ?? ?? ???? ????? ?? ?????? ???? ?? ????? ???? ????</p>
<h3>WordCamp ??? ???? ??? ????? ???? ?? ?????</h3>
<p>Wordcamp ?????? ??? ?? ??? ?????? ???? ???? ????? ??? ????? ?? ?????? ?? ?? ?????? ????? ?? ???? ????? ???? ??? ????? ???? ???? ??? ???????? ??? ???? ??? ?? ?? ?? ????? ???? ?????? ??? ?? ???? ???? ?? ???? ?????? ?? ???? ???? ????? ??? ??? ??? ?? ???? ?? ??? ?? ???? ????????</p>
<p>?? ??? ?? ?? ?? ??? ????? ??? ?? ?????? ?? ?? ???? ???? ????? ??? ???? ??? ????? ??? ???? ???? ????? ??? ?? ??? ?????? ???? ??? ??? ??? ??????? ???? ????? ??? ?? ???? ????? ?? ????? ??? ???? ???? ??? ???? ??? ????? ??? ???? ??? ??? ??? ???? ????????? ?????? ??? ???????? ???? ?? ???? ????? ?? ?? ??? ???? ?? ??? ?? ?????? ???????</p>
<h3>??????? ????</h3>
<p>????????? ?? ??? ??????? ????? ???? ??? ?? ????? ???? ?? ???? ???? ?? ??? ???? ????-???? ?? ??? ????? ??? ?? ??????? ???? ????? ??? ?? ???????? ????? ??? ?? ??????? ???? ?? ???? ??????????? ?????</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: There is No Shortcut to Success &#8211; ????? ?? ??? ??????? ???? ??\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=There%20is%20No%20Shortcut%20to%20Success%20%2D%20%E0%A4%B8%E0%A4%AB%E0%A4%B2%E0%A4%A4%E0%A4%BE%20%E0%A4%95%E0%A4%BE%20%E0%A4%95%E0%A5%8B%E0%A4%88%20%E0%A4%B6%E0%A5%89%E0%A4%B0%E0%A5%8D%E0%A4%9F%E0%A4%95%E0%A4%9F%20%E0%A4%A8%E0%A4%B9%E0%A5%80%E0%A4%82%20%E0%A4%B9%E0%A5%88&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fno-shortcut-success%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: There is No Shortcut to Success &#8211; ????? ?? ??? ??????? ???? ??\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fno-shortcut-success%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fno-shortcut-success%2F&title=There+is+No+Shortcut+to+Success+%26%238211%3B+%E0%A4%B8%E0%A4%AB%E0%A4%B2%E0%A4%A4%E0%A4%BE+%E0%A4%95%E0%A4%BE+%E0%A4%95%E0%A5%8B%E0%A4%88+%E0%A4%B6%E0%A5%89%E0%A4%B0%E0%A5%8D%E0%A4%9F%E0%A4%95%E0%A4%9F+%E0%A4%A8%E0%A4%B9%E0%A5%80%E0%A4%82+%E0%A4%B9%E0%A5%88\" rel=\"nofollow\" target=\"_blank\" title=\"Share: There is No Shortcut to Success &#8211; ????? ?? ??? ??????? ???? ??\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/no-shortcut-success/&media=https://heropress.com/wp-content/uploads/2017/05/051017-150x150.jpg&description=There is No Shortcut to Success - ????? ?? ??? ??????? ???? ??\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: There is No Shortcut to Success &#8211; ????? ?? ??? ??????? ???? ??\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/no-shortcut-success/\" title=\"There is No Shortcut to Success &#8211; ????? ?? ??? ??????? ???? ??\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/no-shortcut-success/\">There is No Shortcut to Success &#8211; ????? ?? ??? ??????? ???? ??</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 10 May 2017 12:00:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Nidhi Jain\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: bbPress 2.6 Beta 3 Likely as Team Focuses on Solid Data Migration Path\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69367\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/bbpress-2-6-beta-3-likely-as-team-focuses-on-solid-data-migration-path\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3387:\"<p>For the past few months, users have been testing <a href=\"https://bbpress.org/forums/topic/bbpress-2-6-beta/\">bbPress 2.6 Beta 2</a>. bbPress 2.6�will be the first major version update since 2014 and will include the following features:</p>
<ul>
<li>Per-forum moderators</li>
<li>Improved favorites and subscriptions management</li>
<li>Improved BuddyPress integration</li>
<li>Performance improvements</li>
<li>User experience improvements to meta-boxes and admin-area tools</li>
<li>Tighter integration with the WordPress Dashboard</li>
<li>Template tweaks and clean-up</li>
</ul>
<p>In an <a href=\"https://bbpress.org/forums/topic/bbpress-2-6-beta/page/3/#post-183637\">interview published last week</a>, John James Jacoby, bbPress lead developer, shared insight into bbPress 2.6&#8217;s development.�According to Jacoby, there will likely be a third beta as the team continues to work�on a solid data migration path from 2.5 to 2.6.</p>
<p>&#8220;In the process of working on 2.6, some interesting things sort of happened all at the same time,&#8221; he said. &#8220;It kind of goes back to the old bbPress problem where WordPress.org is running 2.5 and is also running a hybrid of 2.6 to take advantage of performance improvements.&#8221;</p>
<p>Throughout the process of migrating WordPress.org from bbPress 2.5 to 2.6, the development team was able to resolve a number of bottlenecks associated with <a href=\"https://wptavern.com/mattnote-from-wordcamp-san-francisco\">turning bbPress into a plugin</a>.</p>
<p>&#8220;With every beta comes more feedback and the closer we get to release, the more feedback that comes in,&#8221; he said. &#8220;As we upgrade WordPress.org and receive more feedback, we fix more things.&#8221;</p>
<p>&#8220;With a small team, there&#8217;s no dedicated resources on the project which is the same problem that existed in 2014 when I did my <a href=\"https://wptavern.com/john-james-jacoby-launches-indiegogo-campaign-to-fund-buddypress-bbpress-and-glotpress-development\">Indiegogo campaign</a>. I&#8217;m really trying to spend a lot of time working on it but I&#8217;m also spending a lot of time on the security team, contributing to WordPress core, Multisite, and other projects. bbPress is my focus for as much as I can afford it to be.</p>
<p>&#8220;bbPress 2.6 will ship, I promise, and it will be a better bbPress than it has ever been.&#8221;</p>
<p>Jacoby confirmed that there will likely be a third beta released sometime in the near future.�Those who have upgraded to bbPress 2.6 Beta 2 are <a href=\"https://bbpress.org/forums/topic/bbpress-2-6-beta/page/3/#post-183637\">reporting substantial performance improvements</a>.</p>
<p>If you use bbPress 2.5 and want to upgrade to 2.6 Beta 2, Jacoby encourages users to create�a full backup of the�site&#8217;s database as the upgrade migrates data�for subscriptions and favorites. These changes are not easily reverted�should you choose to downgrade back to 2.5.</p>
<p>For your convenience, I&#8217;ve�clipped the portion from the full interview that includes our conversation about bbPress and BuddyPress that you can listen too below.</p>
<a href=\"https://wptavern.com/wp-content/uploads/2017/05/John-James-Jacoby-Gives-bbPress-2.6-Update.mp3\">https://wptavern.com/wp-content/uploads/2017/05/John-James-Jacoby-Gives-bbPress-2.6-Update.mp3</a>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 09 May 2017 20:19:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: New WordPress Plugin Blocks Spam User Registrations Using Stop Forum Spam Database\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69810\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/new-wordpress-plugin-blocks-spam-user-registrations-using-stop-forum-spam-database\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3435:\"<p>When it comes to spam, comments are one of the first things that comes to mind. However, spam user registrations can be just as prolific on sites with open registration. Leland Fiegel, founder of <a href=\"https://themetry.com/\">Themetry</a>, has developed a new plugin called <a href=\"https://wordpress.org/plugins/stop-signup-spam/\">Stop Signup Spam</a> that prevents users from registering an account if their email or IP address is on the <a href=\"http://stopforumspam.com/\">Stop Forum Spam</a> database.</p>
<p>Stop Forum Spam is a free service that records reports of spam registrations from blogs, forums, wikis, and more. Stop Signup Spam integrates with the WordPress registration form and Restrict Content Pro. Fiegel launched a new site over the weekend and despite not announcing it, it received a handful of spam registrations.</p>
<p>After Googling the registrants&#8217; email addresses, he discovered a number of them were reported on Stop Forum Spam&#8217;s site. &#8220;I had never heard of Stop Forum Spam before, but it is basically an Akismet equivalent for forum sign up spam,&#8221; Fiegel said. &#8220;I noticed they had a dead link to a WordPress plugin. I looked up the <a href=\"http://stopforumspam.com/usage\">Stop Forum Spam API documentation</a> and built a basic one myself a couple of days ago. I submitted it to WordPress.org and it was approved within a day.&#8221;</p>
<p>When a user is blocked from registering, the following error is displayed: Cannot register. Please contact site administrator for assistance.</p>
<p>Although users can check the<a href=\"http://stopforumspam.com/search\"> Stop Forum Spam database</a> to see if their email or IP address is blocked, the error message doesn&#8217;t inform them that Stop Forum Spam is what blocked their registration.</p>
<p>&#8220;I wanted to keep the error message vague so users wouldn&#8217;t lash out at site administrators for accusing them of being &#8216;spammers&#8217; but clear enough that the site administrator would know it was a false positive when it was reported to them,&#8221; Fiegel said.</p>
<p>In the <a href=\"https://wordpress.org/plugins/stop-signup-spam/\">plugin&#8217;s description</a>, Fiegel is clear about <a href=\"https://www.stopforumspam.com/privacy\">what data</a> is sent to the service. Each time a user attempts to register an account, an API call that contains the user&#8217;s email and IP address is sent to Stop Forum Spam and checked against its database. Although the plugin uses the service&#8217;s API, it does not require users to register for an API key. This allows the plugin to function upon activation without having to configure anything. Registrants that are incorrectly blocked as spammers can <a href=\"http://stopforumspam.com/removal\">submit a request</a> to have their IP or email address removed from the database.</p>
<p>Fiegel has no plans to integrate support for other forms but is open to <a href=\"https://github.com/lelandf/stop-signup-spam\">pull requests</a> from those who would like to contribute integration support of their own. I did not test this plugin on an active site, but Fiegel says it has dramatically cut down on the number of spam registrations on his new site. If user spam registration is an issue you&#8217;re dealing with, consider giving <a href=\"https://wordpress.org/plugins/stop-signup-spam/\">Stop Signup Spam</a> a try.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 May 2017 22:39:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Everything is Hitched\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47310\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ma.tt/2017/05/everything-is-hitched/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:184:\"<p><img /></p>
<blockquote><p>&#8220;When we try to pick out anything by itself, we find it hitched to everything else in the Universe.&#8221;</p></blockquote>
<p>&#8212; John Muir</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 May 2017 18:29:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"BuddyPress: Largest Turkish Recipe Site Spiced Up with BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=265777\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://buddypress.org/2017/05/largest-turkish-recipe-site-spiced-up-with-buddypress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9626:\"<div><em>This a guest post by Mustafa Uysal (<a href=\"https://profiles.wordpress.org/m_uysl\">m_uysl</a>). He is from Turkey and works as a full-stack developer at <a href=\"http://www.nefisyemektarifleri.com/\">NefisYemekTarifleri.com</a>.</em></div>
<p>Peer reviewed by <a class=\"bp-suggestions-mention\" href=\"https://buddypress.org/members/boonebgorges/\" rel=\"nofollow\">@boonebgorges</a></p>
<p><img class=\"alignnone size-large wp-image-265785\" src=\"https://buddypress.org/wp-content/uploads/1/2017/05/nefis-yemek-tarifleri-1024x805.jpg\" alt=\"nefisyemektarifleri site\" width=\"700\" height=\"550\" /></p>
<p><a href=\"http://www.nefisyemektarifleri.com/\">NefisYemekTarifleri.com</a> is the largest Turkish recipe sharing platform in the world. It has more than 290,000 recipes that reach millions of users every single day. <a href=\"http://www.nefisyemektarifleri.com/\">NefisYemekTarifleri</a>�is a unique platform that uses WordPress and BuddyPress for all its applications &#8212; desktop, mobile web, Android, iOS, and AndroidTV.</p>
<p><strong>Current status:</strong></p>
<ul>
<li>290k+ recipes, <code>~500</code> new recipes from different authors per day</li>
<li><code>~2.2M+</code> registered users with <code>~2.6M</code> xprofile_data, 24M+ usermeta</li>
<li><code>~4M</code> native apps download, <code>~1M</code> active usage</li>
<li><code>~100TB</code> CDN BW usage per month</li>
<li>3M+ BuddyPress activities and <code>~4M+</code> notifications</li>
<li>300k+ search requests per day</li>
</ul>
<p>We use <a href=\"https://uysalmustafa.com/2016/04/12/how-to-scale-10m-search-request-with-elasticpress/\">ElasticPress to handle 10M+ requests</a>. To scale this platform, we use various tools which we�<a href=\"https://stackshare.io/nefisyemektarifleri-com/nefisyemektarifleri\">share at Stackshare</a>. We share some of our stats on Twitter <a href=\"https://twitter.com/search?q=nytstats&src=typd\">#nytstats</a>.</p>
<h2>BuddyPress for a Growing User Base</h2>
<p>NefisYemekTarifleri.com is turning 10 years old this August and has been using BuddyPress for the last 5 years. According to my boss, �BuddyPress has helped a lot to increase our user base.�</p>
<p>Our platform is community-driven, i.e., all the recipes come from our users. The membership and number of recipes submitted have increased dramatically since we started using BuddyPress. The users feel more welcome because they have their &#8220;own space&#8221; where they can easily add their avatars, cover images, post their recipes, and share other social media links. BuddyPress has enabled users to engage more with other registered members as well as invite new users to the site. Our editorial team spends a majority of their time editing user recipe submissions.</p>
<p>Currently, we are using all BuddyPress core components except Friends and Groups. Thankfully, <a href=\"https://profiles.wordpress.org/r-a-y\">r-a-y</a>�s <a href=\"https://wordpress.org/plugins/buddypress-followers/\">BuddyPress Followers</a> plugin is a great replacement to the built-in Friends component.</p>
<h2>Customized BuddyPress Features</h2>
<h3>Notifications</h3>
<p>Our notification system is quite different from the standard BuddyPress notifications. It supports push and web push notifications and works async over the message queue.</p>
<p><img class=\"alignnone size-large wp-image-265786\" src=\"https://buddypress.org/wp-content/uploads/1/2017/05/nyt-notification-1024x512.jpg\" alt=\"Site notifications schema\" width=\"700\" height=\"350\" /></p>
<p>There are a lot of activities which can trigger notifications. There were and are many instances when we send notifications to tens of thousands users every day. For example, when one author with thousands of &#8220;followers&#8221; publishes a new recipe, it took a long time to send a simple notification like, �Hi there! Jane Doe published a new recipe, take a look!� Consider when we have 10 authors with many followers publishing new recipes at the same time.</p>
<p>In the early days, we created a custom `nyt_bp_add_notification` script which called BuddyPress� own notification that added a function for bulk messaging. We found out that it was causing�lags on our slave MySQL servers because the impact on the disk IO was dramatic. Our solution was a new custom script, `nyt_bp_add_bulk_notification`, which inserts data directly to database (as a bulk SQL query). By the way, we highly recommend Percona�s <a href=\"https://www.percona.com/doc/percona-monitoring-and-management/index.html\">PMM</a> for catching performance hogs.</p>
<p>At the end of 2016, we migrated from parse.com to our <a href=\"https://github.com/parse-community/parse-server\">self hosted parse</a> for push notifications. After which, we used�<a href=\"https://github.com/web-push-libs/web-push-php\">web-push-php</a> for the web push notifications.</p>
<h3>Cover Image</h3>
<p>We decided to replace the built-in cover image feature and create our own Facebook-inspired UI which was more user-friendly.�The feedback has been quite positive from our members.</p>
<p><img src=\"https://uysalmustafa.files.wordpress.com/2017/04/cover-image.gif\" width=\"981\" height=\"398\" alt=\"New cover image UI\" class=\"alignnone size-large\" /></p>
<p>Features of our new cover image UI:</p>
<ul>
<li>A user can directly upload a cover image by clicking on an icon on top of the cover image area.</li>
<li>The full-size image is saved behind the scenes.</li>
<li>Quick image resizing after the image upload has completed.</li>
<li>A user can change image position via drag-drop.</li>
<li>The full path and image coordinates are recorded as meta.</li>
</ul>
<h3>Messages</h3>
<p>The Messaging component is active but not fully open for the end users. We will make this available for everyone when we&#8217;ve completed our mobile app integration. This is how we are setting this up for our site:</p>
<ul>
<li>All messages have to be between two people, we canceled group messaging.</li>
<li>When someone you are not following sends a message, that message is marked as �pending�. You also &#8220;block&#8221; that person.</li>
<li>Fluent messaging: all conversations between two people use the same thread.</li>
</ul>
<h2>Workarounds/Hacks/Yikes!</h2>
<p><strong>Cache:</strong> We hated touching BuddyPress directly, but we had to hack core file to fix memory issues.  (We have submitted <a href=\"https://buddypress.trac.wordpress.org/attachment/ticket/7130/7130.diff\">a patch </a>that reduces memory usage for <a href=\"https://buddypress.trac.wordpress.org/ticket/7130\">BP#7130</a>)</p>
<p><strong>Messaging, reimagined</strong>: We made some necessary changes a bit in a hacky way on the messaging component. Changing messaging behavior was not easy and there are some edge cases we have to monitor and address.</p>
<p><strong>Limit notifications</strong>: Only allow 200 notifications per user, WordPress� cron cleans up on a daily basis.</p>
<p><strong>API Endpoints</strong>: We had to be careful on managing API endpoints, addressing the mobile apps a bit differently than web, especially when you do caching inside the device.</p>
<p><strong>Long-running process</strong>: MQ workers are long-running PHP scripts and they caused memory problems on production after a while. We fixed this issue with <a href=\"https://github.com/10up/ElasticPress/blob/157e65b112d90bcc15e532dc33f86592805cdb13/bin/wp-cli.php#L795\">stop_the_insanity</a>.</p>
<h2>In the Works</h2>
<p>Following are some of the features we have in queue:</p>
<ul>
<li>Upgrading BuddyPress, of course</li>
<li>Elasticsearch integration over ElasticPress. (We haven&#8217;t tried it yet but <a href=\"https://github.com/swissspidy\">Pascal</a> already wrote <a href=\"https://github.com/swissspidy/wptalents/blob/feature/buddypress-integration/classes/core/ElasticPress.php\">some code</a> we can start playing with.)</li>
<li>User suggestion to follow a member.</li>
<li>Activity improvements (currently, just acting like feed).</li>
<li>PHP 7.1 upgrade with dockerizing all the things. (Still using different versions of PHP)</li>
</ul>
<p>BuddyPress allows us to build one of the largest niche communities in the world. Fortunately for everyone, BuddyPress is being maintained by developers who are active contributors to WordPress core. Our thanks to all BuddyPress contributors, especially the BP core team.</p>
<div><img class=\"alignleft size-full wp-image-265793\" src=\"https://buddypress.org/wp-content/uploads/1/2017/05/m_uysl.jpeg\" alt=\"Mustafa Uysal\" width=\"150\" height=\"150\" /> <em><a href=\"https://profiles.wordpress.org/m_uysl\">Mustafa Uysal</a> of <a href=\"http://www.nefisyemektarifleri.com/\">NefisYemekTarifleri.com</a> also runs his own company, <a href=\"http://skop.com.tr/\">SKOP</a>. He&#8217;s a plugin developer who enjoys solving tough problems and making things faster and scalable. He�s also a workaholic and was interested in archery <a href=\"https://uysalmustafa.com/2015/10/14/im-an-archer/\">once upon a time</a>.�Mustafa is one of the <a href=\"https://make.wordpress.org/polyglots/teams/?locale=tr_TR\">WordPress Translation Editors</a> for the Turkish language.<br />
Links: <a href=\"https://twitter.com/m_uysl\">Twitter</a>, <a href=\"https://github.com/mustafauysal\">Github</a>, <a href=\"https://profiles.wordpress.org/m_uysl\">WordPress.org</a>, <a href=\"https://www.linkedin.com/in/uysalmustafa/\">Linkedin</a>, <a href=\"https://www.instagram.com/m_uysl/\">Instagram</a>, <a href=\"https://uysalmustafa.com/\">My Blog</a>, and <a href=\"http://www.nefisyemektarifleri.com/u/mustafauysal/hakkinda/\">nefisyemektarifleri</a></em></div>
<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 May 2017 16:55:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"@mercime\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:11:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"HeroPress: TOMORROW is the last day to apply!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=1792\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://heropress.com/tomorrow-last-day-apply/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2668:\"<img width=\"960\" height=\"639\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/04/ipad-uandr-1-1024x682.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Two hands holding an ipad so we can see the screen.\" /><p>Tomorrow is the last day to apply for the <a href=\"https://heropress.com/up-running-scholarship-heropress-wpshout/\">The Up and Running Scholarship, from HeroPress and WPShout</a>! Once the entry time is closed then we&#8217;ll package up the submissions and send them to the judging panel.</p>
<p>NO SUBMISSIONS WILL BE ACCEPTED after 23:59:59 UTC 09 May.</p>
<p>If you&#8217;ve been waiting to apply, don&#8217;t wait any more!</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: TOMORROW is the last day to apply!\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=TOMORROW%20is%20the%20last%20day%20to%20apply%21&via=heropress&url=https%3A%2F%2Fheropress.com%2Ftomorrow-last-day-apply%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: TOMORROW is the last day to apply!\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Ftomorrow-last-day-apply%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Ftomorrow-last-day-apply%2F&title=TOMORROW+is+the+last+day+to+apply%21\" rel=\"nofollow\" target=\"_blank\" title=\"Share: TOMORROW is the last day to apply!\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/tomorrow-last-day-apply/&media=https://heropress.com/wp-content/uploads/2017/04/ipad-uandr-1-150x150.png&description=TOMORROW is the last day to apply!\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: TOMORROW is the last day to apply!\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/tomorrow-last-day-apply/\" title=\"TOMORROW is the last day to apply!\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/tomorrow-last-day-apply/\">TOMORROW is the last day to apply!</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 08 May 2017 13:28:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Weglot Multilingual Plugin Closes $450K in Seed Funding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69667\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/weglot-multilingual-plugin-closes-450k-in-seed-funding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3879:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2016/10/weglot.jpg?ssl=1\"><img /></a></p>
<p><a href=\"https://weglot.com/\" target=\"_blank\">Weglot</a>, a multilingual plugin which has been in the WordPress market for a little over a year, has <a href=\"http://blog.weglot.com/7k-21keuromonthly-6months-growth-e450k-fundraising/\" target=\"_blank\">closed $450K in seed funding from SIDE Capital</a>. Co-founder R�my Berda reports that there are now more than 10,000 websites using Weglot and the company has passed 30K� in monthly revenue.</p>
<p>Over the past six months Berda and his small team have been working to add improvements based on user feedback. Weglot will now detect a visitor&#8217;s language and automatically redirect to serve the translated page. Weglot users can also connect with <a href=\"https://www.textmaster.com/\" target=\"_blank\">Textmaster</a>&#8216;s marketplace to order professional translations through their accounts. The support burden has also increased from 10-20 emails per day to more than 80 per day, challenging the small team&#8217;s resources.</p>
<p>&#8220;Over the past few months, we started to be overworked by the amount of support or the number of features we wanted to add to the product,&#8221; Berda said. &#8220;We got a bit frustrated not to be able to improve the product as we wanted to through lack of time. So we understood that if we wanted to keep growing at a fast pace, we would need to scale up our two-person company and raising money was the perfect way to do it.&#8221;</p>
<p>After making the connection with SIDE Capital at the end of 2016, Weglot decided to partner with them to fund the further expansion if its support team. The team is currently comprised of two founders, one lead developer, one head of support, and one support agent. Approximately 1,500 of Weglot&#8217;s 10,000 users are on an active paid plan, but the remaining 85% of free users make up a significant portion of the support load. Berda said they are investing their resources in support, which serves both free and paid users, in order to maintain the same quality.</p>
<p>In tandem with improving the performance of the plugin and its support, Berda said the team is also developing other integrations to test Weglot&#8217;s service outside of the WordPress market.</p>
<p>Weglot is growing rapidly in the North American market. Although the Asian market is not represented on the plugin&#8217;s user breakdown below, Berda said it has more than doubled in the past two months.</p>
<p>&#8220;We have been seeing an accelerating growth in the Americas in the past 6 months,&#8221; Berda said. &#8220;We went from 5% of our clients to 25% now. Asia is still small but has been quickly growing in the past two months from 3% to 8%.&#8221;</p>
<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/05/weglot-users-countries-breakdown.png?ssl=1\"><img /></a></p>
<p>One year after officially launching Weglot, Berda and his team have found that WordPress is a ripe market for entrepreneurs who are ready to move quickly and provide a high level of customer service. His advice to newcomers?</p>
<p>&#8220;You&#8217;re in the right place,&#8221; Berda said. &#8220;WordPress is a huge market with real needs, and it is often overlooked by many entrepreneurs. There is an active and strong community with &#8216;caring&#8217; values.  So WordPress is definitely a great place to build a business.&#8221; He recommends keeping to a brisk timeline:</p>
<p>&#8220;One month after you have the idea, you must have some people (1 to 10) testing a MVP,&#8221; Berda said. &#8220;One more month later, you must have your first paying customer to validate the needs. Finally, never neglect customer support. Done carefully, customer supports transforms into customer acquisition.&#8221;</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 May 2017 20:13:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WPTavern: WordPress 4.8 Release Targeted for June 8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69778\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://wptavern.com/wordpress-4-8-release-targeted-for-june-8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2349:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/05/gutenberg-editor.png?ssl=1\"><img /></a></p>
<p>WordPress 4.8 kicked off in this week&#8217;s core developer meeting and the <a href=\"https://make.wordpress.org/core/4-8/\" target=\"_blank\">schedule</a> for the upcoming release is now published. Beta 1 is scheduled for May 12 and the official release is targeted for June 8. This will be the first major release in 2017 and is focused on laying the foundation for the new <a href=\"https://github.com/WordPress/gutenberg\" target=\"_blank\">Gutenberg</a> editor. The schedule identifies the features that contributors are aiming to ship in 4.8:</p>
<ul>
<li>TinyMCE inline element / link boundaries</li>
<li>New media widgets</li>
<li>WYSIWYG in text widget</li>
<li>WordCamp / meetup dashboard upgrade to the �news� section</li>
</ul>
<p>Several contributors expressed concern during the meeting about the compressed timeline, as both the beta and RC testing times have roughly half the time they have been given in the past. Also, the release&#8217;s close proximity to WordCamp Europe, which officially begins activities the following week, presented additional concerns about the added workload of a release within the May/June timeframe.</p>
<p>&#8220;I think people are thinking of this as a normal release, a train leaving the station that a bunch of stuff (multisite! meta!) has to get on to make it in,&#8221; 4.8 release lead Matt Mullenweg said. &#8220;I agree that needs a much longer timeframe.</p>
<p>&#8220;What is really going on is that we have a few simple, already working as plugin enhancements that add a few files, and we want to get those in the hands of users sooner rather than later. We already update TinyMCE all the time. Potential breakage or compatibility should be limited to things that interact with the text widget or the news dashboard module.&#8221;</p>
<p>After a brief discussion on the <a href=\"https://make.wordpress.org/core/2017/05/04/dev-chat-summary-may-3rd-4-8-week-1/\" target=\"_blank\">dev meeting notes</a>, the proposed schedule was confirmed. The feature project merge deadline is coming up on May 10, followed by Beta 1 two days later. Any enhancements that are not ready to proceed on this timeline will be put on hold for a future release.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 May 2017 18:13:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: WPHugs: A Community Devoted to Educating, Discussing, and Raising Awareness of Mental Health\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69625\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://wptavern.com/wphugs-a-community-devoted-to-educating-discussing-and-raising-awareness-of-mental-health\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3983:\"<p>In the past two years, there has been an increased effort in the WordPress community to raise awareness of mental health. <a href=\"http://wordpress.tv/2016/12/10/cory-miller-managing-your-iceberg/\">Cory Miller</a>, <a href=\"https://videopress.com/v/n53MNL3C\">Rich Robinkoff</a>, <a href=\"https://videopress.com/v/fBYZcOBz\">Michele Butcher</a>, and <a href=\"https://wphugs.org/talks/\">others</a> have presented on the subject at numerous WordCamps.</p>
<p>A common theme�that surrounds mental health is the fear of discussing it openly.�<a href=\"https://wphugs.org/\">WPHugs.org</a>, a passion�project by Leo Gopal, aims to provide�a safe space for people to connect, educate, and raise awareness of mental health.</p>
<p>&#8220;I suffered many times in my life so far with extreme depression,&#8221; Gopal said. &#8220;One of the most difficult parts of dealing with extreme depression is the feeling that you can&#8217;t tell anyone about it. This can include your boss or colleagues who you spend most of your time with.&#8221;</p>
<p>&#8220;Until, at <a href=\"https://videopress.com/v/dhGqDhV5\">WordCamp Cape Town 2016</a>, I stood in front of a conference room full of people and &#8216;confessed&#8217; that I am afflicted with depression. After the talk, many people came to me and called me &#8216;brave&#8217; to be so open, and many opened up and thanked me for helping them realize that they too are not alone.</p>
<p>&#8220;After my recovery from attempted suicide, it was the friends I had made in the WordPress Community that gave me the most support.�I reached my darkest point, and I got there feeling alone. WPHugs hopes to be a torch that allows others to never get to such a space.&#8221;</p>
<p>WPHugs has a <a href=\"https://wphugs.org/wp-login.php?action=slack-invitation\">Slack group</a> that&#8217;s free to join that provides an opportunity for like-minded people to discuss topics in real-time. While the conversations in�the Slack channel are not private, Gopal is hopeful that the community will be built around trust and honesty.</p>
<p>&#8220;I suspect that there will be more direct messages than there will be channel messages, and that&#8217;s okay, the connections are being made, we are talking more,&#8221; he said.</p>
<p>WPHugs is a not-for-profit passion project and although the site has <a href=\"https://wphugs.org/sponsorships/\">sponsorship opportunities</a> available, Gopal is looking for companies and people�who can contribute�time and resources.</p>
<p>&#8220;If companies want to contribute licenses to their software to help expand, grow, reach more people, by all means it is completely welcome,&#8221; Gopal said. &#8220;Sponsor time or resources, whatever you can to make this project thrive and survive, because it&#8217;s important, it could save someone&#8217;s life.&#8221;</p>
<p>Gopal admits he&#8217;s not an authority on how to maintain good mental health but plans to crowdsource tips, tricks, and host conversations to help others. Heavily inspired by <a href=\"http://heropress.com/\">HeroPress</a>, Gopal wants to publish�weekly essays called�Mental Health War Stories.</p>
<p>The most important message WPHugs wants to get across is that�people who are suffering from mental illnesses are not alone.</p>
<p>&#8220;It&#8217;s about making us aware of ourselves, taking care of our own mental health and how important it is for those around us. It&#8217;s also about being more empathetic for those around us who suffer in their own way and know that someone cares,&#8221; Gopal said.</p>
<p>&#8220;I went through a struggle discovering my mental illness and learning about it, and I did it alone. I don&#8217;t want that journey for others to be as solitary. I am a hugger.&#8221;</p>
<p>To share a�mental health war story or�to get involved with the project, you can get in touch with Gopal through the WPHugs�<a href=\"https://wphugs.org/contact/\">contact form</a>.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 05 May 2017 02:39:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: WordPress Security Issue in Password Reset Emails to Be Fixed in Future Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69665\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/wordpress-security-issue-in-password-reset-emails-to-be-fixed-in-future-release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4135:\"<p>Security researcher Dawid Golunski of <a href=\"https://legalhackers.com/\" target=\"_blank\">Legal Hackers</a> has published the details of an <a href=\"https://exploitbox.io/vuln/WordPress-Exploit-4-7-Unauth-Password-Reset-0day-CVE-2017-8295.html\" target=\"_blank\">unauthorized password reset vulnerability</a> in WordPress core. Golunski demonstrated how, under certain circumstances, an attacker could intercept the password reset email and gain access to a user&#8217;s account.</p>
<p>His proof of concept takes advantage of WordPress using the SERVER_NAME variable to get the hostname of the server in order to create a From/Return-Path header of the outgoing password reset email.</p>
<blockquote><p>Major web servers such as Apache by default set the SERVER_NAME variable using the hostname supplied by the client (within the HTTP_HOST header):</p>
<p>https://httpd.apache.org/docs/2.4/mod/core.html#usecanonicalname</p>
<p>Because SERVER_NAME can be modified, an attacker could set it to an arbitrary domain of his choice e.g:</p>
<p>attackers-mxserver.com</p>
<p>which would result in WordPress setting the $from_email to </p>
<p>wordpress@attackers-mxserver.com</p>
<p>and thus result in an outgoing email with From/Return-Path set to this malicious address.</p></blockquote>
<p>The results of this particular attack would depend on the server environment, the specific configuration of the mail server, and in some cases would require interaction from the user in question. Golunski&#8217;s <a href=\"https://exploitbox.io/vuln/WordPress-Exploit-4-7-Unauth-Password-Reset-0day-CVE-2017-8295.html\" target=\"_blank\">report</a> has a more specific breakdown of the possible methods that could be employed.</p>
<p>After reporting the issue to the WordPress security team in July 2016 and also via the HackerOne website, Golunski saw no progress on it and decided to release the vulnerability details to the public.</p>
<p>Although there is no official patch yet, WordPress Security Czar Aaron Campbell said the issue is not quite as severe as it may seem.</p>
<p>&#8220;It&#8217;s a lower priority issue, but we are aware of it and it is in our queue to address,&#8221; Campbell said. He explained the unique set of conditions that would be required in order for this to be a serious vulnerability.</p>
<p>&#8220;In order for the issue to have a security impact, a server needs to allow a user-supplied header to overwrite <code>$_SERVER[\'SERVER_NAME\']</code>,&#8221; Campbell said. &#8220;We would consider that a poor server configuration (like leaving <code>display_errors</code> on on a production server), which is unfortunately outside our control.&#8221;</p>
<p>Campbell tested his personal Apache and nginx servers and none of them allowed for this. In addition to having a poorly configured server, Campbell said one of the following actions also needs to happen:</p>
<ul>
<li>a user needs to reply to a password reset email</li>
<li>an auto-reply needs to reply to the E-Mail and include the original</li>
<li>an E-Mail server has to be compromised or overloaded and the message returned to sender with content intact</li>
</ul>
<p>&#8220;If your server is susceptible and you don&#8217;t have the ability to fix the actual server configuration, you still don&#8217;t have to make changes to WordPress files to mitigate the issue,&#8221; Campbell said. &#8220;A little PHP like this in a plugin will set the from E-Mail to a static E-Mail address of your choice:&#8221;</p>
<p><code>add_filter( \'wp_mail_from\', function( $from_email ) { return \'wordpress@mysite.com\'; } );</code></p>
<p>Campbell said any changes WordPress makes to core will likely be done via a <a href=\"https://core.trac.wordpress.org/ticket/25239\" target=\"_blank\">ticket</a> that is currently tracking the issue from a non-security perspective. He said a fix is mostly likely not going to be coming in the next security release, but the team is actively working on it. If they find a good mitigation for the issue, Campbell said they will share it once they have worked through all the potential ramifications.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 May 2017 22:41:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: WordPress Community Team Considers New Retreat-Style WordCamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69642\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/wordpress-community-team-considers-new-retreat-style-wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3741:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2015/06/journey.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/2DEL42UQ7M\">Jesse Bowser</a>
<p>The WordPress Community Team is <a href=\"https://make.wordpress.org/community/2017/05/03/a-new-type-of-wordcamp/\" target=\"_blank\">debating the merits of a new type of WordCamp</a>, a hybrid event with the traditional WordCamp content in a retreat-style format. <a href=\"https://profiles.wordpress.org/mahype/\" target=\"_blank\">Sven Wagener</a> and the <a href=\"https://www.meetup.com/WordPress-Meetup-Koln/\" target=\"_blank\">K�ln meetup group</a> in Germany, which has more than 700 members, have proposed a new style of camp that would potentially be called &#8220;WordCamp in the Green&#8221; or &#8220;WordCamp Retreat.&#8221;</p>
<p>The event would be held outside of town at a venue where all attendees stay in the same hotel. In addition to the regular WordCamp sessions and Contributor Day, attendees have the opportunity to participate in local outdoor activities.</p>
<p>The WordPress Community Team is open to considering different formats for WordCamps that serve a specific niche. <a href=\"https://wptavern.com/wordcamp-for-publishers-to-be-held-in-denver-august-17-19\" target=\"_blank\">WordCamp for Publishers</a>, the first WordCamp focused around a specific topic, is a recent example of this flexibility.</p>
<p>The proposed format is very similar to the interest-based meetups that the <a href=\"https://wptavern.com/community-translation-and-wapuu-how-japan-is-shaping-wordpress-history\" target=\"_blank\">Japanese WordPress community</a> has been doing for years. Members spend time together in activities unrelated to WordPress, as opposed to simply focusing on improving technical skills, and as a result they become more connected with their local community. For example, the <a href=\"http://2014onsen.wbsendai.com/\" target=\"_blank\">Word?? (WordOnsen) meetup</a> includes members who enjoy hot springs. They gather in Fukushima where they stay at the same hotel, host WordPress sessions, and end with a party night. This format has successfully grown the Japanese meetup community to more than 50 local groups.</p>
<p>The K�ln meetup group&#8217;s proposal for a WordCamp doesn&#8217;t stray too far from the traditional WordCamp program, as the only differences seem to be a more rural setting where everyone stays at the same venue. A more radical change would be an event where WordPress community members meet simply for networking and connecting with no planned educational component. These types of niche unofficial WordCamps have been happening for years outside of the WordPress-sanctioned events.</p>
<p>The WordPress Community Team is seeking feedback on the proposed &#8220;WordCamp Retreat,&#8221; as approval of the event would set a precedent.</p>
<p>&#8220;If we introduce a new type of WordCamp event like this, we want it to be something that works in many communities, scales effectively for larger (or smaller) groups, and is able to be reproduced by any organizers who wish to do so,&#8221; Commnity Team member Hugh Lashbrooke said.</p>
<p>The organizing team for the proposed WordCamp has already prepared a budget and is ready to move forward once given approval. Lashbrooke said the Community Team anticipates the new event types will have &#8220;a huge amount of interest from other communities around the world,&#8221; so they wanted to pitch it to the community for feedback.</p>
<p>If you have strong opinions on the topic, you can <a href=\"https://make.wordpress.org/community/2017/05/03/a-new-type-of-wordcamp/\" target=\"_blank\">join the discussion on WordPress.org</a>.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 May 2017 02:05:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: WPWeekly Episode 271 � Recapping WordCamp Chicago 2017 With John James Jacoby\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=69622&preview=true&preview_id=69622\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://wptavern.com/wpweekly-episode-271-recapping-wordcamp-chicago-2017-with-john-james-jacoby\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2066:\"<p>In this episode, I&#8217;m joined by <a href=\"https://jjj.blog/\">John James Jacoby</a>. We recap WordCamp Chicago 2017 and learn about what he&#8217;s been up to as of late. Jacoby was recently elected as a trustee by the Village of East Troy, WI. We discussed what lessons he&#8217;s learned through open source software development that he&#8217;ll apply to his Trustee role.</p>
<p>We talk about how important mental health is and near the end of the show, he provides status updates on the bbPress and BuddyPress projects. Jacoby also weighed in on the stories making headlines in recent weeks.</p>
<h2>Stories Discussed:</h2>
<p><a href=\"https://wptavern.com/shopify-discontinues-its-official-plugin-for-wordpress\">Shopify Discontinues Its Official Plugin for WordPress</a><br />
<a href=\"https://wptavern.com/wordcamp-us-2017-ramps-up-ticket-sales-organizers-plan-for-2500-attendees\">WordCamp US 2017 Ramps Up Ticket Sales, Organizers Plan for 2,500 Attendees</a><br />
<a href=\"https://wptavern.com/automattic-to-close-san-francisco-office\">Automattic to Close San Francisco Office</a><br />
<a href=\"https://wptavern.com/wordpress-4-8-will-end-support-for-internet-explorer-versions-8-9-and-10\">WordPress 4.8 Will End Support for Internet Explorer Versions 8, 9, and 10</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, May 10th 3:00 P.M. Eastern</p>
<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\" rel=\"noopener noreferrer\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"https://wptavern.com/feed/podcast\" target=\"_blank\" rel=\"noopener noreferrer\">Click here to subscribe</a></p>
<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\" rel=\"noopener noreferrer\">Click here to subscribe</a></p>
<p><strong>Listen To Episode #271:</strong><br />
</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 May 2017 00:26:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"Matt: Exploiting Democracy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47306\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://ma.tt/2017/05/exploiting-democracy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:153:\"<p>One of my favorite talks from TED last week was by�Laura Galante.�The most hackable device on the planet is your own mind:</p>
<p></p>
<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 May 2017 19:48:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"WPTavern: Jetpack 4.9 Introduces EU Cookie Law Banner Widget\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69520\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wptavern.com/jetpack-4-9-introduces-eu-cookie-law-banner-widget\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2298:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/05/eu-cookie-law-banner-widget-jetpack.png?ssl=1\"><img /></a><a href=\"https://jetpack.com/2017/05/02/jetpack-4-9-widgets-and-improvements/\" target=\"_blank\">Jetpack 4.9</a> gives self-hosted WordPress users access to some of the widgets that are available on WordPress.com. One of the most useful ones for European websites is the new EU Cookie Law Banner widget. The WordPress plugin directory has <a href=\"https://wordpress.org/plugins/search/eu+cookie+law/\" target=\"_blank\">dozens of plugins related to cookie consent</a>, but Jetpack users can now get this feature bundled with the popular plugin.</p>
<p>The widget launches a notice at the bottom of the screen where users can click to accept cookies. The widget banner text, color scheme, policy URL, and button text can be customized, and administrators can hide the banner based on different user behaviors.</p>
<p>The EU Cooke Law is an online privacy directive that was introduced in 2011 with the objective of allowing website visitors the right to refuse cookies that reduce their privacy. Sites that serve primarily EU audiences are required to comply. Companies in the U.S. and outside the EU with no legal EU presence are not likely to have any consequences for not complying, as the law is difficult to enforce outside the EU.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/05/internet-defense-league-red-cat.png?ssl=1\"><img /></a>Jetpack 4.9 also adds a new Flickr widget and one for the <a href=\"https://www.internetdefenseleague.org/\" target=\"_blank\">Internet Defense League</a>, an organization dedicated to defending internet freedom. The widget lets users select from three different badges to show support. Note that this widget does not sign the website up to broadcast specific campaigns. That feature is available in the <a href=\"https://wordpress.org/plugins/cat-signal/\" target=\"_blank\">Internet Defense League Cat Signal</a> plugin.</p>
<p>This release also includes several minor fixes and improvements under the hood. Check out the full <a href=\"https://wordpress.org/plugins/jetpack/#developers\" target=\"_blank\">changelog</a> on WordPress.org to see everything included in version 4.9.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 May 2017 17:55:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: Manage Multiple Social Media Accounts in WordPress With Social Media Suite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69526\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/manage-multiple-social-media-accounts-in-wordpress-with-social-media-suite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2613:\"<p>Managing social media accounts across multiple networks can be a cumbersome task. <a href=\"https://wordpress.org/plugins/social-web-suite/\">Social Media Suite</a> by <a href=\"https://www.linkedin.com/in/tinatodorovic/\">Tina Todorovic</a> and <a href=\"https://twitter.com/dejanmmarkovic\">Dejan Markovic</a>, based in Toronto, Canada, aims to make managing those accounts a breeze.</p>
<p>At its core, Social Media Suite is a social media marketing management platform. To use it, you&#8217;ll first have to install the <a href=\"https://wordpress.org/plugins/social-web-suite/\">Social Media Suite connector Plugin</a> to connect your site to the service.</p>
<p>Once activated, click the Go to Control Panel button which loads Social Web Suite&#8217;s control panel where you can connect social media accounts.</p>
<p><img /></p>
<p>I highly recommend that you open the control panel in a new browser tab as opening it in the same browser tab makes it difficult to browse back to�the WordPress�backend.</p>
<p>Through Social Web Suite, users can publish or schedule Tweets and other messages across�social networks such as Facebook. After connecting my Twitter account, I was able to publish a Tweet from the site&#8217;s interface.</p>
<img />Social Media Suite Twitter Interface
<p>Social Web Suite includes a number of�sharing options. You can configure whether or not to share posts, pages, or both, how many times they can be�shared, if the featured image is displayed, and if content is shared at the same time it&#8217;s published.</p>
<p>Other configuration options include, message formatting, hashtag support, which categories to include or exclude, and the ability to exclude specific pages or posts.<img /></p>
<p>To see how well messages are�performing, Social Web Suite offers an analytics dashboard that displays a similar set of statistics provided by Twitter. This allows you to quickly see which messages are having the most impact.</p>
<img />Social Media Suite Analytics Dashboard
<p>As far as privacy is concerned, Social Media Suite stores marketing management content on its servers and will not ask users for their login information. The service is currently in Beta and is available by <a href=\"https://socialwebsuite.com/get-your-invitation/\">invitation only</a>. I tested <a href=\"https://wordpress.org/plugins/social-web-suite/\">Social Media Suite</a> on WordPress 4.7.4 and didn&#8217;t encounter any issues. If you&#8217;re looking for a service to manage your social media marketing strategy, consider giving Social Media Suite a try.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 May 2017 16:09:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"HeroPress: Notes From My Former Self\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=1759\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://heropress.com/essays/notes-from-my-former-self/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11029:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/05/050317-min-1-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Sleep more, worry less, rely on those around you, and just get on with doing what you do best.\" /><p>I�ve written and rewritten this essay so many times now I�ve forgotten what it originally looked like. In the beginning it was going to be the short(ish) story of my first year with WordPress and the lessons I�ve learned about myself. It always ends up being a long and boring story of a year of my life without ever getting to the purpose of why I want to share it. I�ve decided to over simplify it as much as possible, in order to get to the �why�. If you really want to read about my �WordPress Year 1� you can probably put most of it together from reading my blog for 2016.</p>
<p>So in the spirit of TL;DR:</p>
<p>After an amazing first WordCamp experience at WordCamp Cape Town 2015 I chose the path of freelance WordPress developer. My current situation doesn&#8217;t lend itself to being employed full time and I decided (at the time possibly stupidly) that building WordPress websites was what I was going to do. It would be easy right?</p>
<blockquote><p>I had a developer license for the Divi theme and all I had to do was find small business clients to build websites for. What could possibly go wrong?</p></blockquote>
<p>I spent the first year banging my head against a quite a few walls, trying to expand my mind, my skills and my experience to reach a goal that, for me anyway, was wholly unobtainable. In the end I realised the what I needed to do was trust in myself and my experience, find a better system for obtaining work and focus on the areas that I was actually good at.</p>
<p>I also learned the importance of community.</p>
<p>What follows are the notes I would send to myself, were I able to send a time capsule back one year, to be read on January 1, 2016. Hopefully it helps someone else out there.</p>
<h3>The WordPress community is an amazing thing.</h3>
<p>I�ve often said that the reason everyone in the community is (mostly) so open and welcoming and helpful is that it was founded in the spirit of open source. Open source software at it�s core is about being free, open and available, the ability to question a specific solution and find answers to problems and being able to extend and adapt to new requirements. The WordPress community is that in spades. Sure, there are some aspects of it that can get brutal or nasty, sometimes some parts of the community feel unheard or ignored and when I read about things like that it makes me sad. In my experience it has been a positive part of my journey.</p>
<blockquote><p>From the local WordPress South Africa Slack team, to the two WordCamps in Cape Town and Johannesburg I attended this year, all the way to the international Slacks, forums and Facebook groups, almost everyone I�ve dealt with is positive and supportive.</p></blockquote>
<p>I�ve contacted CEOs and owners of premium WordPress business, asking them questions via Slack. Every time they answered. In what corporate culture does the owner or CEO of a company take time to answer some random developer question? I�ve met some amazing people, locally and internationally, in person and online, and they have all been the same. Friendly, helpful and willing to answer questions. I can honestly say that without the help and support of the WordPress community I would have been able to make it �on my own� last year.</p>
<h3>Being a freelancer is more about finding your purpose and less about finding clients.</h3>
<p>I spent the majority of 2016 trying to force myself down a new path. One where I had little or no experience and where I was surrounded by giants. My gut told me that clients would be looking for websites. So building websites with WordPress became the logical step. However I am not a web designer, a content strategist or an SEO expert. In the words of Jeremy Clarkson, �How hard can it be?�. I soon learned how hard. While it is good to try and expand on your weaknesses, trying to earn an income this way is eventually going to kill you. The path to true work/life fulfilment lies at the intersection of that which you love, that which you are good at, that which the world needs and (most importantly) that which you can be paid for (the Japanese call it �Ikigai�, roughly translated as �a reason for being�).</p>
<blockquote><p>The biggest mistake I made was thinking that because of WordPress there would be no work for a PHP developer.</p></blockquote>
<p>I soon learned that the reality was that because of WordPress there was an abundance of work for a PHP developer, I was just looking at it the wrong way. Once I knew what my Ikigai was, finding the right platform and clients to match that became much, much easier.</p>
<h3>Never judge your experience based on someone else.</h3>
<p>I�ll be the first to admit, I�m not the most up to date of developers. I only recently really grasped the concepts of name spacing and I still don�t quite get the whole MySQL character set thing. And that is OK. Being a developer is more about solving a problem than�the tools you use to do so. There isn�t one �right� way to build a plugin. There are a few recommended ways, which often differ from each other in small but important ways but they are all �the right way�. The important thing is to pay attention to things like standards, simplicity and security. Everything else can be learned from others. The beauty of an open source project is that everyone is learning from the community. So whatever I don�t know I can learn from someone else. At the end of the day the community benefits and you benefit. (also, refer back to �The WordPress community is an amazing thing�).</p>
<h3>Look after yourself.</h3>
<p>These seem obvious, but I soon found myself in some very bad patterns. Sleep was the first to go. It is way too easy to end up working until 1 or 2am, �just to get this one thing finished�. That�s great if you can sleep in the next morning, but when you are guaranteed to be woken at around 7am by your 5 year old, it soon starts adding up.</p>
<blockquote><p>Once the sleep deprivation starts the bad food choices kick in.</p></blockquote>
<p>Coffee becomes more of a crutch than an enjoyment and meal time decision making is ruled more by what tastes nice than what is healthy. Eventually you end up getting sick for a week and you are so run down you get nothing done until you recover, meaning your earning potential lessens. So you start trying to work longer hours. It is a vicious cycle. The problem, however, is actually a bit deeper&#8230;.</p>
<h3>Your time is valuable.</h3>
<p>The quickest way to the downward sleep/life cycle is to devalue yourself and your time.</p>
<p>Learn to estimate better. Spend more (paid) time on researching the intricacies of a project to ensure you have thought about everything you can, then estimate accordingly. Otherwise you end up realising you missed something half way through, and you have to make a choice. Usually that choice is to suck up the time and add the feature. That is the wrong choice.</p>
<p>Your time is valuable. It is better to admit to a client that you missed something and that you will need to adjust the time line or quote than to try and kill yourself to make it based on your original estimates. Worse case the client says no and cancels the project. Learn and apply the knowledge to the next one. Better case they agree to give you more time but not more money. Well at least you aren�t going to kill yourself to get it done. Best case they understand everyone is human. I�ve rarely found clients who don�t get it.</p>
<h3>You are capable.</h3>
<p>Have you ever experienced this? &#8211; You have a project coming up. You&#8217;ve done all the ground work and made sure you&#8217;ve estimated to the best of your abilities, but suddenly you are gripped with fear/concern/worry that the actual project is going to be above your capabilities. So you keep putting it off and do other less important things, trying to build up the courage to tackle it. When you eventually sit down and start you realise it is well within your capabilities and had you started sooner you would probably be done already, instead of now where you are a bit behind and you&#8217;ll have to either work in some extra time to make that deadline or come up with some excuse as to why you missed it.</p>
<p>All. The. Damn. Time.</p>
<p>Stop it. You can do it. You�ve done it a 100 times before. Trust in your experience and yourself.</p>
<p>So in short, sleep more, worry less, rely on those around you and just get on with doing what you do best. It isn&#8217;t really much simpler than that. I�m still trying to figure out why I tried to make it more complicated than what it�is, but perhaps that is another journey in the human psyche, for another day.</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Notes From My Former Self\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Notes%20From%20My%20Former%20Self&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fnotes-from-my-former-self%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Notes From My Former Self\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fnotes-from-my-former-self%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fnotes-from-my-former-self%2F&title=Notes+From+My+Former+Self\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Notes From My Former Self\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/notes-from-my-former-self/&media=https://heropress.com/wp-content/uploads/2017/05/050317-min-1-150x150.jpg&description=Notes From My Former Self\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Notes From My Former Self\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/notes-from-my-former-self/\" title=\"Notes From My Former Self\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/notes-from-my-former-self/\">Notes From My Former Self</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 May 2017 11:00:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Jonathan Bossenger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Akismet: Limited Time 20% Discount off all Jetpack Plans\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1931\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://blog.akismet.com/2017/05/03/discount-off-jetpack-plans/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1119:\"<p>As part of #SmallBusinessWeek, Jetpack and Akismet�are offering a limited time 20% discount off all Jetpack&#8217;s�<a href=\"https://jetpack.com/pricing/\">paid plans</a>�&#8212; all of which include the Akismet service as well as other security essentials like automated backups and priority support.</p>
<p>You can read more about why Akismet�and Jetpack are the ideal WordPress plugins for small business websites over on the <a href=\"https://jetpack.com/2017/04/30/jetpack-the-ideal-small-business-plugin/\">Jetpack blog</a>.</p>
<p>To take advantage of this offer, just use the code�<span>SMALLBIZ</span> at checkout, and�of course, if you have any questions, please don�t hesitate to <a href=\"https://jetpack.com/contact-support\">contact us</a>.</p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1931/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1931/\" /></a> <img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1931&subd=akismet&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 May 2017 08:26:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Richard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: Seattle to Host WooConf 2017 in October, Conference to Focus on Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69514\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/seattle-to-host-wooconf-2017-in-october-conference-to-focus-on-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4507:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/05/wooconf.png?ssl=1\"><img /></a></p>
<p><a href=\"https://wooconf.com\" target=\"_blank\">WooConf</a>, the official WooCommerce developer&#8217;s conference, is returning for its third edition October 19-20, 2017. In line with previous years&#8217; events that were hosted in major U.S. tech hubs (San Francisco and Austin), WooConf 2017 will be held in Seattle. The organizing team, which is made up of almost a dozen people from around the world of WooCommerce, is planning for 500 attendees.</p>
<p>WooCommerce downloads have doubled from 12 million in 2016 to 24 million today. The plugin is active on more than 3 million websites and has a strong third-party plugin and theme ecosystem contributing to its growth.</p>
<p>This year&#8217;s speaker lineup will feature more than 30 sessions aimed at developers, along with hands-on workshops. Organizers announced the event with a note that this edition of WooConf will cater specifically to developers:</p>
<blockquote><p>Anyone who runs their business with WooCommerce will enjoy WooConf. However, we�re building out this year�s speaker list and workshops to appeal mainly to freelancers, agencies, WooExperts, and other developers working with WooCommerce on a daily basis.</p>
<p>This includes anyone writing code, designing websites, or working with clients as a project manager or business owner. It also includes those of you who design, customize, and write code for your own store (or lend your services to a friend now and then).</p></blockquote>
<p>Last year&#8217;s conference in Austin included content for both store owners and developers, and attendees were a mixture of experts and casual WooCommerce fans. The organizing team decided that the event could benefit from a more narrow focus.</p>
<p>&#8220;Basically, we realized that we need to focus on either developers or store owners,&#8221; WooConf co-organizer Patrick Rauland said. &#8220;The content at last year&#8217;s WooConf was great. But you can&#8217;t have two priorities.</p>
<p>&#8220;We want to have a conference that&#8217;s remarkable, meaning people talk about it. There are a lot of great WordPress events and a lot of great e-commerce events. We want people to talk about WooConf in both of those circles. And by focusing on one target we hope to achieve that.&#8221;</p>
<p>Speaker submissions are already open and the suggested topics reflect this year&#8217;s developer focus:</p>
<ul>
<li>Running an Agency / Client Relations � Scoping projects, fostering repeat business, keeping projects on track, finding and hiring developers, productizing client functionality and so on.</li>
<li>Extending WooCommerce � Using the REST API, JavaScript frameworks (React &#038; Backbone), case studies on customization, tips and tricks for customizing specific parts of WooCommerce (emails, checkout flow, product pages and so on) and accessibility.</li>
<li>Scaling � Anything from server-side, backend, frontend or case studies</li>
<li>eCommerce Fundamentals � Creating a cohesive experience (between multiple sites, apps, mobile sites, Amazon, etc), personalization, conversion rate optimization</li>
</ul>
<p><a href=\"https://wooconf.com/product/early-bird-ticket/\" target=\"_blank\">Early bird tickets</a> for WooConf are on sale for $499 until July 1 when the price will go up $200.</p>
<p>Organizers will also be hosting the Golden Ticket competition this year, which offers prospective attendees the chance to win an all-expenses-paid trip to the event in Seattle, including travel, accommodation, and admission to the conference. Developers who want to be considered are asked to create a video showing how they use WooCommerce and post it to Instagram. The call for submissions will kick off later this month and the competition has historically been fairly stiff. In 2014, <a href=\"https://woocommerce.com/2014/08/case-study-o-v-e-r-clothing/\" target=\"_blank\">Sinisa from OVER Clothing</a> won out over 2,000 other entrants.</p>
<p>WooConf 2017 will take place at <a href=\"https://www.bellharbor.com/\" target=\"_blank\">Bell Harbor International Conference Center</a>, within walking distance of Pike Place Market, the Space Needle, and many hotels. For the thousands of WooCommerce developers and enthusiasts around the world who are not able to attend, a live streaming option will be available and recorded talks will be published after the event.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 May 2017 02:36:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Akismet: Akismet WordPress Plugin 3.3.1 Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=1928\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://blog.akismet.com/2017/05/02/akismet-wordpress-plugin-3-3-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1383:\"<p>Version 3.3.1 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available.</p>
<p>For a full list of the changes in this release, see the <a href=\"https://plugins.trac.wordpress.org/log/akismet/trunk?action=stop_on_copy&mode=stop_on_copy&rev=1649900&stop_rev=1604754+&limit=100&sfp_email=&sfph_mail=\">revision log</a>, but here are the highlights:</p>
<ul>
<li>A couple of bugs that could cause PHP warnings in the error log have been fixed.</li>
<li>Performance has been improved by preventing some comments-specific code from running on pages without comments.</li>
<li>Both the &#8220;Remove author URL&#8221; and link preview features now work after a comment is Quick Edited in wp-admin.</li>
</ul>
<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p><br />  <a rel=\"nofollow\" href=\"http://feeds.wordpress.com/1.0/gocomments/akismet.wordpress.com/1928/\"><img alt=\"\" border=\"0\" src=\"http://feeds.wordpress.com/1.0/comments/akismet.wordpress.com/1928/\" /></a> <img alt=\"\" border=\"0\" src=\"https://pixel.wp.com/b.gif?host=blog.akismet.com&blog=116920&post=1928&subd=akismet&ref=&feed=1\" width=\"1\" height=\"1\" />\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 May 2017 19:15:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Christopher Finke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Matt: Longreads and Original Journalism\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47299\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://ma.tt/2017/05/longreads-and-original-journalism/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:809:\"<p class=\"simple-headline\"><a href=\"http://www.niemanlab.org/2017/05/amid-the-wreckage-of-fallen-startups-longreads-is-increasing-the-original-reporting-it-funds/\">Amid the wreckage of fallen startups, Longreads is increasing the original reporting it funds</a>:</p>
<blockquote>
<p class=\"simple-headline\">Longreads has raised about $250,000 from �thousands of members� since it added memberships in 2012. The suggested monthly amount is now $5 a month or $50 a year, though readers can choose to donate any amount, and Armstrong said that the company�s gotten some thousand-dollar donations. All of that money now goes to pay authors, and WordPress.com matches every $1 from a reader with an additional $3, which clearly makes it a lot easier for Longreads to do what it wants to do.</p>
</blockquote>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 May 2017 04:52:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: WP Elevation is Focusing All Content on Mental Health for Month of May\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69499\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/wp-elevation-is-focusing-all-content-on-mental-health-for-month-of-may\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4356:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/05/tea.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/04E3HNGAKH\">Jorge Garcia</a>
<p>May is <a href=\"https://en.wikipedia.org/wiki/Mental_Health_Awareness_Month\" target=\"_blank\">Mental Health Awareness Month</a> in the US, dedicated to educating people about mental health and illnesses since 1949. WP Elevation is joining the observance this year with a special emphasis on freelancers and the tech industry. The company, which provides education for WordPress consultants, will be <a href=\"http://www.wpelevation.com/wp-elevation-mental-health-month/\" target=\"_blank\">focusing all of its content on mental health topics</a>, including blogs, podcasts, newsletters, and livestreams.</p>
<p>The WP Elevation podcast will feature interviews with mental health experts on Thursdays throughout May:</p>
<ul>
<li>May 4: Ed Finkler from <a href=\"https://osmihelp.org/\" target=\"_blank\">Open Sourcing Mental Illness</a>, interviewed by Gin McInneny</li>
<li>May 11: Cory Miller from <a href=\"https://ithemes.com/\" target=\"_blank\">iThemes</a>, interviewed by Kristina Romero</li>
<li>May 18: Andrew Pearce from <a href=\"https://www.facebook.com/AnxietyTaskforce/\" target=\"_blank\">Anxiety Free Living</a>, interviewed by Cath Hughes</li>
<li>May 25: Amy Felman � Psychologist and Podcast Presenter of <a href=\"http://weallwearitdifferently.com/\" target=\"_blank\">We All Wear it Differently</a>, interviewed by Mike Killen</li>
</ul>
<p>WP Elevation founder Troy Dean said various employees at the company have been affected by mental health issues and are often conscious of how digital life can keep people separated from each other.</p>
<p>&#8220;I have experienced anxiety and depression in the past &#8211; to the point where I couldn�t get out of bed some days,&#8221; Dean said. &#8220;I work very hard to manage my mental health these days through exercise, family life, and hobbies, as well as working hard in business which I find fulfilling. We will be sharing some of our personal stories on our blog during May.&#8221;</p>
<p>Focusing on mental health topics is a drastic change from WP Elevation&#8217;s normal business topics, but Dean said he hasn&#8217;t even thought about how it might affect the company&#8217;s revenue.</p>
<p>&#8220;We all believe that mental health issues are still weighed down with a certain stigma and we want to encourage people to be more open in having these conversations,&#8221; Dean said. &#8220;I actually don�t care whether it affects my revenue or not. Without good mental health, revenue is meaningless.&#8221;</p>
<p>Working within the WordPress community comes with its own set of unique mental health risks, as many people have their lives deeply embedded in online work. Those who work remotely or by themselves have a greater likelihood of feeling isolated and cut off from others.</p>
<p>&#8220;The digital life can keep us isolated for periods of time as we toil away on our projects in front of our computers,&#8221; Dean said. &#8220;I�ve met a lot of WordPress users over the years at WordCamps who have confided in me that the events are so important because they get to connect with their tribe. I think there is also a risk of online bullying that can make people feel inadequate or ostracized.&#8221;</p>
<p>WP Elevation will be supporting <a href=\"https://osmihelp.org/\" target=\"_blank\">Open Sourcing Mental Illness</a> (OSMI), a non-profit organization dedicated to supporting mental wellness and providing resources for those facing mental illness in the tech community. The company is <a href=\"https://osmihelp.org/donate\" target=\"_blank\">promoting OSMI&#8217;s fundraising campaign</a> throughout the month alongside raising awareness around mental health-related topics.</p>
<p>&#8220;We have no measurable goals for this initiative,&#8221; Dean said. &#8220;It is not part of our marketing plan or some larger scheme for us. We have these conversations on a regular basis internally and some of our members have indicated it would be a good idea to have them publicly, so that�s what this is all about. If we can help one person feel less isolated or find the courage to reach out and ask for help when they need it, I�ll consider it a success.&#8221;</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 May 2017 03:59:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: 10up Releases WP Docker, an Open Source Docker Configuration for Local WordPress Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69468\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"https://wptavern.com/10up-releases-wp-docker-an-open-source-docker-configuration-for-local-wordpress-development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3363:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/02/docker-logo.jpg?ssl=1\"><img /></a></p>
<p><a href=\"https://10up.com/blog/2017/wp-docker/\" target=\"_blank\">WP Docker</a> is a new project from 10up that makes it easy to set up a local WordPress development environment with Docker. Last year 10up worked with <a href=\"https://www.joyent.com/\" target=\"_blank\">Joyent</a>, a cloud infrastructure company, to create a production-ready implementation of WordPress in Docker. After their experience with this project, 10up created WP Docker as a simple, open source development environment based on <a href=\"https://docs.docker.com/compose/\" target=\"_blank\">docker-compose</a>.</p>
<p>Docker is a virtualization technology that allows developers to work on websites and applications in isolated containers. It has many advantages over Vagrant, which takes up a lot more space with each virtual machine having its own operating system included. Docker runs off of a single Linux instance and the containers hold the application and its dependencies.</p>
<p>&#8220;While still viable, VVV, Vagrant, and Virtual Box/Hyper-V take up extreme disk space and are slow to provision, start up, and SSH into,&#8221; 10up Director of Engineering Taylor Lovett said. &#8220;Because of this, engineers tend to use one &#8216;mega&#8217; VVV install for all of their development websites. This workflow poses a number of problems: system service version and configuration &#8216;normalization&#8217; across all projects (i.e. PHP 7 on everything when some projects run PHP 5.6 in production), and legacy clutter (i.e. old websites and system packages undeleted).&#8221;</p>
<p>WP Docker is much more lightweight than VVV and starts up much faster. It comes packaged with Elasticsearch by default, so 10up&#8217;s <a href=\"https://wordpress.org/plugins/elasticpress/\" target=\"_blank\">ElasticPress</a> plugin works out-of-the-box. The environment includes the following technologies by default:</p>
<ul>
<li>PHP7</li>
<li>MariaDB</li>
<li>NGINX</li>
<li>Elasticsearch</li>
<li>Gearman</li>
<li>Memcached</li>
</ul>
<p><a href=\"https://github.com/Varying-Vagrant-Vagrants/VVV\" target=\"_blank\">VVV</a> was started by a former 10up employee, Jeremy Felt, and the company still uses the project for local development in many cases. Certain instances, however, may lend themselves more to using VVV as opposed to WP Docker. Lovett said those include projects that are highly dependent on specific versions of system packages, such as PHP 5.6 and Elasticsearch 5.1.</p>
<p>&#8220;WP Docker lends itself well to enterprise clients that want to version control an environment specifically for their web application to be distributed to developers,&#8221; Lovett said. &#8220;This is common for large clients with large development teams. WP Docker lets a team standardize on a local setup which decreases bugs and &#8216;I see this but you don&#8217;t&#8217; issues.&#8221;</p>
<p>Lovett said teams at 10up are still using VVV more often than WP Docker since it&#8217;s still quite new, but the company plans to let project requirements and team preferences drive adoption. The project is <a href=\"https://github.com/10up/wp-docker\" target=\"_blank\">available on GitHub</a> and has nearly 80 stars less than a week after its release.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 May 2017 19:52:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"BuddyPress: Total Wellness Challenge: Fitness with BuddyPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://buddypress.org/?p=265691\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://buddypress.org/2017/05/total-wellness-challenge-fitness-with-buddypress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9175:\"<div><em>This a guest post by Tara Claeys (<a href=\"https://profiles.wordpress.org/taraclaeys\">taraclaeys</a>) of <a href=\"https://designtlc.com/\">Design TLC, LLC</a>. When she&#8217;s not working, Tara enjoys cycling, running, watching movies and spending time with friends and family.</em></div>
<p>Peer reviewed by <a class=\"bp-suggestions-mention\" href=\"https://buddypress.org/members/boonebgorges/\" rel=\"nofollow\">@boonebgorges</a>.</p>
<p><a href=\"http://twcfit.com/\"><img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/twc.jpg\" alt=\"Total Wellness Challenge site\" width=\"1131\" height=\"619\" class=\"aligncenter size-full wp-image-265694\" /></a></p>
<h2>Background</h2>
<p>Ginny Wright started an outdoor boot camp fitness business, <a href=\"http://bodybyginny.com/\">Body By Ginny</a>,  in Arlington, Virginia in 2003. The business grew and Ginny expanded into nutrition and wellness coaching. As a result, she began offering �Challenges� on printed sheets to her clients a few years later. They could track their daily wellness activities (nutrition, fitness, and mental health) on the sheet, giving themselves points for good behaviors and subtracting points for negative activities. This �game� became popular among her clients, just as online wellness communities started offering similar experiences on websites and apps.</p>
<p>Tara Claeys, a fitness client and friend, offered to help Ginny expand her existing WordPress site by adding a membership component, allow commenting to create interaction between members, and also include the ability for people to track their �Challenge Points� online using a Google Spreadsheet. This was the rudimentary beginning of the online program for her Challenges.</p>
<h2>Implementation</h2>
<p>In 2015, Ginny decided to brand her Challenges and decided to launch a separate website for this program, The <a href=\"https://twcfit.com/\">Total Wellness Challenge</a> (TWC). Her goal was to expand the program beyond her fitness clients and to offer branded Challenges for corporate wellness programs. Tara worked with her to create a multisite installation with BuddyPress and  MemberPress that would have:</p>
<ul>
<li>Subsites for individual, private Challenges in corporate and other groups</li>
<li>Restricted access to Challenges for members only</li>
<li>Allow a �Reflections� commenting page for Challengers to interact with each other</li>
<li>Point Logging for 3 components of the Challenge
<ul>
<li>Limit submission to same day after 8pm until next day until 5pm. </li>
<li>Allow users to select one day to be a �Free� day where they would receive the maximum nutrition score, no matter what they ate</li>
<li>Add a �bonus� point automatically if a user logs 5 consecutive 12-point days</li>
<li>Show points for all Challengers on a Totals Page</li>
<li>Limits to only one entry per user per day</li>
<li>Each category (nutrition, fitness, lifestyle) has limit on max points per day </li>
<li>Ability for admin to edit user points on the back end</li>
</ul>
</li>
</ul>
<p>Tara hired <a href=\"https://twitter.com/tomaransom?lang=en\">Tom Ransom</a> of <a href=\"https://www.1bigidea.com/\">One Big Idea</a> to help develop a custom plugin that would connect MemberPress with BuddyPress. They chose BuddyPress because is primed for multisite configuration, it worked well with MemberPress, and is very customizable. Plus, the BuddyPress Groups functionality was a good fit for the separate Challenges. For TWC, each Challenge is a unique BuddyPress Group, set up on the front end by the admin. </p>
<p>The TWC is a point-logging game at its core. Participants keep track of their activity throughout each day for about 4 weeks and must log in to the website each day to record their points. There are 3 components of the Challenge:</p>
<p><img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/groups-1024x313.png\" alt=\"TWC groups\" width=\"700\" height=\"214\" class=\"aligncenter size-large wp-image-265695\" /></p>
<p><strong>1. Nutrition</strong>: Players can earn up to 12 points per day. Everyone starts the day with 5 points, and can gain points for positive food choices, such as avoiding white flour, eating 3 cups of greens and drinking a specified amount of water based on their weight. Players lose points for unhealthy choices, such as eating too much sugar, eating processed foods, and consuming more than one serving of beer or wine.</p>
<p><strong>2. Fitness</strong>: Players can earn up to 2 points per day. They earn one point for doing 30 minutes or more of exercise per day and another point for stretching for at least 10 minutes.</p>
<p><strong>3. Lifestyle</strong>: Players earn one point for posting a daily Reflection on the twcfit.com website, and a second point for participating in the lifestyle challenge of the week. Each week, a different lifestyle activity is listed, including behaviors such as noting 3 things you are grateful for each day, getting 7 hours of sleep, or doing an act of kindness for someone. A maximum of 2 lifestyle points can be earned each day.</p>
<p><img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/bbg-log-886x1024.jpg\" alt=\"Log Points\" width=\"700\" height=\"809\" class=\"aligncenter size-large wp-image-265720\" /></p>
<p>The participant can go to the Totals page to check their score against other players.</p>
<p><img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/totals-1024x466.png\" alt=\"Totals page\" width=\"700\" height=\"319\" class=\"aligncenter size-large wp-image-265697\" /></p>
<p>Tom�s plugin includes code that directs the PayPal IPN to the respective subsite for MemberPress (MP) purchases. In addition, this plugin adds the new MP user into the corresponding BuddyPress group once the MP transaction was returned compete. (twc-fit-challenges-member-management.php)</p>
<p><img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/twc-customplugin.png\" alt=\"TWC custom plugin\" width=\"884\" height=\"712\" class=\"aligncenter size-full wp-image-265698\" /></p>
<p>Other components of the custom plugin include:</p>
<ul>
<li>buddypress.php: sets up BuddyPress (message for logged out users, custom date picker)</li>
<li>Challenges-bp-points.php: Extends BP Group functionality: add_points =&gt; adds to database</li>
<li>admin-menu-points &#8212; UI for front end</li>
<li>admin-points &#8212; Doing work</li>
<li>admin-menus &#8212; puts nav in Dashboard</li>
<li>twcfit-challenges.php &#8212; timezones &#8211; offset GMT, returns city timezone (php only reads city)</li>
</ul>
<p>In addition, a separate twc-utility plugin hides some BuddyPress content that is not needed and redirects login to BuddyPress.</p>
<p>Tara customized the style sheets and some BuddyPress theme files to add a custom button to the BuddyPress Group page, and edited the BuddyPress navigation and styles. For example:</p>
<ul>
<li>activity &gt; post-form.php customized �What is your reflection for the xx Challenge today, name?�</li>
<li>groups &gt; single &gt; group-header.php &#8212; Adds RESOURCES button to header<br /><img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/bp-customization.jpg\" alt=\"BuddyPress Customization\" width=\"235\" height=\"139\" class=\"alignnone size-full wp-image-265719\" />
</li>
</ul>
<p>The site also uses the  BuddyPress Custom Profile Menu and Custom User Profile Photo plugins.</p>
<h2>Current Status</h2>
<p>Over the past 13+ years, Ginny has hired 4 instructors, expanded her business to McLean, Virginia, and wrote the �<a href=\"http://bodybyginny.com/good-food-recipe-book-by-ginny-wright/\">Good Food Recipe Book</a>� which is available for sale on her website.  At this time, Ginny is still deciding whether she wants to invest in marketing Total Wellness Challenge or keep it small, mostly based on word of mouth. The increased competition in this space has made it harder to gain exposure without a large marketing budget.</p>
<p>The <a href=\"https://twcfit.com/\">Total Wellness Challenge</a> website has been running well for a little over a year. Six Challenges have been conducted so far, and participants have loved interacting with each other. Tara and Tom are happy with the positive feedback on their customized �gamification� of BuddyPress and how it has helped provide additional clients and exposure for Ginny�s outdoor boot camps. </p>
<div>
<img src=\"https://buddypress.org/wp-content/uploads/1/2017/05/taraclaeys.jpeg\" alt=\"Tara Claeys\" width=\"150\" height=\"150\" class=\"alignleft size-full wp-image-265693\" /> <em><a href=\"https://profiles.wordpress.org/taraclaeys\">Tara Claeys</a> of <a href=\"https://designtlc.com/\">Design TLC, LLC</a> provides custom website and graphic design services, with a focus on creating effective, clean and personal communication platforms for small businesses. Tara has a marketing background, combined with design and website coding expertise. Tara is the proud recipient of the Arlington Chamber of Commerce 2016 &#8220;Best Technology Business Award.&#8221;<br />
Links: <a href=\"https://twitter.com/design_tlc\">Twitter</a>, <a href=\"https://www.linkedin.com/in/taraclaeys\">Linkedin</a> </em>
</div>
<p>&nbsp;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 May 2017 15:50:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"@mercime\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:11:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"HeroPress: Scholarship Update\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=1771\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://heropress.com/scholarship-update/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2731:\"<img width=\"960\" height=\"639\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/04/ipad-uandr-1-1024x682.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Two hands holding an ipad so we can see the screen.\" /><p>The <a href=\"https://heropress.com/up-running-scholarship-heropress-wpshout/\">Up and Running Scholarship</a> has been open for 10 days now, with 9 more to go! We&#8217;ve gotten many applications, from all of the world. �I&#8217;ve been really pleased with the diversity of the applicants. They really are all over the map, both in location and gender.</p>
<p>Several people have come to me privately asking if they should apply, if perhaps they&#8217;re too privileged to qualify. I&#8217;ve encouraged everyone to apply. We have some very wise�people on the selection board, and I have no doubt they&#8217;ll make sure the winners are the best fit.</p>
<p>Good wishes to all!</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Scholarship Update\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Scholarship%20Update&via=heropress&url=https%3A%2F%2Fheropress.com%2Fscholarship-update%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Scholarship Update\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fscholarship-update%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fscholarship-update%2F&title=Scholarship+Update\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Scholarship Update\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/scholarship-update/&media=https://heropress.com/wp-content/uploads/2017/04/ipad-uandr-1-150x150.png&description=Scholarship Update\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Scholarship Update\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/scholarship-update/\" title=\"Scholarship Update\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/scholarship-update/\">Scholarship Update</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 May 2017 13:59:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"Post Status: Maintaining Legacy WordPress Websites � Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=36610\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://poststatus.com/maintaining-legacy-wordpress-websites-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1903:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Joe Hoyle &#8212; the CTO of Human Made &#8212; and Brian Krogsgard.</p>
<p>Brian and Joe discuss many of the factors that are a part of maintaining a website for the long term. They discuss it both in the sense of when you own the site (like Brian with Post Status), and when you are doing long-term client work (like Human Made with retainers).</p>
<p>There are several things to consider, whether it�s in your own code, or the decisions you make on which third party developer�s tools to use.</p>
<p><!--[if lt IE 9]><script>document.createElement(\'audio\');</script><![endif]-->
<a href=\"https://audio.simplecast.com/68341.mp3\">https://audio.simplecast.com/68341.mp3</a><br />
<a href=\"https://audio.simplecast.com/68341.mp3\">Direct Download</a></p>
<h3>Links</h3>
<ul>
<li><a href=\"http://semver.org/\">Semantic Versioning</a></li>
<li><a href=\"https://woocommerce.wordpress.com/2017/04/04/say-hello-to-woocommerce-3-0-bionic-butterfly/\">WooCommerce 3.0 and moving to SemVer</a></li>
</ul>
<h3>Sponsor: SearchWP</h3>
<p>SearchWP makes WordPress search better. Instantly improve your site search without writing a line of code! SearchWP enables custom algorithms, searching custom fields, product data, and much more. Improve your site�s search today with our newest partner, <a href=\"https://searchwp.com\">SearchWP</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 30 Apr 2017 14:31:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:11:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"HeroPress: HeroPress Geography: Eastern Europe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=1766\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://heropress.com/heropress-geography-eastern-europe/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3924:\"<img width=\"960\" height=\"399\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/04/heropress_eastern_europe-1024x426.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Google map of eastern Europe.\" /><p>I don&#8217;t have nearly as many countries from Eastern Europe as I&#8217;d like. �The ones I do have are along the western edge. Several of the countries represented have more than one essay from them.</p>
<p>Also of note, the first HeroPress essay ever came from Ukraine, and is listed here.</p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/finding-your-place/\">Finding Your Place</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/wordpress-mantra-mine/\">The WordPress Mantra Is Mine Too</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/really-no-excuse/\">You Really Have No Excuse</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/taking-chance-wordpress/\">Taking A Chance With WordPress</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/rebirth/\">Rebirth</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/growing-a-business-in-europe-with-wordpress/\">Growing a Business in Europe with WordPress</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/even-crisis-has-options/\">Even Crisis Has Options</a></p></blockquote>
<p></p>
<blockquote class=\"wp-embedded-content\"><p><a href=\"https://heropress.com/essays/blogging-solopreneurship-terrorism/\">Blogging, Solopreneurship, &#038; Terrorism</a></p></blockquote>
<p></p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: HeroPress Geography: Eastern Europe\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=HeroPress%20Geography%3A%20Eastern%20Europe&via=heropress&url=https%3A%2F%2Fheropress.com%2Fheropress-geography-eastern-europe%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: HeroPress Geography: Eastern Europe\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fheropress-geography-eastern-europe%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fheropress-geography-eastern-europe%2F&title=HeroPress+Geography%3A+Eastern+Europe\" rel=\"nofollow\" target=\"_blank\" title=\"Share: HeroPress Geography: Eastern Europe\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/heropress-geography-eastern-europe/&media=https://heropress.com/wp-content/uploads/2017/04/heropress_eastern_europe-150x150.png&description=HeroPress Geography: Eastern Europe\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: HeroPress Geography: Eastern Europe\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/heropress-geography-eastern-europe/\" title=\"HeroPress Geography: Eastern Europe\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/heropress-geography-eastern-europe/\">HeroPress Geography: Eastern Europe</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 29 Apr 2017 22:45:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Shopify Discontinues Its Official Plugin for WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69415\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/shopify-discontinues-its-official-plugin-for-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2735:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/04/shopify-logo.jpg?ssl=1\"><img /></a></p>
<p><a href=\"https://wordpress.org/plugins/shopify-ecommerce-shopping-cart/\" target=\"_blank\">Shopify&#8217;s official plugin for WordPress</a> was removed from the plugin directory this week. The plugin allowed users to create &#8220;Buy Buttons&#8221; for products from their Shopify stores and insert them into WordPress posts and pages using a shortcode. It was built by <a href=\"https://webdevstudios.com/\" target=\"_blank\">WebDevStudios</a> and had approximately 9,000 active installations before it was removed.</p>
<p>Shopify&#8217;s <a href=\"https://help.shopify.com/manual/sell-online/buy-button/wordpress-for-shopify\" target=\"_blank\">documentation</a> says the plugin has been discontinued and will not be supported after June 30, 2017. WordPress users who want to display Shopify products on their sites are now instructed to <a href=\"https://help.shopify.com/manual/sell-online/buy-button/create-buy-button\" target=\"_blank\">create a Buy Button for a product or collection</a> and paste the embed code into WordPress instead.</p>
<p>The WordPress plugin team would not comment on why the plugin was removed, but a support representative from Shopify said it was outdated and difficult to maintain.</p>
<p>&#8220;The reason it was removed is that it was being replaced by Buy Button, which is a better way of selling in WordPress,&#8221; Shopify customer support representative Jacquelyn Failano said. &#8220;The WordPress plugin was built by a third party and even if we support it, it could break at any time as we make future updates to the Buy Button channel.&#8221;</p>
<p>Failano said that by switching from using the plugin to creating Buy Buttons with Shopify, users will have access to updated features, including fonts, colors, layouts, buttons, and multiple images on variants. Merchants will also be in a better position to take advantage of future updates.</p>
<p>&#8220;The plugin uses older code and methods that will no longer be updated or supported,&#8221; Failano said. &#8220;There is no longer a dedicated development team for it. This means that there are no resources to maintain or rebuild the plugin.&#8221;</p>
<p>Failano would not confirm whether or not the plugin was removed from the directory by Shopify at the company&#8217;s discretion or whether it was forcibly removed by WordPress for a violation of the guidelines.</p>
<p>&#8220;I&#8217;m afraid I cannot confirm on that part &#8211; the main reason why it was discontinued was because the plugin uses older code and methods that will no longer be updated or supported,&#8221; Failano said.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 28 Apr 2017 02:02:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: How the San Francisco WordPress Meetup is Using Open Collective to Fund Activities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69286\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/how-the-san-francisco-wordpress-meetup-is-using-open-collective-to-fund-activities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5065:\"<p>In 2016, WordPress meetups had the fastest growth the community has seen in five or six years with more than 62,566 people attending in 58 different countries. Meetups are the seeds of future WordCamps. These local gatherings help users further their WordPress skills and underpin the community&#8217;s growth across the globe.</p>
<p>Funding a local meetup can be a challenge, as organizers often have to seek out sponsors just like a WordCamp but at a smaller scale. The San Francisco WordPress meetup (WPSFO) is trying something new by publicly managing its budget and expenses with <a href=\"https://opencollective.com/wordpress-sf\" target=\"_blank\">Open Collective</a>. Last week we featured the service in an <a href=\"https://wptavern.com/open-collective-is-a-new-transparent-way-to-fund-open-source-projects\" target=\"_blank\">article</a> and WPSFO lead organizer Shannon Dunn commented on his meetup&#8217;s experience with it so far.</p>
<p>&#8220;It creates a level of transparency for the whole community and lets current and prospective customers understand where the money goes,&#8221; Dunn said. &#8220;I&#8217;d say we&#8217;re pretty happy with it and it&#8217;s an integral part of managing our meetup.&#8221;</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/04/wpsfo.png?ssl=1\"><img /></a></p>
<p>Dunn started attending and helping out with WPSFO in 2011 and stepped up to be lead organizer at the beginning of 2016. Former lead organizer Zach Berke, who started in 2007, was the one who initially suggested the idea of using Open Collective.</p>
<p>&#8220;Before we started with Open Collective, sponsors paid for things directly,&#8221; Dunn said. &#8220;We&#8217;ve had various host sponsors (Automattic, Exygy, Pantheon) that have provided meeting space, food, and drinks. These hosts have always paid for the food directly. We also had a relationship with WPEngine at one point. They paid a videographer to film the meetups. All other expenses, usually for minor things, were paid for by the organizers.&#8221;</p>
<p>Dunn said that Open Collective has helped to reduce the out-of-pocket expenses for meetup organizers, as it provides a straightforward process for posting expenses and getting reimbursed.</p>
<p>&#8220;Funding a meetup can be pretty tough,&#8221; Dunn said. &#8220;It&#8217;s great that we have hosts to cover the big items, but various other expenses come up. Those small things are usually paid for by the organizers. Also, there are times when one of our primary hosts can&#8217;t provide a space to meet. We have several alternative meeting spaces but not all of them provide food and drinks. On those occasions, organizers have paid for the food and drink out of pocket. We could have gone without, but we try to keep each meetup a consistent experience.&#8221;</p>
<p>Dunn said the team wanted to cover these costs without digging into the pockets of the organizers, who already volunteer a lot of time and energy to the meetup. They do not charge for the events and don&#8217;t plan on doing it in the future, so having additional funds on hand became a priority.</p>
<p>&#8220;Pia from Open Collective reached out to Zach about a year ago,&#8221; Dunn said. &#8220;Zach had a prior relationship with another OC founder, Xavier, from his early Storify days. Zach agreed to sign up for OC because it seemed to address a pain point. Zach handed the reins of OC to Michelle and I, who have brought sponsors onto the platform.&#8221;</p>
<p>Dunn said using Open Collective has had many positive advantages over the previous system WPSFO had for managing funds. Receiving donations and submitting expenses is now streamlined into a transparent pipeline. The meetup has an estimated annual budget of $6,658, based on current donations.</p>
<p>&#8220;Being able to provide recognition to our sponsors is a big plus,&#8221; Dunn said. &#8220;It&#8217;s worth noting that this is a young and ever-evolving platform so with that you&#8217;re provided direct access to Open Collective&#8217;s front line, which is beneficial in addressing any questions or concerns that arise.&#8221;</p>
<p>Dunn said using Open Collective has opened up additional possibilities, like making WPSFO t-shirts to sell to members and the general public. Having money in the meetup account means the organizers can do it without having to pre-sell the shirts.</p>
<p>&#8220;It&#8217;s not like we&#8217;re floating in cash now, but we have little bit of money to work with,&#8221; Dunn said. &#8220;It feels great to have that and we&#8217;re deeply appreciative of our sponsors for making it possible.&#8221;</p>
<p>WPSFO is one of <a href=\"https://opencollective.com/discover?show=meetup\" target=\"_blank\">23 meetups</a> that have started managing their budgets and funds through Open Collective. Other early adopters of the service include multiple WWCode meetups, Women Who Code Atlanta, and SF Data Science Meetup, with budgets ranging from a few hundred dollars to more than $25,000.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Apr 2017 18:55:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: WordCamp US 2017 Ramps Up Ticket Sales, Organizers Plan for 2,500 Attendees\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69357\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/wordcamp-us-2017-ramps-up-ticket-sales-organizers-plan-for-2500-attendees\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2418:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/04/wordcamp-us-nashville.jpeg?ssl=1\"><img /></a></p>
<p>Promotion for <a href=\"https://2017.us.wordcamp.org\" target=\"_blank\">WordCamp US 2017 in Nashville</a>, December 1-3, is now in full swing, as organizers have ramped up social media efforts to stimulate ticket sales. Instead of releasing batches of tickets in stages, all WordCamp US tickets are on sale at once.</p>
<p>&#8220;Our goal is to sell between 2,000 and 2,500, but we could accommodate more,&#8221; marketing lead Laura Byrne-Cristiano said. &#8220;We will also again have a livestream that is fully closed captioned as it was the last two years. Folks who can&#8217;t make it to Nashville from around the globe can see what&#8217;s happening in real time.&#8221;</p>
<p><a href=\"http://www.nashvillemusiccitycenter.com/\" target=\"_blank\">Music City Center</a> was selected as the official venue. It is within walking distance to several of the city&#8217;s attractions and museums. Last week organizers announced <a href=\"https://2017.us.wordcamp.org/2017/04/21/renaissance-nashville-wcus-2017-official-hotel/\" target=\"_blank\">The Renaissance Nashville Hotel</a> as the official hotel for the event, which is also within walking distance of the venue and will offer a special discounted rate for attendees.</p>
<p>&#8220;At this stage of the game, ticket sales are light which is to be expected with an event is that is eight months out,&#8221; Byrne-Cristiano said. The team plans to release more specific numbers in the fall once the full slate of speakers has been announced. Byrne-Cristiano said speaker submissions will be open within the next few days.</p>
<p>&#8220;While we would like to see every seat filled, our focus is on putting together a high quality camp for the community,&#8221; Byrne-Cristiano said.</p>
<p>You can sign up on the <a href=\"https://2017.us.wordcamp.org/\" target=\"_blank\">WordCamp US website</a> to subscribe to the latest news for the event or follow <a href=\"https://twitter.com/WordCampUS/\" target=\"_blank\">@WordCampUS</a> on Twitter. If you have an Android device, check out the <a href=\"https://play.google.com/store/apps/details?id=org.wordcamp.android&rdid=org.wordcamp.android\" target=\"_blank\">WordCamp Android app</a> to add the event to your calendar and follow updates on speakers and the schedule.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 27 Apr 2017 03:26:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:115:\"WPTavern: Watsonfinds WordPress Plugin Uses IBM�s Watson to Determine Most Likely Emotional Response From Readers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69392\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wptavern.com/watsonfinds-wordpress-plugin-uses-ibms-watson-to-determine-most-likely-emotional-response-from-readers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3557:\"<p>One of the most difficult things about writing online is expressing tone and emotion. Emoticons and Emoji help, but what if there was a tool that uses artificial intelligence to determine the emotional response readers are most likely to have after consuming your content?</p>
<p>That&#8217;s the idea behind <a href=\"https://wordpress.org/plugins/watsonfinds/\">Watsonfinds</a>, a free WordPress plugin created by Alfredo Guti�rrez and Max Ortu. Using a complex algorithm, Watsonfinds uses <a href=\"https://www.ibm.com/watson/\">IBM&#8217;s Watson</a> to understand content like a human by reading and interpreting complete sentences, the reader�s language, and its context.</p>
<p>Once activated, a new button is added to the editor toolbar. Clicking the button will send the content through an API to IBM&#8217;s Watson for analysis.</p>
<p><img />Watsonfinds Toolbar ButtonWhen an analysis is completed, the results are displayed in a modal window. The report is broken down into five emotions: joy, sadness, anger, disgust, and fear.</p>
<p><img />Watsonfinds AnalysisI submitted five posts of various length and each report was generated quickly. Here are the posts I submitted along with the most likely emotional response from readers.</p>
<ul>
<li><a href=\"https://wptavern.com/automattic-to-close-san-francisco-office\">Automattic to Close San Francisco Office</a> &#8211; Sadness</li>
<li><a href=\"https://wptavern.com/new-wordpress-plugin-shows-users-where-a-plugins-settings-link-is-upon-activation\">New WordPress Plugin Shows Users Where a Plugin�s Settings Link Is Upon Activation</a> &#8211; Sadness</li>
<li><a href=\"https://wptavern.com/wordpress-4-7-4-fixes-visual-editor-incompatibility-with-upcoming-version-of-chrome\">WordPress 4.7.4 Fixes 47 Issues</a> &#8211; Sadness</li>
<li><a href=\"https://wptavern.com/heropress-partners-with-wpshout-to-offer-wordpress-education-scholarships\">HeroPress Partners With WPShout to Offer WordPress Education Scholarships</a> &#8211; Joy</li>
<li><a href=\"https://wptavern.com/headway-themes-appears-to-be-dying-a-slow-death\">Headway Themes Appears to be Dying a Slow Death</a> &#8211; Anger</li>
</ul>
<p>Within the report is a timeline where you can compare results as you add or remove words to the post.</p>
<p>During testing, I found the timeline confusing to use as I thought I had to save the post as a draft after each edit to generate a revision on the timeline. To use the timeline, you need to make changes to a post without saving it and then click the Watsonfinds button to generate a new report.</p>
<p>Being able to see which words are generating the emotions depicted in the report would be a nice feature to have. Guti�rrez says that this feature is in the works and will be in the commercial version of the plugin. The More Insights tab in the report is an advertisement for the premium version which is not yet available.</p>
<p>I tested the plugin on WordPress 4.7.4 and didn&#8217;t encounter any issues. While Watsonfinds isn&#8217;t going to change how I write, I can see the potential benefits of using such a plugin to try to illicit a certain emotional response from readers and customers whether it&#8217;s a renewal email, blog post, or other copy.</p>
<p>You can try out <a href=\"https://wordpress.org/plugins/watsonfinds/\">Watsonfinds</a> for free by downloading it from the WordPress plugin directory. To learn more about how it works, check out the <a href=\"http://www.watsonfinds.com/\">plugin&#8217;s official site</a>.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Apr 2017 23:48:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"WPTavern: 2017 Open Source Security and Risk Analysis Report Shows Widespread GPL License Conflicts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69137\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:110:\"https://wptavern.com/2017-open-source-security-and-risk-analysis-report-shows-widespread-gpl-license-conflicts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8963:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2015/06/open-source.jpg?ssl=1\"><img /></a>photo credit: <a href=\"http://www.flickr.com/photos/79777096@N00/6866996865\">16th st</a> &#8211; <a href=\"https://creativecommons.org/licenses/by-nd/2.0/\">(license)</a>
<p>Open source software usage is growing across all industries, but this year&#8217;s <a href=\"https://www.blackducksoftware.com/download/open-source-security-risk-analysis-2017\" target=\"_blank\">Open Source Security and Risk Analysis (OSSRA)</a> report from Black Duck shows the pervasiveness of security vulnerabilities and license compliance risks. Black Duck conducted audits on more than 1,000 commercial applications in 2016 and analyzed the anonymized data. The audits were primarily related to merger and acquisition transactions but span a wide array of industries, such as healthcare, manufacturing, financial services, aerospace, aviation, and retail.</p>
<p>Open source security and license compliance issues can both pose serious financial threats to a company. Black Duck&#8217;s findings show 96% of applications scanned include open source software and the average app included 147 unique open source components. The majority of these applications (67%) contained security issues which have been publicly known for an average of four years. These included high-risk and well-known vulnerabilities such as Poodle, Freak, Drown, and Heartbleed.</p>
<p>License compliance issues were even more widespread than the security issues. Black Duck&#8217;s audits found 85% of the applications had components with license conflicts. Although 75% of the audited applications included GPL-licensed components, only 45% of them were fully in compliance with the license. The audits also revealed that 53% of the scanned applications had components with &#8220;unknown&#8221; licenses, which generally means the components were used without permission from their creators.</p>
<h3>How GPL Compliance Efforts Affect the Future of the Copyleft Ecosystem</h3>
<p>Stephen O&#8217;Grady&#8217;s recent <a href=\"http://redmonk.com/sogrady/2017/01/13/the-state-of-open-source-licensing/\" target=\"_blank\">article</a> on Redmonk.com hails the decline of GPL, referencing repositories surveyed by Black Duck that demonstrate the once-dominant GPL license is &#8220;steadily eroding, giving way to licenses at the opposite, permissive end of the spectrum.&#8221; Although developers and companies are readily embracing open source software, the trend is towards more permissive licenses.</p>
<p>&#8220;In Black Duck�s sample, the most popular variant of the GPL � version 2 � is less than half as popular as it was (46% to 19%),&#8221; O&#8217;Grady said. &#8220;Over the same span, the permissive MIT has gone from 8% share to 29%, while its permissive cousin the Apache License 2.0 jumped from 5% to 15%.&#8221;</p>
<p>In a reaction <a href=\"https://opensource.com/article/17/2/decline-gpl\" target=\"_blank\">article on Opensource.com</a>, Jono Bacon said he has witnessed this same trend with the GPL falling out of favor in terms of practicality for business owners who are uncomfortable with meeting its black and white demands.</p>
<p>&#8220;In recent years though we have seen a newer generation of developers form for whom there is a less critical, and if I dare say it, less religious focus on freedom,&#8221; Bacon said. &#8220;For them, open source is a pragmatic and practical component in building software as opposed to an ethical choice, and I suspect this is why we have seen such a growth in the use of MIT and Apache licenses.&#8221;</p>
<p>The complexity of compliance is one of the chief drawbacks for those who feel uncomfortable using GPL-licensed code. If Black Duck&#8217;s open source application audits are any indication, commercial adoption of the GPL has not come with adequate education on license compliance.</p>
<p>However, GPL enforcement rarely leads to litigation. In an article that outlines the Free Software Foundation&#8217;s (FSF) stance on <a href=\"https://www.fsf.org/bulletin/2016/fall/the-role-of-lawsuits-in-gpl-compliance\" target=\"_blank\">the role of lawsuits in GPL compliance</a>, Donald Robertson said compliance is almost always an educational matter.</p>
<p>&#8220;Most violators are unaware of their obligations under the license and simply need additional help to come into compliance,&#8221; Robertson said. &#8220;Almost all GPL compliance cases end quietly with the violator correcting their mistakes, with only a minimal notification of past recipients of the then-violating distribution that anything has happened.&#8221;</p>
<p>Robertson emphasized that lawsuits should be a last resort but must remain a legitimate option. FSF&#8217;s compliance efforts focus on educating violators, but the organization reserves the right to take action on those who knowingly choose to violate.</p>
<p>&#8220;The threat of litigation provides leverage that we need with the rare violators whose GPL compliance problems are not merely mistakes, but are intentional attempts to limit their users&#8217; freedom,&#8221; Robertson said. &#8220;While compliance work is primarily educational, we need a tool that can work with the rare few who are already educated but chose to violate anyway. Copyleft was designed from the start to serve as that tool.&#8221;</p>
<p>Software Freedom Law Center president and executive director Eben Moglen spoke at the SFLC&#8217;s conference last October about <a href=\"https://www.linux.com/news/eben-moglen-gpl-compliance-and-building-communities-what-works\" target=\"_blank\">open source license compliance</a>. He urged listeners to consider the perception of the GPL in the industry at large when weighing the costs of litigating compliance.</p>
<p>&#8220;We are not and we never were copyright maximalists,&#8221; Moglen said. &#8220;We did not do what we have been doing for the past 30 years to build free software on the basis of the assumption that freedom required us to chase down and punish everybody who ever made a mistake or who even deliberately misused copyrighted software made for sharing.&#8221;</p>
<p>Moglen said that in situations where it is appropriate to make an example, it is important to declare that you are in a last-resort situation with no other options besides litigation. Securing compliance by force can damage companies&#8217; trust in using the GPL.</p>
<p>&#8220;If Richard Stallman and I had gone to court and sued a major global public company on a claim of copyright infringement that was weak enough to be thrown out of court on a motion to dismiss, we would have destroyed the GPL straightaway,&#8221; Moglen said. &#8220;If we had shown that we were prepared to risk large on coercion, even against a bad actor in our own judgement � if we had done that without adequate preparation to be sure that we won &#8211; we would have lost an example of coercion and nobody would have trusted us again.&#8221;</p>
<p>Moglen cautioned listeners not to be too quick to take action that might cause people to question whether there is something wrong with copyleft. He advocated spontaneous compliance, as opposed to constantly policing violations, as the most effective way to ensure the future of the GPL.</p>
<p>&#8220;We have an opportunity to put this free software where we want it, which is everywhere, and to make it do what we want, which is to spread freedom,&#8221; Moglen said. &#8220;We�re not in a place where the difficulty is how do we get enough ammunition to force everybody to comply. We don�t need ammunition. We need diplomacy. We need skill. We need to work together better. We need to understand how that working together purposively brings us to the point where everyone is not afraid of FOSS anymore and we are not worried about their complying anymore. We are just all engaging and leading the task of making free software.&#8221;</p>
<p>Moglen encouraged diplomacy and discretion when it comes to compliance because the long-term credibility of the free software community is at stake.</p>
<p>&#8220;I agree with the people who have suggested that if a campaign of coercive compliance is carried just a moment too far, willingness to use copyleft among the ?rational businesses of the world will decline to a point which is dangerous to freedom,&#8221; Moglen said. &#8220;Because I do believe that copyleft is important to freedom.&#8221;</p>
<p>While Black Duck&#8217;s recent audits show that companies struggle with open source risk management and license conflicts are rampant, the good news is that the world is embracing open source software in every industry. Engineers and product managers may not have a full grasp of the requirements of the GPL, but a compliance approach that focuses on education will go a long way towards building a future that includes copyleft software at the core of innovation.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Apr 2017 21:43:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"HeroPress: Hire More Women Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=1739\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://heropress.com/essays/hire-women-developers/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10706:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2018/04/042617-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Rarely is a developer or engineer pictured as being female or looking like me. We need to change that.\" /><blockquote><p>The journey of a Developer that has the pleasure and gratitude of having WordPress as a resource.</p></blockquote>
<h3>Who am I and am I good?</h3>
<p>We define ourselves in order to navigate life. Like we brand our business or our clients� websites, we brand ourselves. Remember to define yourself, because others are always going to define you. Be true to yourself.</p>
<p>I recall the scene in the movie starring Audrey Hepburn and Rex Herrington where he�s improving her social standing. At the end his manners are called into question. He says,</p>
<p>�You see, the great secret, Eliza, is not a question of good manners or bad manners, or any particular sort of manners, but having the same manner for all human souls. The question is not whether I treat you rudely, but whether you�ve ever heard me treat anyone else better.�</p>
<p>We are all the same, yet different. We all hurt and desire, yet what we are motivated by may be different. Be true to yourself to follow what you know is meant for you. Trust in the journey. For it is the journey, not the destination, that not only makes up one�s day, but ultimately defines us once we have arrived!</p>
<h3>Embrace Your Uniqueness</h3>
<p>When I was in sixth grade, the yearbook asked us what we would like to accomplish. While most of the girls wrote modeling or acting (we are in Southern California after all), I wanted to discover a new animal.</p>
<p>Discovery has always been one of my passions. WordPress has been a way to discover new ways to combine code to �make things happen� by creating plugins. WordPress has provided a place to practice the developer&#8217;s craft. I�m a working dev and I have a lot of gratitude to give the WordPress community.</p>
<p>I have been given time, support, and much patience. The Meetups have provided a place to gain the ground work, providing an awareness of current tech issues and best practices to put in place, to ensure site performance.</p>
<p>&#8220;It takes courage to try and fail and fail again. Practice the art of asking lots of questions.&#8221; Remember, �sometimes it is the people who no one imagines anything of, that do the things that no one could imagine.� So even if someone questions your work, whether you could ever possibly have done that or do that, keep going.</p>
<h3>Stereotypes</h3>
<p>Imagine an engineer writing a program, a developer creating an application, and a social media specialist crafting creative content. Do you see them at their desks? What does the engineer look like? What does the developer look like? Did you picture them as a female? Typically not. Perhaps the one crafting creative content was pictured as female.</p>
<blockquote><p>Rarely is a developer or engineer pictured as being female or looking anything like me. We need to change that.</p></blockquote>
<p>It�s been proven that when given identical resumes with name either David or Maria, the hiring committee will determine David to be identified as more qualified every time. Maria�s accomplishments had to be two times better before she is seen as equally qualified as David.</p>
<p>We, both men and women, hold �implicit biases.&#8217; It is a cultural thing. Men are seen as a more qualified developer. Acknowledging this is the first step.</p>
<p>What can we do to help turn this around? First, let�s visit why we should turn this around.</p>
<h3>Reason for Diversity (Focusing on Women in Engineering)</h3>
<p>We are facing real, large complex problems as a community that requires developers to figure out. Specifically, in the WordPress world, we need a platform, as well as themes and plugins, that appeals to a large audience. True innovation requires a diverse team. It will ensure that different viewpoints, ideas, and solutions are discovered.</p>
<p>Women are an asset to the team, especially in the role of developer. Consider the fact that many women are making the buying decisions. A woman developer helps create a product that appeals to a larger audience, which ultimately affects sales. Female developers bring insight to the possibilities of products that are currently missing and overlooked.</p>
<p>How do we change this? Hire more women developers. Make it a point to include, describe, and depict developers as women in marketing materials. Encourage women to apply for developer positions.</p>
<blockquote><p>If you�re female reading this and you like to problem solve and build things, give development a try.</p></blockquote>
<p>Just because things are the way they are doesn�t mean they have to stay that way. Typically, women aren�t developers but that can change. WordPress is a community where women developers thrive. WordPress is stronger as a community because of its diversity of users and creators. We all benefit from diversity. By having diversity within our community, we grow. We build. Ultimately, we create more opportunity for all.</p>
<h3>Some Obstacles Facing Women In STEM</h3>
<p>Woman as developers are viewed as being different. Many are questioned why they are doing this. Women will even be treated at as if they shouldn�t be there. Women are conditioned from a young age to be princesses, not engineers.</p>
<p>Developers are competitive, like great writers. Competitiveness for the best projects is part of the game. This game is not something that females are �taught� or necessarily have experience in. Men joke with each other differently than women do. Entering the environment from a female perspective, it may seem aggressive and uninviting.</p>
<blockquote><p>It helps to have experience in team sports to help to manage and navigate the competitive male dominated culture of the field.</p></blockquote>
<p>Another way to ensure success is to join a group that supports women in tech. It will help to deal with issues that arise and gain confidence in an industry that is dominantly male. Typically, women and men communicate differently. Also, I find it a way to relax and relate without needing to worry about so many other unrelated issues. It provides a platform to discuss issues like family, which many times a big impact on a woman�s career &#8212; especially when she has children.</p>
<h3>Feminine Aspect</h3>
<p>Balancing being feminine in a male dominated field can be difficult. According to Marilyn vos Savant, the person with the highest IQ at 200 and famous advice writer, women who play up their sexual attractiveness make themselves appear �lightweight� and lose �parity� with men. This is not okay since a woman faces pressure in society to look attractive and be nurturing. This is similar to how men are valued by being a provider. This is a real dichotomy. Women are not allowed to be seen as sexually-attractive and competent. It is as if there�s a choice to be made. That is a real problem.</p>
<h3>What the WordPress Community has Done for Me</h3>
<p>WordPress community was a discovery of people who are curious and solve technical questions. Over the years, it has grown more and more�an emphasis on marketing and business element driving the community culture. As WordPress grows and continues to grow in popularity, more and more opportunities emerge�for all.</p>
<p>I found the community to be a place to bring questions. It has been a place to find inspiration and to inspire others in my professional journey as a developer. The community has helped me to develop the courage and determination to secure a position as a developer. The WordPress community has been a resource of a network of individuals to turn to for help. It is an open source and sharing community with many talented people.</p>
<p>&nbsp;</p>
<p>Resources drawn from:</p>
<p><a href=\"https://www.rebelgirls.co/products/good-night-stories-for-rebel-girls\">Good Night Stories For Rebel Girls</a></p>
<p>Ted Talks | Inspiring the next generation of female engineers | Debbie Sterling</p>
<hr />
<p>Elizabeth Shilling, a developer with a degree in psychology with a social, developmental emphasis from UC Santa Barbara, specialized in biological sciences, computer science, business, and teaching. Looking at differences between men and women in math and sciences bloomed during research as an undergrad. It was determined to be cultural, not biological. Social expectations dominate the direction of female students away from engineering sciences rather than intellectual capabilities. She loves coffee and the ocean.</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Hire More Women Developers\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Hire%20More%20Women%20Developers&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fhire-women-developers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Hire More Women Developers\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fhire-women-developers%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fhire-women-developers%2F&title=Hire+More+Women+Developers\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Hire More Women Developers\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/hire-women-developers/&media=https://heropress.com/wp-content/uploads/2018/04/042617-150x150.jpg&description=Hire More Women Developers\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Hire More Women Developers\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/hire-women-developers/\" title=\"Hire More Women Developers\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/hire-women-developers/\">Hire More Women Developers</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 26 Apr 2017 14:30:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Elizabeth Shilling\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: WordCamp Europe 2017 Introduces Small Business Sponsorships\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69351\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/wordcamp-europe-2017-introduces-small-business-sponsorships\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3032:\"<p><a href=\"https://2017.europe.wordcamp.org/\" target=\"_blank\">WordCamp Europe 2017</a> organizers are counting down 50 days until the largest planned WordPress event to date. Speaker announcements continue to roll out and the recommended hotels are getting booked up at the height of tourist season. As of yesterday, more than 300 of the 500 tickets for <a href=\"https://wptavern.com/wordcamp-europe-2017-announces-speakers-opens-registration-for-contributor-day\" target=\"_blank\">Contributor Day</a> have been claimed.</p>
<p>This year organizers are <a href=\"https://wptavern.com/wordcamp-europe-2017-to-experiment-with-sponsors-workshops\" target=\"_blank\">experimenting with sponsor workshops</a>, a perk targeted at the highest levels of sponsorship, which includes Administrator (� 38,000) and Super Admin (� 75,000) tiers. This new item in the sponsor&#8217;s package is described as a &#8220;sponsor &#8220;track&#8221; in the <a href=\"https://2017.europe.wordcamp.org/files/2016/12/wceu17-sponsorship-kit_122916.pdf\" target=\"_blank\">sponsorship kit brochure</a> and allows sponsors to hold a talk or a workshop in a dedicated space that accommodates approximately 200 people.</p>
<p>In an effort to prevent the event from disproportionately focusing on mega sponsors, the organizing team has created a <a href=\"https://2017.europe.wordcamp.org/2017/03/23/wordcamp-europe-2017-sponsorship-exclusively-for-small-business/\" target=\"_blank\">new sponsorship package exclusively for small businesses</a>.</p>
<p>&#8220;We recognized that our sponsorship tiers were more geared towards larger WordPress businesses and felt we were not giving small businesses enough opportunity to showcase their products and services and allow them to connect to attendees,&#8221; WCEU Sponsorship co-organizer Remkus de Vries said. &#8220;This is why we created the SMB tier and we hope many see this as a wonderful chance to show off their products and services for what&#8217;s shaping up to be more than 3,000 attendees.&#8221;</p>
<p>The Small Business sponsorship level is priced at � 2,500 and is available to companies that generate the majority of their revenue from WordPress and made less than 1 million euro in revenue in 2016. It qualifies the sponsor for a booth in the middle of the event. The table, banner printing, and setup are all handled by the WCEU Sponsor Team.</p>
<p>&#8220;Similar to TechCrunch�s Startup Alley, we want to help highlight smaller companies or ones that have just started out,� WCEU Sponsorship co-organizer Noel Tock said. �Simply seeking out sponsorship funds the fastest way possible would not be fair to attendees. This helps makes the conversations and experiences a lot more diverse and balanced.&#8221;</p>
<p>There are 10 remaining Small Business sponsorship slots, along with 288 micro-sponsorships (� 150.00). Potential sponsors can <a href=\"http://wceurope.polldaddy.com/s/wordcamp-europe-2017\" target=\"_blank\">apply on the WCEU website</a>.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 25 Apr 2017 18:33:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"WPTavern: WordPress 4.8 Will End Support for Internet Explorer Versions 8, 9, and 10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69314\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/wordpress-4-8-will-end-support-for-internet-explorer-versions-8-9-and-10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4371:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/04/ie-logo.jpg?ssl=1\"><img /></a></p>
<p>Over the weekend, Matt Mullenweg announced that the upcoming WordPress 4.8 release will <a href=\"https://make.wordpress.org/core/2017/04/23/target-browser-coverage/\" target=\"_blank\">drop support for IE versions 8, 9, and 10</a>. Core contributors have been <a href=\"https://make.wordpress.org/core/2017/02/28/the-new-editor-and-browser-support/\" target=\"_blank\">discussing</a> <a href=\"https://make.wordpress.org/core/2017/03/13/continued-discussion-on-browser-support/\" target=\"_blank\">browser support</a> for the past two months in relationship to setting technical requirements for the new editor.</p>
<p>Microsoft <a href=\"https://www.microsoft.com/en-us/WindowsForBusiness/End-of-IE-support\" target=\"_blank\">discontinued support for IE 8, 9, and 10</a> in January 2016, which means these versions no longer receive security updates. Mullenweg said that attempting to continue supporting these browsers is holding back WordPress development.</p>
<p>&#8220;I realize that folks still running these browsers are probably stuck with them because of something out of their control, like being at a library or something,&#8221; Mullenweg said. &#8220;Depending on how you count it, those browsers combined are either around 3% or under 1% of total users, but either way they�ve fallen below the threshold where it�s helpful for WordPress to continue testing and developing against.&#8221;</p>
<p>In an effort to determine how many people are still using these insecure and obsolete browsers, Jonathan Desrosiers collected data from three different sources. The following are numbers for global IE usage published by StatCounter&#8217;s <a href=\"http://gs.statcounter.com/\" target=\"_blank\">GlobalStats</a>, which Desrosiers said are nearly identical to WordPress.com&#8217;s numbers:</p>
<ul>
<li>IE8: 0.41%</li>
<li>IE9: 0.26%</li>
<li>IE10: 0.26%</li>
<li>IE11: 3.79%</li>
</ul>
<p>WordPress will not stop working entirely in these browsers, but after the 4.8 release contributors will no longer test new features against older versions of IE. Some capabilities in wp-admin may be more limited. Mullenweg confirmed that the next versions of TinyMCE will no support older IE versions.</p>
<p>Global IE usage has declined from 7.44% in March 2016 to 4.18% in March 2017. IE marketshare has been shrinking as mobile device usage has gone up. October 2016 marked the first month in history that <a href=\"http://gs.statcounter.com/press/mobile-and-tablet-internet-usage-exceeds-desktop-for-first-time-worldwide\" target=\"_blank\">mobile and tablet traffic exceeded desktop usage worldwide</a>. As this trend of declining desktop usage continues, IE will likely be buried within a couple of years.</p>
<p>&#8220;I have been hard pressed to find a U.S. government agency running a version of IE less than 11,&#8221; WordPress lead developer Andrew Nacin commented on the announcement. &#8220;Government agency websites similarly see negligible traffic from IE &lt; 11.&#8221;</p>
<p>The decision to drop support for IE 8, 9, and 10 was met with celebration from the WordPress developer community. Focusing on browsers that still receive security updates is a better use of open source contributors&#8217; time and resources. Developers who do client work can also refer to WordPress&#8217; IE support policy when pressured by clients to support insecure browsers.</p>
<p>Naturally, the topic of raising minimum browser requirements resulted in developers lobbying to drop support for PHP 5.2, which reached end of life more than six years ago. In March 2015, <a href=\"https://wptavern.com/wordpress-version-stats-updated-more-than-13-of-sites-are-running-wordpress-4-1\" target=\"_blank\">WordPress stats estimated PHP 5.2 usage at 16.6%</a>, but that number has dropped steadily to <a href=\"https://wordpress.org/about/stats/\" target=\"_blank\">5.1%</a> today. The task of updating a browser to the latest version was designed to be easy for users, but upgrading PHP versions is still somewhat complicated for those who are not receiving help from their hosting companies. The 5.1% on PHP 5.2 represents millions of users who would need to cross a significant hurdle into order to stay current with the latest version of WordPress.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Apr 2017 21:18:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"Post Status: Breaking into and building community, with WordPress and beyond � Draft podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=36524\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://poststatus.com/breaking-building-community-wordpress-beyond-draft-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1913:\"<p>Welcome to the Post Status <a href=\"https://poststatus.com/category/draft\">Draft podcast</a>, which you can find <a href=\"https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008\">on iTunes</a>, <a href=\"https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast\">Google Play</a>, <a href=\"http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast\">Stitcher</a>, and <a href=\"http://simplecast.fm/podcasts/1061/rss\">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard.</p>
<p>Brian is joined by guest-host Matt Medeiros &#8212; host of the <a href=\"https://mattreport.com/\">Matt Report podcast</a>, and many other ventures in the WordPress ecosystem. They discuss community building, their experiences building community in the WordPress world, and the challenges of getting involved in a new community.</p>
<p><a href=\"https://audio.simplecast.com/67536.mp3\">https://audio.simplecast.com/67536.mp3</a><br />
<a href=\"https://audio.simplecast.com/67536.mp3\"> Direct Download</a></p>
<h3>Links</h3>
<ul>
<li><a href=\"http://craftedbymatt.com/\">Crafted by Matt</a></li>
<li><a href=\"https://mattreport.com/\">Matt Report</a></li>
<li><a href=\"https://poststatus.com/jobs/\">Post Status WordPress Jobs</a></li>
<li><a href=\"https://www.youtube.com/watch?v=cQlcN0Wf-FE&feature=youtu.be\">This WordPress community is not for the taking</a></li>
</ul>
<h3>Sponsor: Prospress</h3>
<p><a href=\"https://prospress.com/\">Prospress</a> makes the WooCommerce Subscriptions plugin, that enables you to turn your online business into a recurring revenue business. Whether you want to ship a box or setup digital subscriptions like I have on Post Status, Prospress has you covered. Check out <a href=\"https://prospress.com/\">Prospress.com</a> for more, and thanks to Prospress for being a Post Status partner.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Apr 2017 19:13:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Katie Richards\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: New Plugin Offers Better Plugin Recommendations in the WordPress Admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69226\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"https://wptavern.com/new-plugin-offers-better-plugin-recommendations-in-the-wordpress-admin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4958:\"<p>If you work with WordPress every day you may have learned to tune out the recommended plugins in the admin by now, but the &#8220;Add Plugins&#8221; screen is an important part of the new user experience. WordPress developers <a href=\"https://jkudish.com/2017/04/20/better-plugin-recommendations-for-wordpress/\" target=\"_blank\">Joey Kudish</a> and <a href=\"https://secretpizza.party/wordpress-needs-curation/\" target=\"_blank\">Nick Hamze</a> have released a plugin that brings better recommendations to the admin.</p>
<p>Hamze contends that the first plugins that appear in the featured section have a smaller, niche audience, and are unlikely to be useful to the majority of new users.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/add-new-plugins-featured.png?ssl=1\"><img /></a></p>
<p>The recommended plugins are slightly better, as they are based on plugins that the user and other users have installed. However, Hamze believes they could be tweaked even further to display plugins that specifically benefit new users. The Recommended tab was <a href=\"https://core.trac.wordpress.org/ticket/30337\" target=\"_blank\">introduced two years ago</a> to display results based on plugins that are commonly used together. It excludes plugins that users already have installed.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/04/recommended-plugins.png?ssl=1\"><img /></a></p>
<p>&#8220;I really want to help WordPress but I think what is most needed isn�t a new editor or more guidelines but rather someone to take all the stuff in this fractured ecosystem and bring it together,&#8221; Hamze said. &#8220;Get rid of all the crap and only show people the stuff worth using.&#8221;</p>
<p>Hamze said he doesn&#8217;t know if WordPress can solve this problem diplomatically with code. He believes manual curation is required to deliver the best new user experience. A <a href=\"https://core.trac.wordpress.org/ticket/34212\" target=\"_blank\">ticket</a> for re-thinking the default &#8216;Add Plugins&#8217; tabs/filters was is open on WordPress trac, as the plugins that appear in these screens have remained unchanged for some time. The ticket hasn&#8217;t received much discussion yet.</p>
<p>The <a href=\"https://wordpress.org/plugins/better-plugin-recommendations/\" target=\"_blank\">Better Plugin Recommendations</a> plugin removes the default and featured recommendations tabs and includes a new recommendations tab curated by Hamze to appeal to new users. Below is an example of the first 10 recommendations the plugin includes:</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/better-recommended-plugins.png?ssl=1\"><img /></a></p>
<p>Hamze uses the following criteria to select the recommended plugins:</p>
<ul>
<li>Price (Free)</li>
<li>Numbers of users</li>
<li>Average Rating</li>
<li>Last Updated</li>
<li>Support Given</li>
</ul>
<p>When asked why the recommendations don&#8217;t include Jetpack, Hamze said it didn&#8217;t seem necessary, given its high position in the popular tab and the fact that it already comes pre-installed with many hosts.</p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\"><a href=\"https://twitter.com/jeherve\">@jeherve</a> <a href=\"https://twitter.com/jkudish\">@jkudish</a> <a href=\"https://twitter.com/jetpack\">@jetpack</a> Haha, I actually like jetpack but since it\'s already at the top of the popular tab and preinstalled almost everywhere, didn\'t seem necessary</p>
<p>&mdash; Nick Hamze (@NickHamze) <a href=\"https://twitter.com/NickHamze/status/855389412510674944\">April 21, 2017</a></p></blockquote>
<p></p>
<p>Hamze and Kudish created a web service that delivers the recommendations to sites where the plugin is installed. The node <a href=\"https://better-plugin-recommendations.now.sh\">server</a> is powered by <a href=\"https://hapijs.com/\" target=\"_blank\">hapi.js</a> and is open source on <a href=\"https://github.com/secretpizzaparty/better-plugin-recommendations-server\" target=\"_blank\">GitHub</a></p>
<p>&#8220;If the idea is well received in the community, I�d love to expand on it further and include some plugins from outside the WordPress.org plugin repository in our recommendations, as I think there�s some great third-party plugins that new users should definitely know about,&#8221; collaborator Joey Kudish said.</p>
<p>Hamze said he doesn&#8217;t expect there to be many regular users who will find and install the plugin but hopes that hosting companies will integrate it by default for their WordPress customers.</p>
<p>&#8220;What I�m hoping is that I can convince the hosting companies to preinstall this (maybe in the MU folder) for their customers,&#8221; Hamze said. &#8220;The app blends in seamlessly with WordPress. There are no ads or branding. The plugin is designed solely to help new users find great plugins to help them on their WordPress journey.&#8221;</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 24 Apr 2017 14:11:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"Matt: Songs for My Father\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47222\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://ma.tt/2017/04/songs-for-my-father/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4027:\"<p>One of the things that surprised me most about when my Dad was sick last year was that while he was in the hospital over about 5 weeks he lost any interest in music, TV, movies, anything on a screen. Music was particularly surprising given that he had music on at his desk pretty much all the time, and really enjoyed loading a new CD or record into the media library he had set up at home. One of the songs I remember playing for him was from a band, Manhattan Transfer, that we used to listen to a lot when I was younger and just learning about jazz, I chose�<a href=\"https://www.youtube.com/watch?v=wwL9xf3YQ-4\">Tuxedo Junction</a>�because it might cheer him up.</p>
<p>I remember him smiling faintly. (I wish I had played him more music. I wish I had recorded more of his stories, ideally before he got sick. I wish I had figured out how to navigate the hospital and health care system better.)</p>
<p>What I didn&#8217;t anticipate was how after <a href=\"https://ma.tt/2016/04/in-memoriam-chuck-mullenweg/\">his death</a> there would be aftershocks of grief that would hit me over and over again, especially while driving or in a plane. I went from crying maybe three times in the past decade to breaking down at the end of a company town hall, when talking to family, when my Mom found out about the anniversary present my Dad had been looking at, and with any number of songs that unexpectedly took on a new meaning.</p>
<p><a href=\"https://www.youtube.com/watch?v=RgKAFK5djSk\">Wiz Khalifa &amp; Charlie Puth&#8217;s See You Again</a>, is obvious, and was in heavy rotation every�public place I went;�<a href=\"https://www.youtube.com/watch?v=LHCob76kigA\">Lukas Graham&#8217;s 7 Years</a> completely broke me down when it talked about children &#8212; if I ever have any�my father will never meet them; <a href=\"https://www.youtube.com/watch?v=WibQR0tQ0P8\">Kayne &amp;�Paul McCartney&#8217;s Only One</a>, the tribute to Kanye&#8217;s�daughter and passed mother and I think perhaps his best song; <a href=\"https://www.youtube.com/watch?v=lp-EO5I60KA\">Ed Sheeran&#8217;s Thinking Out Loud</a>, about growing old together, turning 70 as he was so close to doing; <a href=\"https://www.youtube.com/watch?v=LkBKJMTCHGk\">Kanye&#8217;s Ultralight Beam</a> snuck up on me, I didn&#8217;t expect it, but the questioning and gospel and anger and hope in it captured something I didn&#8217;t even realize I was feeling. Even jazz wasn&#8217;t safe, <a href=\"https://www.youtube.com/watch?v=CWeXOm49kE0\">Horace Silver&#8217;s lyric-less Song for My Father</a> had the same effect.</p>
<p><img /></p>
<p><a href=\"https://www.youtube.com/watch?v=9NLZCLKppZs\">John Mayer&#8217;s Stop This Train</a>�is a song I&#8217;ve probably heard a hundred times since it came out in 2006, but all of sudden these words meant something completely different:</p>
<blockquote><p>So scared of getting older<br />
I&#8217;m only good at being young<br />
So I play the numbers game<br />
To find a way to say that life has just begun</p>
<p>Had a talk with my old man<br />
Said, &#8220;Help me understand&#8221;<br />
He said, &#8220;Turn sixty-eight<br />
You&#8217;ll renegotiate&#8221;</p></blockquote>
<p>I almost had to pull the car over: he was sixty-eight. What I would give for just one more conversation with him like the one the day before he passed. I wish I had written more down, recorded more of his stories, learned more about his journey.</p>
<p>As the year has passed, the surprise crying is much less common even when one of <a href=\"https://open.spotify.com/user/1211384122/playlist/3UiuLpSyYUZduDPkaaCmCA\">these songs</a> comes on the radio. Usually when I think of my father it&#8217;s with a smile. I&#8217;ve even had a few treasured dreams where we&#8217;ve been able to talk, nothing that made much sense (it was a dream) but I remember waking up with an overwhelming feeling of enveloping love. While the &#8220;new normal&#8221;�is different, I can&#8217;t say it&#8217;s better &#8212; he&#8217;s still gone.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 22 Apr 2017 05:12:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WPTavern: Embed Mastodon Statuses in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=68788\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wptavern.com/embed-mastodon-statuses-in-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4387:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/mastodon-logo.png?ssl=1\"><img /></a></p>
<p>After the <a href=\"https://blog.twitter.com/2017/now-on-twitter-140-characters-for-your-replies\" target=\"_blank\">controversial changes to Twitter&#8217;s @reply feature</a>, which no longer counts usernames towards the 140-character limit, Mastodon registrations rose sharply. <a href=\"https://mastodon.social/\" target=\"_blank\">Mastodon</a> is a free, open source, decentralized network that  has many similarities to Twitter. The software, named in honor of its creator&#8217;s favorite metal band, was launched in October and registered 24,000 users in the first six months. A strong negative reaction to Twitter&#8217;s changes has fueled a spike in Mastodon registrations. In the last week alone, the software&#8217;s user base has grown from 237,000 users on April 15 to <a href=\"https://mnm.eliotberriot.com/dashboard/db/network-drilldown?refresh=30m&orgId=1&from=now-7d&to=now\" target=\"_blank\">more than 414,000 users</a> today.</p>
<p>Mastodon is different from Twitter in that it is broken up into different independently-hosted instances. Whereas Twitter has struggled to combat trolls and abuse on its platform, Mastodon instances can each declare and enforce their own rules. For example, the flagship <a href=\"https://mastodon.social/about/more\" target=\"_blank\">Mastodon.social</a> instance bans content that is illegal in Germany or France, such as Nazi symbolism and Holocaust denial, excessive advertising, racism, sexism, and other undesirable posts.</p>
<p>Mastodon&#8217;s Tweetdeck-style interface allows users to post &#8220;toots&#8221; with a 500-word character limit. Toots can also be published with a content warning so that users can choose whether to view it.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/04/mastodon.png?ssl=1\"><img /></a></p>
<p>With all the increased activity around Mastodon this week, there was bound to be someone with the desire to display toots on their website. The first plugin for bringing Mastodon content into WordPress has landed in the plugin directory. <a href=\"https://wordpress.org/plugins/embed-mastodon/\" target=\"_blank\">Embed Mastodon</a> was created by David Libeau, a French developer and Mastodon enthusiast. It allows users to embed toots using a shortcode.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/mastodon-embed.png?ssl=1\"><img /></a></p>
<p>&#8220;I created this plugin because <a href=\"http://www.numerama.com/\" target=\"_blank\">Numerama</a>, a french tech website, was saying that it could be cool to embed Mastodon statuses, like with Twitter, in WordPress,&#8221; Libeau said. &#8220;I was thinking the same when I wrote a small article on my personal blog. I am using both Twitter and Mastodon but want to progressively leave Twitter.&#8221;</p>
<p>Libeau said he is not a WordPress developer and Mastodon Embed is his first plugin. He does not know if it&#8217;s coded well but said users may be interested in <a href=\"https://github.com/ginsterbusch/mastodon-embed\" target=\"_blank\">an alternative plugin on GitHub</a> that is a complete rewrite of his effort. The rewrite includes multiple embeds, caching, proper shortcode initialization, and fallback to &#8220;direct&#8221; embeds if embed via iframe is forbidden.</p>
<p>Libeau said he doesn&#8217;t know what will happen to his plugin in light of the rewrite, but he is continuing to develop <a href=\"http://mastodon.tools/\" target=\"_blank\">small tools for Mastodon users</a>. Mastodon has an open API for apps and services, which makes it easy for developers to build things that integrate with it.</p>
<p>After testing the Mastodon Embed plugin I found that it works but may have a couple of styling issues with the link display. If you find that it&#8217;s not working, it&#8217;s possible that your particular Mastodon instance configuration does not allow embedding via iFrame. To resolve this you may need to contact the admin of the instance or use the fork of the plugin that has a fallback for this scenario. If you find a bug with the Mastodon Embed plugin hosted on WordPress.org, you can <a href=\"https://github.com/DavidLibeau/mastodon-tools/issues\" target=\"_blank\">log an issue on Libeau&#8217;s Mastodon Tools repository</a>.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 22 Apr 2017 03:18:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WPTavern: Headway Themes Appears to be Dying a Slow Death\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=68837\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wptavern.com/headway-themes-appears-to-be-dying-a-slow-death\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9405:\"<p>It&#8217;s been seven months since Grant and Clay Griffiths, founders of Headway Themes, <a href=\"http://headwaythemes.com/the-future-of-headway/\">apologized</a> to customers for failing to communicate on a regular basis and provide adequate customer support. In the apology, the founders admit that the company was experiencing <a href=\"https://wptavern.com/headway-themes-confirms-financial-difficulties-issues-apology-to-customers\">financial difficulties</a> and noted that competition in the WordPress drag-and-drop page-builder space was tough. The duo vowed to communicate more, provide better customer support, and continue to develop Headway 4.0. Has anything changed since the apology was published?</p>
<h2>Headway Themes Migrates to FlyWheel Hosting</h2>
<p>In December of 2016, <a href=\"https://getflywheel.com/\">Flywheel</a> hosting <a href=\"https://wptavern.com/flywheel-acquires-wordpress-local-development-tool-pressmatic\">acquired Pressmatic,</a> created by Clay Griffiths. Soon after, Headway Themes migrated to Flywheel hosting which caused a few hiccups such as site downtime due to DNS propagation, login issues, and an issue with the Headway Dashboard. The acquisition raised questions on how it would affect Clay&#8217;s ability to work on Headway.</p>
<p>�This acquisition and employment will provide myself and my family much more stability than we�ve had in a long time, and will allow me to better focus on Headway in my spare time,� Griffiths said. �This includes rolling out the upcoming 4.1 release, and working hard to make sure the support and other outstanding issues are resolved for all our customers.�</p>
<h2>Influx Confirms Communication Issues With Founders</h2>
<p>Soon after the apology, Headway Themes began to use Influx to provide first-tier customer support. <a href=\"https://influx.com/\">Influx</a> provides customer support for companies, including those in the WordPress ecosystem such as <a href=\"https://www.advancedcustomfields.com/\">Advanced Custom Fields</a>. Any issues that Influx couldn&#8217;t solve are escalated to Clay and Grant. In February, Gary Bair�ad, a former Headway Themes employee, <a href=\"https://twitter.com/garybairead/status/834823813674188800\">contacted Headway Themes support</a> about the status of Headway 4.0 and received the following response.</p>
<p><img /></p>
<p>Influx couldn&#8217;t answer the question because Headway developers had not informed them of its progress despite inquiring about it. Influx notes that there may be a beta released in the near future but not to be quoted on it because a similar promise was made five months prior. In January, the official <a href=\"https://twitter.com/headwaythemes\">Headway Themes Twitter account</a> confirmed that Headway was being supported and that 4.0 would be released soon.</p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\"><a href=\"https://twitter.com/3BugMedia\">@3BugMedia</a> we are fully supporting Headway.  4.0 update coming soon. ^gg</p>
<p>&mdash; Headway Themes (@headwaythemes) <a href=\"https://twitter.com/headwaythemes/status/816698625380286464\">January 4, 2017</a></p></blockquote>
<p></p>
<p>Around the same time period, another Headway Themes customer submitted a support request asking about the status of a longstanding issue they were having. Influx explained that there was a lull because the main developers were failing to communicate. The support representative also pointed out that it seemed the only way for customers to get information about Headway Themes was by emailing support.</p>
<p><img /></p>
<p>Influx says it tried multiple times to contact Headway Themes developers about the issue and said it was lobbying hard to get it rectified.</p>
<h2>Payments Stop for Third-Party Block Developers</h2>
<p>In February, Bair�ad <a href=\"https://headwayupdate.wordpress.com/2017/02/03/update-4-dont-renew-3rd-party-blocks-through-headwaythemes-com/\">published a request</a> to third-party block customers to not renew through Headway Themes.com and to instead, purchase and renew directly from the developer&#8217;s sites. Chris Howard, founder of <a href=\"http://pizazzwp.com/\">Pizazz WP,</a> and Chris Rault, co-founder of <a href=\"https://www.headwayrocket.com/\">HeadwayRocket,</a> <a href=\"https://twitter.com/HeadwayRocket/status/826005360834142208\">confirmed</a> they are owed money from customers who purchased and renewed blocks through Headway Themes.com.</p>
<p>I reached out to both developers to see if they&#8217;ve been paid since February.</p>
<p>&#8220;I&#8217;ve sent Clay a bunch of messages, but he&#8217;s completely ignoring me and hasn&#8217;t paid over another cent since the last long delay,&#8221; Rault said.</p>
<p>&#8220;It�s down to only 2 or 3 renewals a month, but I�m not receiving anything still. I&#8217;d estimate they still owe me around $2,000,&#8221; Howard said.</p>
<p>For Howard, the issue of not receiving payments has been <a href=\"https://wptavern.com/headway-3-8-9-patches-potential-xss-vulnerability#comment-200810\">going on for months</a>.</p>
<h2>Former Support Staff Still Owed Money</h2>
<p>Headway Themes&#8217; apology does not mention the former support team who the company <a href=\"https://wptavern.com/former-headway-themes-employee-goes-public-staff-has-not-been-paid-and-customers-are-not-receiving-support\">failed to pay</a> on time for months. Since the apology, members of the team have received small payments but are still owed thousands of dollars. Receiving payments from Headway Themes is often a difficult process.</p>
<p>After not receiving a payment in February, a former team member sent a flurry of emails to Grant and Clay Griffiths inquiring about the payment. Clay eventually responded that they would send out payments when they&#8217;re able too. After a week of questioning when that would be with no response, the team member received a payment.</p>
<h2>Influx Says Headway Themes is Restructuring</h2>
<p>A Headway Themes customer recently contacted support to ask about the status of Headway and published Influx&#8217;s response to the company&#8217;s support forums. Here&#8217;s their response:</p>
<blockquote><p>Hi [Redacted],</p>
<p>Thanks for reaching out.</p>
<p>Currently, Headway is going through a restructuring phase to resolve the challenges being faced at this time. We do not have the full details here at support but the main stakeholders are working to return Headway to its rightful mode of operations.</p>
<p>Please let me know if there are any more questions that I can answer for you. Kind Regards.</p></blockquote>
<p>To learn more about the restructuring process and what&#8217;s going on with Headway development, I reached out to Grant and Clay Griffiths. Both have not responded to my request for comment.</p>
<h2>Blox Picks Up Where Headway Left Off</h2>
<p>Last year, when it appeared the future of Headway Themes <a href=\"https://wptavern.com/headway-themes-future-is-uncertain-amidst-financial-troubles\">was in jeopardy</a>, Maarten Schraven forked the <a href=\"http://bloxthemebuilder.com/start-downloading-beta-blox-theme-v1-0-0/\">Headway 3.8.8 codebase</a> and named it <a href=\"http://bloxthemebuilder.com/\">Blox Builder</a>. Blox Builder is 100% GPL Licensed and is a direct replacement for Headway. Schraven recently <a href=\"http://bloxtheme.com/lots-of-questions-about-blox-theme/\">answered a number of questions</a> related to the project, one of which is how easy is it to transfer from Headway to Blox.</p>
<blockquote><p>There are different ways to convert your Headway Theme to Blox Theme. The best way is to export your template, you get an .json file. In this file you have to change hw to bt and headway to blox. If you have a large website you also can change the database tables. Some of our users have Blox Theme and Headway Themes side by side and switch between them. The last way (not yet available) is our conversion script. This script can do two things, change the database or do the same search and replace. This script will work automatic or as standalone.</p>
<p>Or, if you think this is to difficult, you always can ask us for the conversion, we can discuss this on e-mail or skype</p></blockquote>
<p>There&#8217;s no time frame on when the conversion script will be available. If you&#8217;re a fan of the way Headway Themes works and are looking for a similar replacement, check out Blox Builder.</p>
<h2>Many in the Headway Themes Community Have Moved On</h2>
<p>A number of devoted fans and customers of Headway have switched to other page builders like Divi, Elementor, and Beaver Builder. What was once a vibrant community-run Slack channel for Headway Themes enthusiasts has turned into a ghost town. There is little hope among them that the company will be able to rebound.</p>
<h2>Not Much Has Changed</h2>
<p>Unfortunately, the issues that prompted Headway Themes&#8217; founders to issue an apology are still present. There is a lack of communication on the company&#8217;s blog, social media accounts, and to Influx, the company it has outsourced customer support to. The apology dated Sept 13, 2016, was the last post published to the company&#8217;s blog. Former employees and third-party developers are still owed considerable amounts of money and there has been little if any development on the Headway code base.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 22 Apr 2017 02:00:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: HeroPress Partners With WPShout to Offer WordPress Education Scholarships\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69027\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wptavern.com/heropress-partners-with-wpshout-to-offer-wordpress-education-scholarships\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3468:\"<p>HeroPress has teamed up with <a href=\"https://alexdenning.com/\">Alex Denning</a>, <a href=\"https://pressupinc.com/\">Fred Meyer, and David Hayes</a> of <a href=\"https://wpshout.com/\">WPShout</a> to offer 10 copies of <a href=\"https://wpshout.com/up-and-running/\">Up and Running Second Edition</a> at the deluxe tier. The deluxe tier is valued at $249 and includes everything the course has to offer including video tutorials, creating a theme and child theme, screencast series, creating a WordPress plugin, and more.</p>
<p>The scholarship applications are geared towards three groups of people:</p>
<ul>
<li>Those in financial hardship (unemployment, jobseeking, students or underemployment).</li>
<li>Those in low-income countries without the means to purchase the course.</li>
<li>Under-represented groups in tech and the WordPress community, including but not limited to:
<ul>
<li>Women</li>
<li>Transgender applicants</li>
<li>BAME applicants</li>
</ul>
</li>
</ul>
<p>Those who qualify have until May 9th to fill out the <a href=\"https://heropress.com/up-running-scholarship-heropress-wpshout/\">application</a>. Five members of the WordPress community make up a panel that will review the applications and choose 10 recipients who they feel are deserving of the award. HeroPress will then tally the selections and those with the most votes will be awarded a scholarship. In case of a tie, HeroPress will be the deciding vote. The five panelists are:</p>
<ul>
<li><a href=\"https://twitter.com/maedahbatool?lang=en\">Maedah Batool</a> (Creative Director at WPTie, Pakistan).</li>
<li><a href=\"https://twitter.com/anafranciscas\">Ana Silva</a> (Digital Marketer at Human Made, UK).</li>
<li><a href=\"https://twitter.com/PlanningWrite\">Winstina Hughes</a> (Co-Organizer, WordCamp New York).</li>
<li><a href=\"http://twitter.com/rahul286\">Rahul Bansal</a> (CEO at rtCamp, India)</li>
<li><a href=\"https://twitter.com/pippinsplugins\">Pippin Williamson</a> (Founder at Pippin�s Plugins, USA).</li>
</ul>
<p>Pippin Williamson, founder of Easy Digital Downloads, says he accepted the panelist role because it�s an opportunity to make a significant difference in someone�s life.</p>
<p><a href=\"http://heropress.com/\">HeroPress</a>, founded by <a href=\"https://topher1kenobe.com/\">Topher DeRosia</a> in 2015, publishes an essay every Wednesday from members of the community on how WordPress has positively impacted their lives. HeroPress has published essays from people in the <a href=\"https://heropress.com/heropress-geography-middle-east/\">Middle East</a>, <a href=\"https://heropress.com/heropress-geography-oceana/\">Oceania</a>, <a href=\"https://heropress.com/heropress-geography-central-south-america/\">Central and South America</a>, and other parts of the world.</p>
<p>To learn the HeroPress story, listen to <a href=\"https://wptavern.com/wpweekly-episode-227-the-heropress-story-with-topher-derosia\">our interview with DeRosia</a>. In it, he explains his motivation for creating the site and shares a personal story�of someone who couldn�t write an essay because they were spending all of their time trying to stay alive.</p>
<p>To learn more about Up and Running Second Edition, <a href=\"https://wptavern.com/wpweekly-episode-268-behind-the-scenes-of-wordpress-development-course-up-and-running-second-edition\">listen to our interview</a> with the founders where they explain how and why they created the course.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Apr 2017 19:05:17 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Checathlon: A Free WordPress Business Theme with Support for Easy Digital Downloads\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69228\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/checathlon-a-free-wordpress-business-theme-with-support-for-easy-digital-downloads\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3892:\"<p><a href=\"https://wordpress.org/themes/checathlon/\" target=\"_blank\">Checathlon</a> is new business theme on WordPress.org that was designed to seamlessly integrate with <a href=\"https://wordpress.org/plugins/easy-digital-downloads/\" target=\"_blank\">Easy Digital Downloads</a>. The name is a combination of the words checkout and decathlon, according to its creator <a href=\"https://foxland.fi/\" target=\"_blank\">Sami Keijonen</a>.</p>
<p>Checathlon combines elegant typography with a bold, pink accent color to showcase products and services on a business or e-commerce website. The theme was designed by Finnish designer Toni Suni and is Keijonen&#8217;s 13th theme to be listed in the directory.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/04/checathlon-screenshot.png?ssl=1\"><img /></a></p>
<p>&#8220;I had some kind of vision of what I wanted and Toni created a pixel perfect design based on our discussion,&#8221; Keijonen said. &#8220;I�m super happy about the end result. Unfortunately, the design and the theme was not good enough for WordPress.com and the theme was rejected from there.&#8221; Keijonen opted to create a Checathlon Plus plugin as an alternative way to monetize the theme.</p>
<p>Checathlon has an intuitive way of organizing the content featured on the front page. Unlike many other themes, the front page is not controlled by a custom page template. Once you set the front page as a static page, the Customizer will give access to the service/pricing, products, testimonial, and blog sections.</p>
<p>The theme includes support for a Pricing page template and a Team Page template. These features make Checathlon more flexible for use on a business, agency, non-profit, or e-commerce website.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/checathlon-team-page.png?ssl=1\"><img /></a></p>
<p>The pricing template has a &#8220;Service and Pricing widget&#8221; area where users can drop in the custom widgets available in the Checathlon Plus plugin. The widgets make it easy for users to set an icon, title, content, price, and a link for each pricing tier, as well as the ability to highlight one tier as featured.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/checathlon-pricing-template.png?ssl=1\"><img /></a></p>
<p>Checathlon was built to support several plugins, including <a href=\"https://wordpress.org/plugins/easy-digital-downloads/\" target=\"_blank\">Easy Digital Downloads</a>, <a href=\"https://wordpress.org/plugins/custom-content-portfolio/\" target=\"_blank\">Custom Content Portfolio</a>, and <a href=\"https://wordpress.org/plugins/jetpack/\" target=\"_blank\">Jetpack</a> (testimonials and portfolio). The theme includes styles for the Jetpack email subscription widget and EDD <a href=\"https://foxland.fi/demo/checathlon/downloads/\" target=\"_blank\">downloads</a> and account pages. It&#8217;s also tagged as <a href=\"https://make.wordpress.org/themes/handbook/review/accessibility/\" target=\"_blank\">accessibility-ready</a>, which means that it has successfully passed an accessibility audit. Check out the <a href=\"https://foxland.fi/demo/checathlon/\" target=\"_blank\">live demo</a> to see Checathlon in action.</p>
<p>Keijonen is taking a unique approach by creating a <a href=\"https://foxland.fi/downloads/checathlon-plus/\" target=\"_blank\">Checathlon Plus plugin</a> as an alternative to offering a &#8220;pro version&#8221; of the theme. It extends the theme to include more customizer capabilities, additional widgets, cart customization features for EDD, and two child themes. The <a href=\"https://wordpress.org/themes/checathlon/\" target=\"_blank\">free theme</a> is available on WordPress.org and <a href=\"https://foxland.fi/documents/for/checathlon/\" target=\"_blank\">documentation</a> can be found on the theme&#8217;s website.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 21 Apr 2017 16:25:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: WordPress Plugin Directory Restores Tabbed Interface\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69139\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/wordpress-plugin-directory-restores-tabbed-interface\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4036:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/04/tabs.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/CCRDK5WZEM\">Jeffrey Betts</a>
<p>Last month the WordPress Plugin Directory <a href=\"https://wptavern.com/wordpress-relaunches-plugin-directory-with-new-design-and-improved-search-algorithm\" target=\"_blank\">relaunched with a new design</a> and improvements to the search algorithm. The new design replaced the plugin pages&#8217; previous tabbed interface with a wall of text, truncated by numerous &#8220;read more&#8221; links.</p>
<p>The outpouring of negative community feedback on the new design overshadowed many of the helpful improvements. Removal of the tabs was by far the most unpopular design choice in this iteration, as many found it to be confusing and inferior in terms of navigating the information efficiently. Users, developers, and contributors on the redesign <a href=\"https://wptavern.com/wordpress-plugin-directory-redesign-why-so-many-people-feel-their-feedback-was-ignored\" target=\"_blank\">felt their feedback was roundly ignored</a> throughout all phases of the design&#8217;s beta and testing period.</p>
<p>Four months ago, contributor Jon Ang (@kenshino) opened a <a href=\"https://meta.trac.wordpress.org/ticket/2328\" target=\"_blank\">ticket</a> regarding the &#8220;read more&#8221; links, which he described as &#8220;a usability nightmare.&#8221; The ticket was closed as a duplicate of <a href=\"https://meta.trac.wordpress.org/ticket/2278\" target=\"_blank\">another ticket</a> which received very little discussion. Today, Otto marked the ticket as fixed, <a href=\"https://meta.trac.wordpress.org/changeset/5399\" target=\"_blank\">announcing the return of tabs</a> in the commit message:</p>
<blockquote><p>Change single-plugin view to have tabbed design. Eliminates read-more on all sections except developers and changelog, adds tabs back to interface using CSS to switch between them. Tabs control both main display as well as widgets.</p>
<p>Known issues: Changelog read-more not working (js issue), developers section is currently split using CSS, future change will split this section into two separate sections.</p></blockquote>
<p>Members of the Advanced WordPress Facebook (AWP) community, who were among the most critical of the new design, are <a href=\"https://www.facebook.com/groups/advancedwp/permalink/1473163646079178/\" target=\"_blank\">pleased with the change</a>. The new tabs are subtle, tasteful, and in line with the overall design. They eliminate the clutter that the expanded &#8220;read more&#8221; links created.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/04/plugin-page-tabs-restored.png?ssl=1\"><img /></a></p>
<p>The Reviews tab now displays six of the most recent reviews, as opposed the the previous two most recent. This makes it not as easy to destroy a plugin&#8217;s reputation with poor reviews timed to always be visible on the main plugin page. Otto <a href=\"https://www.facebook.com/groups/advancedwp/permalink/1473163646079178/?comment_id=1473175582744651&reply_comment_id=1473218756073667&comment_tracking=%7B%22tn%22%3A%22R3%22%7D\" target=\"_blank\">replied</a> to comments on the AWP community, saying that these numbers are not set in stone and that there are good arguments for displaying different sets of reviews, as opposed to simply the most recent ones.</p>
<p>Two weeks ago the meta team <a href=\"https://wptavern.com/wordpress-plugin-directory-restores-stats-and-links-to-older-versions-of-plugins\" target=\"_blank\">brought back stats and older versions of plugins</a>, a couple of features that were removed in the first iteration of the new directory. Screenshot display is still somewhat clunky, requiring users to click on their browsers&#8217; back button in order to return to the plugin details. Future iterations of the design are expected to address the remaining quirks and issues that users and contributors have raised since the relaunch.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 21:46:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"WPTavern: WordPress 4.7.4 Fixes 47 Issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69141\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://wptavern.com/wordpress-4-7-4-fixes-visual-editor-incompatibility-with-upcoming-version-of-chrome\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1182:\"<p>WordPress 4.7.4 <a href=\"https://wordpress.org/news/2017/04/wordpress-4-7-4/\">is available</a> and is a maintenance release that fixes�47 issues reported against 4.7.�This update includes a visual editor�<a href=\"https://core.trac.wordpress.org/ticket/40305\">compatibility fix</a> for an upcoming version of Chrome.</p>
<p>Uploading�video and audio files no longer result in <a href=\"https://core.trac.wordpress.org/ticket/40075\">broken thumbnails</a>�and the REST API received a few enhancements related to <a href=\"https://core.trac.wordpress.org/ticket/39854\">data</a> <a href=\"https://core.trac.wordpress.org/ticket/40136\">handling</a>. WordPress 4.7.4 also restores the ability to Shift-click a range of checkboxes.</p>
<p>Auto updates are rolling out but if you&#8217;d like to update immediately, browse to Dashboard &gt; Updates and click the update button.</p>
<p>To see a full list of changes visit the <a href=\"https://codex.wordpress.org/Version_4.7.4\">release notes</a> page on the Codex. Since December, WordPress 4.7 has been <a href=\"https://wordpress.org/download/counter/\">downloaded</a> more than 60 million times.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 18:39:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Dev Blog: WordPress 4.7.4 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4710\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/news/2017/04/wordpress-4-7-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4513:\"<p>After almost sixty�million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release.</p>
<p>This release contains 47 maintenance�fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API. For a full list of changes, consult the�<a href=\"https://codex.wordpress.org/Version_4.7.4\">release notes</a>�and the�<a href=\"https://core.trac.wordpress.org/log/branches/4.7?rev=40487&stop_rev=40224\">list of changes</a>.</p>
<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.7.4</a>�or visit�<strong>Dashboard ? Updates</strong> and simply click �Update Now.� Sites that support automatic background updates are already beginning to update to WordPress 4.7.4.</p>
<p>Thanks to everyone who contributed to 4.7.4:<br />
<a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aussieguy123/\">aussieguy123</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boldwater/\">boldwater</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/chesio/\">chesio</a>, <a href=\"https://profiles.wordpress.org/curdin/\">Curdin Krummenacher</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davidbenton/\">davidbenton</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/eclev91/\">eclev91</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ghosttoast/\">Gustave F. Gerhardt</a>, <a href=\"https://profiles.wordpress.org/ig_communitysites/\">ig_communitysites</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/karinedo/\">karinedo</a>, <a href=\"https://profiles.wordpress.org/lukasbesch/\">lukasbesch</a>, <a href=\"https://profiles.wordpress.org/maguiar/\">maguiar</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez/\">MatheusGimenez</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mayurk/\">Mayur Keshwani</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/delawski/\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/pratikshrestha/\">Pratik Shrestha</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/sagarkbhatt/\">sagarkbhatt</a>, <a href=\"https://profiles.wordpress.org/sagarprajapati/\">Sagar Prajapati</a>, <a href=\"https://profiles.wordpress.org/sboisvert/\">sboisvert</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford/\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 17:54:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Pascal Birchler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"Post Status: Introducing a new way to find high quality WordPress jobs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=36314\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://poststatus.com/wordpress-job-board/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3285:\"<p>It&#8217;s my pleasure to formally introduce the <a href=\"https://poststatus.com/jobs\">Post Status WordPress job board</a>. It actually went live two weeks ago, but I wanted to give it time to work out any kinks before broadly promoting it.</p>
<p>Now, I think we&#8217;re ready for prime time. So, why do we need another place to list WordPress jobs?</p>
<p>The signal to noise ratio &#8212; both for employers seeking qualified candidates, and for candidates finding quality job listings &#8212; is pretty low across the board in the job market. Most people who hire technical professionals will tell you that it&#8217;s very difficult to find good candidates. And anyone seeking great job opportunities knows how hard it can be to find out the best opportunities, especially at the times you&#8217;re actually looking.</p>
<p>The goal for the Post Status WordPress job board is to take advantage of both sides of this equation.</p>
<p>Post Status isn&#8217;t a huge website with tons of traffic. But the traffic I do get is from a highly targeted audience of primarily WordPress professionals, or web professionals who use WordPress as a primary tool.</p>
<p>By creating a highly targeted job board, I&#8217;m able to increase the signal on both sides; employers can get quality applications, and applicants can find quality employers.</p>
<p>Furthermore, our team &#8212; meaning <a href=\"https://poststatus.com/profiles/katie-richards/\">Katie Richards</a>, and myself &#8212; go through each employer&#8217;s listing to confirm that it&#8217;s a qualified listing of someone actually hiring, provides relevant information, and is properly described for the available position.</p>
<p>We&#8217;ve already got 20+ jobs and counting, and I know many of them have had applications start to roll in, even without public announcement yet.</p>
<p>If you&#8217;d like to submit a job, the process is currently only for Post Status <a href=\"https://poststatus.com/club\">members</a>. We may open that up in the coming weeks, but for now, you can join and post, or if someone from your organization is a member, they can post it.</p>
<p>Listings last for 45 days (the first listings are being extended out starting today), and will be marketed to the Post Status Club &#8212; now over 900 WordPress professionals &#8212; as well as the free Post Status <a href=\"https://poststatus.com/newsletter\">newsletter</a>, where we&#8217;ll send digests of new jobs.</p>
<p>In the future, we may create new features for job seekers to keep an even closer eye on available jobs, but for now, the email and listing page are the place to go. And we may build new tools for employers as we get feedback and see demand for them.</p>
<p>I look forward to this being a valuable resource for the WordPress community. We&#8217;re dedicated to making it work well for a long haul, and we expect general activity to increase as the word gets out that it&#8217;s there.</p>
<p>So, if you don&#8217;t mind, we&#8217;d love your help to promote this job board, both now and when you hear of companies hiring and people seeking positions. It is a truly great feeling to know that you helped someone find their next workplace.</p>
<p>So, check out some <a href=\"https://poststatus.com/jobs\">WordPress jobs</a>!</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 13:35:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: WordCamp Europe 2017 Announces Speakers, Opens Registration for Contributor Day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=69083\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wptavern.com/wordcamp-europe-2017-announces-speakers-opens-registration-for-contributor-day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2015:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/wordcamp-europe-2017.png?ssl=1\"><img /></a></p>
<p><a href=\"https://2017.europe.wordcamp.org/\" target=\"_blank\">WordCamp Europe 2017</a> has been rolling out <a href=\"https://2017.europe.wordcamp.org/speakers/\" target=\"_blank\">speaker</a> announcements over the past week, slowly building what appears to be a strong lineup of both European and international WordPress experts. Speaker names are being released in thematic groups, the first dedicated to development topics, followed by business and content/marketing groups.</p>
<p>Registration for <a href=\"https://2017.europe.wordcamp.org/2017/04/19/time-to-register-for-wceu-2017-contributor-day/\" target=\"_blank\">Contributor Day</a>, which will be held the day before the conference on Thursday, June 15th, is now open. Organizers are expecting more than 3,000 attendees for the WordCamp, but Contributor Day is limited to 500 registrants. The <a href=\"http://wceurope.polldaddy.com/s/sign-up-for-contributor-day-2017\" target=\"_blank\">signup form</a> allows attendees to select up to two different contributor teams they would like to participate in.</p>
<p>In addition to the traditional contribution activities, Thursday&#8217;s event will also feature workshops and talks for beginners and those who want to learn more about topics such as JavaScript, Vagrant, internationalization, security, accessibility, and plugins. The workshops will be announced at a later date.</p>
<p>WP Tavern will be on the ground in Paris to cover WordCamp Europe as an official media partner. We&#8217;re looking forward to connecting with the European WordPress community and finding the stories that might otherwise go untold. The last remaining <a href=\"https://2017.europe.wordcamp.org/tickets/\" target=\"_blank\">tickets</a> are selling quickly. There are 288 micro-sponsor tickets left and just 308 general admission tickets remaining before the event is sold out.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 03:29:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:11:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"HeroPress: Announcing the Up and Running Scholarship, from HeroPress and WPShout\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=1722\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://heropress.com/announcing-up-running-scholarship-heropress-wpshout/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3263:\"<img width=\"960\" height=\"639\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/04/ipad-uandr-1-1024x682.png\" class=\"attachment-large size-large wp-post-image\" alt=\"Two hands holding an ipad so we can see the screen.\" /><p>For the first time ever, HeroPress is taking part in offering a scholarship! The good folks over at WPShout are soon releasing some great new WordPress training material called <em>Up and Running</em>. As part of that release they&#8217;d like to offer ten copies for free to those who fit the application qualifications.</p>
<h3>How do I apply?</h3>
<p>Visit the <a href=\"https://heropress.com/up-running-scholarship-heropress-wpshout/\"><em>Up and Running</em> Scholarship Application</a> page, read the rules, and fill out the form.</p>
<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Announcing the Up and Running Scholarship, from HeroPress and WPShout\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Announcing%20the%20Up%20and%20Running%20Scholarship%2C%20from%20HeroPress%20and%20WPShout&via=heropress&url=https%3A%2F%2Fheropress.com%2Fannouncing-up-running-scholarship-heropress-wpshout%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Announcing the Up and Running Scholarship, from HeroPress and WPShout\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fannouncing-up-running-scholarship-heropress-wpshout%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fannouncing-up-running-scholarship-heropress-wpshout%2F&title=Announcing+the+Up+and+Running+Scholarship%2C+from+HeroPress+and+WPShout\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Announcing the Up and Running Scholarship, from HeroPress and WPShout\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/announcing-up-running-scholarship-heropress-wpshout/&media=https://heropress.com/wp-content/uploads/2017/04/ipad-uandr-1-150x150.png&description=Announcing the Up and Running Scholarship, from HeroPress and WPShout\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Announcing the Up and Running Scholarship, from HeroPress and WPShout\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/announcing-up-running-scholarship-heropress-wpshout/\" title=\"Announcing the Up and Running Scholarship, from HeroPress and WPShout\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/announcing-up-running-scholarship-heropress-wpshout/\">Announcing the Up and Running Scholarship, from HeroPress and WPShout</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 00:07:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"WPTavern: BuddyPress 2016 Survey Results Show 54% of Respondents are on PHP 7.0+\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=68226\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wptavern.com/buddypress-2016-survey-results-show-54-of-respondents-are-on-php-7-0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5532:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2014/03/bp-featured.png?ssl=1\"><img /></a></p>
<p>The <a href=\"https://buddypress.org/2017/04/2016-buddypress-survey-results/\" target=\"_blank\">results of the BuddyPress 2016 survey</a> have been published. This year the survey received feedback from 302 respondents in 61 different countries, a 43% increase in responses from 2015. The top five countries represented in the survey include the United States (27.15%), India (7.62%), United Kingdom (6.95%), Germany (6.29%), and Canada (3.64%). English remains the most popular language for BuddyPress sites at nearly 70% and this year Spanish (10.7%) replaced French for the #2 spot, followed by German (9.96%).</p>
<p>A new question in the 2016 survey asked users what PHP versions their sites are on. More than 53% of respondents report having sites on PHP 7.0+ and 63% are using a version higher than 5.6+.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/buddypress-php-2016.png?ssl=1\"><img /></a></p>
<p>Lead developer Paul Gibbs sees these results as an affirmation that the BuddyPress core leadership made the right decision when dropping support for PHP 5.2 nine months ago.</p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\">We (<a href=\"https://twitter.com/buddypress\">@buddypress</a>) made the right call 9 months ago to drop support for PHP 5.2 in our last major release.</p>
<p>&mdash; Paul Gibbs (@pgibbs) <a href=\"https://twitter.com/pgibbs/status/849399725707202562\">April 4, 2017</a></p></blockquote>
<p></p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\">In fact, our 2016 users survey <a href=\"https://t.co/1LClEoOr38\">https://t.co/1LClEoOr38</a> suggests 88% of respondents use PHP &gt;5.6, maybe we can be more aggressive this year.</p>
<p>&mdash; Paul Gibbs (@pgibbs) <a href=\"https://twitter.com/pgibbs/status/849399973649276931\">April 4, 2017</a></p></blockquote>
<p></p>
<p>Gibbs is currently on a sabbatical from BuddyPress and was not available for comment. Project lead John James Jacoby said that the decision to drop support for PHP 5.2 may not be a direct corollary to its usage falling below 1%, but the core team will continue to bump the minimum version in the future with consideration for user happiness.</p>
<p>&#8220;It�s hard to know whether increasing our minimum PHP version made any direct difference,&#8221; Jacoby said. &#8220;My hunch is most users do not care very much, and the ones that do, care greatly. It�s all about keeping users happy � sometimes that means maintaining compatibility with old dependencies; other times it means kindly motivating users to upgrade things maybe they haven�t thought about in a while.&#8221;</p>
<p>The 2016 results show that 45% of respondents have been using BuddyPress for a year or less. While this isn&#8217;t necessarily an indication of users&#8217; ability, it is interesting in light of the project&#8217;s recent shift to focus on developers and site builders. The survey results indicate that more users identify themselves as a beginner when it comes to knowledge of BuddyPress themes and hooks.</p>
<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/04/buddypress-knowledge.png?ssl=1\"><img /></a></p>
<p>BuddyPress core developers made the decision to focus on site builders and developers based on how they saw the project&#8217;s user base changing over time. Making the software 100% turnkey is no longer one of their chief objectives. With the high percentage of users who identify as beginners, the project will need to find a way to get them connected and advancing in their BuddyPress knowledge.</p>
<p>&#8220;The <a href=\"https://buddypress.org/support/\" target=\"_blank\">BuddyPress.org community forums</a> continue to be the best place to get connected with other users to talk about what they�re working on,&#8221; Jacoby said. &#8220;Our documentation coverage in the codex is constantly being maintained, and we�re still working behind the scenes on a developer site ala <a href=\"https://developer.wordpress.org/\" target=\"_blank\">developer.wordpress.org</a>. Nothing will ever beat reading the code from inside a quality code-editor, but having public visibility into the codebase is good for everyone, too.&#8221;</p>
<p>April 30, 2017, marks the 8th anniversary of the first stable release of BuddyPress. Version 3.0 will be released this year and contributors are working towards adding a new template pack and improving the BP REST API, in addition to other new features based on comments from the survey.</p>
<p>&#8220;The primary focus of BuddyPress for 3.0 and beyond (in addition to being a great foundation for developers) should be to improve member management and communications inside your WordPress,&#8221; Jacoby said. &#8220;The latest and greatest versions of PHP don�t necessarily help us with those things directly, but the performance improvements of running BuddyPress on PHP 7.0 or 7.1 are impressive, enough to continue aggressively bumping our minimum required and recommended versions to keep users happy and safe.&#8221;</p>
<p>A <a href=\"https://buddypress.org/2017/04/2016-buddypress-survey-results/\" target=\"_blank\">summary of the 2016 survey results</a> was published to the BuddyPress.org blog and the <a href=\"https://mercime.github.io/BuddyPress-2016-survey-results/\" target=\"_blank\">full results</a> are available on GitHub, along with comments from respondents.</p>
<div id=\"epoch-width-sniffer\"></div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Apr 2017 19:43:50 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 11 May 2017 12:53:02 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Thu, 11 May 2017 12:45:10 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 250\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911010210\";}","no");
INSERT INTO wp_options VALUES("156","_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9","1494550383","no");
INSERT INTO wp_options VALUES("157","_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9","1494507183","no");
INSERT INTO wp_options VALUES("158","_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109","1494550387","no");
INSERT INTO wp_options VALUES("159","_transient_feed_b9388c83948825c1edaef0d856b7b109","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"
\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Popular � WordPress Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wordpress.org/plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"Plugins extend and expand the functionality of WordPress.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 May 2017 12:44:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=4.8-alpha-40586\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Contact Form 7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/plugins/contact-form-7/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 02 Aug 2007 12:43:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wordpress.org/plugins-wp/contact-form-7/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"Just another contact form plugin. Simple but flexible.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Takayuki Miyoshi\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5831:\"<p><!--section=description--></p>
<p>Contact Form 7 can manage multiple contact forms, plus you can customize the form and the mail contents flexibly with simple markup. The form supports Ajax-powered submitting, CAPTCHA, Akismet spam filtering and so on.</p>
<h4>Docs &amp; Support</h4>
<p>You can find <a href=\"https://contactform7.com/docs/\" rel=\"nofollow\">docs</a>, <a href=\"https://contactform7.com/faq/\" rel=\"nofollow\">FAQ</a> and more detailed information about Contact Form 7 on <a href=\"https://contactform7.com/\" rel=\"nofollow\">contactform7.com</a>. If you were unable to find the answer to your question on the FAQ or in any of the documentation, you should check the <a href=\"https://wordpress.org/support/plugin/contact-form-7/\" rel=\"nofollow\">support forum</a> on WordPress.org. If you can&#8217;t locate any topics that pertain to your particular issue, post a new topic for it.</p>
<h4>Contact Form 7 Needs Your Support</h4>
<p>It is hard to continue development and support for this free plugin without contributions from users like you. If you enjoy using Contact Form 7 and find it useful, please consider <a href=\"https://contactform7.com/donate/\" rel=\"nofollow\"><strong>making a donation</strong></a>. Your donation will help encourage and support the plugin&#8217;s continued development and better user support.</p>
<h4>Recommended Plugins</h4>
<p>The following plugins are recommended for Contact Form 7 users:</p>
<ul>
<li><a href=\"https://wordpress.org/plugins/flamingo/\">Flamingo</a> by Takayuki Miyoshi &#8211; With Flamingo, you can save submitted messages via contact forms in the database.</li>
<li><a href=\"https://wordpress.org/plugins/postman-smtp/\">Postman</a> by<br />
Jason Hendriks &#8211; Postman is a next-generation SMTP Mailer, software that assists in the delivery of email generated by your WordPress site.</li>
<li><a href=\"https://wordpress.org/plugins/bogo/\">Bogo</a> by Takayuki Miyoshi &#8211; Bogo is a straight-forward multilingual plugin that doesn&#8217;t cause headaches.</li>
</ul>
<h4>Translations</h4>
<p>You can <a href=\"https://contactform7.com/translating-contact-form-7/\" rel=\"nofollow\">translate Contact Form 7</a> on <a href=\"https://translate.wordpress.org/projects/wp-plugins/contact-form-7\" rel=\"nofollow\"><strong>translate.wordpress.org</strong></a>.</p>
<p><!--section=installation--></p>
<ol>
<li>Upload the entire <code>contact-form-7</code> folder to the <code>/wp-content/plugins/</code> directory.</li>
<li>Activate the plugin through the &#8216;Plugins&#8217; menu in WordPress.</li>
</ol>
<p>You will find &#8216;Contact&#8217; menu in your WordPress admin panel.</p>
<p>For basic usage, you can also have a look at the <a href=\"https://contactform7.com/\" rel=\"nofollow\">plugin web site</a>.</p>
<p><!--section=faq--></p>
<p>Do you have questions or issues with Contact Form 7? Use these support channels appropriately.</p>
<ol>
<li><a href=\"https://contactform7.com/docs/\" rel=\"nofollow\">Docs</a></li>
<li><a href=\"https://contactform7.com/faq/\" rel=\"nofollow\">FAQ</a></li>
<li><a href=\"https://wordpress.org/support/plugin/contact-form-7/\" rel=\"nofollow\">Support Forum</a></li>
</ol>
<p><a href=\"https://contactform7.com/support/\" rel=\"nofollow\">Support</a></p>
<dl>
<dt>Installation Instructions</dt>
<dd>
<ol>
<li>Upload the entire <code>contact-form-7</code> folder to the <code>/wp-content/plugins/</code> directory.</li>
<li>Activate the plugin through the &#8216;Plugins&#8217; menu in WordPress.</li>
</ol>
<p>You will find &#8216;Contact&#8217; menu in your WordPress admin panel.</p>
<p>For basic usage, you can also have a look at the <a href=\"https://contactform7.com/\" rel=\"nofollow\">plugin web site</a>.</p>
</dd>
</dl>
<p><!--section=changelog--></p>
<p>For more information, see <a href=\"https://contactform7.com/category/releases/\" rel=\"nofollow\">Releases</a>.</p>
<h4>4.7</h4>
<ul>
<li>Added REST API custom endpoints to manipulate contact form data.</li>
<li>Config Validator: Added test items for field names and attachment file paths.</li>
<li>Added custom DOM events: <code>wpcf7invalid</code>, <code>wpcf7spam</code>, <code>wpcf7mailsent</code>, <code>wpcf7mailfailed</code> and <code>wpcf7submit</code>.</li>
<li>New action hook: <code>wpcf7_after_flamingo</code>.</li>
<li>Added <code>size</code> option to <code>select</code> and <code>select*</code> form-tag types.</li>
<li>Made it possible to use the 3rd parameter of <code>wpcf7_add_form_tag()</code> to specify &#8220;features&#8221; of the form-tag type.</li>
</ul>
<h4>4.6.1</h4>
<ul>
<li>Fixed: &#8220;0&#8221; input could pass the <code>minlength</code> validation.</li>
<li>Fixed: <code>exclude_blank</code> option was applied to all mail fields, not only to the message body.</li>
<li>Fixed: <code>wpcf7_autop()</code> incorrectly inserted <code>&lt;br /&gt;</code> around hidden and block-type form-tags.</li>
<li>Fixed: Applying <code>strtolower()</code> to uploaded file names was unnecessary and could cause troubles in a non-English environment.</li>
</ul>
<h4>4.6</h4>
<ul>
<li>Ajax loader: HTML markup changed to <code>&lt;span&gt;</code> to be easily customizable with CSS.</li>
<li>Appends a proper header and footer to HTML mail content automatically.</li>
<li><code>[_serial_number]</code> special mail-tag.</li>
<li>New form-tag type for hidden fields.</li>
<li><code>default:shortcode_attr</code> form-tag option.</li>
<li><code>WPCF7_Shortcode</code>, <code>WPCF7_ShortcodeManager</code>, <code>wpcf7_add_shortcode()</code>, <code>wpcf7_scan_shortcode()</code>, and some other classes and functions have become deprecated.</li>
<li>Removed all language files from the <em>languages</em> folder. Translations have moved to <a href=\"https://translate.wordpress.org/projects/wp-plugins/contact-form-7\" rel=\"nofollow\">translate.wordpress.org</a>.</li>
</ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wordpress.org/plugins/contact-form-7/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Akismet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wordpress.org/plugins/akismet/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Oct 2005 08:57:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wordpress.org/plugins-wp/akismet/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"Akismet checks your comments and contact form submissions against our global database of spam to&#8230;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:18320:\"<p><!--section=description--></p>
<p>Akismet checks your comments and contact form submissions against our global database of spam to prevent your site from publishing malicious content. You can review the comment spam it catches on your blog&#8217;s &#8220;Comments&#8221; admin screen.</p>
<p>Major features in Akismet include:</p>
<ul>
<li>Automatically checks all comments and filters out the ones that look like spam.</li>
<li>Each comment has a status history, so you can easily see which comments were caught or cleared by Akismet and which were spammed or unspammed by a moderator.</li>
<li>URLs are shown in the comment body to reveal hidden or misleading links.</li>
<li>Moderators can see the number of approved comments for each user.</li>
<li>A discard feature that outright blocks the worst spam, saving you disk space and speeding up your site.</li>
</ul>
<p>PS: You&#8217;ll need an <a href=\"https://akismet.com/get/\" rel=\"nofollow\">Akismet.com API key</a> to use it.  Keys are free for personal blogs; paid subscriptions are available for businesses and commercial sites.</p>
<p><!--section=installation--></p>
<p>Upload the Akismet plugin to your blog, Activate it, then enter your <a href=\"https://akismet.com/get/\" rel=\"nofollow\">Akismet.com API key</a>.</p>
<p>1, 2, 3: You&#8217;re done!</p>
<p><!--section=changelog--></p>
<h4>3.3.2</h4>
<p><em>Release Date &#8211; 10 May 2017</em></p>
<ul>
<li>Fixed a bug causing JavaScript errors in some browsers.</li>
</ul>
<h4>3.3.1</h4>
<p><em>Release Date &#8211; 2 May 2017</em></p>
<ul>
<li>Improve performance by only requesting the akismet_comment_nonce option when absolutely necessary.</li>
<li>Fixed two bugs that could cause PHP warnings.</li>
<li>Fixed a bug that was preventing the &#8220;Remove author URL&#8221; feature from working after a comment was edited using &#8220;Quick Edit.&#8221;</li>
<li>Fixed a bug that was preventing the URL preview feature from working after a comment was edited using &#8220;Quick Edit.&#8221;</li>
</ul>
<h4>3.3</h4>
<p><em>Release Date &#8211; 23 February 2017</em></p>
<ul>
<li>Updated the Akismet admin pages with a new clean design.</li>
<li>Fixed bugs preventing the <code>akismet_add_comment_nonce</code> and <code>akismet_update_alert</code> wrapper functions from working properly.</li>
<li>Fixed bug preventing the loading indicator from appearing when re-checking all comments for spam.</li>
<li>Added a progress indicator to the &#8220;Check for Spam&#8221; button.</li>
<li>Added a success message after manually rechecking the Pending queue for spam.</li>
</ul>
<h4>3.2</h4>
<p><em>Release Date &#8211; 6 September 2016</em></p>
<ul>
<li>Added a WP-CLI module. You can now check comments and recheck the moderation queue from the command line.</li>
<li>Stopped using the deprecated jQuery function <code>.live()</code>.</li>
<li>Fixed a bug in <code>remove_comment_author_url()</code> and <code>add_comment_author_url()</code> that could generate PHP notices.</li>
<li>Fixed a bug that could cause an infinite loop for sites with very very very large comment IDs.</li>
<li>Fixed a bug that could cause the Akismet widget title to be blank.</li>
</ul>
<h4>3.1.11</h4>
<p><em>Release Date &#8211; 12 May 2016</em></p>
<ul>
<li>Fixed a bug that could cause the &#8220;Check for Spam&#8221; button to skip some comments.</li>
<li>Fixed a bug that could prevent some spam submissions from being sent to Akismet.</li>
<li>Updated all links to use https:// when possible.</li>
<li>Disabled Akismet debug logging unless WP_DEBUG and WP_DEBUG_LOG are both enabled.</li>
</ul>
<h4>3.1.10</h4>
<p><em>Release Date &#8211; 1 April 2016</em></p>
<ul>
<li>Fixed a bug that could cause comments caught as spam to be placed in the Pending queue.</li>
<li>Fixed a bug that could have resulted in comments that were caught by the core WordPress comment blacklist not to have a corresponding History entry.</li>
<li>Fixed a bug that could have caused avoidable PHP warnings in the error log.</li>
</ul>
<h4>3.1.9</h4>
<p><em>Release Date &#8211; 28 March 2016</em></p>
<ul>
<li>Add compatibility with Jetpack so that Jetpack can automatically configure Akismet settings when appropriate.</li>
<li>Fixed a bug preventing some comment data from being sent to Akismet.</li>
</ul>
<h4>3.1.8</h4>
<p><em>Release Date &#8211; 4 March 2016</em></p>
<ul>
<li>Fixed a bug preventing Akismet from being used with some plugins that rewrite admin URLs.</li>
<li>Reduced the amount of bandwidth used on Akismet API calls</li>
<li>Reduced the amount of space Akismet uses in the database</li>
<li>Fixed a bug that could cause comments caught as spam to be placed in the Pending queue.</li>
</ul>
<h4>3.1.7</h4>
<p><em>Release Date &#8211; 4 January 2016</em></p>
<ul>
<li>Added documentation for the &#8216;akismet_comment_nonce&#8217; filter.</li>
<li>The post-install activation button is now accessible to screen readers and keyboard-only users.</li>
<li>Fixed a bug that was preventing the &#8220;Remove author URL&#8221; feature from working in WordPress 4.4</li>
</ul>
<h4>3.1.6</h4>
<p><em>Release Date &#8211; 14 December 2015</em></p>
<ul>
<li>Improve the notices shown after activating Akismet.</li>
<li>Update some strings to allow for the proper plural forms in all languages.</li>
</ul>
<h4>3.1.5</h4>
<p><em>Release Date &#8211; 13 October 2015</em></p>
<ul>
<li>Closes a potential XSS vulnerability.</li>
</ul>
<h4>3.1.4</h4>
<p><em>Release Date &#8211; 24 September 2015</em></p>
<ul>
<li>Fixed a bug that was preventing some users from automatically connecting using Jetpack if they didn&#8217;t have a current Akismet subscription.</li>
<li>Fixed a bug that could cause comments caught as spam to be placed in the Pending queue.</li>
<li>Error messages and instructions have been simplified to be more understandable.</li>
<li>Link previews are enabled for all links inside comments, not just the author&#8217;s website link.</li>
</ul>
<h4>3.1.3</h4>
<p><em>Release Date &#8211; 6 July 2015</em></p>
<ul>
<li>Notify users when their account status changes after previously being successfully set up. This should help any users who are seeing blank Akismet settings screens.</li>
</ul>
<h4>3.1.2</h4>
<p><em>Release Date &#8211; 7 June 2015</em></p>
<ul>
<li>Reduced the amount of space Akismet uses in the commentmeta table.</li>
<li>Fixed a bug where some comments with quotes in the author name weren&#8217;t getting history entries</li>
<li>Pre-emptive security improvements to ensure that the Akismet plugin can&#8217;t be used by attackers to compromise a WordPress installation.</li>
<li>Better UI for the key entry field: allow whitespace to be included at the beginning or end of the key and strip it out automatically when the form is submitted.</li>
<li>When deactivating the plugin, notify the Akismet API so the site can be marked as inactive.</li>
<li>Clearer error messages.</li>
</ul>
<h4>3.1.1</h4>
<p><em>Release Date &#8211; 17th March, 2015</em></p>
<ul>
<li>Improvements to the &#8220;Remove comment author URL&#8221; JavaScript</li>
<li>Include the pingback pre-check from the 2.6 branch.</li>
</ul>
<h4>3.1</h4>
<p><em>Release Date &#8211; 11th March, 2015</em></p>
<ul>
<li>Use HTTPS by default for all requests to Akismet.</li>
<li>Fix for a situation where Akismet might strip HTML from a comment.</li>
</ul>
<h4>3.0.4</h4>
<p><em>Release Date &#8211; 11th December, 2014</em></p>
<ul>
<li>Fix to make .htaccess compatible with Apache 2.4.</li>
<li>Fix to allow removal of https author URLs.</li>
<li>Fix to avoid stripping part of the author URL when removing and re-adding.</li>
<li>Removed the &#8220;Check for Spam&#8221; button from the &#8220;Trash&#8221; and &#8220;Approved&#8221; queues, where it would have no effect.</li>
<li>Allow automatic API key configuration when Jetpack is installed and connected to a WordPress.com account</li>
</ul>
<h4>3.0.3</h4>
<p><em>Release Date &#8211; 3rd November, 2014</em></p>
<ul>
<li>Fix for sending the wrong data to delete_comment action that could have prevented old spam comments from being deleted.</li>
<li>Added a filter to disable logging of Akismet debugging information.</li>
<li>Added a filter for the maximum comment age when deleting old spam comments.</li>
<li>Added a filter for the number per batch when deleting old spam comments.</li>
<li>Removed the &#8220;Check for Spam&#8221; button from the Spam folder.</li>
</ul>
<h4>3.0.2</h4>
<p><em>Release Date &#8211; 18th August, 2014</em></p>
<ul>
<li>Performance improvements.</li>
<li>Fixed a bug that could truncate the comment data being sent to Akismet for checking.</li>
</ul>
<h4>3.0.1</h4>
<p><em>Release Date &#8211; 9th July, 2014</em></p>
<ul>
<li>Removed dependency on PHP&#8217;s fsockopen function</li>
<li>Fix spam/ham reports to work when reported outside of the WP dashboard, e.g., from Notifications or the WP app</li>
<li>Remove jQuery dependency for comment form JavaScript</li>
<li>Remove unnecessary data from some Akismet comment meta</li>
<li>Suspended keys will now result in all comments being put in moderation, not spam.</li>
</ul>
<h4>3.0.0</h4>
<p><em>Release Date &#8211; 15th April, 2014</em></p>
<ul>
<li>Move Akismet to Settings menu</li>
<li>Drop Akismet Stats menu</li>
<li>Add stats snapshot to Akismet settings</li>
<li>Add Akismet subscription details and status to Akismet settings</li>
<li>Add contextual help for each page</li>
<li>Improve Akismet setup to use Jetpack to automate plugin setup</li>
<li>Fix &#8220;Check for Spam&#8221; to use AJAX to avoid page timing out</li>
<li>Fix Akismet settings page to be responsive</li>
<li>Drop legacy code</li>
<li>Tidy up CSS and Javascript</li>
<li>Replace the old discard setting with a new &#8220;discard pervasive spam&#8221; feature.</li>
</ul>
<h4>2.6.0</h4>
<p><em>Release Date &#8211; 18th March, 2014</em></p>
<ul>
<li>Add ajax paging to the check for spam button to handle large volumes of comments</li>
<li>Optimize javascript and add localization support </li>
<li>Fix bug in link to spam comments from right now dashboard widget</li>
<li>Fix bug with deleting old comments to avoid timeouts dealing with large volumes of comments</li>
<li>Include X-Pingback-Forwarded-For header in outbound WordPress pingback verifications</li>
<li>Add pre-check for pingbacks, to stop spam before an outbound verification request is made</li>
</ul>
<h4>2.5.9</h4>
<p><em>Release Date &#8211; 1st August, 2013</em></p>
<ul>
<li>Update &#8216;Already have a key&#8217; link to redirect page rather than depend on javascript</li>
<li>Fix some non-translatable strings to be translatable</li>
<li>Update Activation banner in plugins page to redirect user to Akismet config page</li>
</ul>
<h4>2.5.8</h4>
<p><em>Release Date &#8211; 20th January, 2013</em></p>
<ul>
<li>Simplify the activation process for new users</li>
<li>Remove the reporter_ip parameter</li>
<li>Minor preventative security improvements</li>
</ul>
<h4>2.5.7</h4>
<p><em>Release Date &#8211; 13th December, 2012</em></p>
<ul>
<li>FireFox Stats iframe preview bug</li>
<li>Fix mshots preview when using https</li>
<li>Add .htaccess to block direct access to files</li>
<li>Prevent some PHP notices</li>
<li>Fix Check For Spam return location when referrer is empty</li>
<li>Fix Settings links for network admins</li>
<li>Fix prepare() warnings in WP 3.5</li>
</ul>
<h4>2.5.6</h4>
<p><em>Release Date &#8211; 26th April, 2012</em></p>
<ul>
<li>Prevent retry scheduling problems on sites where wp_cron is misbehaving</li>
<li>Preload mshot previews</li>
<li>Modernize the widget code</li>
<li>Fix a bug where comments were not held for moderation during an error condition</li>
<li>Improve the UX and display when comments are temporarily held due to an error</li>
<li>Make the Check For Spam button force a retry when comments are held due to an error</li>
<li>Handle errors caused by an invalid key</li>
<li>Don&#8217;t retry comments that are too old</li>
<li>Improve error messages when verifying an API key</li>
</ul>
<h4>2.5.5</h4>
<p><em>Release Date &#8211; 11th January, 2012</em></p>
<ul>
<li>Add nonce check for comment author URL remove action</li>
<li>Fix the settings link</li>
</ul>
<h4>2.5.4</h4>
<p><em>Release Date &#8211; 5th January, 2012</em></p>
<ul>
<li>Limit Akismet CSS and Javascript loading in wp-admin to just the pages that need it</li>
<li>Added author URL quick removal functionality</li>
<li>Added mShot preview on Author URL hover</li>
<li>Added empty index.php to prevent directory listing</li>
<li>Move wp-admin menu items under Jetpack, if it is installed</li>
<li>Purge old Akismet comment meta data, default of 15 days</li>
</ul>
<h4>2.5.3</h4>
<p><em>Release Date &#8211; 8th Febuary, 2011</em></p>
<ul>
<li>Specify the license is GPL v2 or later</li>
<li>Fix a bug that could result in orphaned commentmeta entries</li>
<li>Include hotfix for WordPress 3.0.5 filter issue</li>
</ul>
<h4>2.5.2</h4>
<p><em>Release Date &#8211; 14th January, 2011</em></p>
<ul>
<li>Properly format the comment count for author counts</li>
<li>Look for super admins on multisite installs when looking up user roles</li>
<li>Increase the HTTP request timeout</li>
<li>Removed padding for author approved count</li>
<li>Fix typo in function name</li>
<li>Set Akismet stats iframe height to fixed 2500px.  Better to have one tall scroll bar than two side by side.</li>
</ul>
<h4>2.5.1</h4>
<p><em>Release Date &#8211; 17th December, 2010</em></p>
<ul>
<li>Fix a bug that caused the &#8220;Auto delete&#8221; option to fail to discard comments correctly</li>
<li>Remove the comment nonce form field from the &#8216;Akismet Configuration&#8217; page in favor of using a filter, akismet_comment_nonce</li>
<li>Fixed padding bug in &#8220;author&#8221; column of posts screen</li>
<li>Added margin-top to &#8220;cleared by &#8230;&#8221; badges on dashboard</li>
<li>Fix possible error when calling akismet_cron_recheck()</li>
<li>Fix more PHP warnings</li>
<li>Clean up XHTML warnings for comment nonce</li>
<li>Fix for possible condition where scheduled comment re-checks could get stuck</li>
<li>Clean up the comment meta details after deleting a comment</li>
<li>Only show the status badge if the comment status has been changed by someone/something other than Akismet</li>
<li>Show a &#8216;History&#8217; link in the row-actions</li>
<li>Translation fixes</li>
<li>Reduced font-size on author name</li>
<li>Moved &#8220;flagged by&#8230;&#8221; notification to top right corner of comment container and removed heavy styling</li>
<li>Hid &#8220;flagged by&#8230;&#8221; notification while on dashboard</li>
</ul>
<h4>2.5.0</h4>
<p><em>Release Date &#8211; 7th December, 2010</em></p>
<ul>
<li>Track comment actions under &#8216;Akismet Status&#8217; on the edit comment screen</li>
<li>Fix a few remaining deprecated function calls ( props Mike Glendinning ) </li>
<li>Use HTTPS for the stats IFRAME when wp-admin is using HTTPS</li>
<li>Use the WordPress HTTP class if available</li>
<li>Move the admin UI code to a separate file, only loaded when needed</li>
<li>Add cron retry feature, to replace the old connectivity check</li>
<li>Display Akismet status badge beside each comment</li>
<li>Record history for each comment, and display it on the edit page</li>
<li>Record the complete comment as originally submitted in comment_meta, to use when reporting spam and ham</li>
<li>Highlight links in comment content</li>
<li>New option, &#8220;Show the number of comments you&#8217;ve approved beside each comment author.&#8221;</li>
<li>New option, &#8220;Use a nonce on the comment form.&#8221;</li>
</ul>
<h4>2.4.0</h4>
<p><em>Release Date &#8211; 23rd August, 2010</em></p>
<ul>
<li>Spell out that the license is GPLv2</li>
<li>Fix PHP warnings</li>
<li>Fix WordPress deprecated function calls</li>
<li>Fire the delete_comment action when deleting comments</li>
<li>Move code specific for older WP versions to legacy.php</li>
<li>General code clean up</li>
</ul>
<h4>2.3.0</h4>
<p><em>Release Date &#8211; 5th June, 2010</em></p>
<ul>
<li>Fix &#8220;Are you sure&#8221; nonce message on config screen in WPMU</li>
<li>Fix XHTML compliance issue in sidebar widget</li>
<li>Change author link; remove some old references to WordPress.com accounts</li>
<li>Localize the widget title (core ticket #13879)</li>
</ul>
<h4>2.2.9</h4>
<p><em>Release Date &#8211; 2nd June, 2010</em></p>
<ul>
<li>Eliminate a potential conflict with some plugins that may cause spurious reports</li>
</ul>
<h4>2.2.8</h4>
<p><em>Release Date &#8211; 27th May, 2010</em></p>
<ul>
<li>Fix bug in initial comment check for ipv6 addresses</li>
<li>Report comments as ham when they are moved from spam to moderation</li>
<li>Report comments as ham when clicking undo after spam</li>
<li>Use transition_comment_status action when available instead of older actions for spam/ham submissions</li>
<li>Better diagnostic messages when PHP network functions are unavailable</li>
<li>Better handling of comments by logged-in users</li>
</ul>
<h4>2.2.7</h4>
<p><em>Release Date &#8211; 17th December, 2009</em></p>
<ul>
<li>Add a new AKISMET_VERSION constant</li>
<li>Reduce the possibility of over-counting spam when another spam filter plugin is in use</li>
<li>Disable the connectivity check when the API key is hard-coded for WPMU</li>
</ul>
<h4>2.2.6</h4>
<p><em>Release Date &#8211; 20th July, 2009</em></p>
<ul>
<li>Fix a global warning introduced in 2.2.5</li>
<li>Add changelog and additional readme.txt tags</li>
<li>Fix an array conversion warning in some versions of PHP</li>
<li>Support a new WPCOM_API_KEY constant for easier use with WordPress MU</li>
</ul>
<h4>2.2.5</h4>
<p><em>Release Date &#8211; 13th July, 2009</em></p>
<ul>
<li>Include a new Server Connectivity diagnostic check, to detect problems caused by firewalls</li>
</ul>
<h4>2.2.4</h4>
<p><em>Release Date &#8211; 3rd June, 2009</em></p>
<ul>
<li>Fixed a key problem affecting the stats feature in WordPress MU</li>
<li>Provide additional blog information in Akismet API calls</li>
</ul>
<p><!--section=faq--></p>
<dl>
<dt>Installation Instructions</dt>
<dd>
<p>Upload the Akismet plugin to your blog, Activate it, then enter your <a href=\"https://akismet.com/get/\" rel=\"nofollow\">Akismet.com API key</a>.</p>
<p>1, 2, 3: You&#8217;re done!</p>
</dd>
</dl>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wordpress.org/plugins/akismet/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:30:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Yoast SEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Oct 2010 20:55:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wordpress.org/plugins-wp/wordpress-seo/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"WordPress out of the box is already technically quite a good platform for SEO. This&#8230;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Joost de Valk\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:12921:\"<p><!--section=description--></p>
<p>WordPress out of the box is already technically quite a good platform for SEO. This was true when Joost wrote his original <a href=\"https://yoast.com/articles/wordpress-seo/\" rel=\"nofollow\">WordPress SEO</a> article in 2008 (updated every few months) and it&#8217;s still true today, but that doesn&#8217;t mean you can&#8217;t improve it further! This plugin is written from the ground up by Joost de Valk and his team at <a href=\"https://yoast.com/\" rel=\"nofollow\">Yoast</a> to improve your site&#8217;s SEO on <em>all</em> needed aspects. While this <a href=\"https://yoast.com/wordpress/plugins/seo/\" rel=\"nofollow\">Yoast SEO plugin</a> goes the extra mile to take care of all the technical optimization, more on that below, it first and foremost helps you write better content.  Yoast SEO forces you to choose a focus keyword when you&#8217;re writing your articles, and then makes sure you use that focus keyword everywhere.</p>
<blockquote>
<p><strong>Premium Support</strong><br />
  The Yoast team does not always provide active support for the Yoast SEO plugin on the WordPress.org forums. One-on-one email support is available to people who bought the <a href=\"https://yoast.com/wordpress/plugins/seo-premium/\" rel=\"nofollow\">Premium Yoast SEO plugin</a> only.<br />
  Note that the Premium SEO plugin has several extra features too, including the option to have multiple focus keywords and a redirect manager, so it might be well worth your investment!</p>
<p>You should also check out the <a href=\"https://yoast.com/wordpress/plugins/local-seo/\" rel=\"nofollow\">Yoast Local SEO</a>, <a href=\"https://yoast.com/wordpress/plugins/news-seo/\" rel=\"nofollow\">Yoast News SEO</a> and <a href=\"https://yoast.com/wordpress/plugins/video-seo/\" rel=\"nofollow\">Yoast Video SEO</a> extensions to Yoast SEO. These of course come with support too.</p>
<p><strong>Bug Reports</strong><br />
  Bug reports for Yoast SEO are <a href=\"https://github.com/Yoast/wordpress-seo\" rel=\"nofollow\">welcomed on GitHub</a>. Please note GitHub is <em>not</em> a support forum, and issues that aren&#8217;t properly qualified as bugs will be closed.</p>
</blockquote>
<h4>Write better content with Yoast SEO</h4>
<p>Using the snippet preview, you can see a rendering of what your post or page will look like in the search results, whether your title is too long or too short, and whether your meta description makes sense in the context of a search result. This way the plugin will help you not only increase rankings but also increase the click through rate for organic search results.</p>
<h4>Page Analysis</h4>
<p>The Yoast SEO plugins <a href=\"https://yoast.com/content-seo-wordpress-linkdex/\" rel=\"nofollow\">Page Analysis</a> functionality checks simple things you&#8217;re bound to forget. It checks, for instance, if you have images in your post and whether they have an alt tag containing the focus keyword for that post. It also checks whether your posts are long enough, whether you&#8217;ve written a meta description and if that meta description contains your focus keyword, if you&#8217;ve used any subheadings within your post, etc. etc.</p>
<p>The plugin alsgruo allows you to write meta titles and descriptions for all your category, tag and custom taxonomy archives, giving you the option to further optimize those pages.</p>
<p>Combined, this plugin makes sure that your content is the type of content search engines will love!</p>
<h4>Technical WordPress Search Engine Optimization</h4>
<p>While out of the box WordPress is pretty good for SEO, it needs some tweaks here and there. This Yoast SEO plugin guides you through some of the settings needed, for instance by reminding you to enable pretty permalinks. But it also goes beyond that, by automatically optimizing and inserting the meta tags and link elements that Google and other search engines like so much:</p>
<h4>Meta &amp; Link Elements</h4>
<p>With the Yoast SEO plugin you can control which pages Google shows in its search results and which pages it doesn&#8217;t show. By default, it will tell search engines to index all of your pages, including category and tag archives, but to only show the first pages in the search results. It&#8217;s not very useful for a user to end up on the third page of your &#8220;personal&#8221; category, right?</p>
<p>WordPress itself only shows canonical link elements on single pages, but Yoast SEO makes it output canonical link elements everywhere. Google has recently announced they would also use <code>rel=\"next\"</code> and <code>rel=\"prev\"</code> link elements in the <code>head</code> section of your paginated archives. This plugin adds those automatically. See <a href=\"https://yoast.com/rel-next-prev-paginated-archives/\" rel=\"nofollow\">this post</a> for more info.</p>
<h4>XML Sitemaps</h4>
<p>The Yoast SEO plugin has the most advanced XML Sitemaps functionality in any WordPress plugin. Once you check the box, it automatically creates XML sitemaps and notifies Google &amp; Bing of the sitemaps&#8217; existence. These XML sitemaps include the images in your posts &amp; pages too, so that your images may be found better in the search engines too.</p>
<p>These XML Sitemaps will even work on large sites, because of how they&#8217;re created, using one index sitemap that links to sub-sitemaps for each 1,000 posts. They will also work with custom post types and custom taxonomies automatically, while giving you the option to remove those from the XML sitemap should you wish to.</p>
<p>Because of using <a href=\"https://yoast.com/xsl-stylesheet-xml-sitemap/\" rel=\"nofollow\">XSL stylesheets for these XML Sitemaps</a>, the XML sitemaps are easily readable for the human eye too, so you can spot things that shouldn&#8217;t be in there.</p>
<h4>RSS Optimization</h4>
<p>Are you being outranked by scrapers? Instead of cursing at them, use them to your advantage! By automatically adding a link to your RSS feed pointing back to the original article, you&#8217;re telling the search engine where they should be looking for the original. This way, the Yoast SEO plugin increases your own chance of ranking for your chosen keywords and gets rid of scrapers in one go!</p>
<h4>Breadcrumbs</h4>
<p>If your theme is compatible, and themes based on for instance Genesis or by WooThemes often are, you can use the built-in Breadcrumbs functionality. This allows you to create an easy navigation that is great for both users and search engines, and will support the search engines in understanding the structure of your site.</p>
<p>Making your theme compatible isn&#8217;t hard either, check <a href=\"https://kb.yoast.com/kb/implement-wordpress-seo-breadcrumbs/\" rel=\"nofollow\">these instructions</a>.</p>
<h4>Edit your .htaccess and robots.txt file</h4>
<p>Using the built-in file editor, you can edit your WordPress blog&#8217;s <code>.htaccess</code> and <code>robots.txt</code> file, giving you direct access to the two most powerful files, from an SEO perspective, in your WordPress install.</p>
<h4>Social Integration</h4>
<p>SEO and Social Media are heavily intertwined. That&#8217;s why this plugin also comes with a Facebook OpenGraph implementation and will soon also support Google+ sharing tags.</p>
<h4>Multi-Site Compatible</h4>
<p>The Yoast SEO plugin, unlike some others, is fully Multi-Site compatible. The XML Sitemaps work fine in all setups and you even have the option, in the Network settings, to copy the settings from one blog to another, or make blogs default to the settings for a specific blog.</p>
<h4>Import &amp; Export functionality</h4>
<p>If you have multiple blogs, setting up plugins like this one on all of them might seem like a daunting task. Except that it&#8217;s not, because what you can do is simple: you set up the plugin once. You then export your settings and simply import them on all your other sites. It&#8217;s that simple!</p>
<h4>Import functionality for other WordPress SEO plugins</h4>
<p>If you&#8217;ve used All In One SEO Pack or HeadSpace2 before using this plugin, you might want to import all your old titles and descriptions. You can do that easily using the built-in import functionality. There&#8217;s also import functionality for some of the older Yoast plugins, like Robots Meta and RSS footer.</p>
<p>Should you have a need to import from another SEO plugin to Yoast SEO, or from a theme like Genesis or Thesis, you can use the <a href=\"https://wordpress.org/extend/plugins/seo-data-transporter/\" rel=\"nofollow\">SEO Data Transporter</a> plugin, which will easily convert your SEO meta data from and to a whole set of plugins like Platinum SEO, SEO Ultimate, Greg&#8217;s High Performance SEO, and themes like Headway, Hybrid, WooFramework, Catalyst etc.</p>
<p>Read <a href=\"https://yoast.com/all-in-one-seo-pack-migration/\" rel=\"nofollow\">this migration guide</a> if you still have questions about migrating from another SEO plugin to Yoast SEO.</p>
<h4>Yoast SEO Plugin in your Language!</h4>
<p>Currently a huge translation project is underway, translating Yoast SEO in as much as 24 languages. So far, the translations for French and Dutch are complete, but we still need help on a lot of other languages, so if you&#8217;re good at translating, please join us at <a href=\"http://translate.yoast.com\" rel=\"nofollow\">translate.yoast.com</a>.</p>
<h4>News SEO</h4>
<p>Be sure to also check out the premium <a href=\"https://yoast.com/wordpress/plugins/news-seo/\" rel=\"nofollow\">News SEO module</a> if you need Google News Sitemaps. It tightly integrates with Yoast SEO to give you the combined power of News Sitemaps and full Search Engine Optimization.</p>
<h4>Further Reading</h4>
<p>For more info, check out the following articles:</p>
<ul>
<li>The <a href=\"https://kb.yoast.com/kb/category/yoast-seo/\" rel=\"nofollow\">Yoast SEO Knowledgebase</a>.</li>
<li><a href=\"https://yoast.com/articles/wordpress-seo/\" rel=\"nofollow\">WordPress SEO &#8211; The definitive Guide by Yoast</a>.</li>
<li>Once you have great SEO, you&#8217;ll need the <a href=\"https://yoast.com/articles/wordpress-hosting/\" rel=\"nofollow\">best WordPress Hosting</a>.</li>
<li>The <a href=\"https://yoast.com/wordpress/plugins/seo/\" rel=\"nofollow\">Yoast SEO Plugin</a> official homepage.</li>
<li>Other <a href=\"https://yoast.com/wordpress/plugins/\" rel=\"nofollow\">WordPress Plugins</a> by the same team.</li>
<li>Follow Yoast on <a href=\"https://facebook.com/yoast\" rel=\"nofollow\">Facebook</a> &amp; <a href=\"http://twitter.com/yoast\" rel=\"nofollow\">Twitter</a>.</li>
</ul>
<h3>From within WordPress</h3>
<ol>
<li>Visit &#8216;Plugins &gt; Add New&#8217;</li>
<li>Search for &#8216;Yoast SEO&#8217;</li>
<li>Activate Yoast SEO from your Plugins page.</li>
<li>Go to &#8220;after activation&#8221; below.</li>
</ol>
<h3>Manually</h3>
<ol>
<li>Upload the <code>wordpress-seo</code> folder to the <code>/wp-content/plugins/</code> directory</li>
<li>Activate the Yoast SEO plugin through the &#8216;Plugins&#8217; menu in WordPress</li>
<li>Go to &#8220;after activation&#8221; below.</li>
</ol>
<h3>After activation</h3>
<ol>
<li>You should see (a notice to start) the Yoast SEO configuration wizard.</li>
<li>Go through the configuration wizard and set up the plugin for your site.</li>
<li>You&#8217;re done!</li>
</ol>
<p><!--section=faq--></p>
<p>You&#8217;ll find answers to many of your questions on <a href=\"https://kb.yoast.com/kb/category/yoast-seo/\" rel=\"nofollow\">kb.yoast.com</a>.</p>
<p><!--section=changelog--></p>
<h4>4.7.1</h4>
<p>Release Date: May 9th, 2017</p>
<ul>
<li>Bugfixes
<ul>
<li>Fixes a bug where the analysis wouldn&#8217;t work on Internet Explorer.</li>
</ul>
</li>
</ul>
<h4>4.7.0</h4>
<p>Release Date: May 2nd, 2017</p>
<ul>
<li>
<p>Enhancements</p>
<ul>
<li>Adds transition words for Italian.</li>
<li>Adds a new check in the analysis for the presence of at least one internal link.</li>
</ul>
</li>
<li>
<p>Bugfixes</p>
<ul>
<li>Fixes a bug where the <code>_yst_is_cornerstone</code> meta value was not prefixed, causing some themes/plugins to output this meta value.</li>
<li>Fixes a bug where style and script elements were parsed for the prominent words.</li>
<li>Fixes a bug where the cursor pointer was in front of the metabox.</li>
</ul>
</li>
</ul>
<h4>4.6.0</h4>
<p>Release Date: April 11th, 2017</p>
<ul>
<li>
<p>Enhancements</p>
<ul>
<li>Improves a language string, props <a href=\"https://github.com/Soean\" rel=\"nofollow\">S�ren Wrede</a>.</li>
<li>Improves the configuration wizard with clear information about the configuration.</li>
<li>Adds the ability to mark posts as cornerstone content.</li>
</ul>
</li>
<li>
<p>Bugfixes</p>
<ul>
<li>Fixes an issue in combination with WooCommerce 3.0 where the plugins would load incompatible select2 versions.</li>
</ul>
</li>
</ul>
<h4>Earlier versions</h4>
<p>For the changelog of earlier versions, please refer to the separate changelog.txt file.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Jetpack by WordPress.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wordpress.org/plugins/jetpack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jan 2011 02:21:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://wordpress.org/plugins-wp/jetpack/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:112:\"The one plugin you need for stats, related posts, search engine optimization, social sharing, protection,&#8230;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Automattic\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:38101:\"<p><!--section=description--></p>
<p>Keep any WordPress site secure, increase traffic, and engage your readers.</p>
<h4>Traffic and SEO Tools</h4>
<p>Traffic is the lifeblood of any website. Jetpack includes:</p>
<ul>
<li>[free] Site stats and analytics</li>
<li>[free] Automatic sharing on Facebook, Twitter, LinkedIn, Tumblr, Reddit, and WhatsApp</li>
<li>[free] Related posts</li>
<li>[paid] Search engine optimization tools for Google, Bing, Twitter, Facebook, and WordPress.com</li>
<li>[paid] Advertising program that includes the best of AdSense, Facebook Ads, AOL, Amazon, Google AdX, and Yahoo</li>
</ul>
<h4>Security and Backup Services</h4>
<p>Stop worrying about data loss, downtime, and hacking. Jetpack provides:</p>
<ul>
<li>[free] Brute force attack protection</li>
<li>[free] Downtime and uptime monitoring</li>
<li>[free] Secured logins and two-factor authentication</li>
<li>[paid] Malware scanning, code scanning, and threat resolution</li>
<li>[paid] Site backups, restores, and migrations</li>
</ul>
<h4>Content Creation</h4>
<p>Add rich, beautifully-presented media &#8212; no graphic design expertise necessary:</p>
<ul>
<li>[free] A high-speed CDN for your images</li>
<li>[free] Carousels, slideshows, and tiled galleries</li>
<li>[free] Simple embeds from YouTube, Google Documents, Spotify and more</li>
<li>[free] Sidebar customization including Facebook, Twitter, and RSS feeds</li>
<li>[free] Extra sidebar widgets including blog stats, calendar, and author widgets</li>
<li>[paid] High-speed, ad-free, and high-definition video hosting</li>
</ul>
<h4>Discussion and Community</h4>
<p>Create a connection with your readers and keep them coming back to your site with:</p>
<ul>
<li>[free] Email subscriptions</li>
<li>[free] Comment login with Facebook, Twitter, and Google</li>
<li>[free] Fully-customizable contact forms</li>
<li>[free] Infinite scroll for your posts</li>
</ul>
<h4>Expert Support</h4>
<p>We have an entire team of Happiness Engineers ready to help you. Ask your questions in the support forum, or <a href=\"https://jetpack.com/contact-support\" rel=\"nofollow\">contact us directly</a>.</p>
<h4>Paid Services</h4>
<p>Most of Jetpack&#8217;s features and services are free. Jetpack also provides advanced security and backup services, video hosting, site monetization, priority support, and more SEO tools in three <a href=\"https://jetpack.com/pricing?from=wporg\" rel=\"nofollow\">simple and affordable plans</a>.</p>
<h4>Get Started</h4>
<p>Installation is free, quick, and easy. Set up <a href=\"https://jetpack.com/install?from=wporg\" rel=\"nofollow\">the free plan</a> in minutes.</p>
<p><!--section=installation--></p>
<h4>Automated Installation</h4>
<p>Installation is free, quick, and easy. <a href=\"https://jetpack.com/install?from=wporg\" rel=\"nofollow\">Install Jetpack from our site</a> in minutes.</p>
<h4>Manual Alternatives</h4>
<p>Alternatively, install Jetpack via the plugin directory, or upload the files manually to your server and follow the on-screen instructions. If you need additional help <a href=\"http://jetpack.com/support/installing-jetpack/\" rel=\"nofollow\">read our detailed instructions</a>.</p>
<p><!--section=faq--></p>
<dl>
<dt>Installation Instructions</dt>
<dd>
<h4>Automated Installation</h4>
<p>Installation is free, quick, and easy. <a href=\"https://jetpack.com/install?from=wporg\" rel=\"nofollow\">Install Jetpack from our site</a> in minutes.</p>
<h4>Manual Alternatives</h4>
<p>Alternatively, install Jetpack via the plugin directory, or upload the files manually to your server and follow the on-screen instructions. If you need additional help <a href=\"http://jetpack.com/support/installing-jetpack/\" rel=\"nofollow\">read our detailed instructions</a>.</p>
</dd>
<dt>Is Jetpack Free?</dt>
<dd>
<p>Yes! Jetpack&#8217;s core features are and always will be free.</p>
<p>These include: <a href=\"https://jetpack.com/features/traffic/site-stats\" rel=\"nofollow\">site stats</a>, a <a href=\"https://jetpack.com/features/writing/content-delivery-network/\" rel=\"nofollow\">high-speed CDN</a> for images, <a href=\"https://jetpack.com/features/traffic/related-posts\" rel=\"nofollow\">related posts</a>, <a href=\"https://jetpack.com/features/security/downtime-monitoring\" rel=\"nofollow\">downtime monitoring</a>, brute force <a href=\"https://jetpack.com/features/security/brute-force-attack-protection\" rel=\"nofollow\">attack protection</a>, <a href=\"https://jetpack.com/features/traffic/automatic-publishing/\" rel=\"nofollow\">automated sharing</a> to social networks, <a href=\"https://jetpack.com/features/writing/sidebar-customization/\" rel=\"nofollow\">sidebar customization</a>, and many more.</p>
</dd>
<dt>Should I purchase a paid plan?</dt>
<dd>
<p>Jetpack&#8217;s paid services include automated backups, security scanning, spam filtering, video hosting, site monetization, SEO tools, and priority support.</p>
<p>If you&#8217;re interested in learning more about the extra layers of protection and advanced tools available, learn more about our <a href=\"https://jetpack.com/pricing?from=wporg\" rel=\"nofollow\">paid plans</a>.</p>
</dd>
<dt>Why do I need a WordPress.com account?</dt>
<dd>
<p>Since Jetpack and its services are provided and hosted by WordPress.com, a WordPress.com account is required for Jetpack to function.</p>
</dd>
<dt>I already have a WordPress account, but Jetpack isn&#8217;t working. What&#8217;s going on?</dt>
<dd>
<p>A WordPress.com account is different from the account you use to log into your self-hosted WordPress. If you can log into <a href=\"https://wordpress.com\" rel=\"nofollow\">WordPress.com</a>, then you already have a WordPress.com account. If you can&#8217;t, you can easily create one <a href=\"https://jetpack.com/install?from=wporg\" rel=\"nofollow\">during installation</a>.</p>
</dd>
<dt>How do I view my stats?</dt>
<dd>
<p>Once you&#8217;ve installed Jetpack your stats will be available on <a href=\"https://wordpress.com/stats\" rel=\"nofollow\">WordPress.com/Stats</a>, on the official <a href=\"https://apps.wordpress.com/mobile/\" rel=\"nofollow\">WordPress mobile apps</a>, and on your Jetpack dashboard.</p>
</dd>
<dt>How do I contribute to Jetpack?</dt>
<dd>
<p>There are opportunities for developers at all levels to contribute. <a href=\"https://jetpack.com/contribute\" rel=\"nofollow\">Learn more about contributing to Jetpack</a> or consider <a href=\"https://jetpack.com/beta\" rel=\"nofollow\">joining our beta program</a>.</p>
</dd>
</dl>
<p><!--section=changelog--></p>
<h4>4.9</h4>
<ul>
<li>Release date: May 2nd, 2017</li>
<li>Release post: http://wp.me/p1moTy-4Rl</li>
</ul>
<p><strong>Major Enhancements</strong></p>
<ul>
<li>New &#8220;EU Cookie Law Banner&#8221;, Flickr, and &#8220;Internet Defense League&#8221; widgets.</li>
</ul>
<p><strong>Slightly Less Exciting Enhancements</strong></p>
<ul>
<li>Success notices are automatically dismissed after a short period.</li>
<li>Removed unused code from &#8220;My Jetpack&#8221; interface and deprecated an XML-RPC method.</li>
<li>Contact Form now adds display names to email addresses in the <code>To</code> header.</li>
<li>Added an updated multiple unit tests increasing code coverage.</li>
<li>Development mode now also shows module list.</li>
<li>Updated the list of locales available in Jetpack.</li>
<li>Plugin auto-updates only triggered from WordPress.com and now trigger WordPress&#8217; maintenance mode.</li>
</ul>
<p><strong>Performance Improvements</strong></p>
<ul>
<li>Record comment content modifications and moderation events to make sure comments are always up to date on WordPress.com.</li>
<li>Sync post deletions, changes to sidebar, user events (addition, removal, and update) and theme installation.</li>
<li>We now distinguish between a new and an updated attachment.</li>
<li>Sync plugin and theme names when a related event is triggered including theme updates.</li>
</ul>
<p><strong>Compatibility Improvements</strong></p>
<ul>
<li>Protect avoid conflicts with other plugins hooking into the log in form.</li>
<li>Contact Form not auto-activated when Ninja Forms is active.</li>
<li>WordPess.com REST API now allows <code>HTTP PUT</code> requests.</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Fixed wording in Post By Email button when no email address has been generated.</li>
<li>Fixed a notice in the subscription widget in PHP 7.1</li>
<li>Properly display VaultPress notices in the Jetpack dashboard.</li>
<li>VideoPress now included in search results for &#8220;video&#8221; and fixed positioning of search icon on mobile screens.</li>
<li>Protect supports IPv6 addresses properly.</li>
<li>Dashboard avoids API requests being cached on some hosts and avoids errors when Spellchecker is inactive.</li>
<li>Contact Form message content type is now set properly to restore compatibility with email plugins.</li>
<li>Ads not displayed in the portfolio projects custom content type.</li>
<li>Display all sites available in a network, even on large multisite installations.</li>
<li>Featured Image is always used in tweets posted via Publicize.</li>
<li>Avoid fatal errors when the exclusion parameter in Related Posts is not a string.</li>
<li>Allow the removal of all custom title settings in the SEO feature.</li>
<li>Make sure images are not distorted when Tiled Galleries uses Photon.</li>
<li>Avoid PHP warnings and errors in the Stats dashboard on Multisite.</li>
<li>Avoid errors when the Jetpack plugin is deleted.</li>
</ul>
<h4>4.8.2</h4>
<ul>
<li>Release date: April 7th, 2017</li>
<li>Release post: http://wp.me/p1moTy-4P0</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Fixed a bug that prevented activating/deactivating of some features in PHP versions below 5.4.</li>
<li>Removed an unused function that was also incompatible with PHP versions below 5.4.</li>
<li>Fixed a bug that was causing a blank Jetpack admin area.</li>
</ul>
<h4>4.8.1</h4>
<ul>
<li>Release date: April 5th, 2017</li>
<li>Release post: http://wp.me/p1moTy-4N5</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>An incompatibility with PHP versions lower than 5.4 was introduced in the last release, causing a fatal error and we&#8217;ve immediately fixed this.</li>
<li>Sitemaps: Some plugins were relying on a function that was removed in the last release, which has been fixed.</li>
<li>General: Clicking on the info icon in the settings area will no longer jump to the top of the page.</li>
<li>General: The Anti-spam card will always display the correct status in the Jetpack dashboard.</li>
</ul>
<h4>4.8</h4>
<ul>
<li>Release date: April 4th, 2017</li>
<li>Release post: http://wp.me/p1moTy-4gA</li>
</ul>
<p><strong>Major Enhancements</strong></p>
<ul>
<li>Easier to navigate Jetpack&#8217;s feature settings in your dashboard and WordPress.com.</li>
<li>New WordPress.com Toolbar provides quick access to site management, stats, and other services.</li>
<li>New MailChimp Subscribe Popup widget.</li>
<li>Sitemaps are faster and now support sites with a very large amount of posts.</li>
<li>Contact Form now has a plain-text alternative and better avoids spam filters.</li>
<li>Debug form includes extra information to better prioritize your support requests.</li>
<li>Photon can now be used within the dashboard, and supports bbPress topics and replies.</li>
</ul>
<p><strong>Slightly Less Exciting Enhancements</strong></p>
<ul>
<li>Improved previously confusing wording in Stats dashboard, and Featured Content options.</li>
<li>You can now embed Apple Keynotes straight from icloud.com in your posts and pages.</li>
<li>Changed Infinite Scroll button text on taxonomy page and added a new filter to short-circuit the <code>is_last_batch()</code> method.</li>
<li>Open Graph now uses transients to save image IDs.</li>
<li>You can now use full URLs in the Social Media Icons widget.</li>
<li>Milestone widget now allows custom links to open in a new window.</li>
<li>VideoPress videos can be used as headers in themes that support it, like Twenty Seventeen.</li>
<li>Extracted the timezone offset method from the Upcoming Events widget so it can be used by other features.</li>
</ul>
<p><strong>Performance Improvements</strong></p>
<ul>
<li>Database load is reduced during updates on large sites with multiple servers by retaining hashes for current and current-1 versions.</li>
<li>Disk storage is reduced on large multisite networks by storing the <code>jetpack_file_data</code> option in the <code>wp_sitemeta</code> table.</li>
<li>Jetpack plan data now uses the WordPress.com REST API.</li>
<li>Slovakian language files now rely on WordPress.org&#8217;s language packs.</li>
</ul>
<p><strong>Accessibility Improvements</strong></p>
<ul>
<li>Improved post details clipping for better screen reader support.</li>
<li>Updated custom language packs for multiple languages.</li>
</ul>
<p><strong>Security Improvements</strong></p>
<ul>
<li>We now avoid path disclosure via cookies in PHP error messages.</li>
</ul>
<p><strong>Compatibility Improvements</strong></p>
<ul>
<li>Removed deprecated functions <code>get_theme</code> and <code>get_current_theme</code>.</li>
<li>Publicize now works with third-party plugins like WP Recipe Maker.</li>
<li>Open Graph Meta Tags are now enabled when you use the &#8220;Head, Footer and Post Injections&#8221; plugin.</li>
<li>Better support for WooCommerce data sync and backup.</li>
<li>We now also sync the <code>sync_via_cron</code> setting, the user&#8217;s chosen language, and WP Super Cache&#8217;s globals and constants.</li>
<li>We no longer sync post types from the WordPress Automatic Plugin and RSS AutoPilot to avoid synchronization issues.</li>
<li>Sync settings can now be edited from the WordPress.com REST API to better troubleshoot sync issues.</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Gravatar is always displayed in Settings.</li>
<li>Submenu items always use relative links.</li>
<li>Contact Form avoids PHP notices when using the form in a Text widget.</li>
<li>Content Options now correctly displays single characters word count on sites with multibyte languages.</li>
<li>Administrator area translations fixed for several languages.</li>
<li>Added proper support for Formal/Informal translation versions for languages that support them.</li>
<li>Site Icons are always used as fallback Open Graph Image tags.</li>
<li>Protect removes port number when server returns a port alongside a stored IP address.</li>
<li>Filters ensure that more than 1,024 posts can be excluded from Related Posts.</li>
<li>When the email is already subscribed we now show the correct notification in the subscription form.</li>
<li>When using the Email sharing button, we now avoid syntax errors due to unexpected characters in the from name.</li>
<li>Remove deprecated <code>jetpack_publicize_post</code> action.</li>
<li>VideoPress now avoids PHP Notices when fetching video information.</li>
<li>Instagram base URL now uses <code>www</code> in the Social Media Icons widget.</li>
<li>All values entered in Facebook Page Plugin widget settings are now escaped.</li>
<li>Widget Visibility now avoids memory issues on sites with a lot of registered users.</li>
</ul>
<h4>4.7.1</h4>
<ul>
<li>Release date: March 14th, 2017</li>
<li>Release post: http://wp.me/p1moTy-48Y</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Carousel: avoid javascript errors that may cause issues with Slideshows or Tiled Galleries.</li>
<li>Markdown: always enable Markdown for posts whenever the module is active.</li>
<li>Sharing: make sure that sharing buttons open in a small pop-up instead of a separate window.</li>
<li>SSO: Avoid token or nonce errors when trying to log in to your site via the Secure Sign On option.</li>
<li>VideoPress: add in the ability to get video thumbnails from the WordPress.com REST API.</li>
<li>Widgets: improve rendering of the Image Widget via Photon.</li>
<li>Widget Visibility: avoid empty widget visibility rules after updating to Jetpack 4.7.</li>
<li>Widget Visibility: restore the option to make widgets appear on archive pages of different Custom Post Types.</li>
<li>Widget Visibility: migrate widget visibility settings to the new major Page rule for Custom Post Types.</li>
<li>Widget Visibility: add missing CSS for widget visibility settings on sites using an RTL language.</li>
</ul>
<h4>4.7</h4>
<ul>
<li>Release date: March 7th, 2017</li>
<li>Release post: http://wp.me/p1moTy-46L</li>
</ul>
<p><strong>Enhancements</strong></p>
<ul>
<li>Quickly jump to post specific stats on WordPress.com with a new link.</li>
<li>We&#8217;ve added more information to our debug tools to improve your support experience.</li>
<li>New HTML5 versions of our house ads are out.</li>
<li>Display custom copyright EXIF information in the Carousel with this new filter.</li>
<li>We&#8217;ve highlighted the ability to export Contact Form feedback as it was being overlooked.</li>
<li>If you have images on WordPress.com we&#8217;re going to skip using Photon when the images include resize parameters.</li>
<li>It is now possible to use the Sharing filter to customize the emails sent from the Email Sharing button.</li>
<li>We&#8217;ve updated the library powering the Print link in the Recipe shortcode.</li>
<li>Customize the speed and display of your slideshows with new Slideshow shortcode filters.</li>
<li>The Twitch.tv shortcode now uses Twitch&#8217;s new embedded player.</li>
<li>Social Menus now come with the option to use SVG icons.</li>
<li>Customize the content of the Display Posts Widget with a new filter.</li>
<li>We&#8217;ve added a new email field to the Contact Info Widget.</li>
<li>The Image and the Text widgets now use Photon if it is enabled.</li>
<li>The WordPress.com REST API got several updates including using <code>register_rest_route()</code> consistently for registering, new date and time format settings, a filter for theme info results, new links and endpoints, and more.</li>
<li>We cleaned up the Google+ Shortcode JS library and added a way to filter the SlideShare shortcode.</li>
</ul>
<p><strong>Performance Improvements</strong></p>
<ul>
<li>Experience better performance with single page load caching of the media summary.</li>
<li>We made some improvements to avoid slow queries on sites with thousands of images.</li>
<li>The Top Posts widget now utilizes an endpoint from the WP.com REST API improving performance.</li>
<li>Improve development mode performance by only calling <code>site_url()</code> once.</li>
<li>We rewrote the way major/minor rules lists are generated to save bandwidth, and memory for sites using Widget Visibility.</li>
<li>We&#8217;ve removed sync options that weren&#8217;t needed to save memory during the sync process.</li>
</ul>
<p><strong>Accessibility</strong></p>
<ul>
<li>We&#8217;ve improved the highlight of the stats range for a better visual experience and to make it consistent with other areas of the dashboard.</li>
<li>Added a missing label to one of the fields in the Email sharing dialog.</li>
<li>We&#8217;ve enabled keyboard focus styling in the new admin interface.</li>
<li>Increased padding to sharing buttons on mobile to avoid usability issues.</li>
<li>We&#8217;ve replaced Widget Visibility text labels with icons to improve usability on smaller devices.</li>
</ul>
<p><strong>Slightly Less Exciting Enhancements:</strong></p>
<ul>
<li>We&#8217;ve added a filter to allow you to remove the Comment Form title.</li>
<li>The Development Mode notice got an update to include all possible options to activate Development mode.</li>
<li>Jetpack registration function got an update and cleanup.</li>
<li>A notice displayed to WooCommerce store owners now detects when WooCommerce Services is installed, but not active.</li>
<li>We&#8217;ve removed the Holiday Snow settings until you need them.</li>
<li>Improved Infinite Scroll settings to reduce confusion.</li>
<li>The HTML classes <code>infinite-scroll</code> and <code>neverending</code> are now applied using JS instead of PHP.</li>
<li>We&#8217;ve updated the support link appearing when you&#8217;re locked out of your site.</li>
<li>New Unit Tests were added to make sure Publicize doesn&#8217;t break when making changes to the Publicize process.</li>
<li>We&#8217;ve added a sync filter to allow customizing timeout.</li>
<li>The Top Posts widget now supports non-square image sizes.</li>
<li>Added the Video GUID to the media API endpoint.</li>
</ul>
<p><strong>Improved Compatibility</strong></p>
<ul>
<li>Fixed some W3C validation errors in Comments.</li>
<li>Infinite Scroll now works beautifully with the Twenty Seventeen Theme.</li>
<li>Translate new terms easier with an improvement to the translator comments.</li>
<li>We switched to use Core functions to retrieve the list of sites in a multisite network for more accurate results.</li>
<li>We added Product visibility to post meta whitelist, for better control of products displayed in Related Posts.</li>
<li>We no longer sync specific post meta data added by Postman or WP RSS Mutli Importer to avoid performance issues during the sync process.</li>
<li>We&#8217;re now avoiding conflicts with plugins adding the core Video upload library to the post editor.</li>
<li>Removed deprecated compatibility code for older versions of WordPress.</li>
<li>We had some Shortcode conflicts with WordPress Post embeds, but that&#8217;s been fixed.</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>The Carousel <code>jp_carousel_load_for_images_linked_to_file</code> filter wasn&#8217;t working well with Photon, this has been fixed.</li>
<li>Carousel is now working well when loaded from infinite scroll.</li>
<li>We removed double slashes from file paths in the Contact Form to avoid errors in specific server environments.</li>
<li>Fixed a problem where CSS was being stripped when migrating from Jetpack&#8217;s Custom CSS to Core&#8217;s CSS editor.</li>
<li>Our Debug Tool is now reporting the correct URL when WordPress lives in a subdirectory.</li>
<li>Found and fixed a PHP error when uninstalling Jetpack.</li>
<li>Infinite Scroll is no longer buggy when displaying the last page, and is more compatible with certain themes that were returning posts when there were none left to show.</li>
<li>We&#8217;re now skipping Photon for .ashx files.</li>
<li>The Twitter character counter in Publicize got a fix to display info correctly.</li>
<li>Related Posts are now displaying correctly for everyone, and we brought back the <code>jetpack_sharing_headline_html</code> filter.</li>
<li>We&#8217;ve improved Sharing to render custom sharing services correctly, include Open Graph Meta Tags, and avoid JavaScript errors when jQuery is enqueued in the footer.</li>
<li>Synchronization scheduling issues have been resolved.</li>
<li>We&#8217;re now trimming spaces in URLs for Image and Display Posts Widgets.</li>
<li>Widget Visibility wasn&#8217;t playing nice on taxonomy pages, this is no longer the case.</li>
<li>The WordPress.com REST API received a couple of fixes to remove PHP errors when editing via the WordPress.com interface, authentication errors when using third-party apps, and permission errors when trying to preview edited posts in the WordPress.com editor.</li>
</ul>
<h4>4.6</h4>
<ul>
<li>Release date: February 7, 2017</li>
<li>Release post: http://wp.me/p1moTy-40g</li>
</ul>
<p><strong>New Features and Improvements</strong></p>
<ul>
<li>Enable Google Analytics without touching a line of code with this new Jetpack feature.</li>
</ul>
<p><strong>Performance Improvements</strong></p>
<ul>
<li>We&#8217;ve updated all outbound links to use HTTPS to improve performance and security.</li>
<li>Photon now leverages a new WordPress core function to improve performance a bit.</li>
</ul>
<p><strong>Enhancements</strong></p>
<ul>
<li>Keep an eye out for a note from WooCommerce on how your e-commerce store may benefit from our new USPS and CanadaPost shipping functionality.</li>
<li>We&#8217;ve added an error message if Publicize isn&#8217;t functioning as it should be.</li>
<li>The Twitter Widget timeline now displays the tweet limit count as 20, prior to this it appeared to have no limit.</li>
</ul>
<p><strong>Slightly Less Exciting Enhancements:</strong></p>
<ul>
<li>In an effort to help us better understand features that are being used, Twitter&#8217;s timeline widget and Twitter&#8217;s shortcodes now pass Jetpack&#8217;s partner ID.</li>
<li>We&#8217;ve added new API endpoints allowing us to enable translation auto-updates and pull post rows and metadata for backups.</li>
<li>We&#8217;re now retrieving all feature settings in the readable <code>/settings</code> endpoint.</li>
</ul>
<p><strong>Improved Compatibility</strong></p>
<ul>
<li>We&#8217;ve eliminated some notices and warnings when using Jetpack on a server running PHP 7.1 or on servers where <code>print_r()</code> is disabled.</li>
<li>Photon now avoids PHP notices when your site is using plugins that do srcset CDN replacement.</li>
<li>When the sharing options appear to be incorrect due to site configuration issues we force it to retrieve the right options avoiding potential fatal errors.</li>
<li>We&#8217;ve added some shortcode CSS and widget class names prefixes to avoid conflicts with other plugins.</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Some sites were using illegal multibyte characters and failing to sync posts, this has been fixed.</li>
<li>IE11 was giving our admin layout a bit of a problem but we rectified that.</li>
<li>There were some PHP notices popping up when a site has no posts so we got rid of them.</li>
<li>The new Jetpack Ads feature will auto disable itself if your Jetpack plan doesn&#8217;t support the feature.</li>
<li>We fixed a few PHP notices and warnings related to the Custom CSS feature.</li>
<li>The connection banner&#8217;s &#8220;dismiss&#8221; icon was giving us a little trouble, but we got it fixed right up.</li>
<li>The Likes feature was showing a PHP notice when there was no $post object, this has been fixed.</li>
<li>We&#8217;ve brought back the Twitter Widget &#8220;noscrollbar&#8221; option.</li>
<li>We&#8217;re now forcing only Photon URLs to HTTPS as your custom CDN URLs may use a different protocol.</li>
<li>If a Publicize connection is not shared with all users on the site, do not trigger Publicize for the other users.</li>
<li>Publicize was having trouble working with scheduled posts, this should be fixed now.</li>
<li>SSO may not have been displaying the login form when using JSON API authorization.  Sorry about that, we&#8217;ve fixed it.</li>
<li>We&#8217;ve eliminated some PHP notices that were showing with some Shortcodes.</li>
<li>There was a Top Posts Widget image size issue when using list layouts, but is no longer causing issues.</li>
<li>We fixed some notices and warnings when updating data from the WordPress.com central interface.</li>
</ul>
<h4>4.5</h4>
<ul>
<li>Release date: January 17, 2017</li>
<li>Release post: http://wp.me/p1moTy-3Kc</li>
</ul>
<p>This release introduces a brand-new module, Jetpack Ads, a brand-new VideoPress feature, and a lot of new shortcodes and widgets.</p>
<p><strong>Exciting New Features and Improvements:</strong></p>
<ul>
<li>Generate revenue from your site with an all-new WordAds feature, which when enabled displays high-quality ads for your visitors.</li>
<li>Today we are proud to release a fully redesigned VideoPress interface for easy uploading, management, and add-free playback of your fantastic videos now fully integrated with your Jetpack Premium or Professional plans.</li>
<li>Spice up your sidebar with new widgets that display blog stats, author info, &#8220;Follow my blog&#8221; buttons, and even an event countdown.</li>
<li>Embed your amazing 360� photos with the VR shortcode</li>
<li>Link your visitors to your Tumblr or Twitch pages using the new icons in the Social Media Icons Widget.</li>
</ul>
<p><strong>Enhancements</strong></p>
<ul>
<li>Use the beautiful Jetpack carousel feature to display single images.</li>
<li>Turn on and update Related Posts right from the Customizer.</li>
<li>Customize the output of the Related Posts headline using a new filter.</li>
</ul>
<p><strong>Performance and Security Improvements:</strong></p>
<ul>
<li>Your Custom CSS will now be served in a separate stylesheet when it is more than 2,000 characters.</li>
<li>Your Stats queries are now always being made over HTTPS.</li>
<li>Holiday Snow files now load in the footer, but rest assured the snow still falls from above.</li>
<li>We have improved Jetpack&#8217;s synchronization process to support more plugins and use less resources.</li>
<li>The jQuery Cycle script used by slideshow galleries is now minified, resulting in faster loading times.</li>
</ul>
<p><strong>Slightly Less Exciting Enhancements:</strong></p>
<ul>
<li>The JSON API now allows updating translations and alternative theme installation methods.</li>
<li>Public Custom Post Types are now automatically available via the WordPress.com REST API.</li>
<li>We&#8217;ve added a token-based authentication mechanism to the REST API in order for the site to be able to receive authenticated requests from WordPress.com.</li>
<li>Use <code>sync</code> commands in Jetpack&#8217;s WP CLI.</li>
<li>You can now set the value for options directly in the Contact Form shortcode.</li>
<li>Updated some verbiage around IP Whitelisting on the Protect settings screen.</li>
<li>Custom sharing buttons got some new variables.</li>
<li>RIP blip.tv � we&#8217;ve removed your shortcode.</li>
<li>Improved Image and Display Posts Widget settings to provide more explanation and better error messages.</li>
<li>We&#8217;ve added a few new Content Options to the Customizer for supported themes.</li>
<li>Improved the Facebook Widget to avoid confusion when editing width and height settings.</li>
<li>Added and improved a few shortcodes.</li>
</ul>
<p><strong>Improved Compatibility:</strong></p>
<ul>
<li>If your server is misconfigured and we can&#8217;t get an IP address we&#8217;re going to deactivate Protect and send you a notice so you&#8217;re in the loop.</li>
<li>The WPML compatibility file wasn&#8217;t loading at the right time, but we&#8217;ve fixed that.</li>
<li>We&#8217;ve improved compatibility with tools like Cavalcade to avoid stuck Cron jobs.</li>
<li>Some selected WooCommerce data (order items and order item meta) are now syncing to WordPress.com.</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>You&#8217;ll notice numerous design improvements to the Jetpack UI.</li>
<li>Accessibility is important to us so we&#8217;ve made some improvements there.</li>
<li>Missing attachments in the Carousel were causing an infinite loop, but we&#8217;ve corrected that.</li>
<li>Eliminated a PHP Notice when running the CLI <code>wp jetpack</code> command.</li>
<li>PHP warnings in the Restaurant Menu Post type have seen their last day with us.</li>
<li>Fixed a bug that displayed the wrong connected user for up to 24 hours after they disconnected.</li>
<li>Removed a deprecated function to prevent notices when using Infinite Scroll in the Customizer.</li>
<li>Long titles in Jetpack widgets weren&#8217;t looking so great, so we cleaned them up.</li>
<li>Before now you weren&#8217;t able to create a child category from WordPress.com. Now you can!</li>
<li>Rogue colons were showing up in the related posts area on sites with the Twenty Fourteen and Twenty Sixteen themes.</li>
<li>Fixed a ReCaptcha error on the Email sharing button.</li>
<li>Confirmed Instagram embeds actually load when using Infinite Scroll.</li>
<li>Site Icons now display on the WordPress.com site management interface.</li>
<li>Set a default time limit of 30 seconds when sending sync requests via Cron.</li>
<li>Synchronized supported shortcodes on a site.</li>
<li>Fixed an issue where empty categories weren&#8217;t showing with the Widget Visibility feature dropdown.</li>
<li>Fixed various little bugs when working with multiple widgets in the Customizer and in the Widgets admin screen.</li>
<li>Added a Translate Widget default title in case you haven&#8217;t defined one.</li>
<li>The Top Posts Widget now avoids layout issues when using the Grid layout while displaying a post without an image.</li>
</ul>
<h4>4.4.2</h4>
<ul>
<li>Release date: December 6, 2016</li>
<li>Release post: http://wp.me/p1moTy-3JR</li>
</ul>
<p>This release improves Jetpack compatibility with WordPress 4.7.</p>
<p><strong>Compatibility changes</strong></p>
<ul>
<li>Custom CSS: Made the Custom CSS feature of Jetpack compatible with the CSS Customizer editor in WordPress 4.7.</li>
<li>Sync: improved compatibility with the wp-missed-schedule plugin.</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Featured Content: made sure there is no infinite loop when removing the featured tag from the tag list.</li>
<li>Admin: made sure help tabs are not being hidden.</li>
<li>Admin: made At a Glance page work nicely when there is no backup data yet.</li>
<li>Sync: now making sure that needed classes are loaded, preventing errors.</li>
<li>Sync: cleared out unneeded scheduled jobs.</li>
</ul>
<h4>4.4.1</h4>
<ul>
<li>Release date: November 22, 2016</li>
<li>Release post: http://wp.me/p1moTy-3JR</li>
</ul>
<p><strong>Bug Fixes</strong></p>
<ul>
<li>Fixed an issue where some users with slower servers would get an error on the Jetpack dashboard when <code>WP_DEBUG</code> was enabled.</li>
<li>Fixed an issue where users on a Jetpack Professional plan who were paying monthly (as opposed to annually) wouldn�t be able to enable SEO Tools.</li>
</ul>
<h4>4.4</h4>
<ul>
<li>Release date: November 21, 2016</li>
<li>Release post: http://wp.me/p1moTy-3FE</li>
</ul>
<p><strong>Enhancements</strong></p>
<ul>
<li>Additional unit tests have been added to improve Jetpack&#8217;s development process and stability.</li>
<li>Custom post types have been added to the WP REST API output.</li>
<li>Many of the screenshots throughout the plugin have been replaced by SVGs in order to make Jetpack smaller.</li>
<li>New endpoints have been added to allow the installation of plugin and theme zip files via the API.</li>
<li>Twelve new filters to make Jetpack more extensible!  See: http://wp.me/p1moTy-3FE.</li>
<li>New widget: &#8220;Google Translate&#8221; to allow users to translate your site into their own language.</li>
<li>New widget: &#8220;My Community&#8221; where you can see who recently interacted with your site.</li>
<li>One of the biggest issues facing Jetpack users for years now has been difficulties in moving sites from one domain name to another. This update makes strides towards improving that process.</li>
<li>Photon now uses HTTPS by default. Secure all the things!</li>
<li>There are now helpful hints throughout the admin interface to make Jetpack easier to use.</li>
<li>We now allow you to embed pins, boards and profiles from Pinterest.</li>
<li>We&#8217;ve added a new feature: SEO Tools, available to Jetpack Professional subscribers. You can read more about our plans here: https://jetpack.com/features/</li>
<li>We&#8217;ve made numerous improvements to the data sync process.</li>
</ul>
<p><strong>Bug Fixes:</strong></p>
<ul>
<li>Fixed link to Akismet settings.</li>
<li>Improved compatibility between Infinite Scroll and WPML.</li>
<li>Move email notification settings back with the other email settings in the Discussion Settings.</li>
<li>Various minor performance/compatibility fixes.</li>
</ul>
<h4>4.3.2</h4>
<ul>
<li>Release date: October 13, 2016</li>
</ul>
<p><strong>Enhancements</strong></p>
<ul>
<li>Unsaved changes were getting lost when users were navigating away from settings so we put in a confirmation message to prevent this from happening.</li>
<li>We&#8217;ve stopped counting carousel views in stats by default, you can use the <code>jetpack_enable_carousel_stats</code> filter to enable counting them again.</li>
<li>Stats are now responding faster.</li>
<li>There were several improvements and repairs made to sync including additional endpoints, performance enhancements, whitelisted data, better decision making around when to sync information, and more.</li>
<li>Markdown now has a CSS class on footnotes.</li>
</ul>
<p><strong>Improved Compatibility:</strong></p>
<ul>
<li>We&#8217;ve improved compatibility with Kinsta by automatically turning on Staging Mode for Jetpack when in a staging environment.</li>
</ul>
<p><strong>Bug Fixes:</strong></p>
<ul>
<li>Several fixes have been made to sync to repair issues with Publicize, Notifications, and Subscriptions.</li>
<li>We removed PHP warnings by checking to make sure json language files like jetpack-en_US.json are readable before we load them.</li>
<li>We found an unused option in Gravatar Hovercard settings and removed it.</li>
<li>The correct support link is now being used to make it easier for you to connect with the Jetpack team if you need us.</li>
<li>The permissions check for plugin information retrieval was fixed as well.</li>
<li>Some plugins were adding content on outbound http requests causing an infinite loop we fixed this right up.</li>
<li>We removed some warnings that were occurring when translations didn&#8217;t exist by adding a fallback.</li>
<li>We&#8217;ve added Moroccan Arabic translations, and switched to language packs for Croatian, Spanish (Chile) and Greek.</li>
<li>Sync was running into issues so we&#8217;ve limited dequeue time to 1/3 of PHP&#8217;s max execution time, which has unclogged the problem.</li>
<li>We&#8217;re now sending full and incremental queues separately so that a failure in one doesn&#8217;t block the other.</li>
<li>There was a JavaScript enqueuing error with our Sharing feature that has been repaired.</li>
<li>The Top Posts widget now includes the ability to list attachment (media) pages.</li>
<li>We weren&#8217;t building CPT links correctly resulting in bad navigation, which is now fixed.</li>
<li>We removed the form legend for default Tiled Gallery settings as it doesn&#8217;t relate.</li>
<li>With shortcodes we now return early from processing them if no string is passed, as they are required.</li>
</ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wordpress.org/plugins/jetpack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"
			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"WordPress Importer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 May 2010 18:48:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Uncategorized\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/plugins-wp/wordpress-importer/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Brian Colinger\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4618:\"<p><!--section=description--></p>
<p>The WordPress Importer will import the following content from a WordPress export file:</p>
<ul>
<li>Posts, pages and other custom post types</li>
<li>Comments</li>
<li>Custom fields and post meta</li>
<li>Categories, tags and terms from custom taxonomies</li>
<li>Authors</li>
</ul>
<p>For further information and instructions please see the <a href=\"https://codex.wordpress.org/Importing_Content#WordPress\" rel=\"nofollow\">Codex page on Importing Content</a></p>
<h3>Filters</h3>
<p>The importer has a couple of filters to allow you to completely enable/block certain features:</p>
<ul>
<li><code>import_allow_create_users</code>: return false if you only want to allow mapping to existing users</li>
<li><code>import_allow_fetch_attachments</code>: return false if you do not wish to allow importing and downloading of attachments</li>
<li><code>import_attachment_size_limit</code>: return an integer value for the maximum file size in bytes to save (default is 0, which is unlimited)</li>
</ul>
<p>There are also a few actions available to hook into:</p>
<ul>
<li><code>import_start</code>: occurs after the export file has been uploaded and author import settings have been chosen</li>
<li><code>import_end</code>: called after the last output from the importer</li>
</ul>
<p><!--section=faq--></p>
<dl>
<dt>Installation Instructions</dt>
<dd>
<p>The quickest method for installing the importer is:</p>
<ol>
<li>Visit Tools -&gt; Import in the WordPress dashboard</li>
<li>Click on the WordPress link in the list of importers</li>
<li>Click &#8220;Install Now&#8221;</li>
<li>Finally click &#8220;Activate Plugin &amp; Run Importer&#8221;</li>
</ol>
<p>If you would prefer to do things manually then follow these instructions:</p>
<ol>
<li>Upload the <code>wordpress-importer</code> folder to the <code>/wp-content/plugins/</code> directory</li>
<li>Activate the plugin through the &#8216;Plugins&#8217; menu in WordPress</li>
<li>Go to the Tools -&gt; Import screen, click on WordPress</li>
</ol>
</dd>
<dt>Help! I&#8217;m getting out of memory errors or a blank screen.</dt>
<dd>
<p>If your exported file is very large, the import script may run into your host&#8217;s configured memory limit for PHP.</p>
<p>A message like &#8220;Fatal error: Allowed memory size of 8388608 bytes exhausted&#8221; indicates that the script can&#8217;t successfully import your XML file under the current PHP memory limit. If you have access to the php.ini file, you can manually increase the limit; if you do not (your WordPress installation is hosted on a shared server, for instance), you might have to break your exported XML file into several smaller pieces and run the import script one at a time.</p>
<p>For those with shared hosting, the best alternative may be to consult hosting support to determine the safest approach for running the import. A host may be willing to temporarily lift the memory limit and/or run the process directly from their end.</p>
<p>&#8212; <a href=\"https://codex.wordpress.org/Importing_Content#Before_Importing\" rel=\"nofollow\">WordPress Codex: Importing Content</a></p>
</dd>
</dl>
<p><!--section=changelog--></p>
<h4>0.6.3</h4>
<ul>
<li>Add support for import term metadata.</li>
<li>Fix bug that caused slashes to be stripped from imported content.</li>
<li>Fix bug that caused characters to be stripped inside of CDATA in some cases.</li>
<li>Fix PHP notices.</li>
</ul>
<h4>0.6.2</h4>
<ul>
<li>Add wp_import_existing_post filter. See: https://core.trac.wordpress.org/ticket/33721</li>
</ul>
<h4>0.6</h4>
<ul>
<li>Support for WXR 1.2 and multiple CDATA sections</li>
<li>Post aren&#8217;t duplicates if their post_type&#8217;s are different</li>
</ul>
<h4>0.5.2</h4>
<ul>
<li>Double check that the uploaded export file exists before processing it. This prevents incorrect error messages when<br />
an export file is uploaded to a server with bad permissions and WordPress 3.3 or 3.3.1 is being used.</li>
</ul>
<h4>0.5</h4>
<ul>
<li>Import comment meta (requires export from WordPress 3.2)</li>
<li>Minor bugfixes and enhancements</li>
</ul>
<h4>0.4</h4>
<ul>
<li>Map comment user_id where possible</li>
<li>Import attachments from <code>wp:attachment_url</code></li>
<li>Upload attachments to correct directory</li>
<li>Remap resized image URLs correctly</li>
</ul>
<h4>0.3</h4>
<ul>
<li>Use an XML Parser if possible</li>
<li>Proper import support for nav menus</li>
<li>&#8230; and much more, see <a href=\"https://core.trac.wordpress.org/ticket/15197\" rel=\"nofollow\">Trac ticket #15197</a></li>
</ul>
<h4>0.1</h4>
<ul>
<li>Initial release</li>
</ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"All in One SEO Pack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wordpress.org/plugins/all-in-one-seo-pack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/plugins/all-in-one-seo-pack/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 30 Mar 2007 19:30:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/plugins-wp/all-in-one-seo-pack/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"The original SEO plugin for WordPress, downloaded over 30,000,000 times since 2007.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"uberdose\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4934:\"<p><!--section=description--></p>
<p>Use <strong>All in One SEO Pack</strong> to optimize your WordPress site for SEO. It&#8217;s easy and works out of the box for beginners, and has advanced features and an API for developers.</p>
<p><strong><a href=\"http://semperplugins.com/plugins/all-in-one-seo-pack-pro-version/?loc=readme_utpv\" rel=\"nofollow\">Upgrade to Pro Version</a></strong></p>
<p><a href=\"http://semperplugins.com/support/?loc=readme_ps\" rel=\"nofollow\">Premium Support</a></p>
<p>First created in 2007, see why AIOSEO is one of the all time most downloaded plugins for WordPress.</p>
<ul>
<li>XML Sitemap support &#8211; submit your sitemap to Google and Bing and improve your SEO</li>
<li>Google AMP support (Accelerated Mobile Pages)</li>
<li>Google Analytics support</li>
<li>Support for SEO on Custom Post Types</li>
<li>Advanced Canonical URLs</li>
<li>Redirect attachment pages to parent post</li>
<li>Automatically notifies search engines like Google and Bing about changes to your site</li>
<li>Built-in API so other plugins/themes can access and extend functionality</li>
<li>ONLY free plugin to provide SEO Integration for e-Commerce sites, including WooCommerce</li>
<li>Nonce Security built into All in One SEO Pack</li>
<li>Automatically optimizes your <strong>titles</strong> for Google and other search engines</li>
<li>Generates <strong>META tags automatically</strong></li>
<li>Avoids the typical duplicate content found on WordPress blogs</li>
<li>For beginners, you don&#8217;t even have to look at the options, it works out-of-the-box. Just install.</li>
<li>For advanced users, you can fine-tune everything to optimize your SEO</li>
<li>You can override any title and set any META description and any META keywords you want.</li>
<li>Compatibility with many other plugins</li>
<li>Translated into 57 languages</li>
<li>PHP 7 100% Compatible</li>
</ul>
<p>Follow me on Twitter to keep up with the latest updates <a href=\"http://twitter.com/michaeltorbert/\" rel=\"nofollow\">Michael<br />
Torbert</a></p>
<p><iframe class=\'youtube-player\' type=\'text/html\' width=\'640\' height=\'390\' src=\'https://www.youtube.com/embed/46MR4FboMaA?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>
<h4>Tags</h4>
<p>seo, SEO, All in One, google, meta, meta description, search engine optimization, xml sitemap, xml sitemaps, google sitemap, sitemap, sitemaps, robots meta, rss, rss footer, yahoo, bing, widget, Post, plugin, admin, posts, shortcode, sidebar, twitter, page, images, comments, image, news sitemaps, XML News Sitemaps, WordPress SEO, multisite, canonical, nofollow, noindex, keywords, meta keywords, description, webmaster tools, google webmaster tools, seo pack, schema.org, search engines, custom post types, custom taxonomies, canonical</p>
<p><!--section=faq--></p>
<p>Please visit our complete <strong><a href=\"http://semperplugins.com/documentation/\" rel=\"nofollow\">Documentation</a></strong> before requesting support for SEO from the<br />
<strong><a href=\"http://semperplugins.com/support/\" rel=\"nofollow\">All in One SEO Pack Support Forum</a></strong></p>
<p><a href=\"http://semperfiwebdesign.com/documentation/all-in-one-seo-pack/translations-for-all-in-one-seo-pack/\" rel=\"nofollow\">Translations</a></p>
<dl>
<dt>General Settings</dt>
<dd>
<p><iframe class=\'youtube-player\' type=\'text/html\' width=\'640\' height=\'390\' src=\'https://www.youtube.com/embed/uGt6CVbA5bI?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>
</dd>
<dt>XML Sitemaps</dt>
<dd>
<p><iframe class=\'youtube-player\' type=\'text/html\' width=\'640\' height=\'390\' src=\'https://www.youtube.com/embed/zvNU92Low8A?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>
</dd>
<dt>Social Meta</dt>
<dd>
<p><iframe class=\'youtube-player\' type=\'text/html\' width=\'640\' height=\'390\' src=\'https://www.youtube.com/embed/Dfe49FiiAog?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>
</dd>
<dt>Performance</dt>
<dd>
<p><iframe class=\'youtube-player\' type=\'text/html\' width=\'640\' height=\'390\' src=\'https://www.youtube.com/embed/A0VKinM5s00?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>
</dd>
</dl>
<p><!--section=changelog--></p>
<p>All in One SEO Pack <a href=\"http://semperfiwebdesign.com/documentation/all-in-one-seo-pack/all-in-one-seo-pack-release-history/\" rel=\"nofollow\">Changelog</a></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/all-in-one-seo-pack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wordpress.org/plugins/woocommerce/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 27 Sep 2011 15:32:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wordpress.org/plugins-wp/woocommerce/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"WooThemes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:36950:\"<p><!--section=description--></p>
<p>WooCommerce is a free eCommerce plugin that allows you to sell anything, beautifully. Built to integrate seamlessly with WordPress, WooCommerce is the world�s favorite eCommerce solution that gives both store owners and developers complete control.</p>
<p>With endless flexibility and access to hundreds of free and premium WordPress extensions, WooCommerce now powers 30% of all online stores &#8212; more than any other platform.</p>
<iframe class=\'youtube-player\' type=\'text/html\' width=\'640\' height=\'390\' src=\'https://www.youtube.com/embed/1KahlicghaE?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe>
<h4>Sell anything, anywhere</h4>
<p>With WooCommerce, you can sell both physical and digital goods in all shapes and sizes, offer product variations, multiple configurations, and instant downloads to shoppers, and even sell affiliate goods from online marketplaces.</p>
<p>With premium extensions, you can offer bookings, memberships, and recurring subscriptions. Perhaps you�d like to sell monthly subscriptions for physical goods, or offer your members a discount on digital downloads? It�s all possible.</p>
<h4>Ship wherever you like</h4>
<p>Offer free shipping, flat rate shipping, or make real-time calculations. Limit your shipments to specific countries, or open your store up to the world. Shipping is highly configurable, and WooCommerce even supports drop shipping.</p>
<h4>Extensive payment options</h4>
<p>WooCommerce comes bundled with the ability to accept major credit cards, PayPal, BACS (bank transfers), and cash on delivery. Need additional options? More than 140 region-specific gateways integrate with WooCommerce, including popular choices like Stripe, Authorize.Net, and Amazon Payments.</p>
<h4>You control it all &#8212; forever</h4>
<p>WooCommerce gives you complete control of your store, from taxes to stock levels to customer accounts. Add and remove extensions, change your design, and switch settings as you please. It�s all under your control.</p>
<p>One of the biggest risks of using a hosted eCommerce platform is what happens to your store if the provider closes up shop. With WooCommerce, you have complete control, so there�s never any reason to worry. Your data belongs to you &#8212; and it�s kept secure, thanks to regular audits by industry leaders.</p>
<h4>Define your style with Storefront</h4>
<p><a href=\"https://wordpress.org/themes/storefront/\" rel=\"nofollow\">Storefront</a> is a free WordPress theme available to any WooCommerce store. Along with deep WooCommerce integration, Storefront prioritizes speed and uptime while eliminating theme and plugin conflicts during major updates.</p>
<p>Define your style even further by customizing Storefront to your liking or choosing from one of our several <a href=\"https://woocommerce.com/product-category/themes/storefront-child-theme-themes/\" rel=\"nofollow\">Storefront child themes</a>. It�s all up to you, and all open source.</p>
<h4>Built with developers in mind</h4>
<p>Extendable, adaptable, and open source &#8212; WooCommerce was created with developers in mind. With its strong, robust framework, you can scale your client�s store all the way from basic to high-end (infinity and beyond).</p>
<p>Built with a REST API, WooCommerce can integrate with virtually any service. Your store�s data can be accessed anywhere, anytime, 100% securely. WooCommerce allows developers to easily create, modify, and grow a store that meets their specifications.</p>
<p>No matter the size of the store you want to build, WooCommerce will scale to meet your requirements. With a growing collection of more than 300 extensions, you can enhance each store�s features to meet your client�s unique needs &#8212; or even create your own solution.</p>
<p>If security is a concern, rest easy. WooCommerce is audited by a dedicated team of developers working around the clock to identify and patch any and all discovered bugs.</p>
<p>We also support WooCommerce and all its extensions with comprehensive, easily-accessible documentation. With our docs, you�ll learn how to create the exact site your client needs.</p>
<h4>Extensions galore</h4>
<p>WordPress.org is home to some amazing extensions for WooCommerce, including:</p>
<ul>
<li><a href=\"https://wordpress.org/plugins/woocommerce-google-analytics-integration/\">Google Analytics</a></li>
<li><a href=\"https://wordpress.org/plugins/woocommerce-delivery-notes/\">Delivery Notes</a></li>
<li><a href=\"https://wordpress.org/plugins/woocommerce-pdf-invoices-packing-slips/\">PDF Invoices and Packing Slips</a></li>
<li><a href=\"https://wordpress.org/plugins/affiliates-woocommerce-light/\">Affiliates Integration Light</a></li>
<li><a href=\"https://wordpress.org/plugins/woocommerce-new-product-badge/\">New Product Badges</a></li>
</ul>
<p>Keen to see them all? Search WordPress.org for �WooCommerce� to dive in.</p>
<p>If you�re looking for something endorsed and maintained by the developers who built WooCommerce, there are a plethora of premium eCommerce extensions, the most popular of which include:</p>
<ul>
<li><a href=\"https://woocommerce.com/products/woocommerce-subscriptions/\" rel=\"nofollow\">WooCommerce Subscriptions</a></li>
<li><a href=\"https://woocommerce.com/products/woocommerce-memberships/\" rel=\"nofollow\">WooCommerce Memberships</a></li>
<li><a href=\"https://woocommerce.com/products/woocommerce-bookings/\" rel=\"nofollow\">WooCommerce Bookings</a></li>
<li><a href=\"https://woocommerce.com/products/dynamic-pricing/\" rel=\"nofollow\">Dynamic Pricing</a></li>
<li><a href=\"https://woocommerce.com/products/table-rate-shipping/\" rel=\"nofollow\">Table Rate Shipping</a></li>
<li><a href=\"https://woocommerce.com/products/product-csv-import-suite/\" rel=\"nofollow\">Product CSV Import Suite</a></li>
</ul>
<p>And there�s plenty more where they came from. Visit our <a href=\"https://woocommerce.com/product-category/woocommerce-extensions/\" rel=\"nofollow\">extensions page</a> to find out everything you�re capable of and all that&#8217;s possible with premium WooCommerce extensions.</p>
<h4>Join our growing community</h4>
<p>When you download WooCommerce, you join a community of more than a million store owners, developers, and WordPress enthusiasts. We�re one of the fastest-growing open source communities online, and whether you�re a n00b or a Ninja, we�d love to have you!</p>
<p>If you�re interested in contributing to WooCommerce we�ve got more than 350 contributors, and there�s always room for more. Head over to the <a href=\"https://github.com/woocommerce/woocommerce\" rel=\"nofollow\">WooCommerce GitHub Repository</a> to find out how you can pitch in.</p>
<p>Want to add a new language to WooCommerce? Swell! You can contribute via <a href=\"https://translate.wordpress.org/projects/wp-plugins/woocommerce\" rel=\"nofollow\">translate.wordpress.org</a>.</p>
<p>And, finally, consider joining or spearheading a WooCommerce Meetup locally, more about those <a href=\"https://woocommerce.com/woocommerce/meetups/\" rel=\"nofollow\">here</a>.</p>
<p><!--section=installation--></p>
<h4>Minimum Requirements</h4>
<ul>
<li>PHP version 5.2.4 or greater (PHP 5.6 or greater is recommended)</li>
<li>MySQL version 5.0 or greater (MySQL 5.6 or greater is recommended)</li>
<li>Some payment gateways require fsockopen support (for IPN access)</li>
<li>WooCommerce 2.5 requires WordPress 4.1+</li>
<li>WooCommerce 2.6 requires WordPress 4.4+</li>
</ul>
<p>Visit the <a href=\"https://docs.woocommerce.com/document/server-requirements/\" rel=\"nofollow\">WooCommerce server requirements documentation</a> for a detailed list of server requirements.</p>
<h4>Automatic installation</h4>
<p>Automatic installation is the easiest option as WordPress handles the file transfers itself and you don�t need to leave your web browser. To do an automatic install of WooCommerce, log in to your WordPress dashboard, navigate to the Plugins menu and click Add New.</p>
<p>In the search field type �WooCommerce� and click Search Plugins. Once you�ve found our eCommerce plugin you can view details about it such as the point release, rating and description. Most importantly of course, you can install it by simply clicking �Install Now�.</p>
<h4>Manual installation</h4>
<p>The manual installation method involves downloading our eCommerce plugin and uploading it to your webserver via your favourite FTP application. The WordPress codex contains <a href=\"https://codex.wordpress.org/Managing_Plugins#Manual_Plugin_Installation\" rel=\"nofollow\">instructions on how to do this here</a>.</p>
<h4>Updating</h4>
<p>Automatic updates should work like a charm; as always though, ensure you backup your site just in case.</p>
<p>If on the off-chance you do encounter issues with the shop/category pages after an update you simply need to flush the permalinks by going to WordPress &gt; Settings &gt; Permalinks and hitting &#8216;save&#8217;. That should return things to normal.</p>
<h4>Dummy data</h4>
<p>WooCommerce comes with some dummy data you can use to see how products look; either import dummy_data.xml via the <a href=\"https://wordpress.org/plugins/wordpress-importer/\">WordPress importer</a> or use our <a href=\"https://woocommerce.com/products/product-csv-import-suite/\" rel=\"nofollow\">CSV Import Suite plugin</a> to import dummy_data.csv and dummy_data_variations.csv.</p>
<p><!--section=faq--></p>
<dl>
<dt>Installation Instructions</dt>
<dd>
<h4>Minimum Requirements</h4>
<ul>
<li>PHP version 5.2.4 or greater (PHP 5.6 or greater is recommended)</li>
<li>MySQL version 5.0 or greater (MySQL 5.6 or greater is recommended)</li>
<li>Some payment gateways require fsockopen support (for IPN access)</li>
<li>WooCommerce 2.5 requires WordPress 4.1+</li>
<li>WooCommerce 2.6 requires WordPress 4.4+</li>
</ul>
<p>Visit the <a href=\"https://docs.woocommerce.com/document/server-requirements/\" rel=\"nofollow\">WooCommerce server requirements documentation</a> for a detailed list of server requirements.</p>
<h4>Automatic installation</h4>
<p>Automatic installation is the easiest option as WordPress handles the file transfers itself and you don�t need to leave your web browser. To do an automatic install of WooCommerce, log in to your WordPress dashboard, navigate to the Plugins menu and click Add New.</p>
<p>In the search field type �WooCommerce� and click Search Plugins. Once you�ve found our eCommerce plugin you can view details about it such as the point release, rating and description. Most importantly of course, you can install it by simply clicking �Install Now�.</p>
<h4>Manual installation</h4>
<p>The manual installation method involves downloading our eCommerce plugin and uploading it to your webserver via your favourite FTP application. The WordPress codex contains <a href=\"https://codex.wordpress.org/Managing_Plugins#Manual_Plugin_Installation\" rel=\"nofollow\">instructions on how to do this here</a>.</p>
<h4>Updating</h4>
<p>Automatic updates should work like a charm; as always though, ensure you backup your site just in case.</p>
<p>If on the off-chance you do encounter issues with the shop/category pages after an update you simply need to flush the permalinks by going to WordPress &gt; Settings &gt; Permalinks and hitting &#8216;save&#8217;. That should return things to normal.</p>
<h4>Dummy data</h4>
<p>WooCommerce comes with some dummy data you can use to see how products look; either import dummy_data.xml via the <a href=\"https://wordpress.org/plugins/wordpress-importer/\">WordPress importer</a> or use our <a href=\"https://woocommerce.com/products/product-csv-import-suite/\" rel=\"nofollow\">CSV Import Suite plugin</a> to import dummy_data.csv and dummy_data_variations.csv.</p>
</dd>
<dt>Where can I find WooCommerce documentation and user guides?</dt>
<dd>
<p>For help setting up and configuring WooCommerce please refer to our <a href=\"https://docs.woocommerce.com/documentation/plugins/woocommerce/getting-started/\" rel=\"nofollow\">user guide</a></p>
<p>For extending or theming WooCommerce, see our <a href=\"https://docs.woocommerce.com/documentation/plugins/woocommerce/woocommerce-codex/\" rel=\"nofollow\">codex</a>.</p>
</dd>
<dt>Where can I get support or talk to other users?</dt>
<dd>
<p>If you get stuck, you can ask for help in the <a href=\"https://wordpress.org/support/plugin/woocommerce\" rel=\"nofollow\">WooCommerce Plugin Forum</a>.</p>
<p>For help with premium extensions from WooThemes, use <a href=\"https://support.woothemes.com/\" rel=\"nofollow\">our helpdesk</a>.</p>
</dd>
<dt>Will WooCommerce work with my theme?</dt>
<dd>
<p>Yes; WooCommerce will work with any theme, but may require some styling to make it match nicely. Please see our <a href=\"https://docs.woocommerce.com/documentation/plugins/woocommerce/woocommerce-codex/\" rel=\"nofollow\">codex</a> for help. If you&#8217;re looking for a theme with built in WooCommerce integration we recommend <a href=\"https://woocommerce.com/storefront/\" rel=\"nofollow\">Storefront</a>.</p>
</dd>
<dt>Where can I request new features, eCommerce themes and extensions?</dt>
<dd>
<p>You can vote on and request new features and extensions in our <a href=\"http://ideas.woothemes.com/forums/133476-woocommerce\" rel=\"nofollow\">WooIdeas board</a></p>
</dd>
<dt>Where can I report bugs or contribute to the project?</dt>
<dd>
<p>Bugs can be reported either in our support forum or preferably on the <a href=\"https://github.com/woocommerce/woocommerce/issues\" rel=\"nofollow\">WooCommerce GitHub repository</a>.</p>
</dd>
<dt>Where can I find the REST API documentation?</dt>
<dd>
<p>You can find the documentation of our REST API on the <a href=\"https://woocommerce.github.io/woocommerce-rest-api-docs/\" rel=\"nofollow\">WooCommerce REST API Docs</a>.</p>
</dd>
<dt>WooCommerce is awesome! Can I contribute?</dt>
<dd>
<p>Yes you can! Join in on our <a href=\"http://github.com/woocommerce/woocommerce/\" rel=\"nofollow\">GitHub repository</a> <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f642.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
</dd>
</dl>
<p><!--section=changelog--></p>
<h4>3.0.6 &#8211; 2017-05-09</h4>
<ul>
<li>Fix &#8211; Fixed conflict between global attributes and custom attributes with the same names.</li>
<li>Fix &#8211; Added missing &#8220;id&#8221; to API for shipping zone methods to support the CLI.</li>
<li>Fix &#8211; Incorrect use of <code>wc_format_price_range</code> in <code>get_price_html_from_to</code>.</li>
<li>Fix &#8211; Clone each meta object when cloning WC_Data object to avoid modifying original meta stdClass objects.</li>
<li>Fix &#8211; Fix non numeric warning for some order data.</li>
<li>Fix &#8211; Fixed a warning when no customer country is defined for state input.</li>
<li>Fix &#8211; Use term name when reordering so correct data is passed to the new order.</li>
<li>Fix &#8211; Formatting issues in wc_display_item_meta.</li>
<li>Fix &#8211; Check if IP address is valid in IP address detection code.</li>
<li>Fix &#8211; wc_attribute_taxonomy_id_by_name should use wc_sanitize_taxonomy_name to prevent breaking special chars.</li>
<li>Fix &#8211; Correct variable name in order structured data.</li>
<li>Fix &#8211; Prepend new item keys with <code>$items_key</code> to make them unique.</li>
<li>Fix &#8211; Hide offers from structured markup when blank.</li>
<li>Fix &#8211; Fixed &#8220;Process to checkout&#8221; button color in Twenty seventeen dark theme.</li>
<li>Fix &#8211; Only set reply-to if the email + name is set.</li>
<li>Fix &#8211; Correctly exclude terms in wc_get_related_products.</li>
<li>Fix &#8211; Reset post data prevents grouped products working in shortcodes.</li>
<li>Fix &#8211; Fix min price range comparisons.</li>
<li>Fix &#8211; Properly save order items in legacy REST API.</li>
<li>Fix &#8211; Use correct full size for variation images.</li>
<li>Fix &#8211; Add noscript style for gallery.</li>
<li>Fix &#8211; Fix/duplicate potential stock reduction with paypal.</li>
<li>Tweak &#8211; Improve _wc_term_recount performance.</li>
<li>Tweak &#8211; Improve plugin update detection in system status report to reduce timeouts.</li>
<li>Tweak &#8211; Improve &#8220;Save Order&#8221; button to reproduce WordPress post/page behavior.</li>
<li>Tweak &#8211; Added zipcode validation for France.</li>
<li>Dev &#8211; Added woocommerce_shop_order_search_results filter.</li>
</ul>
<h4>3.0.5 &#8211; 2017-04-28</h4>
<ul>
<li>Fix &#8211; Tooltip display within shipping zone modals.</li>
<li>Fix &#8211; Fix missing title for actions column on mobile.</li>
<li>Fix &#8211; Allow forward slash in telephone field.</li>
<li>Fix &#8211; Sort grouped products by menu order when displaying.</li>
<li>Fix &#8211; Fix term exclusion in term count queries.</li>
<li>Fix &#8211; Filter invalid products before returning them for wc_get_products.</li>
<li>Fix &#8211; Prevent orders being their own parent (causes errors).</li>
<li>Fix &#8211; Correctly migrate legacy shipping taxes data.</li>
<li>Fix &#8211; Make sure the meta data cache is not shared among instances.</li>
<li>Fix &#8211; Correct the stock display notice when a variable product manages stock for it&#8217;s children.</li>
<li>Fix &#8211; On multisite, add user to blog during checkout if not a user to prevent errors.</li>
<li>Fix &#8211; Correct sale price date handling with some timezone setups.</li>
<li>Fix &#8211; wc_attribute_taxonomy_id_by_name needs to use lowercase attribute slug to work.</li>
<li>Fix &#8211; Make changes to the buyer&#8217;s company name in the shipping section of checkout persist.</li>
<li>Tweak &#8211; Add required placeholder for meta fields in backend.</li>
<li>Tweak &#8211; Don&#8217;t strtolower address strings on checkout validation messages.</li>
<li>REST API &#8211; Prevent password change notification when creating a customer.</li>
<li>REST API &#8211; Removed duplicated items returned in shipping and checkout endpoints.</li>
<li>CLI &#8211; Fixed missing shipping zones route.</li>
<li>Dev &#8211; Make get_price_html handling match 2.6 and pass all values through woocommerce_get_price_html filter.</li>
<li>Dev &#8211; Legacy customer class missing get_address / get_address_2 functions.</li>
<li>Dev &#8211; Restored filter <code>woocommerce_checkout_customer_id</code> during checkout validation.</li>
<li>Dev &#8211; Adds missing <code>$this</code> argument for all <code>woocommerce_payment_complete_order_status</code> filters.</li>
</ul>
<h4>3.0.4 &#8211; 2017-04-20</h4>
<ul>
<li>Fix &#8211; Variations were not inheriting the product image and shipping class ID.</li>
<li>Fix &#8211; Prevent rating/review counts being duplicated when duplicating products.</li>
<li>Fix &#8211; Fixed gallery navigation between images with long captions.</li>
<li>Fix &#8211; Support transparent PNG in the gallery by setting a background color.</li>
<li>Fix &#8211; Removed name/company from the shipping address Google map links.</li>
<li>Fix &#8211; Fixed the address field sorting script on the checkout.</li>
<li>Fix &#8211; Fixed the upgrade routine for grouped products so that parents are unset.</li>
<li>Fix &#8211; Fixed support for WordPress 4.7 user locale settings.</li>
<li>Fix &#8211; Fixed default option filter for product types in the product meta box.</li>
<li>Fix &#8211; Improved the css in Twenty Seventeen for dark color schemes.</li>
<li>Fix &#8211; Fixed display of refunds in sales report.</li>
<li>Fix &#8211; Updated <code>single-product/add-to-cart/variable.php</code> template version to 3.0.0 since it had changes since 2.6.</li>
<li>Fix &#8211; Fixed warnings when product attribute do not exists.</li>
<li>Fix &#8211; Used a div for comment-form-rating to prevent invalid nested markup.</li>
<li>Fix &#8211; Fixed some logic that checks if order taxes are compound.</li>
<li>Fix &#8211; Fixed SKU checks to only exclude products that are trashed.</li>
<li>Fix &#8211; Fixed display of download permissions in first email sent after checkout.</li>
<li>Fix &#8211; Hidden the backorder notification stock text when notification is disabled.</li>
<li>Fix &#8211; Fixed incorrect stock numbers in low stock emails.</li>
<li>Tweak &#8211; Removed the non-functional order total input box, and combined the recalculation buttons into one working button.</li>
<li>Tweak &#8211; Updated Guided Tour videos.</li>
<li>Tweak &#8211; Updated js-cookie.js to 2.1.4.</li>
<li>Tweak &#8211; Updated schema.org URLs to use HTTPS.</li>
<li>Tweak &#8211; Status report request timeouts.</li>
<li>REST API &#8211; Fixed an issue that prevented deleting a term if errors were thrown during creation.</li>
<li>REST API &#8211; Fixed reports endpoint when querying by date.</li>
<li>REST API &#8211; Fixed ignored order parameters when changing order status.</li>
<li>Dev &#8211; Support guest orders in <code>wc_get_orders</code> function.</li>
<li>Dev &#8211; Fixed downloadable variation filters for download URLs.</li>
<li>Dev &#8211; Added safeguards to prevent infinite loops while saving coupons, products and orders in admin.</li>
<li>Dev &#8211; Added a fallback for <code>queue_transactional_email</code> if background sending is disabled.</li>
<li>Dev &#8211; Added <code>has_shipping_address</code> helper method.</li>
<li>Dev &#8211; Introduced <code>woocommerce_order_item_get_formatted_meta_data</code> filter.</li>
<li>Dev &#8211; Made wc_add_order_item pass correct values to woocommerce_new_order_item.</li>
<li>Dev &#8211; Fixed <code>legacy_posted_data</code> access in checkout class.</li>
<li>Dev &#8211; Fixed undefined property notice in <code>WC_Order_Item::offsetGet</code>.</li>
<li>Dev &#8211; Fixed PHP 7.1 warnings when using non-float values to <code>wc_get_weight()</code>.</li>
<li>Dev &#8211; Fixed incorrect variable name in <code>wc_add_order_item()</code>.</li>
</ul>
<h4>3.0.3 &#8211; 2017-04-13</h4>
<ul>
<li>Fix &#8211; Fixed an issue with variation tax-classes when set to &#8216;parent&#8217;. This made taxes apply on top of the tax inclusive price in certain setups.</li>
<li>Fix &#8211; Escaped attribute translations in the <code>cart.php</code> template and bumped the template version to match.</li>
<li>Fix &#8211; Corrected the display of refund dates on the order screen.</li>
<li>Fix &#8211; Fixed the grouped product visibility check in the grouped.php template and bumped the template version to match.</li>
<li>Fix &#8211; Fixed the sale badge display for grouped products.</li>
<li>Fix &#8211; Added the <code>itemReviewed</code> structured data for product reviews to make it validate.</li>
<li>Fix &#8211; Made the <code>get_attribute</code> method work on variation objects.</li>
<li>Tweak &#8211; Turned off the deferred email sending by default which was added in 3.0. Whilst it does improve performance, there were compatibility problems on some servers. It can be enabled with a filter if desired.</li>
<li>Dev &#8211; Added backtrace information to the deprecation messages to help find problem plugins.</li>
</ul>
<h4>3.0.2 &#8211; 2017-04-12</h4>
<ul>
<li>Fix &#8211; Removed required states for GP, GF, KW, LB, MQ, RE and YT countries.</li>
<li>Fix &#8211; Made cache in the [products] shortcode respect filters from plugins.</li>
<li>Fix &#8211; Added missing <code>woocommerce_cross_sells_columns</code> filter.</li>
<li>Fix &#8211; Fixed shortcode rendering on the shop page.</li>
<li>Fix &#8211; Fixed incorrect sale dates when bulk editing variations.</li>
<li>Fix &#8211; Fixed calls to wc_reduce_stock_levels in PayPal and Simplify gateways.</li>
<li>Fix &#8211; Exclude &#8220;location&#8221; meta when reading customer meta data.</li>
<li>Fix &#8211; Updated <code>emails/email-addresses.php</code>, <code>emails/email-order-details.php</code>, <code>content-single-product.php</code>, <code>checkout/form-shipping.php</code>, <code>myaccount/form-add-payment-method.php</code>, <code>myaccount/form-edit-address.php</code>, <code>myaccount/form-lost-password.php</code>, <code>myaccount/form-reset-password.php</code>, <code>myaccount/orders.php</code> and <code>myaccount/view-order.php</code> template version to 3.0.0 since they had changes since 2.6.</li>
<li>Fix &#8211; Fixed default behavior of variation tax classes when originally set to &#8220;parent&#8221;.</li>
<li>Fix &#8211; When duplicating products, do not copy slug, append &#8220;(Copy)&#8221; to the product name, correctly copy all meta data, and prevent children of grouped products being duplicated too.</li>
<li>Fix &#8211; Removed duplicated items when outputting cross sells on the cart page.</li>
<li>Fix &#8211; Fixed output of default &#8220;add to cart&#8221; text of external products in loops.</li>
<li>Fix &#8211; Fixed backwards compatibility of guest checkout rules when being altered by plugins directly.</li>
<li>Fix &#8211; Use correct thumbnail sizes for variation images in the new gallery.</li>
<li>Fix &#8211; Fixed captions on thumbnails and main image in the new gallery.</li>
<li>Fix &#8211; Trigger wc_fragments_loaded after add to cart fragment refresh.</li>
<li>Fix &#8211; Download permissions; Convert dates to timestamp on read so UTC is preserved.</li>
<li>Fix &#8211; Fixed notices under PHP 7.1 when sorting products by name (numeric).</li>
<li>Fix &#8211; Added additional checks to ensure objects are read before using class methods to avoid errors.</li>
<li>Fix &#8211; Removed legacy suggest.js code which was causing JS error on bulk edit.</li>
<li>Fix &#8211; Fixed warnings on the &#8220;Lost password&#8221; page and when loading a product with invalid attributes.</li>
<li>Fix &#8211; Made background emailer update the queue after a successful send so duplicate mails are less likely.</li>
<li>Fix &#8211; Typo in flexslider_enabled option in new gallery script.</li>
<li>Fix &#8211; woocommerce_notify_low_stock and woocommerce_notify_no_stock options had no effect.</li>
<li>Tweak &#8211; For downloadable files, only validate file type when dealing with relative paths.</li>
<li>Tweak &#8211; Improved automatic variation name generation.</li>
<li>Dev &#8211; Added product visibility terms to system status report to help debug.</li>
<li>Dev &#8211; Introduced <code>woocommerce_admin_order_date_format</code> filter to replace missing <code>post_date_column_time</code>.</li>
<li>Dev &#8211; Introduced <code>woocommerce_update_customer_args</code> filter to prevent updates to user objects if needed.</li>
<li>REST API &#8211; Fixed saving of variations in legacy REST API v3.</li>
<li>REST API &#8211; Fixed backwards compatibility of line_items meta in legacy REST API.</li>
</ul>
<h4>3.0.1 &#8211; 2017-04-06</h4>
<ul>
<li>Fix &#8211; Show catalog hidden products within grouped products.</li>
<li>Fix &#8211; Fade in the gallery in if no images are set or it&#8217;s custom.</li>
<li>Fix &#8211; Use wc_deprecated_function in WC_Deprecated_Hooks so notices aren&#8217;t output in ajax requests.</li>
<li>Fix &#8211; Added back the ability to include extra items to the System Status using the <code>woocommerce_system_status_environment_rows</code> filter.</li>
<li>Fix &#8211; Coupon category restrictions and limits for variations.</li>
<li>Fix &#8211; Allow shortcodes and HTML in variation descriptions like in 2.6.</li>
<li>Fix &#8211; Unset post date when duplicating products.</li>
<li>Fix &#8211; Show a sale price on variable products if on sale and all prices are the same.</li>
<li>Fix &#8211; Corrected download links when a product has multiple downloads.</li>
<li>Fix &#8211; Prevented potential errors if the product type was not posted for any reason on save.</li>
<li>Fix &#8211; Updated <code>single-product/up-sells.php</code>, <code>loop/add-to-cart.php</code>, <code>loop/rating.php</code>, <code>checkout/form-billing.php</code>, and <code>content-product.php</code> template version to 3.0.0.</li>
<li>Fix &#8211; Included clearfixes on billing and shipping field wrappers,</li>
<li>Fix &#8211; Fixed styling of logs table in some languages.</li>
<li>Fix &#8211; Fixed display of variation attributes on old orders.</li>
<li>Fix &#8211; Use placeholder text for external products add to cart button text if left blank.</li>
<li>Fix &#8211; Fallback to home URL if no shop page is set for system status security check for HTTPS.</li>
<li>Fix &#8211; For variations, pull tax status and sold individually from the parent since there is no UI to set this at variation level.</li>
<li>Fix &#8211; Moved cron emails to background processing to avoid multiple sends.</li>
<li>Fix &#8211; Wrapped structured data in a hidden element when added to emails.</li>
<li>Fix &#8211; Missing gateway information in queued emails.</li>
<li>Fix &#8211; Fixed a bug that caused pages to permanently reload if &#8220;Default customer location&#8221; was set to &#8220;Geolocate (with page caching support)&#8221;.</li>
<li>Fix &#8211; When forcing shipping to billing, set the shipping fields in the order itself.</li>
<li>Fix &#8211; Check for invalid objects in WC_Register_WP_Admin_Settings.</li>
<li>Fix &#8211; Check for error object in wc_get_object_terms.</li>
<li>Fix &#8211; Removed slashes in shipping meta data on the order edit screen.</li>
<li>Fix &#8211; Prevented permalink rewrites for attributes with missing names.</li>
<li>Fix &#8211; Fixed saving of meta data when multiple extensions use the <code>save_post</code> action.</li>
<li>Fix &#8211; Allow search customers by ID in edit order screen.</li>
<li>Fix &#8211; Prevents session data overwriting customer data on login.</li>
<li>Fix &#8211; Fixed cross-sell column display and variation support.</li>
<li>Fix &#8211; Fixed variable product stock syncing on save.</li>
<li>Fix &#8211; Included try/catch wrapper to prevent issues with Select2.</li>
<li>Fix &#8211; Prevented a bug that deleted all variations when the product type was change from variable to simple.</li>
<li>Fix &#8211; Switched to WPDB to quicker update when syncing titles for variations.</li>
<li>Fix &#8211; Exclude deprecated properties when loading a customer object.</li>
<li>Fix &#8211; Fixed notices while trying to order again.</li>
<li>Fix &#8211; Fixed notices when <code>$wpdb-&gt;prefix</code> is empty.</li>
<li>Fix &#8211; Prevent errors when loading a product with an invalid download file types.</li>
<li>REST API &#8211; Fixed missing array declaration in CRUD controller.</li>
<li>REST API &#8211; Removed extra <code>exclude</code>, <code>include</code> and <code>search</code> parameters from taxes endpoint.</li>
<li>REST API &#8211; Fixed variation description formatting.</li>
<li>REST API &#8211; Fixed incorrect attribute check in products endpoint in Legacy REST API.</li>
<li>REST API &#8211; Allow variation image to be unset.</li>
</ul>
<h4>3.0.0 &#8211; 2017-04-04</h4>
<ul>
<li>New gallery on single product pages with better mobile support, using PhotoSwipe and Zoom. Declare support with add_theme_support() &#8211; wc-product-gallery-zoom, wc-product-gallery-lightbox, wc-product-gallery-slider</li>
<li>Made the store notice dismissible on the frontend.</li>
<li>Variable products no longer show striked out prices in combination with ranges for clarity when on sale.</li>
<li>Prices no longer display as &#8216;free&#8217; instead of 0, to fix issues with ranges and localization and for consistency.</li>
<li>Improved structured product data by using JSON-LD instead of inline Microdata.</li>
<li>Improved downloads list layout (template file).</li>
<li>Respect stock status and prevent the &#8220;out of stock threshold&#8221; setting affecting existing in-stock products.</li>
<li>Improved handling of shop page rewrite rules to allow subpages.</li>
<li>Redirect to login after password reset.</li>
<li>When using authorizations in PayPal Standard, automatically capture funds when the order goes processing/completed.</li>
<li>On multisite, when a user logs into a store with an account on a site, but not the current site, rather than error, add the user to the current site as a customer.</li>
<li>Show variable weights/dimensions even when parent values are not set.</li>
<li>Automatically sort tax rates rather than allow clunky manual sorting.</li>
<li>When deleting a tax rate class, remove it&#8217;s tax rates.</li>
<li>Made WC_Logger pluggable via wc_get_logger function.</li>
<li>Use &#8216;average rating&#8217; post meta for &#8216;rating&#8217; product sorting option.</li>
<li>Show better labels in nav menus metabox.</li>
<li>Sort �Recently Viewed� products by the view order.</li>
<li>Removed internal scroll from log viewer.</li>
<li>Add reply-to to admin emails.</li>
<li>Improved the zone setup flow.</li>
<li>Made wc_get_wildcard_postcodes return the orignal postcode plus * since wildcards should match empty strings too.</li>
<li>Use all paid statuses in $customer-&gt;get_total_spent().</li>
<li>Move location of billing email field to work with password managers.</li>
<li>Option to restrict selling locations by country.</li>
<li>Added tool to clear orphaned variations in system status.</li>
<li>Remove checkbox options in system status tools and replace with constants.</li>
<li>Added security section in system status report.</li>
<li>Add image_url setting to PayPal Standard.</li>
<li>Fixed attribute registration. Attributes are non-hierarchical by default (parent is not supported).</li>
<li>Add sort parameter to checkout fields to aid with sorting per locale.</li>
<li>Merged percent and percent product coupon types (they provide the same discount).</li>
<li>Prevent payment details being cleared after update_checkout events.</li>
<li>Performance &#8211; Converted _featured and _visibility meta data to terms for faster catalog queries. Upgrade routine handles migration. Developers may need to update queries to reflect this change.</li>
<li>Includes product attributes archives links in &#8220;Additional Information&#8221; tab.</li>
<li>Select2 has been upgraded to v4.</li>
<li>Improved logging system for extensions.</li>
<li>Tax suffix is now hidden on non-taxable products.</li>
<li>Grouped products are linked from the parent rather than the children. Children can be in more than one group.</li>
<li>Removed coupon usage link in coupons admin screen.</li>
<li>Performance &#8211; Converted rating filters to visibility terms.</li>
<li>Performance &#8211; Added visibility term for outofstock products to speed those queries up also.</li>
<li>Performance &#8211; Introduced a new CRUD (create, read, update, delete) system for Products, Orders, Customers and Shipping Zones.</li>
<li>Performance &#8211; Optimised variable product sync. Upper/lower price meta is no longer stored, just the main prices, if a child has weight, and if a child has dimensions.</li>
<li>Performance &#8211; Removed WP_Query from up-sells.php and related.php and replaced with PHP foreach loop (since we already have the product IDs).</li>
<li>Performance &#8211; Removed the feature where old orders get access to new downloads on product edit. Looping potentially thousands of orders to do this is too much of a performance burden for stores and this can sometimes be unexpected behavior too. This does however updates <em>edited</em> downloads.</li>
<li>Performance &#8211; Removed &#8216;items&#8217; column on orders screen due to loading excessive data.</li>
<li>Performance &#8211; Deferred email sending for faster checkouts. Now uses CRON.</li>
<li>API &#8211; New Rest API v2 with support for meta_data amongst other things.</li>
<li>API &#8211; Removed last order from customers part of the API due to performance concerns &#8211; use orders endpoint instead. Other order data on the endpoint is now transient cached.</li>
<li>API &#8211; Allow oAuth1.0a authentication using headers.</li>
<li>API &#8211; New Shipping Zones endpoints.</li>
<li>API &#8211; New variations endpoints.</li>
<li>API &#8211; New settings endpoints.</li>
<li>API &#8211; Payment gateways and shipping methods endpoints.</li>
<li>API &#8211; Prevented the (broken) ability to manipulate variations directly on the products endpoints.</li>
<li>CLI &#8211; New CLI which uses the REST API endpoints rather than it&#8217;s own functions.</li>
<li>Localization &#8211; Improved RTL support.</li>
<li>Localization &#8211; Added a language independent permalink setting function.</li>
<li>Localization &#8211; Added inline comments for placeholder strings.</li>
<li>Localization &#8211; Added Nigerian and Pakistan Provinces to i18n/state.</li>
<li>Localization &#8211; US and Poland postcode validation.</li>
<li>To read more about this release, see our dev blog announcement here: http://wp.me/p6wtcw-Uo</li>
</ul>
<p><a href=\"https://raw.githubusercontent.com/woocommerce/woocommerce/master/CHANGELOG.txt\" rel=\"nofollow\">See changelog for all versions</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wordpress.org/plugins/woocommerce/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Google XML Sitemaps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://wordpress.org/plugins/google-sitemap-generator/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 16 Jun 2005 09:33:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wordpress.org/plugins-wp/google-sitemap-generator/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"This plugin will generate a special XML sitemap which will help search engines to better&#8230;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Arne Brachhold\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:7643:\"<p><!--section=description--></p>
<p>This plugin will generate a special XML sitemap which will help search engines like Google, Bing, Yahoo and Ask.com to better index your blog. With such a sitemap, it&#8217;s much easier for the crawlers to see the complete structure of your site and retrieve it more efficiently. The plugin supports all kinds of WordPress generated pages as well as custom URLs. Additionally it notifies all major search engines every time you create a post about the new content.</p>
<p>Supported since <em>over 9 years</em> and rated as the <a href=\"https://wordpress.org/plugins/browse/top-rated/\">best WordPress plugin</a>, it will do exactly what it&#8217;s supposed to do &#8211; providing a complete XML sitemap for search engines. It will not break your site, slow it down or annoy you. Guaranteed!</p>
<blockquote>
<p>If you like the plugin, feel free to rate it (on the right side of this page) or <a href=\"http://www.arnebrachhold.de/redir/sitemap-paypal/\" rel=\"nofollow\">donate via PayPal</a>. I&#8217;m gladly supporting this plugin since over 9 years! Thanks a lot! <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f642.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
</blockquote>
<p>Related Links:</p>
<ul>
<li><a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/\" title=\"Google XML Sitemaps Plugin for WordPress\" rel=\"nofollow\">Plugin Homepage</a></li>
<li><a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/changelog/\" title=\"Changelog of the Google XML Sitemaps Plugin for WordPress\" rel=\"nofollow\">Changelog</a></li>
<li><a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/help/\" title=\"Google Sitemaps FAQ\" rel=\"nofollow\">Plugin help and sitemaps FAQ</a></li>
<li><a href=\"https://wordpress.org/support/topic/read-before-opening-a-new-support-topic\" rel=\"nofollow\">Support Forum</a></li>
</ul>
<h3>License</h3>
<p>Good news, this plugin is free for everyone! Since it&#8217;s released under the GPL, you can use it free of charge on your personal or commercial blog. But if you enjoy this plugin, you can thank me and leave a <a href=\"http://www.arnebrachhold.de/redir/sitemap-paypal\" title=\"Donate with PayPal\" rel=\"nofollow\">small donation</a> for the time I&#8217;ve spent writing and supporting this plugin. And I really don&#8217;t want to know how many hours of my life this plugin has already eaten <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f609.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
<h3>Translations</h3>
<p>The plugin comes with various translations, please refer to the <a href=\"https://codex.wordpress.org/Installing_WordPress_in_Your_Language\" title=\"Installing WordPress in Your Language\" rel=\"nofollow\">WordPress Codex</a> for more information about activating the translation. If you want to help to translate the plugin to your language, please have a look at the sitemap.pot file which contains all definitions and may be used with a <a href=\"http://www.gnu.org/software/gettext/\" rel=\"nofollow\">gettext</a> editor like <a href=\"http://www.poedit.net/\" rel=\"nofollow\">Poedit</a> (Windows).</p>
<p><!--section=installation--></p>
<ol>
<li>Install the plugin like you always install plugins, either by uploading it via FTP or by using the &#8220;Add Plugin&#8221; function of WordPress.</li>
<li>Activate the plugin at the plugin administration page</li>
<li>If you want: Open the plugin configuration page, which is located under Settings -&gt; XML-Sitemap and customize settings like priorities and change frequencies.</li>
<li>The plugin will automatically update your sitemap of you publish a post, so there is nothing more to do <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f642.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></li>
</ol>
<p><!--section=faq--></p>
<dl>
<dt>Where can I find the options page of the plugin?</dt>
<dd>
<p>It is under Settings &gt; XML Sitemap. I know nowadays many plugins add top-level menu items, but in most of the cases it is just not necessary. I&#8217;ve seen WP installations which looked like an Internet Explorer ten years ago with 20 toolbars installed. <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f609.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></p>
</dd>
<dt>Do I have to create a sitemap.xml and sitemap.xml.gz by myself?</dt>
<dd>
<p>Not anymore. Since version 4, these files are dynamically generated. <em>There must be no sitemap.xml or sitemap.xml.gz in your blog directory anymore!</em> The plugin will try to rename them to sitemap.xml.bak if they still exists.</p>
</dd>
<dt>Does this plugin use static files or &#8220;I can&#8217;t find the sitemap.xml file!&#8221;</dt>
<dd>
<p>Not anymore. Since version 4, these files are dynamically generated just like any other WordPress content.</p>
</dd>
<dt>There are no comments yet (or I&#8217;ve disabled them) and all my postings have a priority of zero!</dt>
<dd>
<p>Please disable automatic priority calculation and define a static priority for posts.</p>
</dd>
<dt>So many configuration options&#8230; Do I need to change them?</dt>
<dd>
<p>No, only if you want to. Default values are ok for most sites.</p>
</dd>
<dt>Does this plugin work with all WordPress versions?</dt>
<dd>
<p>This version works with WordPress 3.3 and better. If you&#8217;re using an older version, please check the <a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/\" title=\"Google (XML) Sitemap Generator Plugin Homepage\" rel=\"nofollow\">Google Sitemaps Plugin Homepage</a> for the legacy releases. There is a working release for every WordPress version since 1.5, but you really should consider updating your WordPress installation!</p>
</dd>
<dt>My question isn&#8217;t answered here</dt>
<dd>
<p>Most of the plugin options are described at the <a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/\" rel=\"nofollow\">plugin homepage</a> as well as the dedicated <a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/help/\" title=\"List of common questions / problems regarding Google (XML) Sitemaps\" rel=\"nofollow\">Google Sitemaps FAQ</a>.</p>
</dd>
<dt>My question isn&#8217;t even answered there</dt>
<dd>
<p>Please post your question at the <a href=\"https://wordpress.org/support/topic/read-before-opening-a-new-support-topic\" rel=\"nofollow\">WordPress support forum</a> and tag your post with &#8220;google-sitemap-generator&#8221;.</p>
</dd>
<dt>What&#8217;s new in the latest version?</dt>
<dd>
<p>The changelog is maintained <a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/changelog/\" title=\"Google (XML) Sitemap Generator Plugin Changelog\" rel=\"nofollow\">here</a></p>
</dd>
<dt>Why is the changelog on a separate page and not here?</dt>
<dd>
<p>The WordPress.org repository is just another place to download this plugin. I don&#8217;t want to maintain too many pages with the same content. Thank you for your understanding!</p>
</dd>
</dl>
<p><!--section=changelog--></p>
<p>You can always find the changelog on <a href=\"http://www.arnebrachhold.de/projects/wordpress-plugins/google-xml-sitemaps-generator/changelog/\" title=\"Google (XML) Sitemap Generator Plugin Changelog\" rel=\"nofollow\">the plugin website</a>, since I don&#8217;t like to maintain the same content on different pages. Thank you for your understanding!</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wordpress.org/plugins/google-sitemap-generator/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Limit Login Attempts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wordpress.org/plugins/limit-login-attempts/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wordpress.org/plugins/limit-login-attempts/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Jan 2009 14:20:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/plugins-wp/limit-login-attempts/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"Limit rate of login attempts, including by way of cookies, for each IP. Fully customizable.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:11761:\"<p><!--section=description--></p>
<p>Limit the number of login attempts possible both through normal login as well as using auth cookies.</p>
<p>By default WordPress allows unlimited login attempts either through the login page or by sending special cookies. This allows passwords (or hashes) to be brute-force cracked with relative ease.</p>
<p>Limit Login Attempts blocks an Internet address from making further attempts after a specified limit on retries is reached, making a brute-force attack difficult or impossible.</p>
<p>Features</p>
<ul>
<li>Limit the number of retry attempts when logging in (for each IP). Fully customizable</li>
<li>Limit the number of attempts to log in using auth cookies in same way</li>
<li>Informs user about remaining retries or lockout time on login page</li>
<li>Optional logging, optional email notification</li>
<li>Handles server behind reverse proxy</li>
<li>It is possible to whitelist IPs using a filter. But you probably shouldn&#8217;t. <img src=\"https://s.w.org/images/core/emoji/2.2.1/72x72/1f642.png\" alt=\"?\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></li>
</ul>
<p>Translations: Bulgarian, Brazilian Portuguese, Catalan, Chinese (Traditional), Czech, Dutch, Finnish, French, German, Hungarian, Norwegian, Persian, Romanian, Russian, Spanish, Swedish, Turkish</p>
<p>Plugin uses standard actions and filters only.</p>
<p><!--section=installation--></p>
<ol>
<li>Download and extract plugin files to a wp-content/plugin directory.</li>
<li>Activate the plugin through the WordPress admin interface.</li>
<li>Customize the settings on the options page, if desired. If your server is located behind a reverse proxy make sure to change this setting.</li>
</ol>
<p>If you have any questions or problems please make a post here: https://wordpress.org/tags/limit-login-attempts</p>
<p><!--section=faq--></p>
<dl>
<dt>Why not reset failed attempts on a successful login?</dt>
<dd>
<p>This is very much by design. Otherwise you could brute force the &#8220;admin&#8221; password by logging in as your own user every 4th attempt.</p>
</dd>
<dt>What is this option about site connection and reverse proxy?</dt>
<dd>
<p>A reverse proxy is a server in between the site and the Internet (perhaps handling caching or load-balancing). This makes getting the correct client IP to block slightly more complicated.</p>
<p>The option default to NOT being behind a proxy &#8212; which should be by far the common case.</p>
</dd>
<dt>How do I know if my site is behind a reverse proxy?</dt>
<dd>
<p>You probably are not or you would know. We show a pretty good guess on the option page. Set the option using this unless you are sure you know better.</p>
</dd>
<dt>Can I whitelist my IP so I don&#8217;t get locked out?</dt>
<dd>
<p>First please consider if you really need this. Generally speaking it is not a good idea to have exceptions to your security policies.</p>
<p>That said, there is now a filter which allows you to do it: &#8220;limit_login_whitelist_ip&#8221;.</p>
<p>Example:<br />
function my_ip_whitelist($allow, $ip) {<br />
     return ($ip == &#8216;my-ip&#8217;) ? true : $allow;<br />
}<br />
add_filter(&#8216;limit_login_whitelist_ip&#8217;, &#8216;my_ip_whitelist&#8217;, 10, 2);</p>
<p>Note that we still do notification and logging as usual. This is meant to allow you to be aware of any suspicious activity from whitelisted IPs.</p>
</dd>
<dt>I locked myself out testing this thing, what do I do?</dt>
<dd>
<p>Either wait, or:</p>
<p>If you know how to edit / add to PHP files you can use the IP whitelist functionality described above. You should then use the &#8220;Restore Lockouts&#8221; button on the plugin settings page and remove the whitelist function again.</p>
<p>If you have ftp / ssh access to the site rename the file &#8220;wp-content/plugins/limit-login-attempts/limit-login-attempts.php&#8221; to deactivate the plugin.</p>
<p>If you have access to the database (for example through phpMyAdmin) you can clear the limit_login_lockouts option in the wordpress options table. In a default setup this would work: &#8220;UPDATE wp_options SET option_value = &#8221; WHERE option_name = &#8216;limit_login_lockouts\'&#8221;</p>
</dd>
</dl>
<p><!--section=changelog--></p>
<h4>1.7.1</h4>
<p>This version fixes a security bug in version 1.6.2 and 1.7.0. Please upgrade immediately.</p>
<p>&#8220;Auth cookies&#8221; are special cookies set at login that authenticating you to the system. It is how WordPress &#8220;remembers&#8221; that you are logged in between page loads.</p>
<p>During lockout these are supposed to be cleared, but a change in 1.6.2 broke this. It allowed an attacker to keep trying to break these cookies during a lockout.</p>
<p>Lockout of normal password login attempts still worked as it should, and it appears that all &#8220;auth cookie&#8221; attempts would keep getting logged.</p>
<p>In theory the &#8220;auth cookie&#8221; is quite resistant to brute force attack. It contains a cryptographic hash of the user password, and the difficulty to break it is not based on the password strength but instead on the cryptographic operations used and the length of the hash value. In theory it should take many many years to break this hash. As theory and practice does not always agree it is still a good idea to have working lockouts of any such attempts.</p>
<h4>1.7.0</h4>
<ul>
<li>Added filter that allows whitelisting IP. Please use with care!!</li>
<li>Update to Spanish translation, thanks to Marcelo Pedra</li>
<li>Updated Swedish translation</li>
<li>Tested against WordPress 3.3.2</li>
</ul>
<h4>1.6.2</h4>
<ul>
<li>Fix bug where log would not get updated after it had been cleared</li>
<li>Do plugin setup in &#8216;init&#8217; action</li>
<li>Small update to Spanish translation file, thanks to Marcelo Pedra</li>
<li>Tested against WordPress 3.2.1</li>
</ul>
<h4>1.6.1</h4>
<ul>
<li>(WordPress 3.0+) An invalid cookie can sometimes get sent multiple times before it gets cleared, resulting in multiple failed attempts or even a lockout from a single invalid cookie. Store the latest failed cookie to make sure we only count it as one failed attempt</li>
<li>Define &#8220;Text Domain&#8221; correctly</li>
<li>Include correct Dutch tranlation file. Thanks to Martin1 for noticing. Thanks again to Bjorn Wijers for the translation</li>
<li>Updated POT file for this version</li>
<li>Tested against WordPress 3.1-RC4</li>
</ul>
<h4>1.6.0</h4>
<ul>
<li>Happy New Year</li>
<li>Tested against WordPress 3.1-RC1</li>
<li>Plugin now requires WordPress version 2.8+. Of course you should never ever use anything but the latest version</li>
<li>Fixed deprecation warnings that had been piling up with the old version requirement. Thanks to Johannes Ruthenberg for the report that prompted this</li>
<li>Removed auth cookie admin check for version 2.7.</li>
<li>Make sure relevant values in $_COOKIE get cleared right away on auth cookie validation failure. There are still some problems with cookie auth handling. The lockout can trigger prematurely in rare cases, but fixing it is plugin version 2 stuff unfortunately.</li>
<li>Changed default time for retries to reset from 24 hours to 12 hours. The security impact is very minor and it means the warning will disappear &#8220;overnight&#8221;</li>
<li>Added question to FAQ (&#8220;Why not reset failed attempts on a successful login?&#8221;)</li>
<li>Updated screenshots</li>
</ul>
<h4>1.5.2</h4>
<ul>
<li>Reverted minor cookie-handling cleanup which might somehow be responsible for recently reported cookie related lockouts</li>
<li>Added version 1.x Brazilian Portuguese translation, thanks to Luciano Passuello</li>
<li>Added Finnish translation, thanks to Ari Kontiainen</li>
</ul>
<h4>1.5.1</h4>
<ul>
<li>Further multisite &amp; WPMU support (again thanks to <a href=\"mailto:&#101;&#114;&#105;&#x6b;&#x40;&#101;&#114;&#105;&#x6b;&#x73;&#x68;&#111;&#115;t&#x69;&#x6e;&#103;&#046;c&#x6f;&#x6d;\" rel=\"nofollow\">&#101;&#114;&#105;&#x6b;&#x40;&#101;&#114;&#105;&#x6b;&#x73;&#x68;&#111;&#115;t&#x69;&#x6e;&#103;&#046;c&#x6f;&#x6d;</a>)</li>
<li>Better error handling if option variables are damaged</li>
<li>Added Traditional Chinese translation, thanks to Denny Huang <a href=\"mailto:&#x62;&#105;&#x67;&#101;&#x78;&#112;&#x6c;&#111;&#114;&#x61;&#116;&#x69;&#111;&#x6e;&#115;&#064;&#x62;&#105;&#x67;&#101;&#x78;&#112;&#108;&#x6f;&#114;&#x61;&#116;&#x69;&#111;n&#x73;&#046;&#x63;&#111;&#x6d;&#046;t&#x77;\" rel=\"nofollow\">&#x62;&#105;&#x67;&#101;&#x78;&#112;&#x6c;&#111;&#114;&#x61;&#116;&#x69;&#111;&#x6e;&#115;&#064;&#x62;&#105;&#x67;&#101;&#x78;&#112;&#108;&#x6f;&#114;&#x61;&#116;&#x69;&#111;n&#x73;&#046;&#x63;&#111;&#x6d;&#046;t&#x77;</a></li>
</ul>
<h4>1.5</h4>
<ul>
<li>Tested against WordPress 3.0</li>
<li>Handle 3.0 login page failure &#8220;shake&#8221;</li>
<li>Basic multisite support (parts thanks to <a href=\"mailto:&#101;&#114;&#105;&#x6b;&#x40;&#101;&#114;&#105;&#x6b;&#x73;&#x68;&#111;&#115;t&#x69;&#x6e;&#103;&#046;c&#x6f;&#x6d;\" rel=\"nofollow\">&#101;&#114;&#105;&#x6b;&#x40;&#101;&#114;&#105;&#x6b;&#x73;&#x68;&#111;&#115;t&#x69;&#x6e;&#103;&#046;c&#x6f;&#x6d;</a>)</li>
<li>Added Dutch translation, thanks to Bjorn Wijers <a href=\"mailto:b&#117;&#x72;&#111;&#x62;&#x6a;&#111;&#x72;n&#064;&#x62;&#117;&#x72;&#x6f;&#098;&#x6a;&#111;&#114;&#x6e;&#046;&#x6e;l\" rel=\"nofollow\">b&#117;&#x72;&#111;&#x62;&#x6a;&#111;&#x72;n&#064;&#x62;&#117;&#x72;&#x6f;&#098;&#x6a;&#111;&#114;&#x6e;&#046;&#x6e;l</a></li>
<li>Added Hungarian translation, thanks to B?lint Vereskuti <a href=\"mailto:&#098;&#097;&#x6c;&#x69;&#110;&#116;&#x40;v&#101;&#x72;&#x65;&#115;&#107;&#x75;&#x74;&#105;&#046;&#x69;n&#102;&#x6f;\" rel=\"nofollow\">&#098;&#097;&#x6c;&#x69;&#110;&#116;&#x40;v&#101;&#x72;&#x65;&#115;&#107;&#x75;&#x74;&#105;&#046;&#x69;n&#102;&#x6f;</a></li>
<li>Added French translation, thanks to oVa <a href=\"mailto:&#111;&#118;&#x61;&#x31;&#x33;l&#097;&#115;&#x74;&#x61;&#x72;&#064;&#103;&#109;&#097;&#x69;&#x6c;&#x2e;&#099;&#111;&#109;\" rel=\"nofollow\">&#111;&#118;&#x61;&#x31;&#x33;l&#097;&#115;&#x74;&#x61;&#x72;&#064;&#103;&#109;&#097;&#x69;&#x6c;&#x2e;&#099;&#111;&#109;</a></li>
</ul>
<h4>1.4.1</h4>
<ul>
<li>Added Turkish translation, thanks to Yazan Canarkadas</li>
</ul>
<h4>1.4</h4>
<ul>
<li>Protect admin page update using wp_nonce</li>
<li>Added Czech translation, thanks to Jakub Jedelsky</li>
</ul>
<h4>1.3.2</h4>
<ul>
<li>Added Bulgarian translation, thanks to Hristo Chakarov</li>
<li>Added Norwegian translation, thanks to Rune Gulbrands?y</li>
<li>Added Spanish translation, thanks to Marcelo Pedra</li>
<li>Added Persian translation, thanks to Mostafa Soufi</li>
<li>Added Russian translation, thanks to Jack Leonid (http://studio-xl.com)</li>
</ul>
<h4>1.3.1</h4>
<ul>
<li>Added Catalan translation, thanks to Robert Buj</li>
<li>Added Romanian translation, thanks to Robert Tudor</li>
</ul>
<h4>1.3</h4>
<ul>
<li>Support for getting the correct IP for clients while server is behind reverse proxy, thanks to Michael Skerwiderski</li>
<li>Added German translation, thanks to Michael Skerwiderski</li>
</ul>
<h4>1.2</h4>
<ul>
<li>No longer replaces pluggable function when cookie handling active. Re-implemented using available actions and filters</li>
<li>Filter error messages during login to avoid information leak regarding available usernames</li>
<li>Do not show retries or lockout messages except for login (registration, lost password pages). No change in actual enforcement</li>
<li>Slightly more aggressive in trimming old retries data</li>
</ul>
<h4>1.1</h4>
<ul>
<li>Added translation support</li>
<li>Added Swedish translation</li>
<li>During lockout, filter out all other login errors</li>
<li>Minor cleanups</li>
</ul>
<h4>1.0</h4>
<ul>
<li>Initial version</li>
</ul>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/plugins/limit-login-attempts/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:39:\"
		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"TinyMCE Advanced\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://wordpress.org/plugins/tinymce-advanced/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Jun 2007 06:02:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wordpress.org/plugins-wp/tinymce-advanced/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Extends and enhances TinyMCE, the WordPress Visual Editor.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Andrew Ozz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:10621:\"<p><!--section=description--></p>
<p>This plugin will let you add, remove and arrange the buttons that are shown on the Visual Editor toolbar. You can configure up to four rows of buttons including Font Sizes, Font Family, text and background colors, tables, etc. It will also let you enable the editor menu, see the <a href=\"screenshots\" rel=\"nofollow\">screenshots</a>.</p>
<p>It includes 15 plugins for <a href=\"http://tinymce.com/\" rel=\"nofollow\">TinyMCE</a> that are automatically enabled or disabled depending on the buttons you have chosen. In addition this plugin adds some commonly used options as keeping the paragraph tags in the Text editor and importing the CSS classes from the theme&#8217;s editor-style.css.</p>
<h4>Some of the features added by this plugin</h4>
<ul>
<li>Support for creating and editing tables.</li>
<li>More options when inserting lists.</li>
<li>Search and Replace in the editor.</li>
<li>Ability to set Font Family and Font Sizes.</li>
<li>And many others.</li>
</ul>
<p>With this plugin you can also enable the TinyMCE menu above the toolbars. This will make the editor even more powerful and convenient.</p>
<p><!--section=installation--></p>
<p>Best is to install directly from WordPress. If manual installation is required, please make sure that the plugin files are in a folder named &#8220;tinymce-advanced&#8221; (not two nested folders) in the WordPress plugins folder, usually &#8220;wp-content/plugins&#8221;.</p>
<p><!--section=faq--></p>
<dl>
<dt>Installation Instructions</dt>
<dd>
<p>Best is to install directly from WordPress. If manual installation is required, please make sure that the plugin files are in a folder named &#8220;tinymce-advanced&#8221; (not two nested folders) in the WordPress plugins folder, usually &#8220;wp-content/plugins&#8221;.</p>
</dd>
<dt>No styles are imported in the Formats sub-menu.</dt>
<dd>
<p>These styles are imported from your current theme editor-style.css file. However some themes do not have this functionality. For these themes TinyMCE Advanced has the option to let you add a customized editor-style.css and import it into the editor.</p>
</dd>
<dt>I have just installed this plugin, but it does not do anything.</dt>
<dd>
<p>Change some buttons on one of the toolbars, save your changes, clear your browser cache, and try again. If that does not work try reloding the Edit page several times while holding down Shift or Ctrl. There may also be a network cache somewhere between you and your host. You may need to wait for a few hours until this cache expires.</p>
</dd>
<dt>When I add &#8220;Smilies&#8221;, they do not show in the editor.</dt>
<dd>
<p>The &#8220;Emoticons&#8221; button in TinyMCE adds the codes for the smilies. The actual images are added by WordPress when viewing the Post. Make sure the checkbox &#8220;Convert emoticons to graphics on display&#8221; in &#8220;Options &#8211; Writing&#8221; is checked.</p>
</dd>
<dt>The plugin does not add any buttons.</dt>
<dd>
<p>Make sure the &#8220;Disable the visual editor when writing&#8221; checkbox under &#8220;Users &#8211; Your Profile&#8221; is <strong>not</strong> checked.</p>
</dd>
<dt>I still see the &#8220;old&#8221; buttons in the editor</dt>
<dd>
<p>Click the &#8220;Restore Default Settings&#8221; button on the plugin settings page and then set the buttons again and save.</p>
</dd>
<dt>Other questions? More screenshots?</dt>
<dd>
<p>Please post on the support forum or visit the homepage for <a href=\"http://www.laptoptips.ca/projects/tinymce-advanced/\" rel=\"nofollow\">TinyMCE Advanced</a>.</p>
</dd>
</dl>
<p><!--section=changelog--></p>
<h4>4.5.6</h4>
<ul>
<li>Updated for WordPress 4.7.4 and TinyMCE 4.5.6.</li>
<li>Fixed PHP notice after importing settings.</li>
</ul>
<h4>4.4.3</h4>
<ul>
<li>Updated for WordPress 4.7 and TinyMCE 4.4.3.</li>
<li>Fixed missing &#8220;Source code&#8221; button bug.</li>
</ul>
<h4>4.4.1</h4>
<ul>
<li>Updated for WordPress 4.6 and TinyMCE 4.4.1.</li>
<li>Fixed multisite saving bug.</li>
<li>Added new button in the Text editor to add or reset the line breaks. Adds line breaks only between tags. Works only when it detects that line breaks are missing so it doesn&#8217;t reformat posts with removed paragraphs.</li>
</ul>
<h4>4.3.10.1</h4>
<ul>
<li>Fixed adding paragraph tags when loading posts that were saved before turning autop off.</li>
<li>Disabled the (new) inline toolbar for tables as it was overlapping the table in some cases.</li>
</ul>
<h4>4.3.10</h4>
<ul>
<li>Updated for WordPress 4.5.1 and TinyMCE 4.3.10.</li>
<li>Fixed support for adding editor-style.css to themes that don&#8217;t have it.</li>
</ul>
<h4>4.3.8</h4>
<ul>
<li>Updated for WordPress 4.5 and TinyMCE 4.3.8.</li>
<li>Separated standard options and admin options.</li>
<li>Added settings that can disable the plugin for the main editor, other editors in wp-admin or editors on the front-end.</li>
<li>Korean translation by Josh Kim and Greek translation by Stathis Mellios.</li>
</ul>
<h4>4.2.8</h4>
<ul>
<li>Updated for WordPress 4.4 and TinyMCE 4.2.8.</li>
<li>Japanese translation by Manabu Miwa.</li>
</ul>
<h4>4.2.5</h4>
<ul>
<li>Updated for WordPress 4.3.1 and TinyMCE 4.2.5.</li>
<li>Fixed text domain and plugin headers.</li>
</ul>
<h4>4.2.3.1</h4>
<ul>
<li>Fix error with removing the &#8216;textpattern&#8217; plugin.</li>
</ul>
<h4>4.2.3</h4>
<ul>
<li>Updated for WordPress 4.3 and TinyMCE 4.2.3.</li>
<li>Removed the &#8216;textpattern&#8217; plugin as WordPress 4.3 includes similar functionality by default.</li>
<li>French translation by Nicolas Schneider.</li>
</ul>
<h4>4.1.9</h4>
<ul>
<li>Updated for WordPress 4.2 and TinyMCE 4.1.9.</li>
<li>Fixed bugs with showing oEmbed previews when pasting an URL.</li>
<li>Fixed bugs with getting the content from TinyMCE with line breaks.</li>
</ul>
<h4>4.1.7</h4>
<ul>
<li>Updated for WordPress 4.1 and TinyMCE 4.1.7.</li>
<li>Fixed bug where consecutive caption shortcodes may be split with an empty paragraph tag.</li>
</ul>
<h4>4.1.1</h4>
<ul>
<li>Fix bug with image captions when wpautop is disabled.</li>
<li>Add translation support to the settings page. Button names/descriptions are translated from JS using the existing WordPress translation, so this part of the settings page will be translated by default. The other text still needs separate translation.</li>
</ul>
<h4>4.1</h4>
<ul>
<li>Updated for WordPress 4.0 and TinyMCE 4.1.</li>
<li>Add the &#8216;textpattern&#8217; plugin that supports some of the markdown syntax while typing, <a href=\"http://www.tinymce.com/wiki.php/Configuration:textpattern_patterns\" rel=\"nofollow\">(more info)</a>.</li>
<li>Add the updated &#8216;table&#8217; plugin that supports background and border color.</li>
</ul>
<h4>4.0.2</h4>
<ul>
<li>Fix showing of the second, third and forth button rows when the Toolbar Toggle button is not used.</li>
<li>Fix adding the &#8221;directionality&#8221; plugin when RTL or LTR button is selected.</li>
<li>Show the &#8221;Advanced Options&#8221; to super admins on multisite installs.</li>
<li>Add the &#8221;link&#8221; plugin including link rel setting. Replaces the Insert/Edit Link dialog when enabled.</li>
<li>Include updated &#8221;table&#8221; plugin that has support for vertical align for cells.</li>
</ul>
<h4>4.0.1</h4>
<p>Fix warnings on pages other than Edit Post. Update the description.</p>
<h4>4.0</h4>
<p>Updated for WordPress 3.9 and TinyMCE 4.0. Refreshed the settings screen. Added support for exporting and importing of the settings.</p>
<h4>3.5.9.1</h4>
<p>Updated for WordPress 3.8, fixed auto-embedding of single line URLs when not removing paragraph tags.</p>
<h4>3.5.9</h4>
<p>Updated for WordPress 3.7 and TinyMCE 3.5.9.</p>
<h4>3.5.8</h4>
<p>Updated for WordPress 3.5 and TinyMCE 3.5.8.</p>
<h4>3.4.9</h4>
<p>Updated for WordPress 3.4 and TinyMCE 3.4.9.</p>
<h4>3.4.5.1</h4>
<p>Fixed a bug preventing TinyMCE from importing CSS classes from editor-style.css.</p>
<h4>3.4.5</h4>
<p>Updated for WordPress 3.3 or later and TinyMCE 3.4.5.</p>
<h4>3.4.2.1</h4>
<p>Fix the removal of the <em>media</em> plugin so it does not require re-saving the settings.</p>
<h4>3.4.2</h4>
<p>Compatibility with WordPress 3.2 and TinyMCE 3.4.2, removed the options for support for iframe and HTML 5.0 elements as they are supported by default in WordPress 3.2, removed the <em>media</em> plugin as it is included by default.</p>
<h4>3.3.9.1</h4>
<p>Added advanced options: stop removing iframes, stop removing HTML 5.0 elements, moved the support for custom editor styles to editor-style.css in the current theme.</p>
<p>Attention: if you have a customized tadv-mce.css file and your theme doesn&#8217;t have editor-style.css, please download tadv-mce.css, rename it to editor-style.css and upload it to your current theme directory. Alternatively you can add there the editor-style.css from the Twenty Ten theme. If your theme has editor-style.css you can add any custom styles there.</p>
<h4>3.3.9</h4>
<p>Compatibility with WordPress 3.1 and TinyMCE 3.3.9, improved P and BR tags option.</p>
<h4>3.2.7</h4>
<p>Compatibility with WordPress 2.9 and TinyMCE 3.2.7, several minor bug fixes.</p>
<h4>3.2.4</h4>
<p>Compatibility with WordPress 2.8 and TinyMCE 3.2.4, minor bug fixes.</p>
<h4>3.2</h4>
<p>Compatibility with WordPress 2.7 and TinyMCE 3.2, minor bug fixes.</p>
<h4>3.1</h4>
<p>Compatibility with WordPress 2.6 and TinyMCE 3.1, keeps empty paragraphs when disabling the removal of P and BR tags, the buttons for MCImageManager and MCFileManager can be arranged (if installed).</p>
<h4>3.0.1</h4>
<p>Compatibility with WordPress 2.5.1 and TinyMCE 3.0.7, added option to disable the removal of P and BR tags when saving and in the HTML editor (autop), added two more buttons to the HTML editor: autop and undo, fixed the removal of non-default TinyMCE buttons.</p>
<h4>3.0</h4>
<p>Support for WordPress 2.5 and TinyMCE 3.0.</p>
<h4>2.2</h4>
<p>Deactivate/Uninstall option page, font size drop-down menu and other small changes.</p>
<h4>2.1</h4>
<p>Improved language selection, improved compatibility with WordPress 2.3 and TinyMCE 2.1.1.1, option to override some of the imported css classes and other small improvements and bugfixes.</p>
<h4>2.0</h4>
<p>Includes an admin page for arranging the TinyMCE toolbar buttons, easy installation, a lot of bugfixes, customized &#8220;Smilies&#8221; plugin that uses the built-in WordPress smilies, etc. The admin page uses jQuery and jQuery UI that lets you &#8220;drag and drop&#8221; the TinyMCE buttons to arrange your own toolbars and enables/disables the corresponding plugins depending on the used buttons.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wordpress.org/plugins/tinymce-advanced/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:50:\"https://wordpress.org/plugins/browse/popular/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 11 May 2017 12:53:06 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"?\";s:13:\"last-modified\";s:29:\"Thu, 11 May 2017 12:44:10 GMT\";s:4:\"link\";s:66:\"<https://wordpress.org/plugins/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}}s:5:\"build\";s:14:\"20130911010210\";}","no");
INSERT INTO wp_options VALUES("160","_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109","1494550387","no");
INSERT INTO wp_options VALUES("161","_transient_feed_mod_b9388c83948825c1edaef0d856b7b109","1494507187","no");
INSERT INTO wp_options VALUES("162","_transient_timeout_plugin_slugs","1494614985","no");
INSERT INTO wp_options VALUES("163","_transient_plugin_slugs","a:8:{i:0;s:26:\"secure-wordpress/index.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:43:\"broken-link-checker/broken-link-checker.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:36:\"google-sitemap-generator/sitemap.php\";i:5;s:9:\"hello.php\";i:6;s:27:\"updraftplus/updraftplus.php\";i:7;s:27:\"wp-super-cache/wp-cache.php\";}","no");
INSERT INTO wp_options VALUES("164","_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b","1494550387","no");
INSERT INTO wp_options VALUES("165","_transient_dash_88ae138922fe95674369b1cb3d215a2b","<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2017/04/wordpress-4-7-4/\'>WordPress 4.7.4 Maintenance Release</a> <span class=\"rss-date\">April 20, 2017</span><div class=\"rssSummary\">After almost sixty million downloads of WordPress 4.7, we are pleased to announce the immediate availability of WordPress 4.7.4, a maintenance release. This release contains 47 bug fixes and enhancements, chief among them an incompatibility between the upcoming Chrome version and the visual editor, inconsistencies in media handling, and further improvements to the REST API.</div></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/versionpress-4-0-tentatively-scheduled-to-ship-in-september\'>WPTavern: VersionPress 4.0 Tentatively Scheduled to Ship in September</a></li><li><a class=\'rsswidget\' href=\'https://blog.akismet.com/2017/05/10/akismet-wordpress-plugin-3-3-2/\'>Akismet: Akismet WordPress Plugin 3.3.2 Now Available</a></li><li><a class=\'rsswidget\' href=\'https://heropress.com/essays/no-shortcut-success/\'>HeroPress: There is No Shortcut to Success � ????? ?? ??? ??????? ???? ??</a></li></ul></div><div class=\"rss-widget\"><ul><li class=\"dashboard-news-plugin\"><span>Popular Plugin:</span> Yoast SEO&nbsp;<a href=\"plugin-install.php?tab=plugin-information&amp;plugin=wordpress-seo&amp;_wpnonce=5d5bdb1031&amp;TB_iframe=true&amp;width=600&amp;height=800\" class=\"thickbox open-plugin-details-modal\" aria-label=\"Install Yoast SEO\">(Install)</a></li></ul></div>","no");
INSERT INTO wp_options VALUES("166","_site_transient_timeout_wporg_theme_feature_list","1494518014","no");
INSERT INTO wp_options VALUES("167","_site_transient_wporg_theme_feature_list","a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}","no");
INSERT INTO wp_options VALUES("188","_site_transient_poptags_40cd750bba9870f18aada2478b24840a","O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4335;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2476;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2344;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2063;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1818;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1577;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1545;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1428;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1329;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1321;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1306;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1265;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1257;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1096;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1036;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1036;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:981;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:921;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:811;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:791;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:783;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:761;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:756;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:665;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:652;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:648;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:643;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:639;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:634;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:618;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:593;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:589;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:588;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:571;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:570;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:565;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:564;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:553;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:544;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:534;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:526;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:517;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:513;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:500;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:495;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:488;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:482;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:476;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:464;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:462;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:457;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:454;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:438;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:434;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:431;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:431;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:423;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:409;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:406;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:402;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:400;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:398;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:393;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:393;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:392;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:374;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:371;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:363;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:358;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:348;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:330;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:330;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:329;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:327;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:321;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:320;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:319;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:317;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:314;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:311;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:307;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:293;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:292;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:291;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:289;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:286;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:283;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:282;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:281;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:279;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:271;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:269;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:267;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:267;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:263;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:262;}s:14:\"administration\";a:3:{s:4:\"name\";s:14:\"administration\";s:4:\"slug\";s:14:\"administration\";s:5:\"count\";i:261;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:260;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:260;}}","no");
INSERT INTO wp_options VALUES("175","sm_options","a:51:{s:18:\"sm_b_prio_provider\";s:41:\"GoogleSitemapGeneratorPrioByCountProvider\";s:9:\"sm_b_ping\";b:1;s:10:\"sm_b_stats\";b:0;s:12:\"sm_b_pingmsn\";b:1;s:12:\"sm_b_autozip\";b:1;s:11:\"sm_b_memory\";s:0:\"\";s:9:\"sm_b_time\";i:-1;s:18:\"sm_b_style_default\";b:1;s:10:\"sm_b_style\";s:0:\"\";s:12:\"sm_b_baseurl\";s:0:\"\";s:11:\"sm_b_robots\";b:1;s:9:\"sm_b_html\";b:1;s:12:\"sm_b_exclude\";a:0:{}s:17:\"sm_b_exclude_cats\";a:0:{}s:10:\"sm_in_home\";b:1;s:11:\"sm_in_posts\";b:1;s:15:\"sm_in_posts_sub\";b:0;s:11:\"sm_in_pages\";b:1;s:10:\"sm_in_cats\";b:0;s:10:\"sm_in_arch\";b:0;s:10:\"sm_in_auth\";b:0;s:10:\"sm_in_tags\";b:0;s:9:\"sm_in_tax\";a:0:{}s:17:\"sm_in_customtypes\";a:0:{}s:13:\"sm_in_lastmod\";b:1;s:10:\"sm_cf_home\";s:5:\"daily\";s:11:\"sm_cf_posts\";s:7:\"monthly\";s:11:\"sm_cf_pages\";s:6:\"weekly\";s:10:\"sm_cf_cats\";s:6:\"weekly\";s:10:\"sm_cf_auth\";s:6:\"weekly\";s:15:\"sm_cf_arch_curr\";s:5:\"daily\";s:14:\"sm_cf_arch_old\";s:6:\"yearly\";s:10:\"sm_cf_tags\";s:6:\"weekly\";s:10:\"sm_pr_home\";d:1;s:11:\"sm_pr_posts\";d:0.59999999999999997779553950749686919152736663818359375;s:15:\"sm_pr_posts_min\";d:0.200000000000000011102230246251565404236316680908203125;s:11:\"sm_pr_pages\";d:0.59999999999999997779553950749686919152736663818359375;s:10:\"sm_pr_cats\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_arch\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_auth\";d:0.299999999999999988897769753748434595763683319091796875;s:10:\"sm_pr_tags\";d:0.299999999999999988897769753748434595763683319091796875;s:12:\"sm_i_donated\";b:0;s:17:\"sm_i_hide_donated\";b:0;s:17:\"sm_i_install_date\";i:1494507479;s:14:\"sm_i_hide_note\";b:0;s:15:\"sm_i_hide_works\";b:0;s:16:\"sm_i_hide_donors\";b:0;s:9:\"sm_i_hash\";s:20:\"f6e5b567cc31ebac5fc9\";s:13:\"sm_i_lastping\";i:1494512241;s:16:\"sm_i_supportfeed\";b:1;s:22:\"sm_i_supportfeed_cache\";i:0;}","yes");
INSERT INTO wp_options VALUES("177","onetone","a:742:{s:14:\"header_overlay\";i:1;s:15:\"enable_side_nav\";s:0:\"\";s:20:\"youtube_video_titled\";s:0:\"\";s:26:\"section_background_video_0\";s:11:\"XDLmLYXuIDM\";s:21:\"section_youtube_start\";s:2:\"18\";s:14:\"video_controls\";s:1:\"1\";s:12:\"youtube_mute\";s:1:\"0\";s:16:\"youtube_autoplay\";s:1:\"1\";s:12:\"youtube_loop\";s:1:\"1\";s:15:\"youtube_bg_type\";s:1:\"1\";s:18:\"vimeo_video_titled\";s:0:\"\";s:30:\"section_background_video_vimeo\";s:0:\"\";s:19:\"section_vimeo_start\";s:1:\"1\";s:20:\"vimeo_video_controls\";s:1:\"1\";s:10:\"vimeo_mute\";s:1:\"0\";s:14:\"vimeo_autoplay\";s:1:\"1\";s:10:\"vimeo_loop\";s:1:\"1\";s:13:\"vimeo_bg_type\";s:1:\"0\";s:21:\"video_background_type\";s:7:\"youtube\";s:24:\"video_background_section\";s:1:\"1\";s:17:\"section_1_content\";s:0:\"\";s:13:\"home_animated\";s:1:\"1\";s:20:\"section_order_titled\";s:0:\"\";s:15:\"onetone_get_pro\";s:0:\"\";s:17:\"sections_titled_0\";s:0:\"\";s:14:\"section_hide_0\";s:0:\"\";s:15:\"section_title_0\";s:23:\"POWERFUL ONE PAGE THEME\";s:12:\"menu_title_0\";s:4:\"Home\";s:11:\"menu_slug_0\";s:4:\"home\";s:20:\"section_background_0\";a:5:{s:5:\"color\";s:7:\"#333333\";s:5:\"image\";s:72:\"http://t12pathshala.co.nf/wp-content/themes/onetone/images/home-bg01.jpg\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:13:\"center center\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_0\";s:1:\"0\";s:12:\"full_width_0\";s:2:\"no\";s:19:\"section_css_class_0\";s:14:\"section-banner\";s:17:\"section_padding_0\";s:0:\"\";s:12:\"text_align_0\";s:6:\"center\";s:26:\"section_title_typography_0\";a:4:{s:4:\"size\";s:4:\"64px\";s:4:\"face\";s:13:\"Lustria,serif\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:29:\"section_subtitle_typography_0\";a:4:{s:4:\"size\";s:4:\"18px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:28:\"section_content_typography_0\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:23:\"section_content_model_0\";s:1:\"0\";s:18:\"section_subtitle_0\";s:110:\"BASED ON BOOTSTRAP FRAMEWORK AND SHORTCODES, QUICK SET AND EASY BUILD, SHINES ONE PAGE SMALL BUSINESS WEBSITE.\";s:14:\"section_icon_0\";s:0:\"\";s:18:\"section_btn_text_0\";s:8:\"Click Me\";s:18:\"section_btn_link_0\";s:1:\"#\";s:20:\"section_btn_target_0\";s:5:\"_self\";s:23:\"section_social_icon_0_0\";s:11:\"fa-facebook\";s:21:\"section_icon_link_0_0\";s:1:\"#\";s:23:\"section_social_icon_0_1\";s:8:\"fa-skype\";s:21:\"section_icon_link_0_1\";s:1:\"#\";s:23:\"section_social_icon_0_2\";s:10:\"fa-twitter\";s:21:\"section_icon_link_0_2\";s:1:\"#\";s:23:\"section_social_icon_0_3\";s:11:\"fa-linkedin\";s:21:\"section_icon_link_0_3\";s:1:\"#\";s:23:\"section_social_icon_0_4\";s:14:\"fa-google-plus\";s:21:\"section_icon_link_0_4\";s:1:\"#\";s:23:\"section_social_icon_0_5\";s:6:\"fa-rss\";s:21:\"section_icon_link_0_5\";s:1:\"#\";s:17:\"section_content_0\";s:0:\"\";s:17:\"sections_titled_1\";s:0:\"\";s:14:\"section_hide_1\";s:0:\"\";s:15:\"section_title_1\";s:0:\"\";s:12:\"menu_title_1\";s:0:\"\";s:11:\"menu_slug_1\";s:0:\"\";s:20:\"section_background_1\";a:5:{s:5:\"color\";s:7:\"#eeeeee\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_1\";s:1:\"0\";s:12:\"full_width_1\";s:2:\"no\";s:19:\"section_css_class_1\";s:0:\"\";s:17:\"section_padding_1\";s:6:\"30px 0\";s:12:\"text_align_1\";s:4:\"left\";s:26:\"section_title_typography_1\";a:4:{s:4:\"size\";s:4:\"48px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_1\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#555555\";}s:28:\"section_content_typography_1\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:23:\"section_content_model_1\";s:1:\"0\";s:18:\"section_subtitle_1\";s:0:\"\";s:18:\"section_btn_text_1\";s:8:\"Click Me\";s:18:\"section_btn_link_1\";s:1:\"#\";s:20:\"section_btn_target_1\";s:5:\"_self\";s:14:\"section_desc_1\";s:118:\"<h4>Morbi rutrum, elit ac fermentum egestas, tortor ante vestibulum est, eget scelerisque nisl velit eget tellus.</h4>\";s:17:\"section_content_1\";s:0:\"\";s:17:\"sections_titled_2\";s:0:\"\";s:14:\"section_hide_2\";s:0:\"\";s:15:\"section_title_2\";s:0:\"\";s:12:\"menu_title_2\";s:8:\"Services\";s:11:\"menu_slug_2\";s:8:\"services\";s:20:\"section_background_2\";a:5:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_2\";s:1:\"0\";s:12:\"full_width_2\";s:2:\"no\";s:19:\"section_css_class_2\";s:0:\"\";s:17:\"section_padding_2\";s:6:\"50px 0\";s:12:\"text_align_2\";s:6:\"center\";s:26:\"section_title_typography_2\";a:4:{s:4:\"size\";s:4:\"48px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_2\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#555555\";}s:28:\"section_content_typography_2\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:23:\"section_content_model_2\";s:1:\"0\";s:18:\"section_subtitle_2\";s:0:\"\";s:28:\"section_service_icon_color_2\";s:7:\"#666666\";s:16:\"section_icon_2_0\";s:0:\"\";s:17:\"section_image_2_0\";s:79:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Icon_1.png\";s:17:\"section_title_2_0\";s:17:\"FREE PSD TEMPLATE\";s:16:\"section_link_2_0\";s:0:\"\";s:18:\"section_target_2_0\";s:0:\"\";s:16:\"section_desc_2_0\";s:128:\"Integer pulvinar elementum est, suscipit ornare ante finibus ac. Praesent vel ex dignissim, rhoncus eros luctus, dignissim arcu.\";s:16:\"section_icon_2_1\";s:0:\"\";s:17:\"section_image_2_1\";s:79:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Icon_2.png\";s:17:\"section_title_2_1\";s:17:\"FREE PSD TEMPLATE\";s:16:\"section_link_2_1\";s:0:\"\";s:18:\"section_target_2_1\";s:0:\"\";s:16:\"section_desc_2_1\";s:128:\"Integer pulvinar elementum est, suscipit ornare ante finibus ac. Praesent vel ex dignissim, rhoncus eros luctus, dignissim arcu.\";s:16:\"section_icon_2_2\";s:0:\"\";s:17:\"section_image_2_2\";s:79:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Icon_3.png\";s:17:\"section_title_2_2\";s:17:\"FREE PSD TEMPLATE\";s:16:\"section_link_2_2\";s:0:\"\";s:18:\"section_target_2_2\";s:0:\"\";s:16:\"section_desc_2_2\";s:128:\"Integer pulvinar elementum est, suscipit ornare ante finibus ac. Praesent vel ex dignissim, rhoncus eros luctus, dignissim arcu.\";s:16:\"section_icon_2_3\";s:0:\"\";s:17:\"section_image_2_3\";s:79:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Icon_4.png\";s:17:\"section_title_2_3\";s:17:\"FREE PSD TEMPLATE\";s:16:\"section_link_2_3\";s:0:\"\";s:18:\"section_target_2_3\";s:0:\"\";s:16:\"section_desc_2_3\";s:128:\"Integer pulvinar elementum est, suscipit ornare ante finibus ac. Praesent vel ex dignissim, rhoncus eros luctus, dignissim arcu.\";s:16:\"section_icon_2_4\";s:0:\"\";s:17:\"section_image_2_4\";s:79:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Icon_5.png\";s:17:\"section_title_2_4\";s:17:\"FREE PSD TEMPLATE\";s:16:\"section_link_2_4\";s:0:\"\";s:18:\"section_target_2_4\";s:0:\"\";s:16:\"section_desc_2_4\";s:128:\"Integer pulvinar elementum est, suscipit ornare ante finibus ac. Praesent vel ex dignissim, rhoncus eros luctus, dignissim arcu.\";s:16:\"section_icon_2_5\";s:0:\"\";s:17:\"section_image_2_5\";s:79:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Icon_6.png\";s:17:\"section_title_2_5\";s:17:\"FREE PSD TEMPLATE\";s:16:\"section_link_2_5\";s:0:\"\";s:18:\"section_target_2_5\";s:0:\"\";s:16:\"section_desc_2_5\";s:128:\"Integer pulvinar elementum est, suscipit ornare ante finibus ac. Praesent vel ex dignissim, rhoncus eros luctus, dignissim arcu.\";s:17:\"section_content_2\";s:0:\"\";s:17:\"sections_titled_3\";s:0:\"\";s:14:\"section_hide_3\";s:0:\"\";s:15:\"section_title_3\";s:7:\"GALLERY\";s:12:\"menu_title_3\";s:7:\"Gallery\";s:11:\"menu_slug_3\";s:7:\"gallery\";s:20:\"section_background_3\";a:5:{s:5:\"color\";s:7:\"#eeeeee\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_3\";s:1:\"0\";s:12:\"full_width_3\";s:2:\"no\";s:19:\"section_css_class_3\";s:0:\"\";s:17:\"section_padding_3\";s:6:\"50px 0\";s:12:\"text_align_3\";s:6:\"center\";s:26:\"section_title_typography_3\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_3\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#555555\";}s:28:\"section_content_typography_3\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:23:\"section_content_model_3\";s:1:\"0\";s:18:\"section_subtitle_3\";s:131:\"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere c.<br/>Etiam ut dui eu nisi lobortis rhoncus ac quis nunc.\";s:17:\"section_image_3_0\";s:81:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/16110807.jpg\";s:16:\"section_link_3_0\";s:0:\"\";s:18:\"section_target_3_0\";s:0:\"\";s:17:\"section_image_3_1\";s:81:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/16110805.jpg\";s:16:\"section_link_3_1\";s:0:\"\";s:18:\"section_target_3_1\";s:0:\"\";s:17:\"section_image_3_2\";s:81:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/16110806.jpg\";s:16:\"section_link_3_2\";s:0:\"\";s:18:\"section_target_3_2\";s:0:\"\";s:17:\"section_image_3_3\";s:81:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/16110802.jpg\";s:16:\"section_link_3_3\";s:0:\"\";s:18:\"section_target_3_3\";s:0:\"\";s:17:\"section_image_3_4\";s:82:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/161110001.jpg\";s:16:\"section_link_3_4\";s:0:\"\";s:18:\"section_target_3_4\";s:0:\"\";s:17:\"section_image_3_5\";s:81:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/16110803.jpg\";s:16:\"section_link_3_5\";s:0:\"\";s:18:\"section_target_3_5\";s:0:\"\";s:17:\"section_content_3\";s:0:\"\";s:17:\"sections_titled_4\";s:0:\"\";s:14:\"section_hide_4\";s:0:\"\";s:15:\"section_title_4\";s:8:\"OUR TEAM\";s:12:\"menu_title_4\";s:4:\"Team\";s:11:\"menu_slug_4\";s:4:\"team\";s:20:\"section_background_4\";a:5:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_4\";s:1:\"0\";s:12:\"full_width_4\";s:2:\"no\";s:19:\"section_css_class_4\";s:0:\"\";s:17:\"section_padding_4\";s:6:\"50px 0\";s:12:\"text_align_4\";s:6:\"center\";s:26:\"section_title_typography_4\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_4\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#555555\";}s:28:\"section_content_typography_4\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:23:\"section_content_model_4\";s:1:\"0\";s:18:\"section_subtitle_4\";s:131:\"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere c.<br/>Etiam ut dui eu nisi lobortis rhoncus ac quis nunc.\";s:20:\"section_team_columns\";s:1:\"4\";s:18:\"section_team_style\";s:1:\"4\";s:18:\"section_avatar_4_0\";s:85:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/team16110801.jpg\";s:16:\"section_link_4_0\";s:0:\"\";s:16:\"section_name_4_0\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_0\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_0\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_0_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_0_0\";s:1:\"#\";s:18:\"section_icon_4_0_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_0_1\";s:1:\"#\";s:18:\"section_icon_4_0_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_0_2\";s:1:\"#\";s:18:\"section_icon_4_0_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_0_3\";s:1:\"#\";s:18:\"section_avatar_4_1\";s:85:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/team16110802.jpg\";s:16:\"section_link_4_1\";s:0:\"\";s:16:\"section_name_4_1\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_1\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_1\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_1_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_1_0\";s:1:\"#\";s:18:\"section_icon_4_1_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_1_1\";s:1:\"#\";s:18:\"section_icon_4_1_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_1_2\";s:1:\"#\";s:18:\"section_icon_4_1_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_1_3\";s:1:\"#\";s:18:\"section_avatar_4_2\";s:85:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/team16110803.jpg\";s:16:\"section_link_4_2\";s:0:\"\";s:16:\"section_name_4_2\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_2\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_2\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_2_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_2_0\";s:1:\"#\";s:18:\"section_icon_4_2_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_2_1\";s:1:\"#\";s:18:\"section_icon_4_2_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_2_2\";s:1:\"#\";s:18:\"section_icon_4_2_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_2_3\";s:1:\"#\";s:18:\"section_avatar_4_3\";s:85:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/team16110804.jpg\";s:16:\"section_link_4_3\";s:0:\"\";s:16:\"section_name_4_3\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_3\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_3\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_3_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_3_0\";s:1:\"#\";s:18:\"section_icon_4_3_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_3_1\";s:1:\"#\";s:18:\"section_icon_4_3_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_3_2\";s:1:\"#\";s:18:\"section_icon_4_3_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_3_3\";s:1:\"#\";s:18:\"section_avatar_4_4\";s:0:\"\";s:16:\"section_link_4_4\";s:0:\"\";s:16:\"section_name_4_4\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_4\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_4\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_4_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_4_0\";s:1:\"#\";s:18:\"section_icon_4_4_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_4_1\";s:1:\"#\";s:18:\"section_icon_4_4_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_4_2\";s:1:\"#\";s:18:\"section_icon_4_4_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_4_3\";s:1:\"#\";s:18:\"section_avatar_4_5\";s:0:\"\";s:16:\"section_link_4_5\";s:0:\"\";s:16:\"section_name_4_5\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_5\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_5\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_5_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_5_0\";s:1:\"#\";s:18:\"section_icon_4_5_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_5_1\";s:1:\"#\";s:18:\"section_icon_4_5_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_5_2\";s:1:\"#\";s:18:\"section_icon_4_5_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_5_3\";s:1:\"#\";s:18:\"section_avatar_4_6\";s:0:\"\";s:16:\"section_link_4_6\";s:0:\"\";s:16:\"section_name_4_6\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_6\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_6\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_6_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_6_0\";s:1:\"#\";s:18:\"section_icon_4_6_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_6_1\";s:1:\"#\";s:18:\"section_icon_4_6_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_6_2\";s:1:\"#\";s:18:\"section_icon_4_6_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_6_3\";s:1:\"#\";s:18:\"section_avatar_4_7\";s:0:\"\";s:16:\"section_link_4_7\";s:0:\"\";s:16:\"section_name_4_7\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_4_7\";s:18:\"SOFTWARE DEVELOPER\";s:16:\"section_desc_4_7\";s:86:\"Vivamus congue justo eget diam interdum scelerisque. In hac habitasse platea dictumst.\";s:18:\"section_icon_4_7_0\";s:9:\"instagram\";s:23:\"section_icon_link_4_7_0\";s:1:\"#\";s:18:\"section_icon_4_7_1\";s:8:\"facebook\";s:23:\"section_icon_link_4_7_1\";s:1:\"#\";s:18:\"section_icon_4_7_2\";s:11:\"google-plus\";s:23:\"section_icon_link_4_7_2\";s:1:\"#\";s:18:\"section_icon_4_7_3\";s:8:\"envelope\";s:23:\"section_icon_link_4_7_3\";s:1:\"#\";s:17:\"section_content_4\";s:0:\"\";s:17:\"sections_titled_5\";s:0:\"\";s:14:\"section_hide_5\";s:0:\"\";s:15:\"section_title_5\";s:8:\"ABOUT US\";s:12:\"menu_title_5\";s:8:\"About Us\";s:11:\"menu_slug_5\";s:8:\"about us\";s:20:\"section_background_5\";a:5:{s:5:\"color\";s:0:\"\";s:5:\"image\";s:81:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/Image_02.png\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:13:\"center center\";s:10:\"attachment\";s:5:\"fixed\";}s:20:\"parallax_scrolling_5\";s:2:\"on\";s:12:\"full_width_5\";s:2:\"no\";s:19:\"section_css_class_5\";s:0:\"\";s:17:\"section_padding_5\";s:6:\"50px 0\";s:12:\"text_align_5\";s:4:\"left\";s:26:\"section_title_typography_5\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_5\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:28:\"section_content_typography_5\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#555555\";}s:23:\"section_content_model_5\";s:1:\"0\";s:18:\"section_subtitle_5\";s:8:\"About Us\";s:22:\"section_left_content_5\";s:735:\"<h3>Our Main Concerns: </h3><ul>
<li> Specially Challenged Kids</li>
<li> Girl Child </li>
<li> Women Empowerment </li>
<li> Poor And Undernourished</li>
</ul>
<p>With all these neglected issues of our society being taken care of, FREEPATHSHALA, a Gurgaon based NGO, takes a step further to bring up the cause of EDUCATION FOR THE CHILDREN OF MIGRANT WORKERS - a class of our society  which is always on move. It is one of the most disregarded part of our society. The only constant in their lives is to change the way of life every quarter. So Education is just the distant dream for them. And we are here to help them realize this dream.</p>
<p><a href = \"http://testpathshala.co.nf/our-journey/\" >Know our Journey</a></p>
\";s:23:\"section_right_content_5\";s:411:\"<h3>Mission and Vision </h3>
<p>At FREEPATHSHALA, we envision an India where every child of a nation�s builder is blessed with the invaluable education.</p>
<p>Our mission is to envisage a FREEPATHSHALA in the vicinity of every kilometer of the nation.</p>
<p>We anticipate ourselves chasing our dreams at the velocity of</p>
<b>�ONE FREEPATHSHALA PER KILOMETER.�</b> </p>
\";s:17:\"section_content_5\";s:0:\"\";s:17:\"sections_titled_6\";s:0:\"\";s:14:\"section_hide_6\";s:0:\"\";s:15:\"section_title_6\";s:0:\"\";s:12:\"menu_title_6\";s:12:\"Testimonials\";s:11:\"menu_slug_6\";s:12:\"testimonials\";s:20:\"section_background_6\";a:5:{s:5:\"color\";s:7:\"#37cadd\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:9:\"no-repeat\";s:8:\"position\";s:13:\"bottom center\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_6\";s:1:\"0\";s:12:\"full_width_6\";s:2:\"no\";s:19:\"section_css_class_6\";s:0:\"\";s:17:\"section_padding_6\";s:11:\"50px 0 30px\";s:12:\"text_align_6\";s:6:\"center\";s:26:\"section_title_typography_6\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#ffffff\";}s:29:\"section_subtitle_typography_6\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:28:\"section_content_typography_6\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:23:\"section_content_model_6\";s:1:\"0\";s:18:\"section_subtitle_6\";s:0:\"\";s:17:\"counter_title_1_6\";s:6:\"Themes\";s:18:\"counter_number_1_6\";s:3:\"200\";s:17:\"counter_title_2_6\";s:10:\"Supporters\";s:18:\"counter_number_2_6\";s:2:\"98\";s:17:\"counter_title_3_6\";s:9:\"Projuects\";s:18:\"counter_number_3_6\";s:4:\"1360\";s:17:\"counter_title_4_6\";s:9:\"Customers\";s:18:\"counter_number_4_6\";s:4:\"8000\";s:17:\"section_content_6\";s:0:\"\";s:17:\"sections_titled_7\";s:0:\"\";s:14:\"section_hide_7\";s:0:\"\";s:15:\"section_title_7\";s:0:\"\";s:12:\"menu_title_7\";s:0:\"\";s:11:\"menu_slug_7\";s:0:\"\";s:20:\"section_background_7\";a:5:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_7\";s:1:\"0\";s:12:\"full_width_7\";s:2:\"no\";s:19:\"section_css_class_7\";s:0:\"\";s:17:\"section_padding_7\";s:6:\"50px 0\";s:12:\"text_align_7\";s:4:\"left\";s:26:\"section_title_typography_7\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_7\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#555555\";}s:28:\"section_content_typography_7\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:23:\"section_content_model_7\";s:1:\"0\";s:18:\"section_subtitle_7\";s:0:\"\";s:27:\"section_testimonial_columns\";s:1:\"3\";s:25:\"section_testimonial_style\";s:1:\"4\";s:18:\"section_avatar_7_0\";s:91:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/person-8-thumbnail.jpg\";s:16:\"section_name_7_0\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_0\";s:13:\"Web Developer\";s:16:\"section_desc_7_0\";s:468:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat non ex quis consectetur. Aliquam iaculis dolor erat, ut ornare dui vulputate nec. Cras a sem mattis, tincidunt urna nec, iaculis nisl. Nam congue ultricies dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat non ex quis consectetur. Aliquam iaculis dolor erat, ut ornare dui vulputate nec. Cras a sem mattis, tincidunt urna nec, iaculis nisl. Nam congue ultricies dui.\";s:18:\"section_avatar_7_1\";s:91:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/person-7-thumbnail.jpg\";s:16:\"section_name_7_1\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_1\";s:13:\"Web Developer\";s:16:\"section_desc_7_1\";s:468:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat non ex quis consectetur. Aliquam iaculis dolor erat, ut ornare dui vulputate nec. Cras a sem mattis, tincidunt urna nec, iaculis nisl. Nam congue ultricies dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat non ex quis consectetur. Aliquam iaculis dolor erat, ut ornare dui vulputate nec. Cras a sem mattis, tincidunt urna nec, iaculis nisl. Nam congue ultricies dui.\";s:18:\"section_avatar_7_2\";s:91:\"https://demo.mageewp.com/wootest/wp-content/uploads/sites/31/2016/11/person-6-thumbnail.jpg\";s:16:\"section_name_7_2\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_2\";s:13:\"Web Developer\";s:16:\"section_desc_7_2\";s:468:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat non ex quis consectetur. Aliquam iaculis dolor erat, ut ornare dui vulputate nec. Cras a sem mattis, tincidunt urna nec, iaculis nisl. Nam congue ultricies dui.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat non ex quis consectetur. Aliquam iaculis dolor erat, ut ornare dui vulputate nec. Cras a sem mattis, tincidunt urna nec, iaculis nisl. Nam congue ultricies dui.\";s:18:\"section_avatar_7_3\";s:0:\"\";s:16:\"section_name_7_3\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_3\";s:13:\"Web Developer\";s:16:\"section_desc_7_3\";s:0:\"\";s:18:\"section_avatar_7_4\";s:0:\"\";s:16:\"section_name_7_4\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_4\";s:13:\"Web Developer\";s:16:\"section_desc_7_4\";s:0:\"\";s:18:\"section_avatar_7_5\";s:0:\"\";s:16:\"section_name_7_5\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_5\";s:13:\"Web Developer\";s:16:\"section_desc_7_5\";s:0:\"\";s:18:\"section_avatar_7_6\";s:0:\"\";s:16:\"section_name_7_6\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_6\";s:13:\"Web Developer\";s:16:\"section_desc_7_6\";s:0:\"\";s:18:\"section_avatar_7_7\";s:0:\"\";s:16:\"section_name_7_7\";s:11:\"KEVIN PERRY\";s:18:\"section_byline_7_7\";s:13:\"Web Developer\";s:16:\"section_desc_7_7\";s:0:\"\";s:17:\"section_content_7\";s:0:\"\";s:17:\"sections_titled_8\";s:0:\"\";s:14:\"section_hide_8\";s:0:\"\";s:15:\"section_title_8\";s:10:\"CONTACT US\";s:12:\"menu_title_8\";s:10:\"Contact us\";s:11:\"menu_slug_8\";s:7:\"contact\";s:20:\"section_background_8\";a:5:{s:5:\"color\";s:0:\"\";s:5:\"image\";s:140:\"http://t12pathshala.co.nf/wp-content/uploads/2017/05/6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90.jpg\";s:6:\"repeat\";s:9:\"no-repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_8\";s:0:\"\";s:12:\"full_width_8\";s:2:\"no\";s:19:\"section_css_class_8\";s:0:\"\";s:17:\"section_padding_8\";s:6:\"50px 0\";s:12:\"text_align_8\";s:6:\"center\";s:26:\"section_title_typography_8\";a:4:{s:4:\"size\";s:4:\"20px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#000000\";}s:29:\"section_subtitle_typography_8\";a:4:{s:4:\"size\";s:4:\"20px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#555555\";}s:28:\"section_content_typography_8\";a:4:{s:4:\"size\";s:4:\"16px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:0:\"\";}s:23:\"section_content_model_8\";s:1:\"1\";s:18:\"section_subtitle_8\";s:76:\"Freepathshala is an initiative to educate children of construction workers. \";s:15:\"section_email_8\";s:26:\"freepathshalaweb@gmail.com\";s:18:\"section_btn_text_8\";s:4:\"Post\";s:17:\"section_content_8\";s:281:\"<p style=\"font-size:22px;color:red;\"><strong>Freepathshala is an initiative to educate children of migrant workers.</strong></p><br><strong>contact details:</strong></br>
Headquarters
Flat No. 555, 
Housing Board Colony 
Sector 51 
Gurgaon 
Haryana 
pin code:1220003 
India\";s:17:\"sections_titled_9\";s:0:\"\";s:14:\"section_hide_9\";i:1;s:15:\"section_title_9\";s:9:\"PORTFOLIO\";s:12:\"menu_title_9\";s:9:\"Portfolio\";s:11:\"menu_slug_9\";s:9:\"portfolio\";s:20:\"section_background_9\";a:5:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:20:\"parallax_scrolling_9\";s:1:\"0\";s:12:\"full_width_9\";s:2:\"no\";s:19:\"section_css_class_9\";s:0:\"\";s:17:\"section_padding_9\";s:6:\"50px 0\";s:12:\"text_align_9\";s:0:\"\";s:26:\"section_title_typography_9\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_subtitle_typography_9\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:28:\"section_content_typography_9\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#ffffff\";}s:23:\"section_content_model_9\";i:1;s:18:\"section_subtitle_9\";s:131:\"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere c.<br/>Etiam ut dui eu nisi lobortis rhoncus ac quis nunc.\";s:17:\"section_content_9\";s:0:\"\";s:18:\"sections_titled_10\";s:0:\"\";s:15:\"section_hide_10\";i:1;s:16:\"section_title_10\";s:7:\"PRICING\";s:13:\"menu_title_10\";s:7:\"Pricing\";s:12:\"menu_slug_10\";s:7:\"pricing\";s:21:\"section_background_10\";a:5:{s:5:\"color\";s:7:\"#eeeeee\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:21:\"parallax_scrolling_10\";s:1:\"0\";s:13:\"full_width_10\";s:2:\"no\";s:20:\"section_css_class_10\";s:0:\"\";s:18:\"section_padding_10\";s:6:\"50px 0\";s:13:\"text_align_10\";s:0:\"\";s:27:\"section_title_typography_10\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:30:\"section_subtitle_typography_10\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_content_typography_10\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:24:\"section_content_model_10\";i:1;s:19:\"section_subtitle_10\";s:131:\"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere c.<br/>Etiam ut dui eu nisi lobortis rhoncus ac quis nunc.\";s:18:\"section_content_10\";s:0:\"\";s:18:\"sections_titled_11\";s:0:\"\";s:15:\"section_hide_11\";i:1;s:16:\"section_title_11\";s:4:\"BLOG\";s:13:\"menu_title_11\";s:4:\"Blog\";s:12:\"menu_slug_11\";s:4:\"blog\";s:21:\"section_background_11\";a:5:{s:5:\"color\";s:7:\"#ffffff\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:8:\"top left\";s:10:\"attachment\";s:6:\"scroll\";}s:21:\"parallax_scrolling_11\";s:1:\"0\";s:13:\"full_width_11\";s:2:\"no\";s:20:\"section_css_class_11\";s:0:\"\";s:18:\"section_padding_11\";s:6:\"50px 0\";s:13:\"text_align_11\";s:0:\"\";s:27:\"section_title_typography_11\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:30:\"section_subtitle_typography_11\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_content_typography_11\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:24:\"section_content_model_11\";i:1;s:19:\"section_subtitle_11\";s:0:\"\";s:18:\"section_content_11\";s:0:\"\";s:18:\"sections_titled_12\";s:0:\"\";s:15:\"section_hide_12\";i:1;s:16:\"section_title_12\";s:0:\"\";s:13:\"menu_title_12\";s:0:\"\";s:12:\"menu_slug_12\";s:0:\"\";s:21:\"section_background_12\";a:5:{s:5:\"color\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";}s:21:\"parallax_scrolling_12\";s:1:\"0\";s:13:\"full_width_12\";s:2:\"no\";s:20:\"section_css_class_12\";s:0:\"\";s:18:\"section_padding_12\";s:6:\"50px 0\";s:13:\"text_align_12\";s:0:\"\";s:27:\"section_title_typography_12\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:30:\"section_subtitle_typography_12\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_content_typography_12\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:24:\"section_content_model_12\";i:1;s:19:\"section_subtitle_12\";s:0:\"\";s:18:\"section_content_12\";s:0:\"\";s:18:\"sections_titled_13\";s:0:\"\";s:15:\"section_hide_13\";i:1;s:16:\"section_title_13\";s:0:\"\";s:13:\"menu_title_13\";s:0:\"\";s:12:\"menu_slug_13\";s:0:\"\";s:21:\"section_background_13\";a:5:{s:5:\"color\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";}s:21:\"parallax_scrolling_13\";s:1:\"0\";s:13:\"full_width_13\";s:2:\"no\";s:20:\"section_css_class_13\";s:0:\"\";s:18:\"section_padding_13\";s:6:\"50px 0\";s:13:\"text_align_13\";s:0:\"\";s:27:\"section_title_typography_13\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:30:\"section_subtitle_typography_13\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_content_typography_13\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:24:\"section_content_model_13\";i:1;s:19:\"section_subtitle_13\";s:0:\"\";s:18:\"section_content_13\";s:0:\"\";s:18:\"sections_titled_14\";s:0:\"\";s:15:\"section_hide_14\";i:1;s:16:\"section_title_14\";s:0:\"\";s:13:\"menu_title_14\";s:0:\"\";s:12:\"menu_slug_14\";s:0:\"\";s:21:\"section_background_14\";a:5:{s:5:\"color\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";}s:21:\"parallax_scrolling_14\";s:1:\"0\";s:13:\"full_width_14\";s:2:\"no\";s:20:\"section_css_class_14\";s:0:\"\";s:18:\"section_padding_14\";s:6:\"50px 0\";s:13:\"text_align_14\";s:0:\"\";s:27:\"section_title_typography_14\";a:4:{s:4:\"size\";s:4:\"36px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:4:\"bold\";s:5:\"color\";s:7:\"#666666\";}s:30:\"section_subtitle_typography_14\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#666666\";}s:29:\"section_content_typography_14\";a:4:{s:4:\"size\";s:4:\"14px\";s:4:\"face\";s:0:\"\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:0:\"\";}s:24:\"section_content_model_14\";i:1;s:19:\"section_subtitle_14\";s:0:\"\";s:18:\"section_content_14\";s:0:\"\";s:14:\"slide_titled_1\";s:0:\"\";s:21:\"onetone_slide_image_1\";s:71:\"http://t12pathshala.co.nf/wp-content/themes/onetone/images/banner-1.jpg\";s:20:\"onetone_slide_text_1\";s:90:\"<h1>The jQuery slider that just slides.</h1><p>No fancy effects or unnecessary markup.</p>\";s:23:\"onetone_slide_btn_txt_1\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_1\";s:1:\"#\";s:26:\"onetone_slide_btn_target_1\";s:5:\"_self\";s:14:\"slide_titled_2\";s:0:\"\";s:21:\"onetone_slide_image_2\";s:71:\"http://t12pathshala.co.nf/wp-content/themes/onetone/images/banner-2.jpg\";s:20:\"onetone_slide_text_2\";s:123:\"<h1>Fluid, flexible, fantastically minimal.</h1><p>Use any HTML in your slides, extend with CSS. You have full control.</p>\";s:23:\"onetone_slide_btn_txt_2\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_2\";s:1:\"#\";s:26:\"onetone_slide_btn_target_2\";s:5:\"_self\";s:14:\"slide_titled_3\";s:0:\"\";s:21:\"onetone_slide_image_3\";s:71:\"http://t12pathshala.co.nf/wp-content/themes/onetone/images/banner-3.jpg\";s:20:\"onetone_slide_text_3\";s:107:\"<h1>Open-source.</h1><p> Vestibulum auctor nisl vel lectus ullamcorper sed pellentesque dolor eleifend.</p>\";s:23:\"onetone_slide_btn_txt_3\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_3\";s:1:\"#\";s:26:\"onetone_slide_btn_target_3\";s:5:\"_self\";s:14:\"slide_titled_4\";s:0:\"\";s:21:\"onetone_slide_image_4\";s:71:\"http://t12pathshala.co.nf/wp-content/themes/onetone/images/banner-4.jpg\";s:20:\"onetone_slide_text_4\";s:76:\"<h1>Uh, that\'s about it.</h1><p>I just wanted to show you another slide.</p>\";s:23:\"onetone_slide_btn_txt_4\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_4\";s:1:\"#\";s:26:\"onetone_slide_btn_target_4\";s:5:\"_self\";s:14:\"slide_titled_5\";s:0:\"\";s:21:\"onetone_slide_image_5\";s:0:\"\";s:20:\"onetone_slide_text_5\";s:0:\"\";s:23:\"onetone_slide_btn_txt_5\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_5\";s:1:\"#\";s:26:\"onetone_slide_btn_target_5\";s:5:\"_self\";s:14:\"slide_titled_6\";s:0:\"\";s:21:\"onetone_slide_image_6\";s:0:\"\";s:20:\"onetone_slide_text_6\";s:0:\"\";s:23:\"onetone_slide_btn_txt_6\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_6\";s:1:\"#\";s:26:\"onetone_slide_btn_target_6\";s:5:\"_self\";s:14:\"slide_titled_7\";s:0:\"\";s:21:\"onetone_slide_image_7\";s:0:\"\";s:20:\"onetone_slide_text_7\";s:0:\"\";s:23:\"onetone_slide_btn_txt_7\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_7\";s:1:\"#\";s:26:\"onetone_slide_btn_target_7\";s:5:\"_self\";s:14:\"slide_titled_8\";s:0:\"\";s:21:\"onetone_slide_image_8\";s:0:\"\";s:20:\"onetone_slide_text_8\";s:0:\"\";s:23:\"onetone_slide_btn_txt_8\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_8\";s:1:\"#\";s:26:\"onetone_slide_btn_target_8\";s:5:\"_self\";s:14:\"slide_titled_9\";s:0:\"\";s:21:\"onetone_slide_image_9\";s:0:\"\";s:20:\"onetone_slide_text_9\";s:0:\"\";s:23:\"onetone_slide_btn_txt_9\";s:8:\"Click Me\";s:24:\"onetone_slide_btn_link_9\";s:1:\"#\";s:26:\"onetone_slide_btn_target_9\";s:5:\"_self\";s:15:\"slide_titled_10\";s:0:\"\";s:22:\"onetone_slide_image_10\";s:0:\"\";s:21:\"onetone_slide_text_10\";s:0:\"\";s:24:\"onetone_slide_btn_txt_10\";s:8:\"Click Me\";s:25:\"onetone_slide_btn_link_10\";s:1:\"#\";s:27:\"onetone_slide_btn_target_10\";s:5:\"_self\";s:14:\"slide_autoplay\";s:1:\"1\";s:10:\"slide_time\";s:4:\"5000\";s:14:\"slider_control\";s:1:\"1\";s:17:\"slider_pagination\";s:1:\"1\";s:16:\"slide_fullheight\";s:0:\"\";s:13:\"about-onetone\";s:0:\"\";s:13:\"about_onetone\";s:0:\"\";s:14:\"options-backup\";s:0:\"\";s:14:\"options_backup\";s:0:\"\";s:14:\"notice_onetone\";s:0:\"\";s:13:\"tracking_code\";s:0:\"\";s:17:\"space_before_head\";s:0:\"\";s:17:\"space_before_body\";s:0:\"\";s:11:\"content_404\";s:86:\"<h2>WHOOPS!</h2><p>THERE IS NOTHING HERE.<br>PERHAPS YOU WERE GIVEN THE WRONG URL?</p>\";s:15:\"archive_content\";s:7:\"excerpt\";s:14:\"excerpt_length\";s:2:\"55\";s:19:\"display_author_info\";s:1:\"1\";s:21:\"display_related_posts\";s:1:\"1\";s:24:\"page_content_top_padding\";s:4:\"55px\";s:27:\"page_content_bottom_padding\";s:4:\"40px\";s:16:\"hundredp_padding\";s:4:\"20px\";s:15:\"sidebar_padding\";s:1:\"0\";s:17:\"column_top_margin\";s:3:\"0px\";s:20:\"column_bottom_margin\";s:4:\"20px\";s:15:\"back_to_top_btn\";s:4:\"show\";s:10:\"custom_css\";s:17:\"body{margin:0px;}\";s:15:\"display_top_bar\";s:3:\"yes\";s:24:\"top_bar_background_color\";s:4:\"#eee\";s:20:\"top_bar_left_content\";s:4:\"info\";s:21:\"top_bar_right_content\";s:3:\"sns\";s:18:\"top_bar_info_color\";s:4:\"#555\";s:20:\"top_bar_info_content\";s:15:\"Tel: 7838883008\";s:18:\"top_bar_menu_color\";s:4:\"#555\";s:12:\"social_links\";s:0:\"\";s:26:\"top_bar_social_icons_color\";s:0:\"\";s:37:\"top_bar_social_icons_tooltip_position\";s:6:\"bottom\";s:21:\"header_social_title_1\";s:8:\"Facebook\";s:20:\"header_social_icon_1\";s:8:\"facebook\";s:20:\"header_social_link_1\";s:39:\"https://www.facebook.com/Freepathshala/\";s:21:\"header_social_title_2\";s:7:\"Twitter\";s:20:\"header_social_icon_2\";s:7:\"twitter\";s:20:\"header_social_link_2\";s:33:\"https://twitter.com/roshankrawatt\";s:21:\"header_social_title_3\";s:8:\"LinkedIn\";s:20:\"header_social_icon_3\";s:8:\"linkedin\";s:20:\"header_social_link_3\";s:64:\"https://in.linkedin.com/in/freepathshala-freepathshala-b48670131\";s:21:\"header_social_title_4\";s:7:\"YouTube\";s:20:\"header_social_icon_4\";s:7:\"youtube\";s:20:\"header_social_link_4\";s:56:\"https://www.youtube.com/channel/UCsiS8w8GELZaxTQNtJfz1Qw\";s:21:\"header_social_title_5\";s:0:\"\";s:20:\"header_social_icon_5\";s:0:\"\";s:20:\"header_social_link_5\";s:0:\"\";s:21:\"header_social_title_6\";s:0:\"\";s:20:\"header_social_icon_6\";s:0:\"\";s:20:\"header_social_link_6\";s:0:\"\";s:21:\"header_social_title_7\";s:0:\"\";s:20:\"header_social_icon_7\";s:0:\"\";s:20:\"header_social_link_7\";s:0:\"\";s:21:\"header_social_title_8\";s:0:\"\";s:20:\"header_social_icon_8\";s:0:\"\";s:20:\"header_social_link_8\";s:0:\"\";s:21:\"header_social_title_9\";s:0:\"\";s:20:\"header_social_icon_9\";s:0:\"\";s:20:\"header_social_link_9\";s:0:\"\";s:4:\"logo\";s:62:\"http://t12pathshala.co.nf/wp-content/uploads/2017/05/photo.jpg\";s:12:\"overlay_logo\";s:62:\"http://t12pathshala.co.nf/wp-content/uploads/2017/05/photo.jpg\";s:11:\"logo_retina\";s:0:\"\";s:17:\"retina_logo_width\";s:0:\"\";s:18:\"retina_logo_height\";s:0:\"\";s:11:\"sticky_logo\";s:67:\"http://t12pathshala.co.nf/wp-content/themes/onetone/images/logo.png\";s:18:\"sticky_logo_retina\";s:0:\"\";s:33:\"sticky_logo_width_for_retina_logo\";s:0:\"\";s:34:\"sticky_logo_height_for_retina_logo\";s:0:\"\";s:13:\"logo_position\";s:4:\"left\";s:16:\"logo_left_margin\";s:1:\"0\";s:17:\"logo_right_margin\";s:2:\"10\";s:15:\"logo_top_margin\";s:2:\"10\";s:18:\"logo_bottom_margin\";s:2:\"10\";s:16:\"header_fullwidth\";s:0:\"\";s:16:\"nav_hover_effect\";s:1:\"3\";s:23:\"header_background_image\";s:0:\"\";s:22:\"header_background_full\";s:3:\"yes\";s:26:\"header_background_parallax\";s:2:\"no\";s:24:\"header_background_repeat\";s:6:\"repeat\";s:18:\"header_top_padding\";s:3:\"0px\";s:21:\"header_bottom_padding\";s:3:\"0px\";s:20:\"enable_sticky_header\";s:3:\"yes\";s:28:\"enable_sticky_header_tablets\";s:2:\"no\";s:28:\"enable_sticky_header_mobiles\";s:2:\"no\";s:31:\"sticky_header_menu_item_padding\";s:1:\"0\";s:34:\"sticky_header_navigation_font_size\";s:2:\"13\";s:24:\"sticky_header_logo_width\";s:0:\"\";s:13:\"primary_color\";s:7:\"#37cadd\";s:30:\"sticky_header_background_color\";s:7:\"#ffffff\";s:32:\"sticky_header_background_opacity\";s:3:\"0.7\";s:23:\"header_background_color\";s:7:\"#ffffff\";s:25:\"header_background_opacity\";s:1:\"1\";s:24:\"content_background_color\";s:7:\"#ffffff\";s:24:\"sidebar_background_color\";s:7:\"#ffffff\";s:23:\"footer_background_color\";s:7:\"#555555\";s:26:\"copyright_background_color\";s:7:\"#000000\";s:21:\"form_background_color\";s:0:\"\";s:15:\"form_text_color\";s:7:\"#666666\";s:17:\"form_border_color\";s:7:\"#666666\";s:23:\"fixed_header_text_color\";s:7:\"#333333\";s:25:\"overlay_header_text_color\";s:7:\"#ffffff\";s:16:\"page_title_color\";s:7:\"#555555\";s:8:\"h1_color\";s:7:\"#555555\";s:8:\"h2_color\";s:7:\"#555555\";s:8:\"h3_color\";s:7:\"#555555\";s:8:\"h4_color\";s:7:\"#555555\";s:8:\"h5_color\";s:7:\"#555555\";s:8:\"h6_color\";s:7:\"#555555\";s:15:\"body_text_color\";s:7:\"#333333\";s:11:\"links_color\";s:7:\"#37cadd\";s:22:\"breadcrumbs_text_color\";s:7:\"#555555\";s:29:\"sidebar_widget_headings_color\";s:7:\"#333333\";s:21:\"footer_headings_color\";s:7:\"#ffffff\";s:17:\"footer_text_color\";s:7:\"#ffffff\";s:17:\"footer_link_color\";s:7:\"#a0a0a0\";s:28:\"main_menu_background_color_1\";s:0:\"\";s:22:\"main_menu_font_color_1\";s:7:\"#3d3d3d\";s:30:\"main_menu_overlay_font_color_1\";s:7:\"#ffffff\";s:28:\"main_menu_font_hover_color_1\";s:7:\"#3d3d3d\";s:28:\"main_menu_background_color_2\";s:7:\"#ffffff\";s:22:\"main_menu_font_color_2\";s:7:\"#3d3d3d\";s:28:\"main_menu_font_hover_color_2\";s:7:\"#222222\";s:27:\"main_menu_separator_color_2\";s:7:\"#000000\";s:15:\"side_menu_color\";s:7:\"#37cadd\";s:23:\"left_sidebar_blog_posts\";s:0:\"\";s:24:\"right_sidebar_blog_posts\";s:0:\"\";s:25:\"left_sidebar_blog_archive\";s:0:\"\";s:26:\"right_sidebar_blog_archive\";s:0:\"\";s:19:\"left_sidebar_search\";s:0:\"\";s:20:\"right_sidebar_search\";s:0:\"\";s:16:\"left_sidebar_404\";s:0:\"\";s:17:\"right_sidebar_404\";s:0:\"\";s:25:\"enable_footer_widget_area\";s:0:\"\";s:14:\"footer_columns\";s:1:\"4\";s:23:\"footer_background_image\";s:0:\"\";s:14:\"footer_bg_full\";s:2:\"no\";s:26:\"footer_parallax_background\";s:2:\"no\";s:24:\"footer_background_repeat\";s:6:\"repeat\";s:26:\"footer_background_position\";s:8:\"top left\";s:18:\"footer_top_padding\";s:4:\"60px\";s:21:\"footer_bottom_padding\";s:4:\"40px\";s:21:\"display_copyright_bar\";s:3:\"yes\";s:9:\"copyright\";s:22:\"Copyright &copy; 2017.\";s:21:\"copyright_top_padding\";s:4:\"20px\";s:24:\"copyright_bottom_padding\";s:4:\"20px\";s:21:\"footer_social_title_1\";s:8:\"Facebook\";s:20:\"footer_social_icon_1\";s:8:\"facebook\";s:20:\"footer_social_link_1\";s:39:\"https://www.facebook.com/Freepathshala/\";s:21:\"footer_social_title_2\";s:7:\"Twitter\";s:20:\"footer_social_icon_2\";s:7:\"twitter\";s:20:\"footer_social_link_2\";s:33:\"https://twitter.com/roshankrawatt\";s:21:\"footer_social_title_3\";s:8:\"LinkedIn\";s:20:\"footer_social_icon_3\";s:8:\"linkedin\";s:20:\"footer_social_link_3\";s:64:\"https://in.linkedin.com/in/freepathshala-freepathshala-b48670131\";s:21:\"footer_social_title_4\";s:7:\"YouTube\";s:20:\"footer_social_icon_4\";s:7:\"youtube\";s:20:\"footer_social_link_4\";s:56:\"https://www.youtube.com/channel/UCsiS8w8GELZaxTQNtJfz1Qw\";s:21:\"footer_social_title_5\";s:0:\"\";s:20:\"footer_social_icon_5\";s:0:\"\";s:20:\"footer_social_link_5\";s:0:\"\";s:21:\"footer_social_title_6\";s:0:\"\";s:20:\"footer_social_icon_6\";s:0:\"\";s:20:\"footer_social_link_6\";s:0:\"\";s:21:\"footer_social_title_7\";s:0:\"\";s:20:\"footer_social_icon_7\";s:0:\"\";s:20:\"footer_social_link_7\";s:0:\"\";s:21:\"footer_social_title_8\";s:0:\"\";s:20:\"footer_social_icon_8\";s:0:\"\";s:20:\"footer_social_link_8\";s:0:\"\";s:21:\"footer_social_title_9\";s:0:\"\";s:20:\"footer_social_icon_9\";s:0:\"\";s:20:\"footer_social_link_9\";s:0:\"\";}","yes");
INSERT INTO wp_options VALUES("176","sm_status","O:28:\"GoogleSitemapGeneratorStatus\":4:{s:39:\"\0GoogleSitemapGeneratorStatus\0startTime\";d:1494512241.6728351116180419921875;s:37:\"\0GoogleSitemapGeneratorStatus\0endTime\";d:1494512241.74118900299072265625;s:41:\"\0GoogleSitemapGeneratorStatus\0pingResults\";a:2:{s:6:\"google\";a:5:{s:9:\"startTime\";d:1494512241.6773231029510498046875;s:7:\"endTime\";d:1494512241.698750019073486328125;s:7:\"success\";b:0;s:3:\"url\";s:100:\"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Ft12pathshala.co.nf%2Fsitemap.xml\";s:4:\"name\";s:6:\"Google\";}s:4:\"bing\";a:5:{s:9:\"startTime\";d:1494512241.713069915771484375;s:7:\"endTime\";d:1494512241.7340910434722900390625;s:7:\"success\";b:0;s:3:\"url\";s:93:\"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Ft12pathshala.co.nf%2Fsitemap.xml\";s:4:\"name\";s:4:\"Bing\";}}s:38:\"\0GoogleSitemapGeneratorStatus\0autoSave\";b:1;}","no");
INSERT INTO wp_options VALUES("182","_site_transient_browser_1ed6ded04fe4c45ec5a2a23bcf919e87","a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"52.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}","no");
INSERT INTO wp_options VALUES("181","_site_transient_timeout_browser_1ed6ded04fe4c45ec5a2a23bcf919e87","1495112778","no");
INSERT INTO wp_options VALUES("183","recently_activated","a:0:{}","yes");
INSERT INTO wp_options VALUES("184","widget_akismet_widget","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO wp_options VALUES("190","_site_transient_update_plugins","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1494528583;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:26:\"secure-wordpress/index.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3682\";s:4:\"slug\";s:16:\"secure-wordpress\";s:6:\"plugin\";s:26:\"secure-wordpress/index.php\";s:11:\"new_version\";s:5:\"3.0.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/secure-wordpress/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/secure-wordpress.zip\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip\";}s:43:\"broken-link-checker/broken-link-checker.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"1090\";s:4:\"slug\";s:19:\"broken-link-checker\";s:6:\"plugin\";s:43:\"broken-link-checker/broken-link-checker.php\";s:11:\"new_version\";s:6:\"1.11.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/broken-link-checker/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/broken-link-checker.1.11.2.zip\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"790\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.7.zip\";}s:36:\"google-sitemap-generator/sitemap.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:3:\"132\";s:4:\"slug\";s:24:\"google-sitemap-generator\";s:6:\"plugin\";s:36:\"google-sitemap-generator/sitemap.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/google-sitemap-generator/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.0.8.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"31679\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:6:\"1.13.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/updraftplus.1.13.1.zip\";}s:27:\"wp-super-cache/wp-cache.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:4:\"1221\";s:4:\"slug\";s:14:\"wp-super-cache\";s:6:\"plugin\";s:27:\"wp-super-cache/wp-cache.php\";s:11:\"new_version\";s:5:\"1.4.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-super-cache/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.9.zip\";s:14:\"upgrade_notice\";s:139:\"Fixed XSS on the settings page, settings page updates, file locking fixes and PHP 7.1 fix, caching fixes on static homepage blogs and more.\";}}}","no");
DROP TABLE IF EXISTS wp_postmeta;CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_postmeta VALUES("1","2","_wp_page_template","default");
INSERT INTO wp_postmeta VALUES("2","4","_form","<label> Your Name (required)
    [text* your-name] </label>
<label> Your Email (required)
    [email* your-email] </label>
<label> Subject
    [text your-subject] </label>
<label> Your Message
    [textarea your-message] </label>
[submit \"Send\"]");
INSERT INTO wp_postmeta VALUES("3","4","_mail","a:8:{s:7:\"subject\";s:30:\"Freepathshala \"[your-subject]\"\";s:6:\"sender\";s:42:\"[your-name] <wordpress@t12pathshala.co.nf>\";s:4:\"body\";s:176:\"From: [your-name] <[your-email]>
Subject: [your-subject]
Message Body:
[your-message]
--
This e-mail was sent from a contact form on Freepathshala (http://t12pathshala.co.nf)\";s:9:\"recipient\";s:26:\"freepathshalaweb@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO wp_postmeta VALUES("4","4","_mail_2","a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"Freepathshala \"[your-subject]\"\";s:6:\"sender\";s:44:\"Freepathshala <wordpress@t12pathshala.co.nf>\";s:4:\"body\";s:118:\"Message Body:
[your-message]
--
This e-mail was sent from a contact form on Freepathshala (http://t12pathshala.co.nf)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:36:\"Reply-To: freepathshalaweb@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO wp_postmeta VALUES("5","4","_messages","a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}");
INSERT INTO wp_postmeta VALUES("6","4","_additional_settings","");
INSERT INTO wp_postmeta VALUES("7","4","_locale","en_US");
INSERT INTO wp_postmeta VALUES("11","6","_edit_lock","1494507340:1");
INSERT INTO wp_postmeta VALUES("10","6","_edit_last","1");
INSERT INTO wp_postmeta VALUES("12","6","_wp_page_template","default");
INSERT INTO wp_postmeta VALUES("13","6","_onetone_post_meta","{\"nav_menu\":\"\",\"full_width\":\"no\",\"padding_top\":\"50px\",\"padding_bottom\":\"50px\",\"display_breadcrumb\":\"\",\"page_layout\":\"none\",\"left_sidebar\":\"\",\"right_sidebar\":\"\",\"slider_banner\":\"0\",\"banner_position\":\"1\",\"magee_slider\":\"\",\"display_title\":\"yes\"}");
INSERT INTO wp_postmeta VALUES("14","8","_wp_attached_file","2017/05/photo.jpg");
INSERT INTO wp_postmeta VALUES("15","8","_wp_attachment_metadata","a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:17:\"2017/05/photo.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"photo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"photo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO wp_postmeta VALUES("16","9","_wp_trash_meta_status","publish");
INSERT INTO wp_postmeta VALUES("17","9","_wp_trash_meta_time","1494507740");
INSERT INTO wp_postmeta VALUES("18","10","_wp_trash_meta_status","publish");
INSERT INTO wp_postmeta VALUES("19","10","_wp_trash_meta_time","1494511353");
INSERT INTO wp_postmeta VALUES("20","11","_wp_trash_meta_status","publish");
INSERT INTO wp_postmeta VALUES("21","11","_wp_trash_meta_time","1494511896");
INSERT INTO wp_postmeta VALUES("22","12","_wp_trash_meta_status","publish");
INSERT INTO wp_postmeta VALUES("23","12","_wp_trash_meta_time","1494512055");
INSERT INTO wp_postmeta VALUES("24","13","_wp_trash_meta_status","publish");
INSERT INTO wp_postmeta VALUES("25","13","_wp_trash_meta_time","1494512223");
INSERT INTO wp_postmeta VALUES("36","18","_wp_attached_file","2017/05/6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90.jpg");
INSERT INTO wp_postmeta VALUES("37","18","_wp_attachment_metadata","a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:960;s:4:\"file\";s:95:\"2017/05/6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:95:\"6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:95:\"6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:95:\"6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:96:\"6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
DROP TABLE IF EXISTS wp_posts;CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_posts VALUES("1","1","2017-05-11 12:51:32","2017-05-11 12:51:32","Welcome to WordPress. This is your first post. Edit or delete it, then start writing!","Hello world!","","publish","open","open","","hello-world","","","2017-05-11 12:51:32","2017-05-11 12:51:32","","0","http://t12pathshala.co.nf/?p=1","0","post","","1");
INSERT INTO wp_posts VALUES("2","1","2017-05-11 12:51:32","2017-05-11 12:51:32","This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:
<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>
...or something like this:
<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>
As a new WordPress user, you should go to <a href=\"http://t12pathshala.co.nf/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!","Sample Page","","publish","closed","open","","sample-page","","","2017-05-11 12:51:32","2017-05-11 12:51:32","","0","http://t12pathshala.co.nf/?page_id=2","0","page","","0");
INSERT INTO wp_posts VALUES("3","1","2017-05-11 12:51:44","0000-00-00 00:00:00","","Auto Draft","","auto-draft","open","open","","","","","2017-05-11 12:51:44","0000-00-00 00:00:00","","0","http://t12pathshala.co.nf/?p=3","0","post","","0");
INSERT INTO wp_posts VALUES("4","0","2017-05-11 12:52:06","2017-05-11 12:52:06","<label> Your Name (required)
    [text* your-name] </label>
<label> Your Email (required)
    [email* your-email] </label>
<label> Subject
    [text your-subject] </label>
<label> Your Message
    [textarea your-message] </label>
[submit \"Send\"]
Freepathshala \"[your-subject]\"
[your-name] 
From: [your-name] 
Subject: [your-subject]
Message Body:
[your-message]
--
This e-mail was sent from a contact form on Freepathshala (http://t12pathshala.co.nf)
freepathshalaweb@gmail.com
Reply-To: [your-email]
0
0
Freepathshala \"[your-subject]\"
Freepathshala 
Message Body:
[your-message]
--
This e-mail was sent from a contact form on Freepathshala (http://t12pathshala.co.nf)
[your-email]
Reply-To: freepathshalaweb@gmail.com
0
0
Thank you for your message. It has been sent.
There was an error trying to send your message. Please try again later.
One or more fields have an error. Please check and try again.
There was an error trying to send your message. Please try again later.
You must accept the terms and conditions before sending your message.
The field is required.
The field is too long.
The field is too short.","Contact form 1","","publish","closed","closed","","contact-form-1","","","2017-05-11 12:52:06","2017-05-11 12:52:06","","0","http://t12pathshala.co.nf/?post_type=wpcf7_contact_form&p=4","0","wpcf7_contact_form","","0");
INSERT INTO wp_posts VALUES("6","1","2017-05-11 12:57:51","2017-05-11 12:57:51","<h2>Our Inception</h2>
<p><b><i>�And Suddenly You Know.... 
Its Time To Start Something New And Trust The Magic Of New Beginnings ... �
</i></b>&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; -Miester Ackhart, Author</p>
<p>The organization traces its mild beginnings from one of the usual warm summer dawns of June 2015, when Roshan Kumar Rawat, the founder-cum-heart-and-soul of our organization offered one of the labor to develop his child; to impart the gift of education which is still not written in the destiny of many lives.<br/>
         Mr. Rawat, the usual Morning person, had never thought that one day his mornings may conjure up a miracle called FREEPATHSHALA.<br/>
         Slowly, the beginning time of 0800 hours was bring forward to 0730 hours, with further shifting to 0700 hours, making its genesis at 0600  hours with the Sun. A single kid changed to group of 5, then a dozen in no time, and furthermore 20 by the following June when Mr. Rawat�s parking lot gave way to the Society Mandir. During the succeeding months, it got replaced by a full fledged classroom. And today, we stand strong in this cause made to survive the millenniums to come, spreading the light of education on this community.
</p>
<p><br/>&nbsp;  </p>
<h2>Our Journey</h2>
<p><b><i>�No Matter How Long Your Journey Appears To Be,   There Is Never More Than This :One Step, One Breath , One Moment-now�
</i></b>&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; - Eckhart Tolle, Author</p>
<p>Emerging out of a parking lot, we�ve come a long way to accomplish a FREEPATHSHALA every kilometer. We have struggled, endured, shared, laughed and loved all the moments together.
After the summer of first year, it was exhilarating to see volunteers and students both stacking up but we are all aware of a crest being always accompanied by a trough. When winters came, there was a dearth of volunteers, getting tangled up with their own lives. 
There were hard times when people backed off after being hired. After all not everyone is strong enough to dive into this pile of mud and make a garden out of it.
But still, as they say <i>kisi cheez ko sachhe dil se pane ki koshish kro toh sari kaynat tumhe usse milane me lag jati hai</i>, we are here against all odds, fighting together for a better tomorrow.</p>","Our Journey","","publish","closed","closed","","our-journey","","","2017-05-11 12:57:51","2017-05-11 12:57:51","","0","http://t12pathshala.co.nf/?page_id=6","0","page","","0");
INSERT INTO wp_posts VALUES("7","1","2017-05-11 12:57:51","2017-05-11 12:57:51","<h2>Our Inception</h2>
<p><b><i>�And Suddenly You Know.... 
Its Time To Start Something New And Trust The Magic Of New Beginnings ... �
</i></b>&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; -Miester Ackhart, Author</p>
<p>The organization traces its mild beginnings from one of the usual warm summer dawns of June 2015, when Roshan Kumar Rawat, the founder-cum-heart-and-soul of our organization offered one of the labor to develop his child; to impart the gift of education which is still not written in the destiny of many lives.<br/>
         Mr. Rawat, the usual Morning person, had never thought that one day his mornings may conjure up a miracle called FREEPATHSHALA.<br/>
         Slowly, the beginning time of 0800 hours was bring forward to 0730 hours, with further shifting to 0700 hours, making its genesis at 0600  hours with the Sun. A single kid changed to group of 5, then a dozen in no time, and furthermore 20 by the following June when Mr. Rawat�s parking lot gave way to the Society Mandir. During the succeeding months, it got replaced by a full fledged classroom. And today, we stand strong in this cause made to survive the millenniums to come, spreading the light of education on this community.
</p>
<p><br/>&nbsp;  </p>
<h2>Our Journey</h2>
<p><b><i>�No Matter How Long Your Journey Appears To Be,   There Is Never More Than This :One Step, One Breath , One Moment-now�
</i></b>&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; - Eckhart Tolle, Author</p>
<p>Emerging out of a parking lot, we�ve come a long way to accomplish a FREEPATHSHALA every kilometer. We have struggled, endured, shared, laughed and loved all the moments together.
After the summer of first year, it was exhilarating to see volunteers and students both stacking up but we are all aware of a crest being always accompanied by a trough. When winters came, there was a dearth of volunteers, getting tangled up with their own lives. 
There were hard times when people backed off after being hired. After all not everyone is strong enough to dive into this pile of mud and make a garden out of it.
But still, as they say <i>kisi cheez ko sachhe dil se pane ki koshish kro toh sari kaynat tumhe usse milane me lag jati hai</i>, we are here against all odds, fighting together for a better tomorrow.</p>","Our Journey","","inherit","closed","closed","","6-revision-v1","","","2017-05-11 12:57:51","2017-05-11 12:57:51","","6","http://t12pathshala.co.nf/2017/05/11/6-revision-v1/","0","revision","","0");
INSERT INTO wp_posts VALUES("8","1","2017-05-11 13:01:54","2017-05-11 13:01:54","","photo","","inherit","open","closed","","photo","","","2017-05-11 13:01:54","2017-05-11 13:01:54","","0","http://t12pathshala.co.nf/wp-content/uploads/2017/05/photo.jpg","0","attachment","image/jpeg","0");
INSERT INTO wp_posts VALUES("9","1","2017-05-11 13:02:20","2017-05-11 13:02:20","{
    \"onetone[logo]\": {
        \"value\": \"http://t12pathshala.co.nf/wp-content/uploads/2017/05/photo.jpg\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[overlay_logo]\": {
        \"value\": \"http://t12pathshala.co.nf/wp-content/uploads/2017/05/photo.jpg\",
        \"type\": \"option\",
        \"user_id\": 1
    }
}","","","trash","closed","closed","","88525a23-a223-4f49-9212-df2a32615d86","","","2017-05-11 13:02:20","2017-05-11 13:02:20","","0","http://t12pathshala.co.nf/?p=9","0","customize_changeset","","0");
INSERT INTO wp_posts VALUES("10","1","2017-05-11 14:02:33","2017-05-11 14:02:33","{
    \"onetone[footer_social_link_1]\": {
        \"value\": \"https://www.facebook.com/Freepathshala/\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_2]\": {
        \"value\": \"https://twitter.com/roshankrawatt\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_3]\": {
        \"value\": \"https://in.linkedin.com/in/freepathshala-freepathshala-b48670131\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_4]\": {
        \"value\": \"https://www.youtube.com/channel/UCsiS8w8GELZaxTQNtJfz1Qw\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_title_5]\": {
        \"value\": \"Email\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_icon_5]\": {
        \"value\": \"envelope\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_5]\": {
        \"value\": \"roshan@freepathshala.org\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_title_6]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_icon_6]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_6]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_title_7]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_icon_7]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_7]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_title_8]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_icon_8]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_8]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_title_9]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_icon_9]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_9]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    }
}","","","trash","closed","closed","","6ac804d2-3f65-4752-823b-6d37b30c8988","","","2017-05-11 14:02:33","2017-05-11 14:02:33","","0","http://t12pathshala.co.nf/?p=10","0","customize_changeset","","0");
INSERT INTO wp_posts VALUES("11","1","2017-05-11 14:11:35","2017-05-11 14:11:35","{
    \"onetone[top_bar_info_content]\": {
        \"value\": \"Tel: \",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_1]\": {
        \"value\": \"https://www.facebook.com/Freepathshala/\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_4]\": {
        \"value\": \"https://www.youtube.com/channel/UCsiS8w8GELZaxTQNtJfz1Qw\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_title_5]\": {
        \"value\": \"Email\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_icon_5]\": {
        \"value\": \"envelope\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_5]\": {
        \"value\": \"roshan@freepathshala.org\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_title_6]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_icon_6]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_6]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_title_7]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_icon_7]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_7]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_title_9]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_icon_9]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_9]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_title_8]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_icon_8]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_8]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_3]\": {
        \"value\": \"https://in.linkedin.com/in/freepathshala-freepathshala-b48670131\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_2]\": {
        \"value\": \"https://twitter.com/roshankrawatt\",
        \"type\": \"option\",
        \"user_id\": 1
    }
}","","","trash","closed","closed","","9f21c29e-570b-4926-892a-49473db68c31","","","2017-05-11 14:11:35","2017-05-11 14:11:35","","0","http://t12pathshala.co.nf/?p=11","0","customize_changeset","","0");
INSERT INTO wp_posts VALUES("12","1","2017-05-11 14:14:15","2017-05-11 14:14:15","{
    \"onetone[header_social_link_1]\": {
        \"value\": \"https://www.facebook.com/Freepathshala/\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_title_5]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_icon_5]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[header_social_link_5]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    }
}","","","trash","closed","closed","","c9595bb3-4587-47a5-bc99-ceba0ed87c04","","","2017-05-11 14:14:15","2017-05-11 14:14:15","","0","http://t12pathshala.co.nf/?p=12","0","customize_changeset","","0");
INSERT INTO wp_posts VALUES("13","1","2017-05-11 14:17:03","2017-05-11 14:17:03","{
    \"onetone[top_bar_info_content]\": {
        \"value\": \"Tel: 7838883008\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_title_5]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_icon_5]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    },
    \"onetone[footer_social_link_5]\": {
        \"value\": \"\",
        \"type\": \"option\",
        \"user_id\": 1
    }
}","","","trash","closed","closed","","dded57be-4bfb-4526-90c6-59ee4c7d40ec","","","2017-05-11 14:17:03","2017-05-11 14:17:03","","0","http://t12pathshala.co.nf/?p=13","0","customize_changeset","","0");
INSERT INTO wp_posts VALUES("18","1","2017-05-11 16:11:27","2017-05-11 16:11:27","","6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90","","inherit","open","closed","","6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90","","","2017-05-11 16:11:27","2017-05-11 16:11:27","","0","http://t12pathshala.co.nf/wp-content/uploads/2017/05/6fa4b8d7b968e2f7fff2bff5bc49d854_stanley-ka-dabba-best-of-2011-1024x683-1-1440-c-90.jpg","0","attachment","image/jpeg","0");
DROP TABLE IF EXISTS wp_term_relationships;CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_term_relationships VALUES("1","1","0");
DROP TABLE IF EXISTS wp_term_taxonomy;CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_term_taxonomy VALUES("1","1","category","","0","1");
DROP TABLE IF EXISTS wp_termmeta;CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
DROP TABLE IF EXISTS wp_terms;CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_terms VALUES("1","Uncategorized","uncategorized","0");
DROP TABLE IF EXISTS wp_usermeta;CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_usermeta VALUES("1","1","nickname","freepathshala");
INSERT INTO wp_usermeta VALUES("2","1","first_name","");
INSERT INTO wp_usermeta VALUES("3","1","last_name","");
INSERT INTO wp_usermeta VALUES("4","1","description","");
INSERT INTO wp_usermeta VALUES("5","1","rich_editing","true");
INSERT INTO wp_usermeta VALUES("6","1","comment_shortcuts","false");
INSERT INTO wp_usermeta VALUES("7","1","admin_color","fresh");
INSERT INTO wp_usermeta VALUES("8","1","use_ssl","0");
INSERT INTO wp_usermeta VALUES("9","1","show_admin_bar_front","true");
INSERT INTO wp_usermeta VALUES("10","1","locale","");
INSERT INTO wp_usermeta VALUES("11","1","wp_capabilities","a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO wp_usermeta VALUES("12","1","wp_user_level","10");
INSERT INTO wp_usermeta VALUES("13","1","dismissed_wp_pointers","");
INSERT INTO wp_usermeta VALUES("14","1","show_welcome_panel","1");
INSERT INTO wp_usermeta VALUES("15","1","session_tokens","a:4:{s:64:\"2b4df7932f0f778befe3a7ad44b011c840a5e6ab46ab23c36d0981f00175a331\";a:4:{s:10:\"expiration\";i:1494679902;s:2:\"ip\";s:13:\"185.176.41.39\";s:2:\"ua\";s:39:\"ZackyInstaller2/20170509110317-dcb98516\";s:5:\"login\";i:1494507102;}s:64:\"14aa4e00b9871834f9bc19ab7121d46548bfe8987f5369240fd5c0957a865cf4\";a:4:{s:10:\"expiration\";i:1494679966;s:2:\"ip\";s:13:\"43.249.228.11\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:54.0) Gecko/20100101 Firefox/54.0\";s:5:\"login\";i:1494507166;}s:64:\"47bf3f37252765d85b51eca730c1013e0337cd64e3c1a8a8f65523f8c9315c5a\";a:4:{s:10:\"expiration\";i:1494680776;s:2:\"ip\";s:14:\"166.88.123.105\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:52.0) Gecko/20100101 Firefox/52.0\";s:5:\"login\";i:1494507976;}s:64:\"aa12ae1e4bd38c772f541cd2461dacb6c0b575021c4491066e8d6a7349ace970\";a:4:{s:10:\"expiration\";i:1494683526;s:2:\"ip\";s:13:\"103.57.133.57\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.1 Safari/603.1.30\";s:5:\"login\";i:1494510726;}}");
INSERT INTO wp_usermeta VALUES("16","1","wp_dashboard_quick_press_last_post_id","3");
INSERT INTO wp_usermeta VALUES("17","1","wp_user-settings","editor=html&libraryContent=browse");
INSERT INTO wp_usermeta VALUES("18","1","wp_user-settings-time","1494507767");
DROP TABLE IF EXISTS wp_users;CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO wp_users VALUES("1","freepathshala","$P$B5i8jnX2HXdFvVFb1uRg.zhltqyruj/","freepathshala","freepathshalaweb@gmail.com","","2017-05-11 12:51:31","","0","freepathshala");
