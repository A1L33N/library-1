require('spec_helper')


describe(Author) do
  describe("#name") do
    it('will return the name of the author') do
      author1 = Author.new({:id => nil, :name => 'Tyrion Lannister'})
      expect(author1.name).to(eq('Tyrion Lannister'))
    end
  end

  # describe(".all") do
  #   it("will return an empty array at first") do
  #     expect(Patron.all).to(eq([]))
  #   end
  # end
  #
  # describe("#save") do
  #   it("will save a patron to the patrons DB") do
  #     patron1 = Patron.new({:id => nil, :name => 'Arya Stark'})
  #     patron1.save
  #     expect(Patron.all()).to(eq([patron1]))
  #   end
  # end
  #
  # describe('#==') do
  #   it("will compare items the way we want") do
  #     patron1 = Patron.new({:id => nil, :name => 'Arya Stark'})
  #     patron1.save
  #     expect(Patron.all()).to(eq([patron1]))
  #   end
  # end
  #
  # describe('.find') do
  #   it('locates a given instance of a patron class by ID') do
  #     patron1 = Patron.new({:id => nil, :name => 'Arya Stark'})
  #     patron1.save
  #     patron2 = Patron.new({:id => nil, :name => 'Rob Stark'})
  #     patron2.save
  #     patron3 = Patron.new({:id => nil, :name => 'Bran Stark'})
  #     patron3.save
  #     expect(Patron.find(patron2.id())).to(eq(patron2))
  #   end
  # end
  #
  # describe('#delete') do
  #   it('deletes a specific instance of the Patron class') do
  #     patron1 = Patron.new({:id => nil, :name => 'Arya Stark'})
  #     patron1.save
  #     patron2 = Patron.new({:id => nil, :name => 'Rob Stark'})
  #     patron2.save
  #     patron3 = Patron.new({:id => nil, :name => 'Bran Stark'})
  #     patron3.save
  #     patron3.delete()
  #     expect(Patron.all()).to(eq([patron1, patron2]))
  #   end
  # end
  #
  # describe(".clear") do
  #   it('clears all the saved patrons') do
  #     patron1 = Patron.new({:id => nil, :name => 'Arya Stark'})
  #     patron1.save
  #     patron2 = Patron.new({:id => nil, :name => 'Rob Stark'})
  #     patron2.save
  #     patron3 = Patron.new({:id => nil, :name => 'Bran Stark'})
  #     patron3.save
  #     Patron.clear
  #     expect(Patron.all()).to(eq([]))
  #   end
  # end
end
