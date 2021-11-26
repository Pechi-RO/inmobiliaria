-- ---
-- Table 'propietario'
-- 
-- ---

DROP TABLE IF EXISTS `propietario`;
		
CREATE TABLE `propietario` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `tlfn` VARCHAR(12) NULL DEFAULT NULL,
  `exclusividad` ENUM('si','no') NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'casa'
-- 
-- ---

DROP TABLE IF EXISTS `casa`;
		
CREATE TABLE `casa` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `direccion` VARCHAR(50) NOT NULL ,
  `precio` INTEGER NOT NULL ,
  `id_propietario` INTEGER NOT NULL ,
    `vendida` ENUM('vendida','no vendida') NOT NULL,

    constraint fk_propietario_id foreign key(id_propietario) references propietario(id)
     on delete cascade on update cascade

  PRIMARY KEY (`id`)
);
