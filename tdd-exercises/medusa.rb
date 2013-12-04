class Medusa
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    @statues << person
    person.stonify
  end


end

class Person
  attr_accessor :name, :stone

  def initialize(name)
    @name = name
    @stone = false
  end

  def stonify
    @stone = true
  end

  def stoned?
    @stone
  end

end