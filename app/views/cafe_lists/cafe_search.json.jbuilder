json.array!(@cafe_lists) do |cafe_list|
  json.name cafe_list.location + ', ' + cafe_list.title
end