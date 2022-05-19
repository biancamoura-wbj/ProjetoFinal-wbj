class ShoppingCart
    include Capybara::DSL
    
        def choose_product
            wait 5.seconds until find('a', text: 'DATAS COMEMORATIVAS').hover
            wait 5.seconds until find('a', text: 'PASCOA').click
        end
    
    end
    