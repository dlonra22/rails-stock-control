class TransactionsController < ApplicationController
    
    def index
        @transactions=Transaction.all
    end

    def new
    end
    def show
    end
    def create
    end
    def destroy
    end
end
