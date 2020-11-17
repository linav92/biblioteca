class Book < ApplicationRecord
    validates  :title, :author, presence: true

    enum status: {Prestado: 0, En_estante: 1}
end
