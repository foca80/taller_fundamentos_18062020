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