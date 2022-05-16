class CreateAccount
include Capybara::DSL

    def BtnCreate
        click_link 'Criar conta'
    end 

    def FieldsSchema (name_p, lastname_p, email_p, password_p, confirm_pass_p)
        find('#firstname').set name_p
        find('#lastname').set lastname_p
        find('#email_address').set email_p
        find('#password').set password_p
        find('#password-confirmation').set confirm_pass_p
        click_button 'Criar conta'
    end

    def FieldsFake
        find('#firstname').set(Faker::Name.name)
        find('#lastname').set(Faker::Name.name)
        find('#email_address').set(Faker::Internet.email)
        find('#password').set('pa$$W0rd')
        find('#password-confirmation').set('pa$$W0rd')
        click_button 'Criar conta'
    end
    
    def ResultOK (message_p)
        wait 10.seconds until assert_text (message_p)
    end

    def ResultError (message_p)
        wait 10.seconds until assert_text (message_p)
    end


end