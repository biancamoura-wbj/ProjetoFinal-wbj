class Methods
    include Capybara::DSL
    include RSpec::Matchers
   
    def preencho(elm, value)
        find(elm).set value
    rescue StandardError => e
        raise "Nao foi possivel encontrar o elemento #{elm}"
    end
    
end