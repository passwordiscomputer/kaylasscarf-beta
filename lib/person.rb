require_relative('kaylascarf')

class Person

  def initialize(name, question, answer)
    @name = name
    @has_scarf = false
    @question = question
    @answer = answer
  end

  def name
    @name
  end

  def question
    @question
  end

  def answer
    @answer
  end
  
  def give_scarf
    @has_scarf = false
  end

  def receive_scarf
    @has_scarf = true
  end

end
