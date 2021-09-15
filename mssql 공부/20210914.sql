execute sp_helpdb; -- 저장프로시저(sql server에서 만들어놓은 프로시저)
-- 현재 가지고 있는 모든 데이터베이스를 보여줌

execute sp_tables @table_owner = "Human%"; -- 현재 지정되어 있는 데이터베이스가 가지고 있는 테이블을 알려줌

execute sp_columns @table_name = "D%"
					