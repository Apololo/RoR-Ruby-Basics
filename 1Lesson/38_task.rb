#10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.
ar =[ 5, -1, -4, 7, 4, 9, 12, 7 ]
max = ar.max
puts "максимальное #{max}"
new_ar = ar.each.map do |elem|
  if elem > 0
    elem = max
  else
    elem
  end
end
p new_ar
