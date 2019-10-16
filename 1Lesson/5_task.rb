#77. Дано целое число. Найти сумму его цифр.
puts "Введите число"
num  = gets.chomp.to_i
num1 = num / 100
num2 = ((num % 100) / 10)  
num3 = ((num % 100) % 10)
ar = Array.new
ar[0] = num1
ar[1] = num2
ar[2] = num3
sum = ar.inject(0){ |da, ne| da + ne }
puts "Сума #{sum}"
