def title_to_number(s)
    alphabet = Hash.new()
    ('A'..'Z').to_a.each_with_index do |let, idx|
        alphabet[let] = idx + 1
    end

    len = s.length
    sum_num = 0

    (len - 1).times do |count|
        next_num = (26 * alphabet[s[count]]) * (26 ** (len - 2 - count))
        sum_num += next_num
    end
    sum_num + alphabet[s[-1]]

end
