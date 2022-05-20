class Methods
include Capybara::DSL
include RSpec::Matchers

#Metodo que busca um elemento e preencher com um valor
    def fillFields(element, value)
        find(element).set(value)
    rescue SomeExceptionClass => error
        raise "Elemento: #{element} não encontrado, #{error}"
    end

#Metodo para validar elemento css
    def validateCss(element)
        expect(page).to have_css(element, visible: true)
    rescue SomeExceptionClass => error
        raise "Elemento: #{element} não encontrado, #{error}"
    end
    
#Metodo para validar a mensagem
    def validateMessage(message)
        assert_text(message, wait: 10)
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end
    
#Metodo para clicar em um botão com determinado nome    
    def clickButtonByText(element)
        find_button(element).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

#Metodo para clicar em um botão com determinado nome 
    def clickLinkByText(element)
        find_link(element).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end

end

=begin
#Metodo para clicar no botão pela classe

    def clickButtonByClass(element)
        find_button(class:element).click()
    rescue SomeExceptionClass => error
        raise "Ops, #{error}"
    end
=end