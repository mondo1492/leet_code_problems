def group_anagrams(strs)
  hash = Hash.new { |h, k| h[k] = [] }
  strs.each do |str|
    hash[str.chars.sort.join].push(str)
  end
  hash.values
end

p group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"])
