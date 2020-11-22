class HomeController < ApplicationController
    def index
        @books = Book.En_estante
    end
end