def my_collect(array) # put argument(s) here
  # code here
  i = 0
  collection = []
  while i < array.size
    collection << yield(array[i])
    i += 1
  end
  collection
end


array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
