def count_and_say(n)
    return "1" if n == 1
    current_string  = "1"
    (n - 1).times do
        current_string = helper(current_string)
    end
    current_string
end

def helper(current_string)
    idx = 0
    cur_let = current_string[0]
    count = 0
    builder = ""
    current_string.chars.each do |let|
        if let == cur_let
            count += 1
        else
            builder += (count.to_s + cur_let)
            cur_let = let
            count = 1
        end
    end
    builder += ((count).to_s + cur_let)
end

 # 1.     1
 # 2.     11
 # 3.     21
 # 4.     1211
 # 5.     111221
 # 6.     312211
 # 7.     13112221
 # 8.     1113213211
 # 9.     31131211131221
 # 10.   13211311123113112211
