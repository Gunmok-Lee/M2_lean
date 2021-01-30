-- user
DROP TABLE IF EXISTS m2_user;

-- 새 테이블
DROP TABLE IF EXISTS m2_index;

-- 새 테이블2
DROP TABLE IF EXISTS m2_company;

-- 새 테이블3
DROP TABLE IF EXISTS m2_stock_log;

-- 새 테이블5
DROP TABLE IF EXISTS m2_stock;

-- 새 테이블6
DROP TABLE IF EXISTS m2_config;

-- user
CREATE TABLE m2_user (
  id       VARCHAR(255) NOT NULL, -- 아이디
  password VARCHAR(16)  NOT NULL  -- 비밀번호
);

-- user
ALTER TABLE m2_user
  ADD CONSTRAINT PK_m2_user -- user 기본키
    PRIMARY KEY (
      id -- 아이디
    );

-- 새 테이블
CREATE TABLE m2_index (
  idx   INTEGER   NOT NULL, -- 지수
  curr_dt TIMESTAMP NOT NULL DEFAULT now(), -- 현재 날짜
  type    INTEGER   NOT NULL  -- 타입
);

-- 새 테이블2
CREATE TABLE m2_company (
  st_no    INTEGER      NOT NULL, -- 주식 번호
  st_title VARCHAR(255) NOT NULL, -- 주식 이름
  profit   BIGINT       NULL,     -- 영업이익
  st_type  INTEGER      NOT NULL  -- 타입
);

-- 새 테이블2
ALTER TABLE m2_company
  ADD CONSTRAINT PK_m2_company -- 새 테이블2 기본키
    PRIMARY KEY (
      st_no -- 주식 번호
    );

-- 새 테이블3
CREATE TABLE m2_stock_log (
  st_no      INTEGER   NOT NULL, -- 주식 번호
  idt        TIMESTAMP NOT NULL, -- 입력일짜
  market_cap BIGINT    NOT NULL, -- 시가총액
  stock      INTEGER   NOT NULL, -- 주가
  value      INTEGER   NOT NULL  -- 가치
);

-- 새 테이블3
ALTER TABLE m2_stock_log
  ADD CONSTRAINT PK_m2_stock_log -- 새 테이블3 기본키
    PRIMARY KEY (
      st_no, -- 주식 번호
      idt    -- 입력일짜
    );

-- 새 테이블5
CREATE TABLE m2_stock (
  st_no      INTEGER   NOT NULL, -- 주식 번호
  idt        TIMESTAMP NOT NULL DEFAULT now(), -- 현재날짜
  market_cap BIGINT    NOT NULL, -- 시가총액
  stock      INTEGER   NOT NULL, -- 주가
  value      INTEGER   NOT NULL -- 가치
);

-- 새 테이블5
ALTER TABLE m2_stock
  ADD CONSTRAINT PK_m2_stock -- 새 테이블5 기본키
    PRIMARY KEY (
      st_no -- 주식 번호
    );

-- 새 테이블6
CREATE TABLE m2_config (
  cfg_key   VARCHAR(255) NOT NULL, -- 키
  cfg_value VARCHAR(255) NULL      -- 값
);

ALTER TABLE m2_stock_log
  ADD CONSTRAINT FK_m2_stock_TO_m2_stock_log 
    FOREIGN KEY (
      st_no
    )
    REFERENCES m2_stock ( 
      st_no
    );

ALTER TABLE m2_stock
  ADD CONSTRAINT FK_m2_company_TO_m2_stock 
    FOREIGN KEY (
      st_no
    )
    REFERENCES m2_company ( 
      st_no
    );