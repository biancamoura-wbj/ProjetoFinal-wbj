class CreateAccount < Methods
    include Capybara::DSL

    def access_page
        visit 'http://festas.magentoteste.local/'
    end

    def access_create_account
        click_link 'Cadastre-se'
    end

    def forms (name, last_name, email, password, confirm_password)
        preencho(EL['name'], name)
        preencho(EL['lastName'], last_name)
        preencho(EL['emailRegister'], email)
        preencho(EL['passwordRegister'], password)
        preencho(EL['confirmPassword'], confirm_password)
    end

    def click_but 
        click_button 'Cadastre-se'
    end

    def alert (message)
        wait 5.seconds until assert_text (message)
    end

end
