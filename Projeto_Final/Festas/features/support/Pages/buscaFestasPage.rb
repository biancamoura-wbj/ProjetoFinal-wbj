class SearchProduct < Methods
    include Capybara::DSL

    def searchProduct (message)
        fillFields(EL['searchField'], message)
    end

    def clickButton
        clickButtonByText(EL['botaoPequisa'])
    end
end