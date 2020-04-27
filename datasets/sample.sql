BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0011g00000mB4dZAAS','Phil Adams','');
INSERT INTO "Account" VALUES('0011g00000mAyvZAAS','Reasors charitable trust','');
INSERT INTO "Account" VALUES('0011g00000mB4qYAAS','Sally Hughes','');
INSERT INTO "Account" VALUES('0011g00000mB4qZAAS','Feed the people','');
INSERT INTO "Account" VALUES('0011g00000mAzeQAAS','Food Generation services','');
INSERT INTO "Account" VALUES('0011g00000mB4xJAAS','No person hungry','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a001g000003xA3bAAE','milk','2020-04-30','Refrigerated','a011g00000BtmvDAAR');
INSERT INTO "Delivery_Item__c" VALUES('a001g000003xA3gAAE','eggs','2020-05-09','Refrigerated','a011g00000BtmvDAAR');
INSERT INTO "Delivery_Item__c" VALUES('a001g000003xA3hAAE','ground beef','2020-04-25','Refrigerated','a011g00000Btmv8AAB');
INSERT INTO "Delivery_Item__c" VALUES('a001g000003xA3WAAU','bread','2020-04-30','Non-refrigerated','a011g00000BtmvDAAR');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a011g00000BtmvDAAR','2020-04-15T19:00:00.000Z','Canceled','0011g00000mB4xJAAS');
INSERT INTO "Delivery__c" VALUES('a011g00000BtmutAAB','2020-03-10T19:00:00.000Z','Completed','0011g00000mB4qZAAS');
INSERT INTO "Delivery__c" VALUES('a011g00000Btmv8AAB','2020-05-13T19:00:00.000Z','Requested','0011g00000mAyvZAAS');
INSERT INTO "Delivery__c" VALUES('a011g00000BtmuyAAB','2020-04-07T19:00:00.000Z','Completed','0011g00000mAzeQAAS');
INSERT INTO "Delivery__c" VALUES('a011g00000Btmv3AAB','2020-04-29T19:00:00.000Z','Scheduled','0011g00000mB4qYAAS');
INSERT INTO "Delivery__c" VALUES('a011g00000BtmuoAAB','2020-05-21T19:00:00.000Z','Requested','0011g00000mAyvZAAS');
INSERT INTO "Delivery__c" VALUES('a011g00000BtmujAAB','2020-04-27T19:00:00.000Z','Scheduled','0011g00000mB4xJAAS');
COMMIT;
