class CreateAccount < Methods
    include Capybara::DSL

    def accessPage
        visit 'http://festas.magentoteste.local/'
    end

    def accessCreateAccount
        clickLinkByText(EL['linkCadastre'])
    end

    def form (name, last_name, email, password, confirm_password)

        newEmail = email

        if email.eql? "email"
            newEmail = Faker::Internet.email       
        end

        fillFields(EL['nameRegister'], name)
        fillFields(EL['lastNameRegister'], last_name)
        fillFields(EL['emailRegister'], email)
        fillFields(EL['passwordRegister'], password)
        fillFields(EL['confirmPassword'], confirm_password)
    end

    def clickButton
        clickButtonByText(EL['botaoCadastre'])
    end

    def alert (message)
        validateMessage(message)
    end

end
