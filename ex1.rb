class Candidato
    def initialize(partido1,partido2,partido3,num_votos1,num_votos2,num_votos3,nome1,nome2,nome3)
        @partido1 = partido1 
        @partido2 = partido2
        @partido3 = partido3
        @num_votos1 = num_votos1
        @num_votos2 = num_votos2
        @num_votos3 = num_votos3
        @nome1 = "Fulano"
        @nome2 = "Ciclano"
        @nome3 = "Beltrano"
    
    end #fim initialize Candidato
end #fim classe Candidato

#herdando os atributos da superclasse candidato p poder usar no metodo votar
class Eleicao < Candidato
    def initialize(ano,num_candidato)
        @ano = ano
        @num_candidato = num_candidato
    
    end #fim initialize Eleicao
    
    #mostrando o ano da eleicao
    def ano_eleicao
        puts "esta eleição esta acontecendo no ano de #{@ano}"
    
    end #fim metodo ano_eleicao
    
    #metodo p inserir o voto
    def votar
        puts "insira o numero do cadidato q vc deseja votar: "
        num_candidato = gets
        
        case num_candidato
            when num_candidato === 1
                puts "vc votou no candidato #{@nome1}"
                @num_votos1 += 1
                @partido1 += 1
            when num_candidato === 2
                puts "vc votou no candidato #{@nome2}"
                @num_votos2 += 1
                @partido2 += 1
            when num_candidato === 3
                puts "vc votou no candidato #{@nome3}"
                @num_votos3 += 1
                @partido3 += 1
                
        end #fim case
    end #fim metodo votar
    
    def mostrar_votos_candidato
        puts "o cadidato #{@nome1} tem #{@num_votos1} voto(s)"
        puts "o cadidato #{@nome2} tem #{@num_votos2} voto(s)"
        puts "o cadidato #{@nome3} tem #{@num_votos3} voto(s)"
   
   end #fim metodo mostrar_votos_candidato
    
    def mostrar_votos_partido
        puts "o partido azul tem #{@partido1} voto(s)"
        puts "o partido vermelho tem #{@partido2} voto(s)"
        puts "o partido verde tem #{@partido3} voto(s)"
    
    end #fim metodo mostrar_votos_partido

end #fim classe Eleicao


e = Eleicao.new(2010, '')

e.votar