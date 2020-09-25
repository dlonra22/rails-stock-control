class User < ApplicationRecord
   has_many :transactions
   has_many :items, through: :transactions
end
