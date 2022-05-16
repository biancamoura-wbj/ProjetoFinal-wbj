class SignInPage
    include Capybara::DSL

    def click_signin
        click_link 'Entre'
    end
      
    def fill_fields_login (name_login, password_login)
        find('#email').set name_login
        find('#pass').set password_login
    end
      
    def click_button_signin
        click_button 'Entre'
    end

    def success_login
        page.has_css?('.logged-in', visible: true)
    end

end