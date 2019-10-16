#86. Дан целочисленный массив. Найти среднее арифметическое его элементов.
ar =[ 5, 6, 4, 8, 4, 2, 12, 3 ]
sum = ar.inject(0){ |element, next_element| element + next_element }
size = ar.size
p result = sum / size
