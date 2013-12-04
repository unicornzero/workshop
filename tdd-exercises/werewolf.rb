class Werewolf
  attr_accessor :name, :location, :human_form

  def initialize(name, location = nil)
    @name = name
    @location = location
    @human_form = :true
  end

  def human?
    @human_form
  end

  def werewolf?
    !@human_form
  end

  def change!
    if @human_form
      @human_form = false
    else
      @human_form = true
    end
  end
end