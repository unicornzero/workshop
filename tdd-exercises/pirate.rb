class Pirate
  attr_accessor :name, :job, :curses

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @curses = 0
  end

  def cursed?
  	@curses >= 3
  end

  def commit_heinous_act
  	@curses += 1
  end
end