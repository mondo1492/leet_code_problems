def str_str(haystack, needle)
    return 0 if haystack == needle
    return 0 if needle.length == 0
    return -1 if needle.length > haystack.length
    breaker = false
    haystack.chars.each_with_index do |ch, idx|
        return -1 if needle.length > (haystack.length - idx)
        if needle[0] == ch
            sub_idx = idx
            needle.chars.each do |ch2|
                if ch2 != haystack[sub_idx]
                    breaker = true
                    break
                end
                sub_idx += 1
            end
            if breaker == true
                breaker = false
            else
                return idx
            end
        end
    end
    -1
end
