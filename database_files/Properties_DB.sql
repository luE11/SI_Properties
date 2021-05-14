SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `PROPERTIES_DB`
--

-- --------------------------------------------------------

--
-- ADMINISTRATORS Table
--

DROP TABLE IF EXISTS `payment_histories`;
DROP TABLE IF EXISTS `administrators`;
DROP TABLE IF EXISTS `reservations`;
DROP TABLE IF EXISTS `residents`;
DROP TABLE IF EXISTS `periods_of_time`;
DROP TABLE IF EXISTS `places`;
DROP TABLE IF EXISTS `bills`;
DROP TABLE IF EXISTS `properties`;
DROP TABLE IF EXISTS `owners`;

CREATE TABLE `administrators` (
  `admin_id`	 	SERIAL,
  `admin_user`	 	varchar(30) NOT NULL,
  `admin_pwd`	 	varchar(30) NOT NULL,
  CONSTRAINT adm_pk_ida PRIMARY KEY (admin_id)
);

INSERT INTO `administrators` (admin_user, admin_pwd) VALUES ('admin', 'admin');

--
-- OWNERS Table
--


CREATE TABLE `owners` (
  `owner_id`	 	            serial,
  `owner_phone`	 	          varchar(16) NOT NULL,
  `owner_user`	 	          varchar(30) NOT NULL,
  `owner_pwd`	 	            varchar(30) NOT NULL,
  `owner_account_status`	 	varchar(18) DEFAULT 'CREADO',
  CONSTRAINT own_pk_ido PRIMARY KEY (owner_id)
);

INSERT INTO `owners` (owner_phone, owner_user, owner_pwd) VALUES ('311 111 1111', 'owner', 'owner');
INSERT INTO `owners` (owner_phone, owner_user, owner_pwd) VALUES ('322 222 1111', 'Luis', 'owner');

--
-- PROPERTIES Table
--


CREATE TABLE `properties` (
  `property_id`	 	  SERIAL,
  `property_name`	    varchar(30) NOT NULL,
  `property_address`	varchar(30) NOT NULL,
  `property_block`    varchar(4)  NOT NULL,
  `apartment`    	    varchar(4)  NOT NULL,
  `owner_id`	      BIGINT     UNSIGNED,
  CONSTRAINT pro_pk_idp PRIMARY KEY (property_id)
);

ALTER TABLE `properties`
ADD FOREIGN KEY (owner_id) REFERENCES owners(owner_id);

INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento empresarial', 'Calle 7A #14-98', '3B', '001', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento Suite Presidencial', 'Calle 7A #14-98', '1A', '601', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Calle 4 #11-4', '4A', '101', 1);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Calle 19 #11-4', '4B', '102', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Calle 4 #11-8', '4C', '103', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Cra 4 #11-4', '2A', '104', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Calle 2 #11-4', '4A', '105', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Calle 4 #11-16', '7C', '106', 2);
INSERT INTO `properties` (property_name, property_address, property_block, apartment, owner_id) 
      VALUES ('Apartamento duplex', 'Calle 4 #112-4', '4A', '107', 2);

--
-- RESIDENTS Table
--


CREATE TABLE `residents` (
  `resident_id` 	SERIAL,
  `resident_name` 	varchar(30) NOT NULL,
  `resident_lname` 	varchar(30) NOT NULL,
  `resident_phone` 	varchar(16) NOT NULL,
  `property_id` 	      BIGINT     UNSIGNED,
  CONSTRAINT res_pk_idr PRIMARY KEY (resident_id)
);

ALTER TABLE `residents`
ADD FOREIGN KEY (property_id) REFERENCES properties(property_id);

INSERT INTO `residents` (resident_name, resident_lname, resident_phone, property_id) 
      VALUES ('Luis', 'Martinez', '329 124 3673', 1);

--
-- PLACES Table
--


CREATE TABLE `places` (
  `place_id` 	      SERIAL,
  `place_name` 	      varchar(30) NOT NULL,
  `property_id` 	      BIGINT     UNSIGNED,
  `available`        char(1)     DEFAULT 'A',
  `price_hour`          numeric(10) NOT NULL,
  CONSTRAINT pla_pk_idp PRIMARY KEY (place_id)
);

ALTER TABLE `places`
ADD FOREIGN KEY (property_id) REFERENCES properties(property_id);

INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Salon Comunal', 1, 10000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Cancha futbol', 1, 2000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Cancha baloncesto', 1, 2000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Sauna', 2, 5000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Jacuzzi', 1, 5000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Zona de parrillada', 2, 20000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Centro de convenciones', 2, 50000);
INSERT INTO `places` (place_name, property_id, price_hour) 
      VALUES ('Auditorio principal', 2, 45000);

--
-- BILLS Table
--


CREATE TABLE `bills` (
  `bill_id`             serial              ,
  `property_id`         BIGINT     UNSIGNED,
  `bill_description` 	  varchar(50) NOT NULL,
  `bill_cost`           numeric(10)  NOT NULL,
  `limit_date`          datetime    NOT NULL,
  `payment_status`      char(2)     NOT NULL,
  `pending_payment`     numeric(10)     NOT NULL,  
  CONSTRAINT bil_pk_idb PRIMARY KEY (bill_id)
);

ALTER TABLE `bills`
ADD FOREIGN KEY (property_id) REFERENCES properties(property_id);

--
-- RESERVATIONS Table
--


CREATE TABLE `reservations` (
  `resident_id`         BIGINT     UNSIGNED,
  `place_id`            BIGINT     UNSIGNED,
  `bill_id`             BIGINT     UNSIGNED,
  `reservation_date`    datetime    NOT NULL,
  `hour_quantity`       numeric(2)  NOT NULL,
  `reservation_price`   numeric(10) NOT NULL,
  `reservation_status`  char(1)     NOT NULL,
  CONSTRAINT res_pk_id PRIMARY KEY (resident_id, place_id, bill_id)
);

ALTER TABLE `reservations`
ADD FOREIGN KEY (resident_id) REFERENCES residents(resident_id),
ADD FOREIGN KEY (place_id) REFERENCES places(place_id),
ADD FOREIGN KEY (bill_id) REFERENCES bills(bill_id);

--
-- PERIODS_OF_TIME Table
--


CREATE TABLE `periods_of_time` (
  `period_id` 	  serial,
  `period_year`   numeric(4)  NOT NULL,
  `period_month`   numeric(2)  NOT NULL,
  CONSTRAINT per_pk_idp PRIMARY KEY (period_id)
);

--
-- PAYMENT_HISTORIES Table
--

CREATE TABLE `payment_histories` (
  `bill_id`             BIGINT       UNSIGNED,
  `period_id`           BIGINT       UNSIGNED,
  `payment_quantity`    numeric(10)   NOT NULL,
  `pending_payment`     numeric(10)   NOT NULL,
  CONSTRAINT phi_pk_id PRIMARY KEY (bill_id, period_id)
);

ALTER TABLE `payment_histories`
ADD FOREIGN KEY (bill_id) REFERENCES bills(bill_id),
ADD FOREIGN KEY (period_id) REFERENCES periods_of_time(period_id);

COMMIT;