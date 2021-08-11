-- Copyright (C) 2021 ---Put here your own copyright and developer email---
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see http://www.gnu.org/licenses/.

ALTER TABLE llx_expedition_package MODIFY COLUMN rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL;
ALTER TABLE llx_expedition_package drop COLUMN fk_expedition;
ALTER TABLE llx_expedition_package ADD COLUMN entity integer DEFAULT 1 NOT NULL AFTER rowid;
ALTER TABLE llx_expedition_package ADD COLUMN ref varchar(128) DEFAULT '(PROV)' NOT NULL;
ALTER TABLE llx_expedition_package ADD COLUMN ref_supplier varchar(128);
ALTER TABLE llx_expedition_package ADD COLUMN fk_soc integer;
ALTER TABLE llx_expedition_package ADD COLUMN fk_supplier integer;
ALTER TABLE llx_expedition_package ADD COLUMN fk_project integer;
ALTER TABLE llx_expedition_package ADD COLUMN note_public text AFTER tail_lift;
ALTER TABLE llx_expedition_package ADD COLUMN note_private text;
ALTER TABLE llx_expedition_package ADD COLUMN date_creation datetime NOT NULL;
ALTER TABLE llx_expedition_package ADD COLUMN tms timestamp;
ALTER TABLE llx_expedition_package ADD COLUMN fk_user_creat integer NOT NULL;
ALTER TABLE llx_expedition_package ADD COLUMN fk_user_modif integer;
ALTER TABLE llx_expedition_package ADD COLUMN last_main_doc varchar(255);
ALTER TABLE llx_expedition_package ADD COLUMN import_key varchar(14);
ALTER TABLE llx_expedition_package ADD COLUMN model_pdf varchar(255);
ALTER TABLE llx_expedition_package ADD COLUMN status smallint NOT NULL;
ALTER TABLE llx_expedition_package DROP COLUMN rang;
ALTER TABLE llx_expedition_packagedet DROP COLUMN fk_product_lot;
ALTER TABLE llx_expedition_packagedet ADD COLUMN product_lot_batch varchar(128);


