execute sp_helpdb; -- �������ν���(sql server���� �������� ���ν���)
-- ���� ������ �ִ� ��� �����ͺ��̽��� ������

execute sp_tables @table_owner = "Human%"; -- ���� �����Ǿ� �ִ� �����ͺ��̽��� ������ �ִ� ���̺��� �˷���

execute sp_columns @table_name = "D%"
					