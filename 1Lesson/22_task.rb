#75 Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.
ar =[5, 6, 4, 8, 4, 2, 12, 3]
new_ar = ar.each.map do |element|
  element.abs
end
p new_ar
size = new_ar.size  
new_ar = new_ar.inject(0){ |element, next_element| element + next_element }
puts (new_ar / size)
