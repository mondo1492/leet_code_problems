def is_power_of_three(n)
    return true if n == 1
    return false if n < 1
    is_power_of_three(n/3.0)
end
