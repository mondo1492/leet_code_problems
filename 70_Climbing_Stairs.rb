def climb_stairs(n)
  if n < 0
    0
  elsif n <= 1
    1
  else
    path = []
    path[1] = 1
    path[2] = 2
    idx = 3
    while idx <= n
      path[idx] = path[idx - 1] + path[idx - 2]
      idx += 1
    end
    path[n]
  end
end

def climb_stairs(n)
  path = [0, 1, 2]
  idx = 3
  while idx <= n
    path[idx] = path[idx - 1] + path[idx - 2]
    idx += 1
  end
  path[n]
end

p climb_stairs(1)
p climb_stairs(2)
p climb_stairs(3)
p climb_stairs(4)
p climb_stairs(5)
p climb_stairs(6)
