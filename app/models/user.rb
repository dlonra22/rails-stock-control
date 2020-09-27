class User < ApplicationRecord
   has_many :transactions
   has_many :items, through: :transactions
   has_secure_password

   def self.admin_users
     where(is_admin: true)
   end

   def allow_admin_registration=(set = false)
      self.allow_admin_registration = set
   end
end
