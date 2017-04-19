class String
  define_method(:find_and_replace) do |find,replace|
    input_array = self.split()
    if input_array.include?(find)
      result = self.gsub(find, replace)
    else
      result = "No match found"
    end
    result
  end
end
