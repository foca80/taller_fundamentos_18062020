=begin
 Desarrollar un sobprograma que permita calcular cantidad de números
 impares que existen desde a hasta inclusive b.
 
 Ejemplo: si a=1 y b=5
          cantidad = 1 + 3 + 5 ==> 3
          si a= 2, y b =7 ===> 3,5,7
          cantidad impares ==> 3

=end
def cantidad(a, b)

    contadorImpares = 0
	for i in a..b
      #verifico si i es impar
      if i % 2 != 0
         contadorImpares = contadorImpares + 1
      end
	end
	return contadorImpares
end
# Prueba
puts "Cantidad de impares: #{cantidad(2, 7)}"

=begin 
 Desarrollar un subrograma que permita calcular la siguiente suma:
 
    suma = 1/5 + 1/7 + ...... n términos  i: Cantidad de términos /deno: cuenta los valores de 2 en 2
 
 Ejemplo: n = 3
 
    suma = 1/5 + 1/7 +1/9	
=end

def sumaT(n)
 	suma = 0
	deno = 5

	for i in 1..n
		suma = suma + 1.0/deno
		deno = deno + 2
	end

	return suma
end

n = 4
puts "la suma es #{sumaT(n).round(3)}"


=begin
  Dearrollar un subrograma que permita calcular la siguiente suma:
 
    suma = 1 + 1/2 + 1/4 + ...... n términos
	
 Ejemplo: n = 4
    suma = 1+  1/2 + 1/4 +1/6	

=end






