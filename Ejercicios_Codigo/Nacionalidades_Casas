# El **noruego** vive en la casa 1.  
# El **británico** vive en la casa roja.  
# La **casa verde** está a la izquierda de la blanca.  
# El dueño de la casa verde **bebe café**.  
# El de la casa 3 **bebe leche**.  

# La casa 3 toma leche → entonces la casa roja es la 3.  
# El británico vive en la casa 3 porque su casa es roja.  
# La casa amarilla debe ser la 1, porque ahí se fuma **Dunhill**.  
# La casa verde no puede ser la 1 ni la 3, así que debe ser la 4.  
# La casa blanca está a la derecha de la verde, así que la 5 es blanca.  

# Casa 1 → Noruego, Amarilla, Dunhill.  
# Casa 3 → Británico, Roja, Leche.  
# Casa 4 → Verde, Café.  
# Casa 5 → Blanca.  


# El **danés toma té**, así que está en la casa 2.  
# El **alemán fuma Prince**, y la única casa sin cigarro es la 4.  
# Entonces, el **alemán vive en la casa 4**.  


# El **sueco tiene un perro**, y solo falta la casa 5, así que ahí está el sueco y su perro.  
# El que fuma **Pall Mall tiene pájaros**, la única casa sin cigarro asignado es la 3.  
# Así que el **británico (casa 3) tiene pájaros**.  


# Solo faltan las mascotas de la casa 1 y la casa 4.  
# Como no mencionan al pez en ninguna pista, debe estar en una de esas casas.  
# Ya sabemos que la casa 1 es del noruego, y la casa 4 es del alemán.  
# El pez puede estar en la casa 4



casa(roja)
casa(verde)
casa(amarilla)
casa(blanca)
casa(azul)

persona(britanico)
persona(sueco)
persona(danes)
persona(noruego)
persona(aleman)

mascota(perro)
mascota(pajaro)
mascota(caballo)
mascota(pez)
mascota(gato)

bebida(te)
bebida(cafe)
bebida(leche)
bebida(cerveza)
bebida(agua)

cigarro(prince)
cigarro(pallmall)
cigarro(dunhill)
cigarro(blends)
cigarro(blemaster)

viveEn(X) :- casa(roja), persona(britanico).

tieneMascota(X) :- mascota(perro), persona(sueco).

tomaBebida(X) :- bebida(te), persona(danes).


fumaCigarro(X) :- cigarro(prince), persona(aleman).

viveAlado(X,Y) :- casa(verde), casa(blanca).

bebeCafe(X) :- casa(verde), bebida(cafe).
