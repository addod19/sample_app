class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 253 }
end
