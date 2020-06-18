=begin
 Un prestamista a realizado un préstamos a un cliente considerando la siguiente
 regla: cada més le cobrará el 5% de interés sobre el monto total acumulado.
 Cuanto cobrará al final de los n meses de préstamo?
 Ejemplo:
 meses = 3
 interes 5%
 montoPrestado = 100
 
 total => total1 = 100 + 100*0.05          (mes 1)
          total2 = total1 + total1*0.05    (mes 2)
		  total3 = total2 + total2*0.05    (mes 3)
 Cobrará entonces: total3		 
=end
 
def calcularInteres(monto, meses)
   total  = monto
   for i in 1..meses
      total = total + total*0.05	  
   end
   return total 
 end
 
 puts calcularInteres(100, 3)


=begin
	
Calular la suma de las áreas de todos los círculos de radio r, esta suma no 
debe ser mayor que 1000 unidades cuadradas.
	
=end

def sumaAreasCirculos(radio)
	suma = 0
  while(suma < 1000)
  	area = Math::PI * radio**2
  	suma = suma + area
  end
  return suma
end

puts "Suma: #{sumaAreasCirculos(2)} "

=begin
  	Simular la suma de n lanzamientos de un dado
  	Muestre la suma de los resultados
=end

def sumaLanzamientos(n)
   suma = 0
   for i in 1..n
   	  suma = suma + rand(1..6)
   end
   return suma
end
puts "Dados:#{sumaLanzamientos(3)}"

=begin
	 Se quiere simular el juego de dos jugadores
	 Cuando le toca al primero este debe lanzar dos dados
	 y si la suma es 12 o 11 gana 1 punto, termina de lanzar cuando
	 le sale 2.
	 A continuación deberá proceder a jugar el toro jugador con
	 las mismas reglas.
	 Se piden mostrar el nombre del jugador que ganó o hubo empate.
=end

def quienGana(nombre1, nombre2)
	 for i in 1..2
	 	puntaje = 0
	 	while true
	 	   	 lanzamiento = rand(1..12)
	 	   	 if lanzamiento==12 or lanzamiento==11
	 	   	 	puntaje = puntaje + 1
	 	   	 end
	 	   	 if lanzamiento==2
	 	   	 	break
	 	   	 end
	 	end
	 	if i==1
	 		puntaje1 = puntaje
	 	else
            puntaje2 = puntaje
	 	end
	 end	
	 if puntaje1>puntaje2
	 	return nombre1
	 elsif puntaje1<puntaje2
	 	return nombre2
	 else
	 	return "Empates"
	 end	 		
end

puts quienGana("Pepe", "Carlos")



