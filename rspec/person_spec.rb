require_relative './models/person'

describe Person do
  context 'When passing a name' do
    person = Person.new(id: nil, age: 38, name: 'khaled', parent_permission: true)
    person_two = Person.new(id: nil, age: 24, name: 'fahed', parent_permission: false)
    it 'should return first letter capital' do
      expect(person.validate_name).to eq 'khaled'
    end

    it 'should return true if he can use service' do
      expect(person.can_use_services?).to eq true
    end

    it 'should return false if he cannot use service' do
      expect(person_two.can_use_services?).to eq false
    end

    it 'should add into rentals' do
      person.add_rentals(person)
      expect(person.rentals.length).to eq 1
    end
  end
end
