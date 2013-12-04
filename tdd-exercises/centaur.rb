class Centaur
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @exercises = 0
    @posture = :standing
  end

  def cranky?
    @exercises > 2
  end

  def standing?
    @posture == :standing
  end

  def laying?
    @posture == :laying
  end

  def exercise
    @exercises += 1
  end

  def refuse
    "NO!"
  end

  def lay_down
    @posture = :laying
  end

  def stand_up
    @posture = :standing
  end

  def shoot
    if cranky? || laying?
      refuse
    else
      exercise
      "Twang!!!"
    end
  end

  def run
    if cranky? || laying?
      refuse
    else
      exercise
      "Clop clop clop clop!!!"
    end
  end

  def sleep
    if standing?
      refuse
    else
      @exercises = 0
    end
  end
end