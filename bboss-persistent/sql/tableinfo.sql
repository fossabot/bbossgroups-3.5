drop table TABLEINFO cascade constraints
/
CREATE TABLE TABLEINFO
(
  TABLE_NAME          VARCHAR2(255)        NOT NULL,
  TABLE_ID_NAME       VARCHAR2(255),
  TABLE_ID_INCREMENT  NUMBER(5)                 DEFAULT 1,
  TABLE_ID_VALUE      NUMBER(20)                DEFAULT 0,
  TABLE_ID_GENERATOR  VARCHAR2(255),
  TABLE_ID_TYPE       VARCHAR2(255),
  TABLE_ID_PREFIX     VARCHAR2(255)
);

COMMENT ON TABLE TABLEINFO IS '����Ϣά������';

COMMENT ON COLUMN TABLEINFO.TABLE_NAME IS '������';


COMMENT ON COLUMN TABLEINFO.TABLE_ID_NAME IS '������������';

COMMENT ON COLUMN TABLEINFO.TABLE_ID_INCREMENT IS '��������������
ȱʡΪ1';

COMMENT ON COLUMN TABLEINFO.TABLE_ID_VALUE IS '������ǰֵ��ȱʡΪ0';

COMMENT ON COLUMN TABLEINFO.TABLE_ID_GENERATOR IS '�Զ�����������ɻ���
�����
com.frameworkset.common.poolman.sql.PrimaryKey����';

COMMENT ON COLUMN TABLEINFO.TABLE_ID_TYPE IS '�������ͣ�string,int��';

COMMENT ON COLUMN TABLEINFO.TABLE_ID_PREFIX IS '����Ϊstring������ǰ׺����ָ���ɲ�ָ��,ȱʡֵΪ""';


CREATE UNIQUE INDEX PK_TABLEINFO0 ON TABLEINFO(TABLE_NAME)
/


ALTER TABLE TABLEINFO ADD   CONSTRAINT PK_TABLEINFO0 PRIMARY KEY (TABLE_NAME)
/
--ע�����������Ϣ
--INSERT INTO TABLEINFO ( TABLE_NAME, TABLE_ID_NAME, TABLE_ID_INCREMENT, TABLE_ID_VALUE,
--TABLE_ID_GENERATOR, TABLE_ID_TYPE, TABLE_ID_PREFIX ) VALUES ( 
--'test', 'id', 1, 0, 'seq_test', 'sequence', null); 