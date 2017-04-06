select top 5 * from tb_grade order by score1 desc
update tb_grade set groupId=1 where StuNo in ( select top 5 StuNo from tb_grade where StuNo in (select top 5 StuNo from tb_grade where StuNo not in (select top 5 StuNo from tb_grade order by score1 desc) order by score1 desc) order by NEWID())
select top 5 * from tb_grade where StuNo in (select top 5 StuNo from tb_grade where StuNo not in (select top 5 StuNo from tb_grade order by score1 desc) order by score1 desc) order by NEWID()

update tb_grade set groupId=2 where StuNo in ( select top 5 StuNo from tb_grade where StuNo in (select top 5 StuNo from tb_grade where StuNo not in (select top 10 StuNo from tb_grade order by score1 desc) order by score1 desc) order by NEWID())
select top 5 * from tb_grade where StuNo in (select top 5 StuNo from tb_grade where StuNo not in (select top 10 StuNo from tb_grade order by score1 desc) order by score1 desc) order by NEWID()



update tb_grade set groupIdentity='组长' where StuNo in (select top 5 StuNo from tb_grade order by score1 desc) and klass='1504班'
update tb_grade set groupIdentity='组员' where StuNo not in (select top 5 StuNo from tb_grade order by score1 desc) and klass='1504班'

select top 1 StuNo from tb_grade where groupIdentity='组长' and klass='1504班' order by score1 desc
update tb_grade set groupId=1


update tb_grade set groupId=2 where StuNo in (select top 1 StuNo from tb_grade where StuNo not in (select top 1 StuNo from tb_grade  where groupIdentity='组长' and klass='1504班'  order by score1 desc)and groupIdentity='组长' and klass='1504班'  order by score1 desc )
select top 31 * from tb_grade order by score1 desc

select top 5 StuNo from tb_grade where klass='1504班' order by score1 desc

for (int i=1;i<6;i=i+2)
{
for (int t=0;t<5;t++)
{
	update tb_grade set groupId=(5-t) where StuNo in (select top 1 StuNo from tb_grade where StuNo not in (select top (i*5+t) StuNo from tb_grade where klass='1504班' order by score1 desc) order by score1 desc)
}
}
for (int i=2;i<6;i=i+2)
{
for (int t=0;t<5;t++)
{
	update tb_grade set groupId=(t+1) where StuNo in (select top 1 StuNo from tb_grade where StuNo not in (select top (i*5+t) StuNo from tb_grade order by score1 desc) order by score1 desc)
}

update tb_grade set groupId=4 where StuNo in (select top 1 StuNo from tb_grade where StuNo not in (select top 6 StuNo from tb_grade order by score1 desc) order by score1 desc)

update tb_grade set groupId=2 where StuNo in (select top 1 StuNo from tb_grade where StuNo not in (select top 11 StuNo from tb_grade order by score1 desc) order by score1 desc)
select top 31 * from tb_grade order by score1 desc