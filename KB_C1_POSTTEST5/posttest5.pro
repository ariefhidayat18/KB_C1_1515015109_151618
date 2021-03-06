domains
nama = orang(symbol,symbol)
nim,ruang = integer
alamat = address(jalan,kota,provinsi)
jalan,kota,provinsi,matkul,jenis_kelamin = string
prodi = prodi(symbol,symbol)

predicates
nondeterm mata_kuliah(matkul,nama,prodi,ruang)
nondeterm mahasiswa(nama,jenis_kelamin,nim,alamat)
nondeterm mengambil(nama,matkul)
nondeterm mahasiswa_ambil_ai(matkul,nama,alamat,nama,ruang)
nondeterm matkul_yg_diajarkan(matkul,nama,ruang,nama)

clauses
mata_kuliah("Intelejensi Buatan",orang(abdul,kadir),prodi(manajemen,informatika),1).
mata_kuliah("PDE",orang(indra,yatini),prodi(teknik,informatika),2).
mata_kuliah("Teknik Antar Muka",orang(sigit,anggoro),prodi(teknik,informatika),3).

mahasiswa(orang(sugeng,riyadi),"Laki-laki",2002001,address("Jl. Sudirman No.2","Pontianak","Kalimantan Barat")).
mahasiswa(orang(yulia,sugondo),"Perempuan",2002002,address("Jl. A.Yani No.10","Klaten","Jawa Tengah")).
mahasiswa(orang(budiman,sejati),"Laki-laki",2002003,address("Jl. Slamet Riyadi No.45","Solo","Jawa Tengah")).
mahasiswa(orang(laksamana,sukardi),"Laki-laki",2002004,address("Jl. MT Haryono No.10","Palembang","Sumatra Selatan")).
mahasiswa(orang(rini,suwandi),"Perempuan",2002005,address("Jl. Letjen Suprapto No.12","Surabaya","Jawa Timur")).
mahasiswa(orang(kwik,kian_gie),"Laki-laki",2002006,address("Jl. WR Supratman No.100","Makasar","Sulawesi Selatan")).
mahasiswa(orang(riri,reza),"Laki-laki",2002007,address("Jl. RW Monginsidi No.30","Purwokerto","Jawa Tengah")).
mahasiswa(orang(rachel,maryam),"Perempuan",2002008,address("Jl. Otista No.112","Bandung","Jawa Barat")).
mahasiswa(orang(garin,nugroho),"Laki-laki",2002009,address("Jl. Tanjung Pura No.101","Jaya Pura","Papua")).

mengambil(orang(sugeng,riyadi),"Intelejensi Buatan").
mengambil(orang(yulia,sugondo),"Intelejensi Buatan").
mengambil(orang(budiman,sejati),"Intelejensi Buatan").
mengambil(orang(laksamana,sukardi),"PDE").
mengambil(orang(rini,suwandi),"PDE").
mengambil(orang(kwik,kian_gie),"PDE").
mengambil(orang(riri,reza),"Teknik Antar Muka").
mengambil(orang(rachel,maryam),"Teknik Antar Muka").
mengambil(orang(garin,nugroho),"Teknik Antar Muka").

mahasiswa_ambil_ai(Matkul,Mahasiswa,Alamat,Dosen,Ruangan):-
	mahasiswa(Mahasiswa,_,_,Alamat),
	mata_kuliah(Matkul,Dosen,_,Ruangan),
	mengambil(Mahasiswa,Matkul).
	
matkul_yg_diajarkan(Matkul,Dosen,Ruangan,Mahasiswa):-
	mata_kuliah(Matkul,Dosen,_,Ruangan),
	mahasiswa(Mahasiswa,_,_,_),
	mengambil(Mahasiswa,Matkul).
goal
mahasiswa_ambil_ai("Intelejensi Buatan",Mahasiswa,Alamat,Dosen,Ruangan);
nl,matkul_yg_diajarkan(Matkul,Dosen,Ruangan,Mahasiswa).