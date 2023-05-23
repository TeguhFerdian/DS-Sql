--soal 1
select distinct 
	rakamin_customer_address.kota
from rakamin_customer_address

--soal 2
select *
 from rakamin_order
 order by "tanggal_pembelian" desc
 limit 10

--soal 3
select *
	from rakamin_customer
	where penipu = 'true'

--soal 4
select *
from rakamin_order
where metode_bayar = 'shopeepay'
order by harga desc

--soal 5
create table if not exists rakamin_customer_address_Tangerang as (
select * from rakamin_customer_address
where kota = 'Tangerang');
select * 
from rakamin_customer_address_Tangerang

--soal 6
update rakamin_customer_address_Tangerang
set provinsi = 'Banten'

update rakamin_customer_address_Tangerang
set alamat = 'Karawaci'
where id_pelanggan = 10;

--soal 7
insert into "rakamin_customer_address_tangerang"
values (101,70,'Ciledug','Tangerang','banten')

--soal 8
delete from rakamin_customer_address_Tangerang
where id_alamat in (54);

select * from rakamin_customer_address_Tangerang



