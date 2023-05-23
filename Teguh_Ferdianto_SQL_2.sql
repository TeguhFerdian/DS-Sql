--soal no 1
select nama, email, bulan_lahir, tanggal_registrasi
from rakamin_customer 
where bulan_lahir in ('Januari','February','Maret') and (email like '%roketmail%' or email like '%yahoo%')
and tanggal_registrasi between '2012-01-01' and '2012-03-31';

--soal no 2
select  "id_order", "id_pelanggan", 
		"harga", harga + (harga*ppn)as harga_setelah_PPN,
		case when "harga" + (harga * "ppn") < 20000 then 'low'
			 when "harga" + (harga * "ppn") between 20000 and 50000 then 'medium'
			 when "harga" + (harga * "ppn") > 50000 then 'high'
		end as spending_bucket
from rakamin_order
order by 3 desc;

select*
from rakamin_order

--soal no 3
select  id_merchant,
		count(distinct id_order) as jumlah_order, 
		sum(harga) as jumlah_pendapatan
from rakamin_order
group by id_merchant
order by jumlah_pendapatan desc

--soal no4
select metode_bayar,
	count (1) as metode_pembayaran_populer
from rakamin_order
group by 1
having count(1) > 10
order by 2 desc;


--soal no 5
select *
from (
	select
		min(id_pelanggan)as populasi_terkecil,
		max(id_pelanggan)as populasi_terbanyak
	from rakamin_customer_address
)jumlah_populasi

	
--soal no 6
select rm.nama_merchant, ro.metode_bayar,
 	count(1)as frekuensi
from rakamin_order as ro
join rakamin_merchant as rm on ro.id_merchant = rm.id_merchant
group by 1,2
order by rm.nama_merchant desc;


--soal no 7
with orders as (
select id_pelanggan,
		sum(kuantitas)as kuanti
		from rakamin_order
		group by 1 
		having sum(kuantitas)>5
)
select ro.id_pelanggan, ro.kuanti,rc.nama,rc.email
from orders as ro
join rakamin_customer as rc on ro.id_pelanggan=rc.id_pelanggan

