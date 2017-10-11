def is_anagram(s, t)
    s.chars.sort.to_s == t.chars.sort.to_s
end
