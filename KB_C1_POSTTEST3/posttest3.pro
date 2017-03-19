predicates
 nondeterm mengambil(symbol,string,string)
 
clauses
	mengambil(irfan,"intelejen buatan","A").
	mengambil(komeng,"intelejen buatan","D").
	mengambil(dati,"intelejen buatan","C").
	mengambil(fatima,"intelejen buatan","B").
	mengambil(maspion,"intelejen buatan","C").
	
	mengambil(ricky,"PDE","E").
	mengambil(embang,"PDE","A").
	mengambil(salmin,"PDE","D").
	mengambil(vina,"PDE","B").
	mengambil(sondang,"PDE","C").
	
	mengambil(pamuji,"SO","D").
	mengambil(luki,"SO","E").
	mengambil(sadek,"SO","B").
	mengambil(yusida,"SO","A").
	mengambil(eka,"SO","A").
	
	
goal
	mengambil(Mahasiswa,"intelejen buatan",_);
	nl,mengambil(Mahasiswa,_,Nilai), Nilai<"C";
	nl,mengambil(Mahasiswa,_,Nilai), Nilai>="C";
	nl,mengambil(_,Matakuliah,_);
	nl,mengambil(Mahasiswa,_,_).