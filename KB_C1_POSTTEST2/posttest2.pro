% Diperbesar agar keliatan semuanya

domains
	pembeli,barang1,barang2 = symbol
	harga_bar1,harga_bar2,hasil,sisa,uang_bayar = ulong
	
predicates
	run - nondeterm ()
	run2 - nondeterm ()
	belanja(pembeli,barang1,harga_bar1,barang2,harga_bar2) - nondeterm(o,o,o,o,o)
	total(harga_bar1,harga_bar2,hasil) - nondeterm(i,i,o)
	bayar(pembeli,uang_bayar) - nondeterm(i,o)
	kembalian(hasil,uang_bayar,sisa) - nondeterm(i,i,o)
	
clauses
	run:-
		write("======================================================= Struck Pembelian ======================================================="),nl,nl.		
	
	belanja(arif,hp,999000,laptop,5000000).
	belanja(hidayat,tv,2015500,drone,2500000).
	belanja(nico,dvd,1000000,_,0).
	
	total(Harga_bar1,Harga_bar2,Total):-
		Total=Harga_bar1+Harga_bar2.
	
	bayar(arif,6000000).
	bayar(hidayat,4516000).
	bayar(nico,1000000).
	
	kembalian(Total,Bayar,Sisa):-
		Sisa=Bayar-Total.
	
	run2:-
		nl,write("========================================================= Terima Kasih ========================================================"),nl,
		nl,write("Keluar dari program (tekan tombol apa aja)"),nl,
		readchar(_).
				
goal
	run,belanja(Pembeli,Barang1,Harga_bar1,Barang2,Harga_bar2), Pembeli=arif,
	total(Harga_bar1,Harga_bar2,Total),bayar(Pembeli,Bayar),
	kembalian(Total,Bayar,Kembalian);run2.
		