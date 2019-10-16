#79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.
ar =[5, -6, 4, 8, -4, 2, 12, 3]
new_ar = ar.each.map do |element|
 if element < 0
 element ** 2
 elsif element > 0
 element ** 3
 else
 element
 end
end
puts new_ar
