class Pet
 attr_accessor :animal
 attr_accessor :name
 
 def initialize 
  @sleep = false
  @feed_pt = 10
  @health_pt = 10
  @happiness_pt = 10
  @discipline_pt = 10
  @walk = 10
 end

 def feed
  puts " Вы кормите #{@name}"
  @feed_pt = 10
  @walk = @walk -1
  passageOfTime
 end

 def play
  puts "Вы играете с #{@name}"
  puts "#{@name} довольно машет хвостом "
  @happiness_pt = 10
  @walk -= 1
  passageOfTime
 end

 def walk
  puts " Вы гуляете с #{@name}"
  @walk = 10
  @feed_pt -= 2
  passageOfTime
 end

 def nurse
  puts "Вы лечите #{@name}"
  @happiness_pt -= 1
  if @health_pt < 8
     @health_pt += 2
  else
  puts ""
  end
  passageOfTime
 end

 def train
  puts = "Вы решили занятся тренировками #{@name}"
  @discipline_pt = 10
  @feed_pt -= 2
  @happiness_pt -= 2
  passageOfTime
 end

 def watch
  if rand(2) == 0
  puts = " #{@name} резво носится по дому и выглядит довольным"
  @happiness_pt += 1
  @feed_pt -= 1
  else
  puts = "#{@name} скучает, его настроение портится "
  @happiness_pt -= 1
  @feed_pt -= 1
  end
  passageOfTime	
 end

 def caress
  puts = "Вы гладите #{@name} "
  @happiness_pt += 1
  @discipline_pt -= 1
  passageOfTime	
 end
 
 def wash
  puts = "Вы моете #{@name}"
  @happiness_pt -= 1
  @health_pt += 1
  passageOfTime
 end
 
 def talk
  puts = "Вы говорите с #{@name}"
  @discipline_pt += 1
  @walk -= 1
  passageOfTime	
 end
 
 def sleep
  puts "Вы ложите #{@name} в кровать"
    @sleep = true
    2.time do
      passageOfTime
      puts "#{@name} засипает"
    end
    if @sleep  
      @sleep = false
      puts "#{@name} не хочет спать и встает из кровати"
     @happiness_pt += 2
    end
 end
 
 def help
 puts "Все доступные команды: feed, play, walk, nurse, train,  watch, caress, talk, wash, sleep"
 end
 
 private
 
 def passageOfTime
  @feed_pt -= rand(1..2)
  @happiness_pt -= rand(1..2)
  @discipline_pt -= rand(1..2)
  @walk -= rand(1..2)
    
  if @feed_pt <= 0
      puts " #{@name} очень голоден"
      @health_pt -= 5
      @discipline_pt -= 3
    elsif @feed_pt <= 5
      puts "У #{@name} урчит в желудке"
    end

    if @happiness_pt <= 0
      puts "#{@name} нещастен(("
      @discipline_pt -= 5
    elsif @happiness_pt <= 5
      puts "#{@name} слегка грустит"
    end
    
    if @walk <= 0
       @walk = 10
       puts "#{@name} не удержался и засрал все вокруг"
       @happiness_pt -= 5
    elsif @walk <= 5
      puts " #{name} просится погулять "
    end
      
    if @discipline_pt <= 0
      puts "#{@name} решил что вы ему не указ и удалился в горизонт"
      @happiness_pt -= 5
    elsif @discipline_pt <= 5
      puts "#{@name} ведет себя своенравно"
    end

    if @health_pt <= 0
      puts "Ваш питомец умирает"
      puts "GAME OVER"
     elsif @health_pt <= 5
      puts "#{@name} приболел"
    end

  end
  
end



pet = Pet.new
puts "--------".center(50)
puts "ТАМАГОЧИ".center(50) 
puts "********".center(50)
puts
puts "Виберите тип питомца".center(50)
puts "--------------------".center(50)
puts "Медведь          Пес".center(50)

pet.animal = gets.chomp.capitalize

choice = true
while choice
  if (pet.animal == "Медведь" || pet.animal == "Пес")
    puts "Дайте имя своему питомцу".center(50)
    pet.name = gets.chomp.capitalize
    choice = false
  else
    puts "Такого питомца нету".center(50)
    puts "Возьмите другого".center(50)
    pet.animal = gets.chomp.capitalize
  end
end

command = true
while command
  puts "--------------".center(50)
  puts "*****МЕНЮ*****".center(50)
  puts "--------------".center(50)
  puts "1 = Кормить  2 = Играть      3 = Гулять".center(50)
  puts " 4 = Лечить   5 = Тренировать 6 = Наблюдать".center(50)
  puts "7 = Гладить  8 = Общатся     9 = Купать".center(50)
  puts "10 = Спать   11 = Помощь     12 = Выход".center(50)
  puts
  puts "------------------------------------------".center(50) 
  puts
  puts "Введите номер действия..  ".center(50)
  number_com = gets.chomp.to_i
  case
  when number_com == 1
    pet.feed
  when number_com == 2
    pet.play                                                
  when number_com == 3
    pet.walk
  when number_com == 4
    pet.nurse
  when number_com == 5
    pet.train
  when number_com == 6
    pet.watch
  when number_com == 7
    pet.caress
  when number_com == 8 
    pet.talk
  when number_com == 9 
    pet.wash
  when number_com == 10 
    pet.sleep
  when number_com == 11 
    pet.help
  when number_com == 12
    puts "Пока"
    command = false
  else 
    puts "Даное действие не доступно. Выберите из имеющихся"
  end
end



