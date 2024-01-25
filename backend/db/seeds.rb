# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

puts "== Preparing =="

[ Book, Author, Publisher ].each do |model|
  model.destroy_all
end

puts "\n== Creating authors =="

joel_hartse      = Author.create!(first_name: "Joel", last_name: "Hartse")
hannah_templer   = Author.create!(first_name: "Hannah", middle_name: "P.", last_name: "Templer")
marguerite_duras = Author.create!(first_name: "Marguerite", middle_name: "Z.", last_name: "Duras")
kingsley_amis    = Author.create!(first_name: "Kingsley", last_name: "Amis")
fannie_flagg     = Author.create!(first_name: "Fannie", middle_name: "Peters", last_name: "Flagg")
camille_pagliaa  = Author.create!(first_name: "Camille", middle_name: "Byron", last_name: "Paglia")
rainer_rilke     = Author.create!(first_name: "Rainer", middle_name: "Steel", last_name: "Rilke")

puts "\n== Creating publishers =="

paste_magazine    = Publisher.create!(name: "Paste Magazine")
publishers_weekly = Publisher.create!(name: "Publishers Weekly")
graywolf_press    = Publisher.create!(name: "Graywolf Press")
mc_sweeneys       = Publisher.create!(name: "McSweeney's")

puts "\n== Creating books =="

def create_book_with_image(attributes)
  book = Book.create!(attributes)
  book.image.attach(File.open("support/images/#{book.title}.jpg"))
  book.image_url = Rails.application.routes.url_helpers.rails_blob_path(book.image, only_path: true)
  book.save!
  sleep 0.05
end

create_book_with_image(
  title: "American Elf",
  authors: [ joel_hartse, hannah_templer, marguerite_duras ],
  isbn_13: "978-1-891830-85-3",
  publication_year: 2004,
  publisher: paste_magazine,
  list_price: 1000,
  edition: "Book 2"
)

create_book_with_image(
  title: "Cosmoknights",
  authors: [ kingsley_amis ],
  isbn_13: "978-1-60309-454-2",
  publication_year: 2019,
  publisher: publishers_weekly,
  list_price: 2000,
  edition: "Book 1"
)

create_book_with_image(
  title: "Essex County",
  authors: [ kingsley_amis ],
  isbn_13: "978-1-60309-038-4",
  publication_year: 1990,
  publisher: graywolf_press,
  list_price: 500
)

create_book_with_image(
  title: "Hey, Mister (Vol 1)",
  authors: [ hannah_templer, fannie_flagg, camille_pagliaa ],
  isbn_13: "978-1-891830-02-0",
  publication_year: 2000,
  publisher: graywolf_press,
  list_price: 1200,
  edition: "After School Special"
)

create_book_with_image(
  title: "The Underwater Welder",
  authors: [ rainer_rilke ],
  isbn_13: "978-1-60309-398-9",
  publication_year: 2022,
  publisher: mc_sweeneys,
  list_price: 3000
)
