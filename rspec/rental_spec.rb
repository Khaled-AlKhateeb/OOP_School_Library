require_relative './models/person'
require_relative './models/book'
require_relative './models/rental'

describe Rental do
  context 'When providing a book and a person' do
    book = Book.new('Warcraft', 'Richard A. Kanaak')
    person = Person.new(id: nil, age: 38, name: 'khaled', parent_permission: true)
    rental = Rental.new('23/04/2021', book, person)

    it 'should create a rental for person' do
      expect(person.rentals).to include(rental)
    end

    it 'should create a rental for book' do
      expect(book.rentals).to include(rental)
    end
  end
end
