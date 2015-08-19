require('rspec')
require('pry')
require('book')
require('pg')

DB = PG.connect({:dbname => 'library_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM books *;")
  end
end

describe(Book) do
  describe("#title") do
    it(' will return the title of the book') do
      book1 = Book.new({:id => nil, :title => 'Ready Player One'})
      expect(book1.title).to(eq('Ready Player One'))
    end
  end

  describe(".all") do
    it("will return an empty array at first") do
      expect(Book.all).to(eq([]))
    end
  end

  describe("#save") do
    it("will save a book to the book DB") do
      book1 = Book.new({:id => nil, :title => 'Ready Player One'})
      book1.save
      expect(Book.all).to(eq([book1]))
    end
  end

  describe('#==') do
    it("will compare items the way we want") do
      book1 = Book.new({:id => nil, :title => 'Ready Player One'})
      book1.save
      expect(Book.all).to(eq([book1]))
    end
  end
end
