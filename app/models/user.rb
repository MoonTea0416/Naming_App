class User < ApplicationRecord
      validates :username, presence: true, uniqueness: true, length: { in: 3..15 }
      validates :email, presence: true, uniqueness: true, format: Devise.email_regexp
      validates :fullname, presence: true, length: { in: 3..50 }
      validates :city, presence: true, length: { in: 3..50 }
      validates :password, presence: true, length: { in: 6..20 }
end
