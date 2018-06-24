class Card
  attr_accessor :portugues 
  attr_accessor :ingles 
  attr_accessor :imagem 

  def initialize(port, ing = "")
    @portugues = port
    @ingles = ing
    # @imagem = "nenhuma"
  end

  def imprimir()
    "Card: #{@portugues} => #{@ingles}"
    puts
  end

  def to_s()
    "#{portugues()} => #{ingles()}"
    
  end

  def include?(texto)
    portugues().include?(texto) || ingles().include?(texto)
  end

  def ==(outro_card)
    portugues() == outro_card.portugues() &&
    ingles() == outro_card.ingles()
  end

end
