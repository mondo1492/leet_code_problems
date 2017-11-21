def is_ugly(num)
    return true if num == 1
    arr = get_prime_factors(num)
    arr[0..2].each do |n|
        return false if n != 2 && n != 3 && n != 5
    end
    true
end

def is_prime?(num)
    (2..Math.sqrt(num.abs)).each do |n|
        return n if num % n == 0
    end
    true
end

def get_prime_factors(num)
    return [num] if is_prime?(num) == true
    get_prime_factors(num / is_prime?(num)).push(is_prime?(num))
end
