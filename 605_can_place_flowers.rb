def can_place_flowers(flowerbed, n)
    return true if n == 0
    len = flowerbed.length - 1
    flowerbed.each_with_index do |f, i|
        if f != 1 &&
           (i == 0 || flowerbed[i-1] != 1) &&
           (i > len || flowerbed[i+1] != 1)
            flowerbed[i] = 1
            n -= 1
        end
        return true if n == 0
    end
    false
end
