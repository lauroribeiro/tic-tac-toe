class Player
    attr_reader :name, :symbol
  
    def initialize(name)
      @name = name.capitalize
      @symbol = name[0].capitalize
    end
  end
  