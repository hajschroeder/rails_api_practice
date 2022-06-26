class Seed 
  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  def generate_quotes
    27.times do |i|
      quote = Quote.create!(
        author: Faker::Book.author,
        content: Faker::Movie.quote
      )
      puts "Quote #{i}: Author is #{quote.author} and quoatation is '#{quote.content}'."
    end
  end
end

Seed.begin