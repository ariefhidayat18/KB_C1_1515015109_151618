predicates
	player_1(symbol,integer,integer,symbol,symbol) - nondeterm (o,o,o,o,i)
	player_2(symbol,integer,integer,symbol,symbol) - nondeterm (o,o,o,o,i)
	catatan_gol(symbol,integer,integer,symbol,symbol) - nondeterm (o,o,o,o,i)
	
clauses
	player_1(man_city,1,25,pertama,aguero).
	player_1(man_city,2,60,kedua,sterling).
	player_1(man_city,3,89,kedua,aguero).	
	
	player_2(arsenal,1,2,pertama,giroud).
	player_2(arsenal,2,46,kedua,giroud).	

	catatan_gol(Team,Gol_ke,Menit,Babak,Pemain):-
		player_1(Team,Gol_ke,Menit,Babak,Pemain);
		player_2(Team,Gol_ke,Menit,Babak,Pemain).

goal
	player_1(Team,Gol_ke,Menit,Babak,aguero).