#6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.
ar =[ 5, 1, 4, 7, 4, 9, 12, 7 ]
new_ar = ar.each_with_index.map do |element, index|
  if [0, ar.length - 1].include?(index) || index.odd?
    element
  else
    element + ar[ar.last]
  end
end
p ar
p new_ar
