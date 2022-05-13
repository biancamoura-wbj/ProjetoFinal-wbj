class CreateAccount
include Capybara::DSL

    def Account
        click_link 'Criar conta'
    end 

    def FieldsName (name_p, lastname_p)
        find('#firstname').set name_p
        find('#lastname').set lastname_p
    end

    def FieldsEmail (email_p, password_p)
        find('#email_address').set email_p
        find('#password').set password_p
        find('#password-confirmation').set password_p
    end
    
    def AccountSucess
        wait 5.seconds until assert_text ('Obrigado por registrar-se')
    end


end