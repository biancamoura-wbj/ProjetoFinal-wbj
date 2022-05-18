class SearchProduct
    include Capybara::DSL

    def search_product (message)
        fill_in 'Qual artigo de festa você está procurando?', with: message
        click_button 'Pesquisa'
        #find ('input[placeholder*="Qual artigo de festa você está procurando?"]')
    end

end