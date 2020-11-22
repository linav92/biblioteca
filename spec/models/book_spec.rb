require 'rails_helper'

RSpec.describe Book, type: :model do
  describe "#Cantidad de libros" do
    it 'tener mas de un libro ' do   #
    
      expect(Book.all().length).to be > 0
    end
  end

  describe "Encontrar autor Leyla" do 
    it 'Buscar libros con autor Leyla' do
      expect(Book.find_by_author("Leyla"))
    end
  end
end
