#requisitos
require_relative 'card'

#variaveis globais
cards = []

#metodos
def menu()
  puts "Digite a opção desejada"
  puts "[1] Inserir um novo card"
  puts "[2] Exibir os cards"
  puts "[3] Buscar um card"
  puts "[4] Sair"
  puts
  print 'Escolha uma opção: '
  gets.to_i
end

def ler
    gets.chomp.downcase
end

def inserir(cards)
  puts 'Insira uma expressão em Português:'
  portugues = ler()
  puts 'Insira uma expressão em Ingles:'
  ingles = ler()
  card = Card.new(portugues,ingles)

  card_existe = false

  #metodo select
  cards.each do |c|
    if c == card
      puts 'Esse card ja existe'
      card_existe = true
    end 
  end
  
  if card_existe == false
    cards << card
    puts "Você inseriu o card: #{ card } "
  end
  puts 
  return card
end

def imprimir_cards(cartoes)
  puts "Cards Cadastrados:"
  puts
  cartoes.each do |cartao|
    cartao.imprimir()
  end
  puts
end

#Corpo do codigo

puts 'Bem vindo ao Cards System'
opcao = menu()

while opcao != 4
  if opcao == 1
    c = inserir(cards)
    #open('cards.data', 'a') do |f|c
    #  f << cards
    #end
    puts
  elsif opcao == 2
    
    imprimir_cards(cards)
    puts
  elsif opcao == 3
    puts 'Em qual idioma deseja buscar ?'
    puts '[1] Portugues'
    puts '[2] Ingles'
    puts '[3] Voltar ao menu anterior'
    print 'Escolha uma opção: '
    seletor = gets.to_i
    if seletor == 1
      print "Informe o texto que está procurando: "
      texto_busca = ler()

      cards.each do |c|
        if c[:portugues].include?(texto_busca)
          puts "Card Encontrado: #{c}"
        end
      end
    elsif seletor == 2

      print "Informe o texto que está procurando: "
      texto_busca = ler()

      cards.each do |c|
        if c[:ingles].include?(texto_busca)
          puts "Card Encontrado: #{c}"
        end
      end

    end


    # XX cards encontrados

  else
    puts 'Entre com uma opcao válida'
    puts
  end
  opcao = menu()
end

puts 'Obrigado por usar o Cards System!'
