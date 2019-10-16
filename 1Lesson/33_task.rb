#5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.
ar =[ 5, 1, 4, 7, 4, 9, 12, 3 ]
new_ar = ar.each_with_index.map do |element, index|
  if [0, ar.length - 1].include?(index) || index.odd?
    element
  else
    element + ar[0]
  end
end
p ar
p new_ar
