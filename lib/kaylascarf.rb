require_relative('person')

class Kaylas_scarf
  def initialize
    @person_array = []
    @person_list = ["Johnny", "Maggie", "Roger", "Andrew", "Nicko", "David", "Logan", "Stephanie", "Yochi", "Cameron"]
    @question_hash = {"Alex" => "Who is my favorite Blazer's player", "Johnny" => "If I could drive any car what would it be?", "Maggie" => "What is my favorite color", "Roger" => "What kind of car do I drive?", "Andrew" => "How many friends do I have", "Nicko" => "What is my favorite drink?", "David" => "What is my favorite flavor of ice cream?", "Logan" => "What is my favorite political system?", "Stephanie" => "What did you spill on me?", "Yochi" =>"What kind of animal am I?", "Cameron" => "What is my favorite subway sandwhich?"}
    @answer_hash = {"Alex" => "swanigan", "Johnny" => "lamborghini diablo", "Maggie" => "blue", "Roger" => "lexus", "Andrew" => "many", "Nicko" => "heineken", "David" => "mint chocolate chip", "Logan" => "capitalism", "Stephanie" => "beer", "Yochi" => "dog", "Cameron" => "mayo sandwhich"}
  end

  def steal_scarf
    @scarf_holder.give_scarf
    @scarf_holder = @person_array[rand(0..9)]
    @scarf_holder.receive_scarf
  end

  def create_players
    @person_list.each do |person|
      person = Person.new(person, @question_hash[person], @answer_hash[person])
      @person_array.push(person)
    end
    @scarf_holder = @person_array[rand(0..9)]
  end

  def list_persons
    puts "Maggie has been messing with the thermostat again and it is getting awfully cold in the epicodus classroom. \n You look down to your desk to see that your most prized possesion your scarf is gone."
    puts "One of your classmates has your scarf"
    @person_array.each do |person|
      puts "#{person.name}"
    end
    puts "Scarf Holder: #{@scarf_holder.name}"
  end

  def riddle
    puts "#{@scarf_holder.name}: Kayla I have your scarf, I'll give it to you if you can answer my riddle"
    puts "#{@scarf_holder.question}"
    3.times do
      guess = gets.chomp
      if guess == @scarf_holder.answer
        puts "#{@scarf_holder.name}: You got the right answer! I will happily give you your scarf. Please wear it with dignity and pride"
        return
      end
      puts "wrong answer"
    end
    steal_scarf
    scarf_pick
  end

  def scarf_pick
    3.times do
      puts "Who do you think has the Scarf"
      choice = gets.chomp
      if choice == @scarf_holder.name
        riddle
        puts "Kayla: Thanks my dear friend #{@scarf_holder.name} it was getting awfully cold in here"
        return true
      end
      puts "#{choice} does not have the scarf"
    end
    puts "#{@scarf_holder.name} had the scarf but it was stolen by another classmate"
    steal_scarf
    scarf_pick
  end
end
