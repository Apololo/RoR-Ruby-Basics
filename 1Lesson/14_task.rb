#42. Дан целочисленный массив. Найти минимальный нечетный элемент.
ar =[5, 6, 4, 8, 4, 2, 12, 3]
p new_arr = ar.select { |element| element.odd?}
p new_arr.min
