class Book < ApplicationRecord
    validates  :title, :author, :status, presence: true

    enum status: [:Prestado, :En_estante]
end
