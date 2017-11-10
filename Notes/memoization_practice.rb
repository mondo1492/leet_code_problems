def get_arr(n)
  memo_fib(n, memo = [0,1])
  memo
end


def memo_fib(n, memo)
  return memo[n] if memo[n]

  memo[n] = memo_fib(n - 1, memo) + memo_fib(n - 2, memo)

  return memo[n]
end

p get_arr(10)

def validSqure(grid, row, col)
  return true if grid[row] && grid[row][col] && grid[row][col] != 'X'
  false
end

def isAtEnd(grid, row, col)
  return true if col == grid[0].length - 1 && row == grid.length - 1
  false
end


def count_paths(grid, row, col, memo)
  return memo[[row, col]] if memo[[row, col]]
  return 0 if !validSqure(grid, row, col)
  return 1 if isAtEnd(grid, row, col)
  memo[[row, col]] = count_paths(grid, row + 1, col, memo) + count_paths(grid, row, col + 1, memo)
  return memo[[row, col]]
end

# matrix = Array.new(5) { Array.new(5, '.')}
matrix = [[".",".",".",".","."],
          [".","X",".",".","."],
          [".",".",".","X","."],
          [".","X",".",".","."],
          [".","X",".",".","."]]
hash = Hash.new()

p count_paths(matrix, 0, 0, hash)
