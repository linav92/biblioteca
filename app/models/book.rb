class Book < ApplicationRecord
    validates  :title, :author, presence: true

    enum status: {Prestado: 0, En_estante: 1}

    before_save :has_status
    def has_status
        if self.status.nil?
            self.status = "Prestado"
        end
    end
end
