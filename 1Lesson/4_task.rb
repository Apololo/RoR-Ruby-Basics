#2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
ar = [2, 3, 9, 6, 7]
puts ar.select.with_index{|elmt| elmt.odd?} + ar.select.with_index{|elmt| elmt.even?}
