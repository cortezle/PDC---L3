:-dynamic visit/1.

conecta_con(cochera, sala).
conecta_con(sala, cochera).

conecta_con(sala, 'cuarto de estudio').
conecta_con('cuarto de estudio', sala).

conecta_con(sala, pasillo1).
conecta_con(pasillo1, sala).

conecta_con('cuarto de estudio', pasillo1).
conecta_con(pasillo1, 'cuarto de estudio').

conecta_con(comedor, pasillo1).
conecta_con(pasillo1, comedor).

conecta_con(cocina, pasillo1).
conecta_con(pasillo1, cocina).

conecta_con(pasillo1, pasillo2).
conecta_con(pasillo2, pasillo1).

conecta_con(cocina, lavadero).
conecta_con(lavadero, cocina).

conecta_con(bano, pasillo2).
conecta_con(pasillo2, bano).

conecta_con('cuarto papas', pasillo2).
conecta_con(pasillo2, 'cuarto papas').

conecta_con('cuarto de rodri', pasillo2).
conecta_con(pasillo2, 'cuarto de rodri').


conecta_con(lavadero, jardin).
conecta_con(jardin, lavadero).

esta_en(pantunflas,'cuarto de rodri').
esta_en(flores,jardin).
esta_en(pisto,'cuarto papas').
esta_en(agua,cocina).
esta_en(limones,jardin).
esta_en('papel higienico',bano).

ir_hacia(Hasta, Hasta).

ir_hacia(Desde, Hasta):-
  conecta_con(Desde, Lugar),
  \+(visit(Lugar)),
  assertz(visit(Lugar)),
  writeln(Lugar),
  ir_hacia(Lugar, Hasta),!.


idad_vuelta_2(Objeto,Desde):-
    esta_en(Objeto,Ubicacion),
    ida_y_vuelta(Desde,Ubicacion),!.

ida_y_vuelta(Hasta,Hasta):-
    writeln('######De regreso Asimo#########'),!.


ida_y_vuelta(Desde,Hasta):-
    conecta_con(Desde, Lugar),
    \+(visit(Lugar)),
    asserta(visit(Lugar)),
    writeln(Lugar),
    ida_y_vuelta(Lugar, Hasta),
    visit(Lugar),
    writeln(Lugar),!.























