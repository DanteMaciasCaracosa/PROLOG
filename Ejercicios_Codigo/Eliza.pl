eliza:-	
	writeln('Hola, mi nombre es Eliza, tu asistente virtual. Por favor, ingresa tu consulta (usa solo minúsculas, sin punto al final):'),
	readln(Entrada),
	eliza(Entrada),!.

eliza(Entrada):- Entrada == ['adios'], writeln('Hasta luego. Espero haber sido de ayuda.'), !.
eliza(Entrada):- Entrada == ['adios', '.'], writeln('Hasta luego. Espero haber sido de ayuda.'), !.
eliza(Entrada):- Entrada == ['adios', 'eliza'], writeln('Cuídate mucho. Estoy aquí si me necesitas nuevamente.'), !.
eliza(Entrada):- Entrada == ['adios', 'eliza', '.'], writeln('Cuídate mucho. Estoy aquí si me necesitas nuevamente.'), !.
eliza(Entrada):- Entrada == [bye, eliza], writeln('Gracias por tu tiempo. Que tengas un excelente día.'), !.
eliza(Entrada):- Entrada == [bye, asistente], writeln('Ha sido un gusto conversar contigo. Hasta pronto.'), !.

eliza(Entrada) :-
	template(Patron, Respuesta, Indices),
	match(Patron, Entrada),
	replace0(Indices, Entrada, 0, Respuesta, Resultado),
	writeln(Resultado),
	readln(Siguiente),
	eliza(Siguiente), !.

% === 15 saludos formales ===
template([hola, soy, s(_)], ['Hola', 0, '¿en qué puedo ayudarte hoy?'], [2]).
template([buenas, tardes, soy, s(_)], ['Buenas tardes', 0, '¿cómo puedo asistirte?'], [3]).
template([buenos, dias, soy, s(_)], ['Buenos días', 0, '¿en qué puedo colaborarte?'], [3]).
template([hola, eliza, soy, s(_)], ['Hola', 0, 'estoy aquí para ayudarte, ¿en qué necesitas orientación?'], [3]).
template([buenas, noches, soy, s(_)], ['Buenas noches', 0, '¿qué te gustaría saber o consultar?'], [3]).
template([que, tal, soy, s(_)], ['Qué tal', 0, '¿cómo puedo ayudarte hoy?'], [3]).
template([saludos, eliza, soy, s(_)], ['Saludos', 0, '¿cómo estás? ¿En qué puedo asistirte?'], [3]).
template([un, gusto, eliza, soy, s(_)], ['Un gusto', 0, '¿cómo puedo apoyarte hoy?'], [3]).
template([hola, mi, nombre, es, s(_)], ['Hola', 0, 'es un placer saludarte. ¿Cómo puedo ayudarte?'], [4]).
template([hola, eliza, buen, dia, soy, s(_)], ['Buen día', 0, '¿cómo te encuentras? ¿En qué puedo ayudarte?'], [5]).
template([hola, eliza], ['Hola, ¿cómo puedo ayudarte hoy?'], []).
template([saludos, eliza], ['Saludos cordiales. ¿Cómo estás hoy?'], []).
template([muy, buenos, dias], ['Muy buenos días, ¿en qué puedo asistirte?'], []).
template([muy, buenas, tardes], ['Muy buenas tardes, ¿cómo puedo apoyarte?'], []).
template([muy, buenas, noches], ['Muy buenas noches, ¿necesitas asistencia médica?'], []).

% === 15 despedidas formales ===
template([gracias, por, todo], ['Con gusto. Estoy aquí para lo que necesites. Hasta pronto.'], []).
template([nos, vemos, eliza], ['Nos vemos. Espero haberte ayudado. Cuídate mucho.'], []).
template([hasta, luego], ['Hasta luego. Que tengas un excelente día.'], []).
template([hasta, pronto], ['Hasta pronto. Quedo a tu disposición.'], []).
template([me, voy], ['Entendido. Gracias por tu tiempo.'], []).
template([terminamos, por, hoy], ['Muy bien. Estaré disponible cuando me necesites.'], []).
template([cerramos, sesion], ['Sesión cerrada. Gracias por usar mis servicios.'], []).
template([fue, de, ayuda, gracias], ['Me alegra haber sido útil. Hasta la próxima.'], []).
template([ya, no, necesito, ayuda], ['Entendido. Que tengas un excelente día.'], []).
template([adios, por, ahora], ['Adiós por ahora. Estaré aquí si me necesitas.'], []).
template([hasta, la, proxima], ['Hasta la próxima. Cuida tu salud.'], []).
template([gracias], ['De nada. Estoy para ayudarte.'], []).
template([muchas, gracias], ['Con gusto. Que todo vaya bien.'], []).
template([chau], ['Chau. Espero verte nuevamente.'], []).
template([bye], ['Bye. Cuídate mucho.'], []).

% --- Templates generales y comodines ---
template([yo, s(_), yo, soy, s(_), '.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [por, qué, 0, me, afecta, '?'], [1]).
template([yo, soy, s(_), '.'], [por, qué, eres, tú, 0, '?'], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).
template([yo, pienso, que, _], [bueno, esa, es, tu, opinión], []).
template([porque, _], [esa, no, es, una, buena, razón, '.'], []).
template([i, have, s(_), with, s(_), '.'], ['You', have, to, deal, with, your, 0, and, your, 1, in, a, mature, way, '.'], [2, 4]).
template([i, s(_), _], [i, can, recommend, you, a, book, about, that, issue], []).
template([please, s(_), _], ['No', i, can, not, help, ',', i, am, just, a, machine], []).
template([tell, me, a, s(_), _], ['No', i, can, not, ',', i, am, bad, at, that], []).

template(_, ['Por favor, explica un poco más.'], []).

% Lo que le gusta a Eliza
elizaLikes(X, R):- leGusta(X), R = ['Sí, me gustan los', X, '.'].
elizaLikes(X, R):- \+leGusta(X), R = ['No, no me gustan los', X, '.'].
leGusta(manzanas).
leGusta(ponis).
leGusta(tecnologia).
leGusta(musica).

% Lo que hace Eliza
elizaDoes(X, R):- hace(X), R = ['Sí', yo, X, y, me, agrada, mucho].
elizaDoes(X, R):- \+hace(X), R = ['No', yo, no, X, '.', 'Es', muy, difícil, para, mí].
hace(estudiar).
hace(cocinar).
hace(trabajar).

% Lo que es Eliza
elizaIs(X, R):- es(X), R = ['Sí', yo, soy, X].
elizaIs(X, R):- \+es(X), R = ['No', no, soy, X, '.'].
es(asistente).
es(chatbot).
es(virtual).

% === Enfermedades actualizadas ===
sintoma(clamidia, flujo_vaginal_anormal).
sintoma(clamidia, ardor_al_orinar).
sintoma(clamidia, dolor_durante_relaciones).

sintoma(cancer_oseo, dolor_oseo).
sintoma(cancer_oseo, inflamacion).
sintoma(cancer_oseo, fatiga_extrema).

region(clamidia, america).
region(clamidia, europa).
region(cancer_oseo, asia).
region(cancer_oseo, africa).

enfermedad_por_region(Sintoma, Region, Enfermedad) :-
	sintoma(Enfermedad, Sintoma),
	region(Enfermedad, Region).
