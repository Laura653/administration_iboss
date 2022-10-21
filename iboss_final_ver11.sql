-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-10-11 12:00:38
-- 伺服器版本： 5.7.24
-- PHP 版本： 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `iboss`
--

-- --------------------------------------------------------

--
-- 資料表結構 `annoucement`
--

CREATE TABLE `annoucement` (
  `announcementID` int(11) NOT NULL,
  `announcementTime` datetime NOT NULL,
  `announcementTitle` varchar(100) NOT NULL,
  `context` varchar(10000) NOT NULL,
  `empID` int(11) NOT NULL,
  `deptID` int(11) NOT NULL,
  `announcementType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `annoucement`
--

INSERT INTO `annoucement` (`announcementID`, `announcementTime`, `announcementTitle`, `context`, `empID`, `deptID`, `announcementType`) VALUES
(1, '2022-09-23 13:08:30', '[全體公告]停車場施工公告', '<h3>本公司停車場將於&nbsp;</h3>\n\n<h3><strong>9/26(一)8:00</strong><br />\n至<br />\n<strong>9/30(五)17:00</strong></h3>\n\n<h3>進行標誌繪製作業，期間暫停開放，造成不便，敬請見諒！</h3>', 1, 1, 1),
(2, '2022-09-07 13:08:30', '[收發公告]如有包裹，煩請盡快領取', '<h3>近日包裹與禮盒眾多，部分員工尚未領取，特此公告，煩請有包裹者，於下列時間前領取</h3>\n<h3><strong>09/16 17:00</strong></h3>\n<h3>至</h3>\n                  <h3><strong>10/31 17:00</strong></h3>\n                  <h3>若無在時間內領取，公司將逕自處理，謝謝配合！</h3>', 2, 3, 1),
(3, '2022-10-10 00:00:00', '[收發公告]近日常有餐盒遺失，請員工親自與外送人員確認', '<h3>近日於大樓門口平台發生多次餐盒遺失事件，故特此公告，</h3>\n\n<h3>&nbsp;</h3>\n\n<h3>煩請員工親自與外送人員點清，避免遭有心人士竊取，謝謝大家配合！</h3>\n', 2, 3, 0),
(4, '2022-09-20 15:21:43', '[全體公告]敬邀參加《2022台灣韌性電網論壇》', '<h3>　　隨著第26屆聯合國氣候變化綱要公約締約方會議（COP26）的落幕，凝聚了全球氣候共識，已超過137個國家喊出淨零碳排的承諾，並提出許多重要策略，如建構零碳能源環境、提升能源系統韌性等，這些皆圍繞著能源轉型、綠色能源之開發。</h3>\n\n<h3>　　而在此電力能源轉型下，要如何維持穩定供電、強化電網韌性及如何與民間能源業者合作等，皆是身為能源供應之電力企業首當其衝需要解決的課題。環顧各國指標性之電力企業皆已著手相關之策略規劃，因此擔負臺灣電力供給重責的台電，除持續開發綠色能源之外，亦積極與社會大眾溝通能源議題，爰本次「2022台灣韌性電網論壇」將以能源轉型下電的零碳未來為主軸，邀請國內專注於電網韌性與永續電力之學者專家對談，提供管道予外界了解台電相關作為及進行議題交流。</h3>\n\n<h3>　　因此，台電將於9月20日下午13:00，於台電大樓舉辦《2022台灣韌性電網論壇》。誠摯邀請大專院校電力能源相關科系、響應韌性電網議題之相關企業主及智慧電網、綠色能源趨勢議題關注團體共同參與！論壇名額有限，請儘速上網報名。</h3>', 1, 1, 1),
(5, '2022-10-03 15:21:43', '[全體公告]2022/10/4（二）至10/5（三）二樓前廳全區封閉公告', '<h3>因應活動施工，</h3>\n\n<h3><strong>2022/10/4（二）11：30</strong></h3>\n\n<h3>至&nbsp;</h3>\n\n<h3><strong>2022/10/5（三）21：00</strong> 二樓前廳全區封閉，電梯暫不停靠二樓。</h3>\n\n<h3>造成不便，敬請見諒。</h3>', 2, 3, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `deptlist`
--

CREATE TABLE `deptlist` (
  `deptID` int(11) NOT NULL,
  `dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `deptlist`
--

INSERT INTO `deptlist` (`deptID`, `dept`) VALUES
(1, '資訊部'),
(2, '人事部'),
(3, '總務部');

-- --------------------------------------------------------

--
-- 資料表結構 `emp`
--

CREATE TABLE `emp` (
  `empID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `passwd` varchar(100) DEFAULT NULL,
  `passwd2` varchar(100) DEFAULT NULL,
  `idNumber` varchar(20) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(11) DEFAULT NULL,
  `onBoardDate` date NOT NULL,
  `deptID` int(11) DEFAULT NULL,
  `positionID` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `addr` varchar(20) DEFAULT NULL,
  `emergencyContact` varchar(20) DEFAULT NULL,
  `emergencyPhone` varchar(20) DEFAULT NULL,
  `resetPasswordToken` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `emp`
--

INSERT INTO `emp` (`empID`, `name`, `passwd`, `passwd2`, `idNumber`, `birthday`, `sex`, `onBoardDate`, `deptID`, `positionID`, `phone`, `email`, `addr`, `emergencyContact`, `emergencyPhone`, `resetPasswordToken`) VALUES
(1, '王俊皓', '123', '123', 'A123456789', '1998-01-01', '男', '2022-09-21', 2, 1, '0911222333', 'howardwang904@gmail.com', '台中市南屯區公益路二段51號', '王文賢', '0900222333', 'null'),
(2, '黃大倫', '123', '123', 'A123456790', '1998-01-02', '男', '2022-09-22', 3, 1, '0911222444', 'adpe6259@gmail.com', '台中市南屯區公益路二段51號', '黃', '0900222444', NULL),
(3, '黃雅絹', '456', '123', 'A223456791', '1998-01-03', '女', '2022-09-28', 2, 2, '09112224555', 'yajuan0130@gmail.com', '台中市南屯區公益路二段51號', '陳', '0900222555', 'null'),
(4, '劉鈞翔', '456', '123', 'B123456789', '1997-03-15', '男', '2022-09-28', 1, 2, '0912345678', 'gary911921@gmail.com', '台中市南屯區公益路二段51號18樓', '劉', '0987654321', 'null');

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `emp_order`
-- (請參考以下實際畫面)
--
CREATE TABLE `emp_order` (
`orderID` int(11)
,`empID` int(11)
,`name` varchar(20)
,`orderItem` varchar(20)
,`orderPrice` int(11)
,`orderDate` date
,`paymethod` varchar(20)
);

-- --------------------------------------------------------

--
-- 資料表結構 `equipmentapply`
--

CREATE TABLE `equipmentapply` (
  `applyID` int(11) NOT NULL,
  `applyReason` varchar(20) NOT NULL,
  `empID` int(11) NOT NULL,
  `applyType` int(11) NOT NULL,
  `applyTime` datetime NOT NULL,
  `applyAcceptTime` datetime DEFAULT NULL,
  `applyFinishTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `equipmentapply`
--

INSERT INTO `equipmentapply` (`applyID`, `applyReason`, `empID`, `applyType`, `applyTime`, `applyAcceptTime`, `applyFinishTime`) VALUES
(1, '設備受潮', 1, 0, '2022-09-23 14:14:11', NULL, NULL),
(2, '專案製作', 1, 1, '2022-09-23 14:14:11', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `equipmentapplydetail`
--

CREATE TABLE `equipmentapplydetail` (
  `applyID` int(11) NOT NULL,
  `equipmentID` int(11) NOT NULL,
  `quantity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `equipmentapplydetail`
--

INSERT INTO `equipmentapplydetail` (`applyID`, `equipmentID`, `quantity`) VALUES
(1, 1, '1'),
(1, 2, '1'),
(2, 1, '1'),
(2, 2, '3');

-- --------------------------------------------------------

--
-- 資料表結構 `equipmentlist`
--

CREATE TABLE `equipmentlist` (
  `equipmentID` int(11) NOT NULL,
  `equipment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `equipmentlist`
--

INSERT INTO `equipmentlist` (`equipmentID`, `equipment`) VALUES
(1, '蘋果電腦'),
(2, '蘋果滑鼠'),
(3, '投影機'),
(4, '麥克風'),
(5, '攝影機'),
(6, '腳架'),
(7, '白板筆'),
(8, '板擦'),
(9, '華碩筆電'),
(10, '蘋果筆電'),
(11, '滑鼠'),
(12, '鍵盤'),
(13, '電源線'),
(14, '耳機');

-- --------------------------------------------------------

--
-- 資料表結構 `leavelist`
--

CREATE TABLE `leavelist` (
  `leaveID` int(11) NOT NULL,
  `empID` int(11) NOT NULL,
  `agentID` int(11) NOT NULL,
  `leaveStartDate` datetime NOT NULL,
  `leaveEndDate` datetime NOT NULL,
  `leaveHour` int(11) NOT NULL,
  `leaveTypeID` int(11) NOT NULL,
  `leaveReason` varchar(100) NOT NULL,
  `statusID` int(11) NOT NULL,
  `leaveApplyDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `leavelist`
--

INSERT INTO `leavelist` (`leaveID`, `empID`, `agentID`, `leaveStartDate`, `leaveEndDate`, `leaveHour`, `leaveTypeID`, `leaveReason`, `statusID`, `leaveApplyDate`) VALUES
(1, 1, 2, '2022-08-30 08:00:00', '2022-08-30 17:00:00', 8, 1, '私事', 3, '2022-09-22 13:01:42'),
(2, 2, 1, '2022-08-29 08:00:00', '2022-08-29 17:00:00', 8, 2, '私事', 3, '2022-09-22 13:01:42'),
(3, 3, 1, '2022-08-31 08:00:00', '2022-08-31 17:00:00', 8, 2, '私事', 3, '2022-09-28 15:01:42'),
(4, 3, 1, '2022-09-15 08:00:00', '2022-09-15 17:00:00', 8, 3, '感冒', 3, '2022-09-28 15:01:42'),
(5, 1, 2, '2022-09-13 08:00:00', '2022-09-13 17:00:00', 8, 3, '感冒', 3, '2022-10-11 09:29:30'),
(6, 2, 1, '2022-09-15 08:00:00', '2022-09-15 17:00:00', 8, 3, '感冒', 3, '2022-09-22 13:01:42');

-- --------------------------------------------------------

--
-- 資料表結構 `leavestatus`
--

CREATE TABLE `leavestatus` (
  `statusID` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `leavestatus`
--

INSERT INTO `leavestatus` (`statusID`, `status`) VALUES
(1, '待主管審核'),
(2, '待人事部審核'),
(3, '已完成'),
(4, '已取消'),
(5, '主管已駁回'),
(6, '人事部已駁回');

-- --------------------------------------------------------

--
-- 資料表結構 `leavetype`
--

CREATE TABLE `leavetype` (
  `leaveTypeID` int(11) NOT NULL,
  `leaveType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `leavetype`
--

INSERT INTO `leavetype` (`leaveTypeID`, `leaveType`) VALUES
(1, '特休'),
(2, '事假'),
(3, '病假'),
(4, '公假'),
(5, '喪假'),
(6, '生理假'),
(7, '婚假');

-- --------------------------------------------------------

--
-- 資料表結構 `orderlist`
--

CREATE TABLE `orderlist` (
  `orderItemID` int(11) NOT NULL,
  `orderItem` varchar(20) NOT NULL,
  `orderPrice` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `restaurantID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `orderlist`
--

INSERT INTO `orderlist` (`orderItemID`, `orderItem`, `orderPrice`, `image`, `restaurantID`) VALUES
(1, '懷舊滷肉飯', 119, '../upload/meal1.png', 1),
(2, '懷舊雞肉飯', 119, '../upload/meal2.png', 1),
(3, '飄香滷肉飯(小)', 66, '../upload/meal3.png', 1),
(4, '香腸滷肉飯便當', 80, '../upload/meal4.png', 1),
(5, '石板鹹豬肉便當', 80, '../upload/meal5.png', 1),
(6, '大麥克(全餐)', 130, '../upload/mcd1.png', 2),
(7, '麥克雞塊10塊(全餐)', 159, '../upload/mcd2.png', 2),
(8, '(辣)麥脆雞腿2塊(全餐)', 175, '../upload/mcd3.png', 2),
(9, '(原味)麥脆雞腿2塊(全餐)', 175, '../upload/mcd4.jpg\r\n', 2),
(10, '麥香雞', 100, '../upload/mcd5.jpg', 2),
(11, '雞魯飯', 55, '../upload/big1.jpg', 3),
(12, '肉羹', 59, '../upload/big2.jpg', 3),
(13, '炒麵', 45, '../upload/big3.jpg', 3),
(14, '炒米粉', 45, '../upload/big4.jpg', 3),
(15, '楊州炒飯', 90, '../upload/fried1.jpg', 4),
(16, '墨西哥香腸炒飯', 90, '../upload/fried2.jpg', 4),
(17, '泰式蝦仁炒飯', 95, '../upload/fried4.jpg', 4),
(18, '鍋燒意麵', 85, '../upload/fried3.jpg', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `orderrecord`
--

CREATE TABLE `orderrecord` (
  `orderID` int(11) NOT NULL,
  `empID` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `paymethod` varchar(20) NOT NULL,
  `orderItemID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `orderrecord`
--

INSERT INTO `orderrecord` (`orderID`, `empID`, `orderDate`, `paymethod`, `orderItemID`) VALUES
(1, 1, '2022-09-22', 'cash', 1),
(2, 2, '2022-10-03', 'cash', 3),
(3, 1, '2022-10-03', 'cash', 1),
(4, 3, '2022-10-03', 'cash', 5),
(5, 1, '2022-10-04', 'cash', 1),
(12, 4, '2022-10-04', 'salary', 3),
(13, 3, '2022-10-05', 'salary', 4),
(14, 2, '2022-10-06', 'salary', 6),
(15, 3, '2022-10-07', 'salary', 3),
(16, 3, '2022-10-08', 'salary', 4),
(17, 3, '2022-10-09', 'salary', 1),
(18, 3, '2022-10-10', 'salary', 5),
(19, 1, '2022-10-11', 'salary', 1),
(20, 3, '2022-10-12', 'salary', 2),
(21, 3, '2022-10-13', 'salary', 2),
(22, 1, '2022-10-05', 'salary', 1),
(23, 2, '2022-10-05', 'salary', 1),
(32, 3, '2022-10-19', 'salary', 1),
(33, 1, '2022-10-06', 'credit', 5),
(34, 2, '2022-10-10', 'cash', 2),
(36, 2, '2022-10-10', 'cash', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `package`
--

CREATE TABLE `package` (
  `packageID` int(11) NOT NULL,
  `empID` int(11) NOT NULL,
  `packageType` int(11) NOT NULL,
  `packageContent` varchar(20) DEFAULT NULL,
  `packageName` varchar(20) NOT NULL,
  `packagePhone` varchar(20) DEFAULT NULL,
  `packageAddr` varchar(50) DEFAULT NULL,
  `scheduledDate` datetime DEFAULT NULL,
  `actualDate` datetime DEFAULT NULL,
  `packageStatus` int(11) NOT NULL,
  `packageFinishTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `package`
--

INSERT INTO `package` (`packageID`, `empID`, `packageType`, `packageContent`, `packageName`, `packagePhone`, `packageAddr`, `scheduledDate`, `actualDate`, `packageStatus`, `packageFinishTime`) VALUES
(1, 1, 0, '顯卡', '史瑞克', '0225826514', '遠的要命王國', '2022-09-22 14:29:05', '2022-09-23 14:29:05', 0, NULL),
(2, 1, 0, '壞掉的顯卡', '史瑞克', '0225826514', '遠的要命王國', '2022-09-22 14:29:05', '2022-09-23 14:29:05', 1, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `payslip`
--

CREATE TABLE `payslip` (
  `salaryID` int(11) NOT NULL,
  `salaryDate` date NOT NULL,
  `empID` int(11) NOT NULL,
  `basicPay` int(11) NOT NULL,
  `workPay` int(11) NOT NULL,
  `attendanceBonus` int(11) NOT NULL,
  `mealPay` int(11) NOT NULL,
  `laborInsurance` int(11) NOT NULL,
  `healthInsurance` int(11) NOT NULL,
  `laborPension` int(11) NOT NULL,
  `mealCost` int(11) NOT NULL,
  `leaveCost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `payslip`
--

INSERT INTO `payslip` (`salaryID`, `salaryDate`, `empID`, `basicPay`, `workPay`, `attendanceBonus`, `mealPay`, `laborInsurance`, `healthInsurance`, `laborPension`, `mealCost`, `leaveCost`) VALUES
(1, '2022-09-30', 1, 27000, 3000, 2000, 1500, 766, 516, 2088, 2100, 1200),
(2, '2022-09-30', 2, 27000, 3000, 2000, 1500, 766, 516, 2088, 2100, 1200),
(3, '2022-09-30', 3, 25000, 2000, 1000, 1500, 663, 447, 1818, 2000, 1200),
(4, '2022-10-31', 3, 25000, 2000, 1000, 1500, 663, 447, 1818, 2380, 1200),
(5, '2022-08-31', 3, 25000, 2000, 1000, 1500, 663, 447, 1818, 2160, 1200),
(6, '2022-10-31', 1, 27000, 3000, 2000, 1500, 766, 516, 2088, 2856, 1200),
(7, '2022-08-31', 1, 27000, 3000, 2000, 1500, 766, 516, 2088, 2380, 1200),
(8, '2022-10-31', 2, 27000, 3000, 2000, 1500, 766, 516, 2088, 2160, 1200),
(9, '2022-08-31', 2, 27000, 3000, 2000, 1500, 766, 516, 2088, 2380, 1200);

-- --------------------------------------------------------

--
-- 資料表結構 `positionlist`
--

CREATE TABLE `positionlist` (
  `positionID` int(11) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `positionlist`
--

INSERT INTO `positionlist` (`positionID`, `position`) VALUES
(1, '主任'),
(2, '職員');

-- --------------------------------------------------------

--
-- 資料表結構 `punchlist`
--

CREATE TABLE `punchlist` (
  `punchID` int(11) NOT NULL,
  `empID` int(11) NOT NULL,
  `punchTime` datetime NOT NULL,
  `punchType` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `punchlist`
--

INSERT INTO `punchlist` (`punchID`, `empID`, `punchTime`, `punchType`) VALUES
(1, 1, '2022-09-21 07:25:02', '上班'),
(2, 1, '2022-09-21 17:25:02', '下班'),
(3, 1, '2022-10-04 08:35:15', '上班'),
(4, 1, '2022-10-04 19:36:12', '下班'),
(5, 1, '2022-10-05 08:47:03', '上班'),
(6, 1, '2022-10-05 18:47:11', '下班'),
(7, 1, '2022-10-06 08:34:37', '上班'),
(8, 1, '2022-10-06 17:22:26', '下班'),
(9, 3, '2022-10-04 07:50:08', '上班'),
(10, 3, '2022-10-04 17:39:47', '下班'),
(11, 3, '2022-10-05 07:47:08', '上班'),
(12, 3, '2022-10-05 17:49:02', '下班'),
(13, 3, '2022-10-06 07:52:31', '上班'),
(14, 3, '2022-10-06 17:39:34', '下班');

-- --------------------------------------------------------

--
-- 資料表結構 `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` int(11) NOT NULL,
  `restaurantName` varchar(20) NOT NULL,
  `applicant` varchar(20) DEFAULT NULL,
  `applicationDate` date DEFAULT NULL,
  `todayorder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `restaurantName`, `applicant`, `applicationDate`, `todayorder`) VALUES
(1, '鬍鬚張魯肉飯', '黃大倫', '2022-10-03', 1),
(2, '麥當勞', '黃大倫', '2022-10-03', 0),
(3, '大胖肉羹', '黃大倫', '2022-10-10', 0),
(4, '新揚州炒飯', '黃大倫', '2022-10-10', 0);

-- --------------------------------------------------------

--
-- 檢視表結構 `emp_order`
--
DROP TABLE IF EXISTS `emp_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `emp_order`  AS SELECT `o`.`orderID` AS `orderID`, `e`.`empID` AS `empID`, `e`.`name` AS `name`, `ol`.`orderItem` AS `orderItem`, `ol`.`orderPrice` AS `orderPrice`, `o`.`orderDate` AS `orderDate`, `o`.`paymethod` AS `paymethod` FROM ((`orderrecord` `o` left join `emp` `e` on((`e`.`empID` = `o`.`empID`))) left join `orderlist` `ol` on((`ol`.`orderItemID` = `o`.`orderItemID`)))  ;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `annoucement`
--
ALTER TABLE `annoucement`
  ADD PRIMARY KEY (`announcementID`),
  ADD KEY `empID` (`empID`),
  ADD KEY `deptID` (`deptID`);

--
-- 資料表索引 `deptlist`
--
ALTER TABLE `deptlist`
  ADD PRIMARY KEY (`deptID`);

--
-- 資料表索引 `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`empID`),
  ADD KEY `empdeptID` (`deptID`),
  ADD KEY `emppositionID` (`positionID`);

--
-- 資料表索引 `equipmentapply`
--
ALTER TABLE `equipmentapply`
  ADD PRIMARY KEY (`applyID`),
  ADD KEY `empID` (`empID`);

--
-- 資料表索引 `equipmentapplydetail`
--
ALTER TABLE `equipmentapplydetail`
  ADD PRIMARY KEY (`applyID`,`equipmentID`),
  ADD KEY `equipmentID` (`equipmentID`),
  ADD KEY `applyID` (`applyID`);

--
-- 資料表索引 `equipmentlist`
--
ALTER TABLE `equipmentlist`
  ADD PRIMARY KEY (`equipmentID`);

--
-- 資料表索引 `leavelist`
--
ALTER TABLE `leavelist`
  ADD PRIMARY KEY (`leaveID`),
  ADD KEY `empID` (`empID`),
  ADD KEY `agentID` (`agentID`),
  ADD KEY `leaveTypeID` (`leaveTypeID`),
  ADD KEY `statusID` (`statusID`);

--
-- 資料表索引 `leavestatus`
--
ALTER TABLE `leavestatus`
  ADD PRIMARY KEY (`statusID`);

--
-- 資料表索引 `leavetype`
--
ALTER TABLE `leavetype`
  ADD PRIMARY KEY (`leaveTypeID`);

--
-- 資料表索引 `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`orderItemID`),
  ADD KEY `restaurantID` (`restaurantID`);

--
-- 資料表索引 `orderrecord`
--
ALTER TABLE `orderrecord`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `empID` (`empID`),
  ADD KEY `orderItem` (`orderItemID`);

--
-- 資料表索引 `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packageID`),
  ADD KEY `empID` (`empID`);

--
-- 資料表索引 `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`salaryID`),
  ADD KEY `empID` (`empID`);

--
-- 資料表索引 `positionlist`
--
ALTER TABLE `positionlist`
  ADD PRIMARY KEY (`positionID`);

--
-- 資料表索引 `punchlist`
--
ALTER TABLE `punchlist`
  ADD PRIMARY KEY (`punchID`),
  ADD KEY `empID` (`empID`);

--
-- 資料表索引 `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantID`),
  ADD UNIQUE KEY `restaurantName` (`restaurantName`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `annoucement`
--
ALTER TABLE `annoucement`
  MODIFY `announcementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `deptlist`
--
ALTER TABLE `deptlist`
  MODIFY `deptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `emp`
--
ALTER TABLE `emp`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipmentapply`
--
ALTER TABLE `equipmentapply`
  MODIFY `applyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipmentlist`
--
ALTER TABLE `equipmentlist`
  MODIFY `equipmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `leavelist`
--
ALTER TABLE `leavelist`
  MODIFY `leaveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `orderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderrecord`
--
ALTER TABLE `orderrecord`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `package`
--
ALTER TABLE `package`
  MODIFY `packageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `payslip`
--
ALTER TABLE `payslip`
  MODIFY `salaryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `positionlist`
--
ALTER TABLE `positionlist`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `punchlist`
--
ALTER TABLE `punchlist`
  MODIFY `punchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `annoucement`
--
ALTER TABLE `annoucement`
  ADD CONSTRAINT `annoucement_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`),
  ADD CONSTRAINT `annoucement_ibfk_2` FOREIGN KEY (`deptID`) REFERENCES `deptlist` (`deptID`);

--
-- 資料表的限制式 `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `empdeptID` FOREIGN KEY (`deptID`) REFERENCES `deptlist` (`deptID`),
  ADD CONSTRAINT `emppositionID` FOREIGN KEY (`positionID`) REFERENCES `positionlist` (`positionID`);

--
-- 資料表的限制式 `equipmentapply`
--
ALTER TABLE `equipmentapply`
  ADD CONSTRAINT `equipmentapply_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`);

--
-- 資料表的限制式 `equipmentapplydetail`
--
ALTER TABLE `equipmentapplydetail`
  ADD CONSTRAINT `equipmentapplydetail_ibfk_1` FOREIGN KEY (`applyID`) REFERENCES `equipmentapply` (`applyID`),
  ADD CONSTRAINT `equipmentapplydetail_ibfk_2` FOREIGN KEY (`equipmentID`) REFERENCES `equipmentlist` (`equipmentID`);

--
-- 資料表的限制式 `leavelist`
--
ALTER TABLE `leavelist`
  ADD CONSTRAINT `leavelist_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`),
  ADD CONSTRAINT `leavelist_ibfk_2` FOREIGN KEY (`agentID`) REFERENCES `emp` (`empID`),
  ADD CONSTRAINT `leavelist_ibfk_3` FOREIGN KEY (`leaveTypeID`) REFERENCES `leavetype` (`leaveTypeID`),
  ADD CONSTRAINT `leavelist_ibfk_4` FOREIGN KEY (`statusID`) REFERENCES `leavestatus` (`statusID`);

--
-- 資料表的限制式 `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderrestaurant_id` FOREIGN KEY (`restaurantID`) REFERENCES `restaurant` (`restaurantID`);

--
-- 資料表的限制式 `orderrecord`
--
ALTER TABLE `orderrecord`
  ADD CONSTRAINT `orderItem` FOREIGN KEY (`orderItemID`) REFERENCES `orderlist` (`orderItemID`),
  ADD CONSTRAINT `orderrecord_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`);

--
-- 資料表的限制式 `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`);

--
-- 資料表的限制式 `payslip`
--
ALTER TABLE `payslip`
  ADD CONSTRAINT `payslip_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`);

--
-- 資料表的限制式 `punchlist`
--
ALTER TABLE `punchlist`
  ADD CONSTRAINT `punchlist_ibfk_1` FOREIGN KEY (`empID`) REFERENCES `emp` (`empID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
