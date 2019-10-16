#9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.
ar =[ 5, -1, -4, 7, 4, 9, 12, 7 ]
min = ar.min
puts "минимальное #{min}"
new_ar = ar.each.map do |elem|
  if elem > 0
    elem = min
  else
    elem
  end
end
p new_ar
