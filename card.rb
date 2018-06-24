class Card
  attr_accessor :portugues
  attr_accessor :ingles

  def initialize(port = "", ing = "")
    #code
    @portugues = port
    @ingles = ing
  end

  def imprimir()
    "Card: #{@portugues} => #{@ingles}"
    puts
  end

  def include?(texto)
    portugues().include?(texto) || ingles().include?(texto)
  end

  def ==(outro_card)
    # TODO:
  end

end
