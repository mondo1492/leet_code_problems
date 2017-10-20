###in progress

def max_product(nums)
    return [] if nums.empty?
    store = []
    nums.each_with_index do |num, idx|
        if idx == 0
            store.push(num)
        else
            if store[-2] && num * store[-2] * store[-1] > store[-1]
                store[-1] = num * store[-2] * store[-1]
                # store.push(num)
            elsif num * store[-1] > store[-1]
                store[-1] = num * store[-1]
                # store.push(num)
            else
                store.push(num)
            end
        end
    end
    p store
    store.max
end
