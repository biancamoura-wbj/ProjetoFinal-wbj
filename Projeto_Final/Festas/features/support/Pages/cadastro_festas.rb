class CreateAccount
    include Capybara::DSL

    def access_page
        visit 'http://festas.magentoteste.local/'
    end

    def access_create_account
        click_link 'Criar conta'
    end

    def fill_fields (name, last_name, email, password, confirm_password)
        find_by_id('firstname').set name
        find_by_id('lastname').set last_name
        find_by_id('email_address').set email
        find_by_id('password').set password
        find_by_id('password-confirmation').set confirm_password
    end

    def fake_fields
        find_by_id('firstname').set (Faker::Name.name)
        find_by_id('lastname').set (Faker::Name.name)
        find_by_id('email_address').set (Faker::Internet.email)
        find_by_id('password').set ('Abc1234*')
        find_by_id('password-confirmation').set ('Abc1234*')
    end

    def click_but 
        click_button 'Criar conta'
    end

    def alert (message)
        wait 5.seconds until assert_text (message)
    end

end
