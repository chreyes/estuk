json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :description, :price, :avalaiability
  json.url book_url(book, format: :json)
end
