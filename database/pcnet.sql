
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(0, 'PC NET Computers', 'pcnetcomputers@gmail.com', '$2y$10$njUfOIv5EUEx6Q350DHg9.8k81vqNw1Y7qhPtnPO7Iln5m27AoDz.', '1');



CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Dell'),
(3, 'Acer'),
(4, 'Asus');



CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `avalable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`, `avalable`) VALUES
(0, 34, '::1', 1, 1, 0),
(0, 20, '::1', 1, 1, 0),
(0, 8, '::1', 3, 1, 0),
(0, 2, '::1', 2, 1, 0),
(0, 3, '::1', 2, 1, 0),
(0, 20, '::1', 6, 1, 0),
(0, 22, '::1', -1, 1, 0);



CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptop'),
(2, 'Dekstop'),
(3, 'Pen Drive'),
(4, 'Printers');



CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 2, '1', '0');


CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 3, 'Acer i7 8th genaration', 145000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB(Nvidea)\r\nWindows 10', 'al1.jpg', 'acer , laptop , i7'),
(2, 1, 3, 'Acer i7 8th genaration', 185000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB(Redian)\r\nWindows 10', 'al2.jpg', 'acer , laptop , i7'),
(3, 1, 3, 'Acer i5 6th genaration', 95000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'al3.jpeg', 'acer , laptop , i5'),
(4, 1, 3, 'Acer i5 7th genaration', 100000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'al4.jpg', 'acer , laptop , i5'),
(5, 1, 3, 'Acer i3 7th genaration', 85000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'al5.jpg', 'acer , laptop , i3'),
(6, 1, 3, 'Acer i3 4th genaration', 65000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'al6.jpg', 'acer , laptop , i3'),
(7, 2, 3, 'Acer i3 4th genaration', 55000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'ap1.png', 'acer , Desktop , i3'),
(8, 2, 3, 'Acer i5 6th genaration', 75000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'ap2.jpg', 'acer , Desktop , i5'),
(9, 2, 3, 'Acer i7 8th genaration', 85000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'ap3.jpg', 'acer , Desktop , i7'),
(10, 1, 1, 'HP i7 8th genaration', 115000, 13, 'RAM 8GB\r\nHDD 2TB\r\nVGA 2GB\r\nWindows 10', 'hl1.jpg', 'hp , laptop , i7'),
(11, 1, 1, 'HP i7 8th genaration', 145000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 2GB(Nvidia)\r\nWindows 10', 'hl2.jpg', 'hp , laptop , i7'),
(12, 1, 1, 'HP i5 7th genaration', 125000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 2GB(Nvidia)\r\nWindows 10', 'hl3.jpg', 'hp , laptop , i5'),
(13, 1, 1, 'HP i5 6th genaration', 120000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 2GB(Radian)\r\nWindows 10', 'hl4.png', 'hp , laptop , i5'),
(14, 1, 1, 'HP i3 6th genaration', 95000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'hl5.jpg', 'hp , laptop , i3'),
(15, 1, 1, 'HP i3 4th genaration', 75000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'hl6.jpg', 'hp , laptop , i3'),
(16, 2, 1, 'HP i3 6th genaration', 65000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 1GB\r\nWindows 10', 'hp1.jpg', 'hp , Desktop , i3'),
(17, 2, 1, 'HP i5 7th genaration', 95000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 1GB\r\nWindows 10', 'hp2.jpeg', 'hp , Desktop , i5'),
(18, 2, 1, 'HP i7 7th genaration', 135000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 2GB\r\nWindows 10', 'hp3.jpg', 'hp , Desktop , i7'),
(19, 3, 1, '32GB ', 1850, 12, '3.0', 'p1.jpg', 'hp , pen , 32'),
(20, 3, 0, '32GB ', 1850, 12, '3.0', 'p2.jpg', 'pen , 32'),
(21, 3, 0, '16GB ', 1650, 12, '3.0', 'p3.jpg', 'pen , 16'),
(22, 4, 1, 'HP Deskjet 2200', 4000, 12, 'Coloer Print', 'pp1.jpg', 'hp , printer'),
(23, 4, 0, 'EPSON xp-15000', 12000, 12, 'Coloer Print\r\nscaner\r\n', 'pp2.jpg', ' printer'),
(24, 1, 2, 'Dell i7 8th genaration', 155000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB(Nvidea)\r\nWindows 10', 'dl1.jpg', 'Dell , laptop , i7'),
(25, 1, 2, 'Dell i7 7th genaration', 145000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'dl2.jpg', 'Dell , laptop , i7'),
(26, 1, 2, 'Dell i5 7th genaration', 105000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'dl3.jpeg', 'Dell , laptop , i5'),
(27, 1, 2, 'Dell i5 6th genaration', 95000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'dl4.jpg', 'Dell , laptop , i5'),
(28, 1, 2, 'Dell i3 6th genaration', 75000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'dl5.jpg', 'Dell , laptop , i3'),
(29, 1, 2, 'Dell i3 7th genaration', 85000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'dl6.jpg', 'Dell , laptop , i3'),
(30, 2, 2, 'Dell i5 7th genaration', 95000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'dp1.jpg', 'Dell , Desktop , i5'),
(31, 2, 2, 'Dell i3 7th genaration', 75000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'dp2.jpg', 'Dell , Desktop , i3'),
(32, 2, 2, 'Dell i7 7th genaration', 135000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'dp3.jpg', 'Dell , Desktop , i7'),
(33, 4, 0, 'Canon MG-2500', 15000, 12, 'Coloer print\r\nscanner', 'pp3.jpg', 'printers'),
(34, 1, 4, 'Asus i3 7th genaration', 80000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'aa1.png', 'asus , laptop , i3'),
(35, 1, 4, 'Asus i7 8th genaration', 175000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB(Redian)\r\nWindows 10', 'aa3.jpg', 'asus , laptop , i7'),
(36, 1, 4, 'Asus i7 6th genaration', 125000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'aa2.jpg', 'asus , laptop , i7'),
(37, 1, 4, 'Asus i5 7th genaration', 105000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'aa4.png', 'asus , laptop , i5'),
(38, 1, 4, 'Asus i3 5th genaration', 85000, 12, 'RAM 8GB\r\nHDD 1TB\r\nVGA 2GB\r\nWindows 10', 'aa5.jpg', 'asus , laptop , i3'),
(39, 1, 4, 'Asus i5 7th genaration', 125000, 12, 'RAM 8GB\r\nHDD 2TB\r\nVGA 4GB\r\nWindows 10', 'aa6.jpg', 'asus , laptop , i5');



CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(2, 'ashan', 'liyanage', 'ashanliyanage46@gmail.com', 'd7d05c3960a705e4ee4d89b3e572ce18', '0713332196', 'assss', 'asddf'),
(3, 'Chathuranga', 'Dilrukshan', 'chathurangadilrukshan@gmail.com', '8710fb00f8ccedb11ebdf2bc36c42511', '0768770401', 'Badulupitiya', 'Badulla'),
(4, 'Dinusha', 'Lakmali', 'dinushalakmali@gmail.com', 'cadb4bc0e2952779668b7015e04338c7', '0786756456', 'Katugaha', 'Bandrawella'),
(5, 'Shamalee', 'Madhuwanthi', 'shamaleemadhuwanthi@gmail.com', '001adfe942eeeb2b33406b3ef0f7737a', '0784353234', 'Maligathanna', 'Etampitiya'),
(6, 'Eshintha', 'Hashippriya', 'eshintha@gmail.com', 'ae5339130b37ca838cd676ce762cac29', '0713970036', 'udagama', 'Passara');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);


ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);


ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;


ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
