--BEGIN NC���ϵ������ձ�
CREATE TABLE "NBADV"."TRA_AUXI_MATERIAL_TEMP"
 ("NAME"     VARCHAR(100),
  "PK_CORP"  VARCHAR(20),
  "ID"       INTEGER
 )
  DATA CAPTURE NONE
 IN "USERSPACE3"
  CCSID UNICODE@

ALTER TABLE "NBADV"."TRA_AUXI_MATERIAL_TEMP"
  LOCKSIZE ROW
  APPEND OFF
  NOT VOLATILE
  LOG INDEX BUILD NULL@

COMMENT ON "NBADV"."TRA_AUXI_MATERIAL_TEMP"
 ("NAME" IS '����',
  "PK_CORP" IS '����',
  "ID" IS 'id'
 )@
--END NC���ϵ������ձ�

--BEGIN NC���ϲɹ�������
CREATE TABLE "NBADV"."TRA_FL_ORDER_MAIN_TEMP"
 ("PK_CORP"        VARCHAR(20)     NOT NULL,
  "BILLCODE"       VARCHAR(50),
  "BILLDATE"       DATE,
  "SUPPLIER"       VARCHAR(20),
  "SENDCOMPANY"    VARCHAR(20),
  "OPERATOR"       VARCHAR(20),
  "MAKEDATE"       DATE,
  "COUNTERMAN"     VARCHAR(20),
  "DEPT"           VARCHAR(20),
  "MEMO"           VARCHAR(1000),
  "ISCLOSED"       VARCHAR(10),
  "SENDCOMPANYID"  INTEGER,
  "OPERATORID"     INTEGER,
  "COUNTERMANID"   INTEGER,
  "DEPARTID"       INTEGER,
  "SUPPLIERID"     INTEGER,
  "ISPROCESSED"    VARCHAR(1)      NOT NULL  DEFAULT 'N'
 )
  DATA CAPTURE NONE
 IN "USERSPACE3"
  CCSID UNICODE@

ALTER TABLE "NBADV"."TRA_FL_ORDER_MAIN_TEMP"
  LOCKSIZE ROW
  APPEND OFF
  NOT VOLATILE
  LOG INDEX BUILD NULL@

COMMENT ON "NBADV"."TRA_FL_ORDER_MAIN_TEMP"
 ("PK_CORP" IS 'NC����',
  "BILLCODE" IS '���ݱ��',
  "BILLDATE" IS '��������',
  "SUPPLIER" IS '��Ӧ��id from NC',
  "SENDCOMPANY" IS '������˾id from NC',
  "OPERATOR" IS '�Ƶ���id from NC',
  "MAKEDATE" IS '�Ƶ�����',
  "COUNTERMAN" IS 'ҵ��Աid from NC',
  "DEPT" IS '����id from NC',
  "MEMO" IS '��ע',
  "ISCLOSED" IS '�Ƿ�ر�',
  "SENDCOMPANYID" IS '������˾id from base platform',
  "OPERATORID" IS '�Ƶ���id from base platform',
  "COUNTERMANID" IS 'ҵ��Աid from base platform',
  "DEPARTID" IS '����id from base platform',
  "SUPPLIERID" IS '��Ӧ��id from base platform',
  "ISPROCESSED" IS '�Ƿ��Ѿ�����IDת���ӹ�(Y��,N��)'
 )@
--END NC���ϲɹ�������

--BEGIN NC���ϲɹ���ϸ��CREATE TABLE "NBADV"."TRA_FL_ORDER_DETAIL_TEMP"
 ("PK_CORP"           VARCHAR(20)     NOT NULL,
  "PK_CORP_D"         VARCHAR(20)     NOT NULL,
  "MATERIAL"          VARCHAR(20),
  "STANDARD"          VARCHAR(100),
  "MAINMEASUNIT"      VARCHAR(20),
  "WEIGHT"            DECIMAL(19, 6),
  "MEASCONVRATE"      DECIMAL(19, 6),
  "AUXIMEASUNIT"      VARCHAR(20),
  "QTY"               DECIMAL(19, 6),
  "CROWNO"            INTEGER,
  "MEMO"              VARCHAR(1000),
  "ISCLOSED"          VARCHAR(1),
  "RECEIVECOMPANY"    VARCHAR(20),
  "MANUFACTURER"      VARCHAR(20),
  "MATERIALID"        INTEGER,
  "MAINUNIT"          INTEGER,
  "AUXIUNIT"          INTEGER,
  "RECEIVECOMPANYID"  INTEGER,
  "MANUFACTURERID"    INTEGER,
  "ISPROCESSED"       VARCHAR(1)                DEFAULT 'N',
  "ISSYNC"            VARCHAR(1)                DEFAULT 'N'
 )
  DATA CAPTURE NONE
 IN "USERSPACE3"
  CCSID UNICODE@

ALTER TABLE "NBADV"."TRA_FL_ORDER_DETAIL_TEMP"
  LOCKSIZE ROW
  APPEND OFF
  NOT VOLATILE
  LOG INDEX BUILD NULL@

COMMENT ON "NBADV"."TRA_FL_ORDER_DETAIL_TEMP"
 ("PK_CORP" IS '����id from NC',
  "PK_CORP_D" IS 'ϸ��id from NC',
  "MATERIAL" IS '����id from NC',
  "STANDARD" IS '��װ���',
  "MAINMEASUNIT" IS '��������λid from NC',
  "WEIGHT" IS '������',
  "MEASCONVRATE" IS '����������',
  "AUXIMEASUNIT" IS '��������λid from NC',
  "QTY" IS '������',
  "CROWNO" IS '�к�',
  "MEMO" IS '��ע',
  "ISCLOSED" IS '�Ƿ�ر�(Y��,N��)',
  "RECEIVECOMPANY" IS '�ջ���˾id from NC',
  "MANUFACTURER" IS '�ӹ���id from NC',
  "MATERIALID" IS '����ID',
  "MAINUNIT" IS '��������λ',
  "AUXIUNIT" IS '��������λ',
  "RECEIVECOMPANYID" IS '�ջ���˾',
  "MANUFACTURERID" IS '�ӹ���',
  "ISPROCESSED" IS '�Ƿ��Ѿ�����IDת���ӹ�(Y��,N��)',
  "ISSYNC" IS '�Ƿ�ͬ������Ӧ��ҵ�����ݱ�(Y��,N��)'
 )@
--END NC���ϲɹ���ϸ��