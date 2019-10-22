array = [ 
	621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14,     		126,532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 		222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336
]

puts "** Razmer masiva #{array.size} "

puts "** Perevorot masiva #{array.reverse} " 

puts "** minimalnoe #{array.min}"

puts "** maksimalnoe #{array.max}"

puts "** sortirovka ot min do max #{array.sort}"

puts "** sortirovka ot max do min #{array.sort.reverse}"

puts "** ydalenie ne4etnih #{array.reject { |elem| elem.odd?}}"

puts "** ydalenie elementov kotorie /3 #{array.select { |elem| elem %3 == 0}}"

puts "** ydalit povtory #{ array.uniq}"

puts "** razdelit na 10 v drobe #{array.map { |elem| elem/10.to_f }} "

puts "** Sordat masiv z bukvami nomer yakih znahoditsa v masive"
alfav = *( 'a'..'z')
array_alfav = array.map { |elem| alfav[elem] ? alfav[elem] : elem }
#!!!
p array_alfav

puts "** pomenat min i max mestami" 
p array.minmax
array[ array.index( array.min ) ], array[ array.index( array.max ) ] =
array[ array.index (array.max) ],  array[ array.index (array.min)]
p array

puts "** nayti elementy pered min #{ array[0...array.index(array.min) ]}"

puts "** nayti 3 min elementa #{ array.min(3)}"

