--Creating Tables and Inserting records:
-- 1) Creating INDICATION_LIST Table

Create table INDICATION_LIST
    (In_ID          INT         NOT NULL,
    Drug_ID         INT         NOT NULL,
    Indication      VARCHAR(50) NOT NULL,
    Therapeutic_Area VARCHAR(50) NOT NULL,
    Patient_Group   VARCHAR(10) NOT NULL,
    CONSTRAINT      IN_PK       PRIMARY KEY(In_ID),
    CONSTRAINT      DRUGID_FK   FOREIGN KEY(Drug_ID) REFERENCES DRUG(Drug_ID)
);

-- Inserting into INDICATION_LIST Table
INSERT INTO INDICATION_LIST VALUES('2020','12','Abdominal crampy pains', 'Cardiovascular', 'hp');
INSERT INTO INDICATION_LIST VALUES('2021','20','Abdominal pain', 'Cardiovascular', 'hp');
INSERT INTO INDICATION_LIST VALUES('2022','17','Abdominal pain upper', 'Metabolism', 'hp');
INSERT INTO INDICATION_LIST VALUES('2023','19','Abdominal rigidity', 'Metabolism', 'hp');
INSERT INTO INDICATION_LIST VALUES('2024','21','Acute embolism', 'Cardiovascular', 'hp');

INSERT INTO INDICATION_LIST VALUES('2025','16','Acute Leukemia', 'Oncology', 'hp');
INSERT INTO INDICATION_LIST VALUES('2026','23','Acute myocardial infarction', 'Cardiovascular', 'hp');
INSERT INTO INDICATION_LIST VALUES('2027','25','Acute Psychosis', 'Central Nervous System', 'hp');
INSERT INTO INDICATION_LIST VALUES('2028','12','Afib', 'Cardiovascular', 'hp');
INSERT INTO INDICATION_LIST VALUES('2029','25','Alzheimer disease', 'Central Nervous System', 'hp');

INSERT INTO INDICATION_LIST VALUES('2030','13','Ankylosing spondylitis', 'Immunology', 'hp');
INSERT INTO INDICATION_LIST VALUES('2031','31','Apoplexy', 'Cardiovascular', 'hp');
INSERT INTO INDICATION_LIST VALUES('2032','21','Arterial thrombosis', 'Cardiovascular', 'hp');
INSERT INTO INDICATION_LIST VALUES('2033','15','Asthma', 'Respiratory', 'hp');
INSERT INTO INDICATION_LIST VALUES('2034','23','Atrial fibrillation', 'Cardiovascular', 'hp');

INSERT INTO INDICATION_LIST VALUES('2035','25','Benign prostatic hyperplasia', 'Central Nervous System', 'hp');
INSERT INTO INDICATION_LIST VALUES('2036','25','Benign prostatic hypertrophy', 'Central Nervous System', 'hp');
INSERT INTO INDICATION_LIST VALUES('2037','29','Biliary colic', 'Metabolism', 'hp');
INSERT INTO INDICATION_LIST VALUES('2038','25','personality disorder', 'Central Nervous System', 'hp');
INSERT INTO INDICATION_LIST VALUES('2039','16','Breast Cancer', 'Oncology', 'hp');

SELECT * FROM INDICATION_LIST;

=====================================================================================================

-- Creating CHEMICAL_COMBINATION Table:

Create table CHEMICAL_COMBINATION
    (Comb_ID                INT         NOT NULL PRIMARY KEY,
    Chemical_Combination    VARCHAR(50) NOT NULL,
    C_Name                  VARCHAR(50) NOT NULL,
    Display_Name            VARCHAR(25) NOT NULL
);

-- Inserting records into CHEMICAL_COMBINATION Table:

INSERT INTO CHEMICAL_COMBINATION VALUES('104', 'alteferdlase','altepqase', 'CardioTab');
INSERT INTO CHEMICAL_COMBINATION VALUES('132', 'pramipexole monohydrate', 'pramipexole', 'CNS Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('136', 'telmisartas', 'telmisartzsa', 'CardioTab');
INSERT INTO CHEMICAL_COMBINATION VALUES('190', 'tiotropiumopoi','tiotropiumZest', 'Resp Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('217', 'tenectemotoplase', 'tenecteplawerease','CardioTab');

INSERT INTO CHEMICAL_COMBINATION VALUES('243', 'tipranavhexair', 'tipranavhexaair', 'Immunity Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('252', 'dabigatran','dabigatranpallaz', 'CardioTab');
INSERT INTO CHEMICAL_COMBINATION VALUES('352', 'afatinib','afatinib', 'Cancer Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('358', 'linagliptintea','linaglimptin', 'Metabolic Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('361', 'olodaterolzest', 'olodatetrarol', 'Resp Drug');

INSERT INTO CHEMICAL_COMBINATION VALUES('367', 'olodatnil','olodaterolnil', 'Resp Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('373', 'empagliflomisinzin','empagliflozinolee', 'Metabolic Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('398', 'nintedaniniz','nintedanisolp', 'Resp Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('422', 'idarucizumdac','idarucizumacid', 'CardioTab');
INSERT INTO CHEMICAL_COMBINATION VALUES('508', 'ipratrop + salbutamolin','ipratropiumZOL', 'Resp Drug');

INSERT INTO CHEMICAL_COMBINATION VALUES('519', 'telmisarthartan + amlodipinetanix','telmisartan', 'CardioTab');
INSERT INTO CHEMICAL_COMBINATION VALUES('521', 'tiotropium + olozitralaterol','tiotropigioen', 'Resp Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('526', 'empaglozin + linagptin',  'empaglozin','Metabolic Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('527', 'empagliflosqaaer + metfin', 'empagliflozination', 'Metabolic Drug');
INSERT INTO CHEMICAL_COMBINATION VALUES('528', 'linaglin + metfomin','linagliZOLP', 'Metabolic Drug');



SELECT * FROM CHEMICAL_COMBINATION;

===============================================================================================================================
-- Creating drug Table:

CREATE TABLE DRUG(
    Drug_ID     INT         NOT NULL,
    Drug_Type   VARCHAR(25) NOT NULL,
    Drug_Name   VARCHAR(30) NOT NULL,
    Comb_ID     INT         NOT NULL,
    CONSTRAINT  DrugPK      PRIMARY KEY(Drug_ID),
    CONSTRAINT  Comb_IDFK   FOREIGN KEY(Comb_ID) REFERENCES CHEMICAL_COMBINATION(Comb_ID)
);


SELECT * FROM Drug;
-- INSERTING INTO DRUG Table:

INSERT INTO DRUG VALUES('12', 'Global Brand','ACTILYSILVA', '104');
INSERT INTO DRUG VALUES('13', 'Global Brand','APTISIVUS', '243');
INSERT INTO DRUG VALUES('14', 'Global Brand','COMBILATIVENT', '508');
INSERT INTO DRUG VALUES('15', 'Global Brand','FAVY-SRIVASISO', '190');
INSERT INTO DRUG VALUES('16', 'Global Brand','GIOQUILTRIF', '352');

INSERT INTO DRUG VALUES('17', 'Local Brand','GLYXAMOBI', '526');
INSERT INTO DRUG VALUES('18', 'Local Brand','JARDILONCE','373');
INSERT INTO DRUG VALUES('19', 'Global Brand','JENTADUENOTO', '528');
INSERT INTO DRUG VALUES('20', 'Global Brand','METALYQE', '217');
INSERT INTO DRUG VALUES('21', 'Global Brand','MICARDIB', '136');

INSERT INTO DRUG VALUES('22', 'Global Brand','OFEVNIROB', '398');
INSERT INTO DRUG VALUES('23', 'Global Brand','PRADAXASHAD', '252');
INSERT INTO DRUG VALUES('24', 'Global Brand','PRAXWATBIND', '500');
INSERT INTO DRUG VALUES('25', 'Local Brand','SIFTROL', '132');
INSERT INTO DRUG VALUES('26', 'Global Brand','SPIOTROLTO','521');

INSERT INTO DRUG VALUES('27', 'Global Brand','SPIRISILVA', '560');
INSERT INTO DRUG VALUES('28', 'Global Brand','STRIDEVERDI','361');
INSERT INTO DRUG VALUES('29', 'Global Brand','SYNJARDLY', '527');
INSERT INTO DRUG VALUES('30', 'Global Brand','TARAJANTA', '358');
INSERT INTO DRUG VALUES('31', 'Global Brand','TWAWEYNSTA','519');


SELECT * FROM Drug;

ALTER TABLE Drug
DROP COLUMN Therapeutic_Area;
===========================================================================================================================

-- Creating STRENGTH Table:

CREATE TABLE STRENGTH(
    DrugStrength_ID INT NOT     NULL,
    Drug_ID         INT NOT     NULL,
    FormSName       VARCHAR(50) NOT NULL,
    Strength        INT         NOT NULL,
    Dosage          VARCHAR(30) NOT NULL,
    CONSTRAINT      Strength_PK PRIMARY KEY(DrugStrength_ID),
    CONSTRAINT      Drug_FK     FOREIGN KEY(Drug_ID) REFERENCES Drug(Drug_ID));


-- Inserting into STRENGTH Table:
INSERT INTO STRENGTH VALUES('7', '12','ACTILYSEzol DRY INF.AMPOULE','250', 'DRY INF.AMPOULE');
INSERT INTO STRENGTH VALUES('8', '16','GIOTRInoiroF FILMCOATED TABS','250', 'FILMCOATED TABS');
INSERT INTO STRENGTH VALUES('9', '16','GIOTRInoiroF TABS','300', 'FILMCOATED TABS');
INSERT INTO STRENGTH VALUES('10', '16','GIOTRI FILMCOATED TABS','40', 'FILMCOATED TABS');
INSERT INTO STRENGTH VALUES('11', '16','noiroF FILMCOATED TABS','50', 'FILMCOATED TABS');

INSERT INTO STRENGTH VALUES('12', '25','SIFRRONl 35 5MG CONTR.REL.TABS','35', 'CONTR.REL.TABS');
INSERT INTO STRENGTH VALUES('13', '25','SIRONl 75 MG CONTR.REL.TABS','75', 'CONTR.REL.TABS');
INSERT INTO STRENGTH VALUES('14', '25','SIRONl 15 MG CONTR.REL.TABS','15', 'CONTR.REL.TABS');
INSERT INTO STRENGTH VALUES('15', '25','SIFRROl 22 5MG CONTR.REL.TABS','22', 'CONTR.REL.TABS');
INSERT INTO STRENGTH VALUES('16', '25','SIONl 3 MG CONTR.REL.TABS','3', 'CONTR.REL.TABS');

INSERT INTO STRENGTH VALUES('17', '25','FRRONl 4 MG CONTR.REL.TABS','4', 'CONTR.REL.TABS');
INSERT INTO STRENGTH VALUES('18', '25','SIFRl 5 MG CONTR.REL.TABS','5', 'CONTR.REL.TABS');
INSERT INTO STRENGTH VALUES('19', '25','SIRONl 12 MG TABLETS','12', 'AA TABLETS');
INSERT INTO STRENGTH VALUES('20', '25','SIFRRO 25 MG TABLETS','25', 'AA TABLETS');
INSERT INTO STRENGTH VALUES('21', '25','ONl 5 MG TABLETS','5', 'AA TABLETS');

INSERT INTO STRENGTH VALUES('22', '25','SIFRRONlsos 75 MG TABLETS','75', 'AA TABLETS');
INSERT INTO STRENGTH VALUES('23', '25','sossid 1MG TABLETS','1', 'AA TABLETS');
INSERT INTO STRENGTH VALUES('24', '25','SIFRONl 15 MG TABLETS','15', 'AA TABLETS');
INSERT INTO STRENGTH VALUES('25', '26','SPIOLTO 5G METERED DOSE LIQUI','5', 'METERED DOSE LIQUI');
INSERT INTO STRENGTH VALUES('26', '27','SPIRIVA 18 MG INHALER CAPSULE','18', 'INHALER CAPSULE');


=================================================================================================================================

--Creating VIEW for mainly focused Therapeutic areas:

CREATE VIEW Top_Therapeutic_Areas (Therapetic_Area,Drugs, Symptoms) AS
    SELECT I.Therapeutic_Area, D.Drug_Name, I.Indication
    FROM indication_list I, Drug D
    WHERE I.Therapeutic_Area = 'Central Nervous System' AND I.Drug_ID = D.Drug_ID 
    UNION
    SELECT I.Therapeutic_Area, D.Drug_Name, I.Indication
    FROM indication_list I, Drug D
    WHERE I.Therapeutic_Area = 'Cardiovascular' AND I.Drug_ID = D.Drug_ID 
    ORDER BY Therapeutic_Area;

Select * from Top_Therapeutic_Areas;

===========================================================================================================================

--Creating VIEW to easy access to Local Branded drugs:
								     
CREATE VIEW LocalBrand_Drugs(Drug_Type, Drug_Name,Chemical_Combination, Display_Name) AS
    SELECT D.drug_Type, D.Drug_Name, C.Chemical_Combination, C.Display_Name
    FROM DRUG D INNER JOIN  CHEMICAL_COMBINATION C
    ON  D.Comb_ID=C.Comb_ID
    WHERE Drug_Type= 'Local Brand';


SELECT * FROM LocalBrand_Drugs;

=========================================================================================================================
--Creating Trigger for adding indications:

CREATE OR REPLACE TRIGGER Add_Indications
BEFORE INSERT ON INDICATION_LIST
FOR EACH ROW

DECLARE
rowcount  INT;

BEGIN

SELECT COUNT(*) INTO rowcount
FROM INDICATION_LIST
WHERE (Therapeutic_Area=:new.Therapeutic_Area);

IF (rowcount=1) THEN
    INSERT INTO INDICATION_LIST (In_ID, Drug_ID, Indication, Therapeutic_Area, Patient_Group)
    VALUES('','','',:new.Therapeutic_Area,'');
ELSIF (rowcount=0) THEN
    DBMS_OUTPUT.PUT_LINE('You should add indications only for given therapeutic areas');
END IF;

END;
/

-- Adding Indication:
SET SERVEROUTPUT ON;
INSERT INTO INDICATION_LIST (In_ID, Drug_ID, Indication, Therapeutic_Area, Patient_Group)
VALUES('2041','25','Bone Crack', 'OrthoPedic', 'HP');


================================================================================================
 --Creating Trigger to update dosage:
CREATE or REPLACE TRIGGER UpdateDosage
	AFTER INSERT OR UPDATE ON strength
  FOR EACH ROW
DECLARE
	rowCount	Int;
  o_Drug_ID    number(25);
  o_strength    number(25);
  n_dosage      VARCHAR(100);
 
BEGIN
  o_Drug_ID := :old.Drug_ID;
  o_strength := :old.strength;
  n_dosage := :new.dosage; 

SELECT COUNT(*) INTO rowcount
FROM Strength
where Drug_ID = o_Drug_ID
and strength = o_strength;

	
	IF (rowCount = 1) THEN
		UPDATE strength
		SET Dosage = n_dosage
		where Drug_ID = o_Drug_ID
        and strength = o_strength;
	END IF;
END;
============================================================================================

-- Creating Cursor Metabolism_Chem_Info
 
CREATE OR REPLACE PROCEDURE Metabolism_Chem_Info(I_DISPLAY_NAME IN CHEMICAL_COMBINATION.DISPLAY_NAME%TYPE) IS
I_DRUG_NAME DRUG.DRUG_NAME%TYPE;
I_CHEMICAL_COMBINATION CHEMICAL_COMBINATION.CHEMICAL_COMBINATION%TYPE;

CURSOR DRUG_GROUP IS
SELECT D.DRUG_NAME, C.CHEMICAL_COMBINATION
FROM DRUG D
Inner Join CHEMICAL_COMBINATION C
On D.COMB_ID = C.COMB_ID
WHERE C.DISPLAY_NAME = I_DISPLAY_NAME;

BEGIN
	DBMS_OUTPUT.enable;
	OPEN DRUG_GROUP;
	LOOP
		FETCH DRUG_GROUP INTO I_DRUG_NAME, I_CHEMICAL_COMBINATION;
		EXIT WHEN DRUG_GROUP%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(I_DRUG_NAME||'-- '||I_CHEMICAL_COMBINATION);
	END LOOP;
	CLOSE DRUG_GROUP;
END;

BEGIN
Metabolism_Chem_Info('Metabolic Drug');
END;

===============================================================================================================
--Allow management to add a new Drug to the database checking if the drug exist or not.

SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE Add_New_Drug(
nDrug_Type In  VARCHAR,
nDrug_Name In  VARCHAR,
nComb_ID In  NUMBER) AS 
rowcount INT;
dID INT;

BEGIN
    SELECT COUNT(*) INTO rowcount
    FROM Drug
    WHERE Drug_Name = nDrug_Name;

IF (rowcount > 0) THEN
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Drug Already Exist.');
        RETURN;
    END;
END IF;
IF (rowcount = 0) THEN
    BEGIN
        INSERT INTO DRUG
        (DRUG_ID, DRUG_TYPE, DRUG_NAME, COMB_ID)
        VALUES(seqCID.NextVal, nDrug_Type, nDrug_Name,nComb_ID);
        dID := seqCID.CurrVal;
        DBMS_OUTPUT.PUT_LINE('Drug Added !');
    END;
END IF;
COMMIT;
END;	
 
 ===========================================
--CALLING STORED PROCEDURE:

SET SERVEROUTPUT ON 
CALL 	Add_New_Drug
('Local Brand', 'Naxdom', '132');

select * from drug;

=================================================================================================================================

-- Using promt variable:
--This allows management to update the Drug’s Therapeutic area. 

SET SERVEROUTPUT ON
DECLARE
I_INDICATION INDICATION.INDICATION%TYPE;
I_Therapeutic_Area INDICATION.Therapeutic_Area%TYPE;


BEGIN
DBMS_OUTPUT.ENABLE;
UPDATE INDICATION_LIST
SET Therapeutic_Area = '&I_Therapeutic_Area'
where INDICATION = '&I_INDICATION';

END;
/
=========================================================================================================

--Creating report


Create View SMALL_STRENGTH_DRUGS As
    Select D.drug_name, d.drug_id, S.Formsname, S.strength 
    from drug D 
    inner join strength S 
    on  D.Drug_ID= S.Drug_ID
    where D.Drug_Type = 'Global Brand'
        and S.strength <= 50;

