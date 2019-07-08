def array_to_hash(array)
  hash = {}
  array.each_with_index do |item, index|
    key = block_given? ? yield(index) : index.to_s
    hash[key] = item
  end
  return hash
end
