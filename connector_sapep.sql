-- ============================================================================
-- Autor      : SIA
-- Fecha      : 14/07/2015
-- Version    : 1.0
-- Descripcion: Script que permite dar de alta el conector de tipo SAPEP
-- y su mapa de pol�ticas (campos que aparecen el en fichero SAPUMEConnectorService.properties)
-- ============================================================================

INSERT INTO IAMUSER.METADATA_TYPE (TYPE_ID,DESCRIPTION,ACTIVE,SYNC_MANAGED_SYS,GROUPING,IS_BINARY,IS_SENSITIVE) 
VALUES ('SAPEP_CONNECTOR','SAPEP Connector','Y','Y','','N','N');

INSERT INTO IAMUSER.LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) 
VALUES ('ENSAPEP_CONNECTOR','1','SAPEP_CONNECTOR','MetadataTypeEntity.displayNameMap','SAPEP Connector');

INSERT INTO IAMUSER.LANGUAGE_MAPPING (ID,LANGUAGE_ID,REFERENCE_ID,REFERENCE_TYPE,TEXT_VALUE) 
VALUES ('ESSAPEP_CONNECTOR','4','SAPEP_CONNECTOR','MetadataTypeEntity.displayNameMap','Conector SAPEP');
COMMIT;

INSERT INTO IAMUSER.PROVISION_CONNECTOR (CONNECTOR_ID,NAME,METADATA_TYPE_ID,STD_COMPLIANCE_LEVEL,CLIENT_COMM_PROTOCOL,SERVICE_URL,SERVICE_NAMESPACE,SERVICE_PORT,SERVICE_WSDL,CLASS_NAME,HOST,PORT,CONNECTOR_INTERFACE) 
VALUES ('160','SAPEP CONNECTOR','SAPEP_CONNECTOR',null,'CLEAR','localhost:9080/SAPUMEConnector/SAPUMEConnectorService','http://www.openiam.org/service/connector',null,null,null,null,null,'LOCAL');
COMMIT;

-- USER POLICY MAP
INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3100','104','sapep-assignedGroups','Grupos asignados',1,SYSDATE,'3000','provision/sapep/assignedGroups.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3101','104','sapep-assignedRoles','Roles asignados',1,SYSDATE,'3000','provision/sapep/assignedRoles.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3102','104','sapep-city','Ciudad',1,SYSDATE,'3000','provision/sapep/city.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3103','104','sapep-country','Pais',1,SYSDATE,'3000','provision/sapep/country.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3104','104','sapep-department','Departamento',1,SYSDATE,'3000','provision/sapep/department.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3105','104','sapep-displayname','Nombre a mostrar',1,SYSDATE,'3000','provision/sapep/displayName.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3106','104','sapep-email','Correo electr�nico',1,SYSDATE,'3000','provision/sapep/email.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3107','104','sapep-fax','Fax',1,SYSDATE,'3000','provision/sapep/fax.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3108','104','sapep-firstName','Nombre',1,SYSDATE,'3000','provision/sapep/firstName.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3109','104','sapep-id','Identificador',1,SYSDATE,'3000','provision/sapep/id.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3110','104','sapep-isLocked','Bloqueado',1,SYSDATE,'3000','provision/sapep/isLocked.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3111','104','sapep-jobTitle','Titulaci�n profesional',1,SYSDATE,'3000','provision/sapep/jobTitle.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3112','104','sapep-lastName','Apellido',1,SYSDATE,'3000','provision/sapep/lastName.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3113','104','sapep-locale','Localizaci�n',1,SYSDATE,'3000','provision/sapep/locale.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3114','104','sapep-logonName','Usuario de logon',1,SYSDATE,'3000','provision/sapep/logonName.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3115','104','sapep-mobile','Movil',1,SYSDATE,'3000','provision/sapep/mobile.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3116','104','sapep-password','Contrase�a',1,SYSDATE,'3000','provision/sapep/password.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3117','104','sapep-salutation','Saludo',1,SYSDATE,'3000','provision/sapep/salutation.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3118','104','sapep-securityPolicy','Pol�tica de seguridad',1,SYSDATE,'3000','provision/sapep/securityPolicy.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3119','104','sapep-state','Provincia',1,SYSDATE,'3000','provision/sapep/state.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3120','104','sapep-streetAddress','Direcci�n',1,SYSDATE,'3000','provision/sapep/streetAddress.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3121','104','sapep-telephone','Tel�fono',1,SYSDATE,'3000','provision/sapep/telephone.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3122','104','sapep-timeZone','Zona horaria',1,SYSDATE,'3000','provision/sapep/timeZone.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3123','104','sapep-title','T�tulo',1,SYSDATE,'3000','provision/sapep/title.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3124','104','sapep-validFrom','V�lido desde',1,SYSDATE,'3000','provision/sapep/validFrom.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3125','104','sapep-validTo','V�lido hasta',1,SYSDATE,'3000','provision/sapep/validTo.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3126','104','sapep-zip','C�digo postal',1,SYSDATE,'3000','provision/sapep/zip.groovy','',1);

COMMIT;

-- GROUP POLICY MAP
INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3130','104','sapep-uniqueName','Nombre �nico de grupo',1,SYSDATE,'3000','provision/sapep/group/uniqueName.groovy','',1);

INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT,ENABLEMENT) 
VALUES ('3131','104','sapep-description','Descripci�n del grupo',1,SYSDATE,'3000','provision/sapep/group/description.groovy','',1);

COMMIT;














































