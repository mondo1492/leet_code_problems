def first_uniq_char(s)
    hash = Hash.new(0)
    s.chars.each do |ch|
        hash[ch] += 1
    end

    s.chars.each do |ch|
        return s.index(ch) if hash[ch] == 1
    end
    -1
end
