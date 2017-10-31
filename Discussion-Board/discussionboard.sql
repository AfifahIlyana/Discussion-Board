-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2017 at 09:26 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discussionboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int(11) NOT NULL,
  `t_reply_id` int(11) NOT NULL,
  `reply_content` longtext NOT NULL,
  `reply_user` varchar(255) NOT NULL,
  `reply_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`reply_id`, `t_reply_id`, `reply_content`, `reply_user`, `reply_date`) VALUES
(1, 1, 'Just the format. xml is the preferred format the last time I checked, and there are plenty of free generators online, including those offered by search engines. Your best bet is to generate them regularly with webmaster tools and manually upload them to the targeted search engines in addition to saving a copy on your server. That way you don\'t have to wait until the site is crawled again to benefit from updated maps.', ' seandisanti', '2017-04-21'),
(2, 1, 'Xml Sitemap is helpful for Search engine. In xml sitemap, all the url are listed there. Google bot come on the sitemap.xml and index that page.<br>\r\nSitemap.html is for the front end user. They can easily locate the correct file.', 'virinchisoftware', '2017-04-21'),
(3, 1, 'According to Barry Schwartz\'s article about HTML and XML sitemaps, HTML sitemap \"is an old school landing page for users to find all (or most) of your pages on your web site via single page\" while XML sitemap \"can also be multiple files, but they are not visible to a user, only a search engine spider.\"<br><br>\r\n\r\nUsing HTML Sitemap both users and spiders can chew on it, according to Matt from Google when asked by the author which he would pick between HTML and XML sitemaps.<br><br>\r\n\r\nHere\'s the link to the full article:<br>\r\n<a href=\'http://www.seroundtable.com/archives/020924.html\'>http://www.seroundtable.com/archives/020924.html</a><br><br>\r\n\r\nI hope this helps. Thank you.', 'WebOutGateway', '2017-04-21'),
(4, 1, 'HTML Sitemap: It\'s for human visitor. This sitemap accumulates all website link on one page. We can put 100 links on one page.<br><br>\r\n\r\nXML Sitemap: XML sitemap, sometimes called Google sitemap is very beneficial for your website. This sitemap provides a single location to search engine crawler to crawl all of your web pages.', 'amirasen', '2017-04-21'),
(5, 1, 'Xml sitemap is for search engine purpose and HTML sitemap is for user purpose.', 'brknny', '2017-04-21'),
(6, 1, 'HTML Sitemap for Human Navigation<br>\r\nXML Sitemap for Search Engineâ€™s Spider and list of URLâ€™s', 'johnmacd', '2017-04-21'),
(7, 1, '<b>[ Removed ]</b>', 'ngomaichi', '2017-04-21'),
(8, 1, 'thanks for sharing, this is helpful for all newbie', 'maxgadgetuk', '2017-04-21'),
(9, 1, 'XML is more for the search engine crawlers, where as an HTML sitemap is more focused on the users.', 'KeyboardWarrior', '2017-04-21'),
(10, 2, 'see if this helps or just adds more confusion<br><br>\r\n<a href=\'http://www.w3.org/XML/\'>http://www.w3.org/XML/</a>', 'haninger', '2017-04-21'),
(11, 2, 'It\'s a series of rules that allows you to create markup tags in a document to describe different parts. If you\'ve ever seen HTML \"code\" then you\'ve got a fair idea of what XML is, only XML is much more flexible. XML and HTML actually have a common parent in a much larger and complex markup system known as SGML. Recently HTML was \"rewritten\" in XML to create HTML. Which basically is just a somewhat \"cleaner\" version of itself.<br><br>\r\n\r\nEssentially, XML allows you to insert HTML-like tags into any document which will have some sort of significance to a program that uses it. Just like HTML tags have significance to the web browser. The different tags tell the web browser how to display the page. XML just expands the scope to pretty much anything, not just use in a web browser.<br><br>\r\n\r\nFor the most part, XML is only something of interest to program developers. It can make for a very programmer friendly way of creating fast and flexible configuration files, as well as storing any data that the program might need to save. As far as the average computer user is concerned, it\'s just another ackronym that we computing professionals are so enamoured with. You don\'t really need to worry about it, because it\'s use should be completely transparent to you. <br><br>\r\n\r\nBut if you really want to learn more than you ever wanted to about XML, pick up a copy of \"Learning XML 2nd Edition\" by O\'Reilly Publishing. Fair warning, it\'s not exactly an action packed spy thriller type novel. It\'s really kind of dry and boring, but it does cover pretty much the A-Z of XML.\r\n', 'yew', '2017-04-21'),
(12, 2, 'I\'m hardly an expert, but I can share what I know.<br><br>\r\n\r\nXML (Extensible Markup Language) is similar to HTML (HyperText Markup Language). It\'s a set of codes that work together to display the content (text and graphics) on a website page. By the way, both of these languages trace their ancestry to SGML (Standard Generalized Markup Language).<br><br>\r\n\r\nBefore I jump into XML, here\'s a brief review of how HTML works. HTML consists of codes that are standardized by the World Wide Web Consortium (W3C). To slightly oversimply things, your browser is programmed to interpret HTML codes in a website page to display the page contents accordingly. If all browser developers designed their browsers to understand only the currently standardized HTML codes, all browsers would work the same. However, the browser developers each push the edge a bit, and invent new HTML codes, programming their browser to understand their new unstandardized HTML codes. Website developers, eager for more flexibility, jump on board and start using these unofficial codes. This creates the browser incompatibility because when a website page uses non-standard HTML codes, only one type of browser will interpret them correctly. The W3C then reviews new HTML commands put into service by the browser developers, and some of them get added to the official list. So HTML grows and expands its repertoire as developers create, push the edge, and the W3C reacts. This is a slow process and creates interim confusion for web users (and some really ugly websites).<br><br>\r\n\r\nXML, on the other hand, allows for both standard codes and customized codes created and defined by an XML coder/user for a specific purpose. New codes can be defined on the fly and understood by browsers/viewers. This means that XML has much more flexibility and doesn\'t suffer from browser incompatibility. You might think of XML as HTML on steriods, or (in this more steriod-aware sports era), you might think of HTML as Clark Kent and XML as Superman.<br><br>\r\n\r\nI\'m a technical writer, and I\'ve been using HTML since about 1995. Over the last few years, my work has changed to almost exclusively use XML instead. I\'m not the only person who has seen this trend. HTML is being replaced by XHTML (Extensible HyperText Markup Language) which is currently being defined by the W3C as a bridge from HTML towards XML.<br><br>\r\n\r\nFor more technical information, I recommend that you read the W3C\'s XML page at: <a href=\'http://www.w3.org/XML/\'>http://www.w3.org/XML/</a>', 'CRKingston', '2017-04-21'),
(13, 2, 'First of all, XML is NOT HTML.<br><br>\r\n\r\nSyntactically, HTML and XML are nearly identical since they are both based on Standards Generalized Markup Language; one main difference is that XML has more strict rules (all tags must be closed, attributes can not be collapsed). But while HTML is used for a single, specific purpose (to describe web pages), XML can be used to describe any kind of data, depending on how the application uses it. In one sense, XML is a framework for building other markup languages.<br><br>\r\n\r\nMany XML-based languages have been developed to describe various kinds of data. OpenOffice.org encodes it documents in XML files (which are actually later compressed into ZIP files). RSS is used for news syndication among Internet sites (orange \'XML\' buttons on PostNuke sites, etc.). eXtensible User interface Language provides the powerful, modular GUI used by the Mozilla browser. SVG (scalable vector graphics) is a standard for displaying scalable images on the web. XHTML is a replacement for HTML which is implemented in XML. Jabber is an instant messaging protocol that sends data between clients and servers in little bits of XML.<br><br>\r\n\r\nFrom a programming standpoint, XML provides a simple interface for applications to access data. The same XML \"parser\" library can be used by a news aggregator, web browser, or anything. The parser need not care what on earth the data describes, and the application developer doesn\'t have to worry about deconstructing the file\'s syntax or character encoding.<br><br>\r\n\r\nXML is a simple but powerful technology with an infinite number of uses, and it will have even more in the future. You probably use it on a day-to-day basis, at least indirectly, in many more ways than you know.', 'stuuf133t', '2017-04-21'),
(14, 2, 'XML stands for eXtensible Markup Language. It is a cousin of HTML in that they are both \"markup languages\". That is a term that originated in early word processors when you had to \"markup\" text to format it. (For example, using a \"tag\" such as <BOLD> for bold face type.)<br>\r\nHTML is used to mark up text for display. XML is used to mark up data for data exchange so that data can be interchanged between systems without having to worry about the destination system. (Much like HTML lets you mark up text for display without having to worry about what operating system and platform will be doing the display at the other end.<br>\r\nHope that helps.<br>\r\n~Carolyn', 'cpedrick', '2017-04-21'),
(15, 2, 'Well, let me answer this from a slightly different angle.<br><br>\r\n\r\nIn essence, XML is a language that allows COMPUTER to understand the content of the data being transmitted. (versus HTML that helps HUMAN to understand the content by formatting the data in pretty format).<br><br>\r\n\r\nTechnically, XML allows data to be marked up with the description of what the data is about (ie, customer_name), as well as allowing a more advance data structure (ie an invoice with invoice details) to be transmitted. This in turn allows computers (applications) to talk better with other computers.<br><br>\r\n\r\nAdd to this a whole slew of XML standard (such as ACCORD for insurance industry) that describes what data is needed for a particular industry. What this means to business is that industrial strength solutions has a better chance of working (out of the box) with each other. Thus lowering the cost of IT technology acquisition and bringing business partners closer together (at least IT-wise).<br><br> \r\n\r\nThis is NOT a new concept. various industry standard has existed before. But industry has never taken it up like this before.<br><br>\r\n\r\nThe down side... Well, XML parsing is SLOOOOOOWWWW. Why in the world would the most successful language that allow data to be transmitted between computer applications be written in ASCII/text is one of those cosmic accident that will haunt the IT industry much like the cause of the Y2K bug.<br><br>\r\n\r\nHope this helps...<br><br>\r\n\r\nDonald', 'donaldw', '2017-04-21'),
(17, 4, 'I have not made this recipe yet, but just a tip when working with eggs and any hot liquid you must always temper your eggs.Just add a bit of the hot liquid and whisk it in then slowly add the rest of the hot liquid this will stop you from getting the scrambled egg taste.', 'ChefAtHome', '2017-04-21'),
(18, 4, 'Good job Stehpanie. I have been looking for an egg custard recipe like this. It wasn\'t too sweet. I loved the texture. Here is a tip when combining a hot liquid to an egg mixture. While stirring very quickly, add some of the egg mixture to the hot milk. Then pour the milk into the egg mixture(keep stirring). This keeps the eggs from cooking and turning into scrambled eggs. Personally, I think this dessert is best served completely cold. Next time I might try adding a little almond extract to see how that turns out.', 'TADAL', '2017-04-21'),
(19, 4, 'This was as close to perfect as any recipe can get. It is not overly sweet. So, if you are used to a very sweet custard you\'d want to increase the sugar. I did not get a scrambled egg taste at all. The crust and the top came out very brown but my oven temperature is off and I may not have set it properly. I\'ll watch and make adjustments the next time I bake this pie. Thanks for a great and simple recipe!', 'joni470', '2017-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topics_id` int(11) NOT NULL,
  `topics_title` varchar(255) NOT NULL,
  `topics_description` text NOT NULL,
  `topics_user` varchar(255) NOT NULL,
  `topics_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topics_id`, `topics_title`, `topics_description`, `topics_user`, `topics_date`) VALUES
(1, 'What is Difference between XML sitemap and Html sitemap?', 'Can anyone tell me,<br>\r\nWhat is Difference between XML sitemap and Html sitemap?', 'technoclouderp', '2017-04-21'),
(2, 'What\'s XML?', 'What\'s XML?', 'petekessell', '2017-04-21'),
(4, 'Restaurant Style Egg Custard Pie', 'Excellent Egg Custard Pie recipe that I\'ve worked at forever to duplicate a popular restaurant\'s pie! I finally got it!<br><br>\r\n\r\n<h3>Ingredients</h3><br>\r\n\r\n- 4 eggs <br>\r\n- 1/2 cup white sugar <br>\r\n- 1 pinch salt <br>\r\n- 1 teaspoon vanilla extract <br>\r\n- 2 cups whole milk <br>\r\n- 3 tablespoons butter <br>\r\n- 1 (9 inch) refrigerated pie crust <br><br>\r\n\r\n<h3>Directions</h3><br>\r\n\r\nPreheat oven to 425 degrees F (220 degrees C.)<br><br>\r\n\r\nIn a large bowl, combine eggs, sugar, salt and vanilla. Mix just enough to incorporate all the ingredients. Set aside. In a medium saucepan over medium-high heat, combine milk and butter. Use a wire whisk and stir constantly until the milk begins to rise in the saucepan at a rapid boil - 5 to 8 minutes. NEVER stop stirring, or the milk will burn. Pour the hot mixture into the egg mixture, stirring as you pour.<br><br>\r\n\r\nLine a 9 inch pan with dough. Pour custard mixture into crust. Protect the edges of crust with a ring of aluminum foil.<br><br>\r\n\r\nBake in the preheated oven for 20 minutes. Remove foil and bake for 8 to 10 minutes. Filling will appear slightly jiggly. Allow to cool.\r\n\r\n', 'STEPHIKIN', '2017-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_pass` varchar(100) NOT NULL,
  `users_privilage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_pass`, `users_privilage`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'technoclouderp', 'techno@hotmail.com', 'd9f9133fb120cd6096870bc2b496805b', 0),
(3, ' seandisanti', 'sean@gmail.com', '9b938710211168f2902f9ed4357cd05c', 0),
(4, 'virinchisoftware', 'virin@gmail.com', 'a8849ab970b2ae9009a0c02f9f5f89ea', 0),
(5, 'WebOutGateway', 'web@gmail.com', '2567a5ec9705eb7ac2c984033e06189d', 0),
(6, 'amirasen', 'amirasen@hotmail.com', '0ae39049910b110bea964228da2c9faa', 0),
(7, 'brknny', 'brknny@outlook.com', '3081e68cda4069a54eaa79c33b9201f4', 0),
(8, 'johnmacd', 'john@gmail.com', '527bd5b5d689e2c32ae974c6229ff785', 0),
(9, 'ngomaichi', 'ngomaichi@yahoo.com', '10857b83aa378cc1578e8b4f44cb03f5', 0),
(10, 'maxgadgetuk', 'max@hotmail.com', '2ffe4e77325d9a7152f7086ea7aa5114', 0),
(11, 'KeyboardWarrior', 'keyboard@hotmail.com', '388a56dbb62a010dc26a378981346247', 0),
(12, 'petekessell', 'pete@gmail.com', '858d41c9e397b8fa34bb046d8055f276', 0),
(13, 'haninger', 'haninger@gmail.com', '020e897d70679422c837bba4f3723793', 0),
(14, 'yew', 'yew@hotmail.com', '24c56ae68137903725d16a0c67965a68', 0),
(15, 'CRKingston', 'kingston@gmail.com', 'b2086154f101464aab3328ba7e060deb', 0),
(16, 'stuuf133t', 'stuuf@gmail.com', '80f5800a2cd205d9fdb046a56b0d2184', 0),
(17, 'cpedrick', 'cpedrick@gmail.com', '5b9479ddd6f65afeb5c659af7dead9bb', 0),
(18, 'donaldw', 'donaldw@yahoo.com', 'c5c188185e8b07d196dbc155419b8c9f', 0),
(19, 'wildcat', 'wildcat@gmail.com', 'e966fa8dba38636deeaff61b0a8cdf2d', 0),
(20, 'STEPHIKIN', 'STEPHIKIN@gmail.com', '12222471a9cc8217125f3b4cf39c1ca0', 0),
(21, 'ChefAtHome', 'ChefAtHome@hotmail.com', 'f4ab7df9b214b5105feee3ad8a2deca6', 0),
(22, 'TADAL', 'TADAL@hotmail.com', '4886ba78fb03c901ba7f06f297463c70', 0),
(23, 'joni470', 'joni470@gmail.com', '6c4bbd0c1ab06869bb234de69a14e595', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `t_reply_id` (`t_reply_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topics_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_id_2` (`users_id`),
  ADD KEY `users_id` (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `topics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`t_reply_id`) REFERENCES `topics` (`topics_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
