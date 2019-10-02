class IMC
    
    def initialize(altura,peso)
        if (0.5 .. 2.2) === altura
            @altura = altura
        else
            puts "altura invalida"
        end
        
        if (0.1 .. 300) === peso
            @peso = peso
        else
            puts "peso invalido"
        end
        
    end #fim initialize
    
    #metodo para calcular o imc
    def calcula_imc
        
        if @peso/@altura*@altura < 18
            puts "vc esta magro"
        elsif @peso/@altura*@altura <= 25
            puts "vc esta no peso ideal"
        elsif @peso/@altura*@altura > 25
            puts "vc esta acima do peso"
        end
            
    end #fim calcula_imc
end #fim IMC
