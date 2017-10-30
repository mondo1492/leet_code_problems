def num_trees(n)
    dp = [1,1]
    level = 2
    while level <= n
        root = 1
        while root <= level
            if dp[level]
                dp[level] += (dp[level - root] * dp[root - 1])
            else
                dp[level] = (dp[level - root] * dp[root - 1])
            end
            root += 1
        end
        level += 1
    end
    dp[n]
end
