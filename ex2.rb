    class Usuario
        def initialize(email,senha,permissao)
            @email = email
            @senha = senha
            @permissao = permissao
        end #fim initialize
        
        #metodo que apresenta qual a permissao do usuario
        def apresentacao
            if @permissao === "convidado"
                puts "o usuário selecionado possui a permissao de Convidado"
            end
            if @permissao === "autenticado"
                puts "o usuário selecionado possui a permissao de Autenticado"
            end
            if @permissao === "admin"
                puts "o usuário selecionado possui a permissao de Admin"
            end
        end #fim apresentacao
        
        #metodos que mostram a pag em que o usuario esta via puts ou nega a vizualizacao da mesma
        def mostrar_pag_apresentacao
            if @permissao === "admin" or  @permissao === "autenticado" or @permissao === "convidado"
                puts "esta é a pág de apresentação do usuario #{@email}"
            else
                puts "vc nao tem permissao para acessar esta página!"
            end
        end #fim mostrar apresentacao
        
        def mostrar_dashboard
            if @permissao === "admin"
                puts "esta é a dashboard do usuario #{@email}"
            else
                puts "vc nao tem permissao para acessar esta página!"
            end
        end #fim mostrar dashboard
        
        def mostrar_painel
            if @permissao === "admin" or @permissao === "autenticado"
                puts "esta é o painel do usuario #{@email}"
            else
                puts "vc nao tem permissao para acessar esta página!"
            end
        end #fim mostrar painel
        
        def trocar_senha
            puts "insira a sua nova senha: "
            senha_nova = gets
            
            puts "a sua senha atual é: " + senha_nova
        end #fim metodo trocars senha

    end #fim class