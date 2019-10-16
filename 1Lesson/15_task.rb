#43. Дан целочисленный массив. Найти максимальный четный элемент.
ar =[5, 6, 4, 8, 4, 2, 12]
p new_arr = ar.find_all { |element| element.even?}
p new_arr.max
