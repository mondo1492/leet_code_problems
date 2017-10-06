def is_valid(s)
    arr1 = []
    comparisons = {
        ']' => '[',
        '}' => '{',
        ')' => '(',
        }
    openers = '[({'
    closers = ']})'
    s.chars.each do |ch|
        if arr1.empty?
            return false if closers.include?(ch)
            arr1.push(ch) if openers.include?(ch)
        elsif openers.include?(ch)
            arr1.push(ch)
        elsif closers.include?(ch)
            if arr1[-1] != comparisons[ch]
                return false
            else
                arr1.pop
            end
        end
    end
    return false unless arr1.empty?
    true
end
