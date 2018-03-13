class Member
  attr_reader :name, :biography, :power

  MEMBERS = []

  def initialize(args)
    @name = args[:name]
    @biography = args[:biography]
    @power = args[:power]
    MEMBERS << self
  end
  def self.all
    MEMBERS
  end
end
