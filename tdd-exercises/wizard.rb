class Wizard
  attr_accessor :name, :bearded

  def initialize(name, opts = {bearded: true})
    @name = name
    @bearded = opts[:bearded]
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

end