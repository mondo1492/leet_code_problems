def set_zeroes(matrix)
    matrix.each_with_index do |row, row_idx|
        row.each_with_index do |pos, col_idx|
            if pos ==  0
                matrix = set_left(matrix, row_idx, col_idx)
                matrix = set_right(matrix, row_idx, col_idx)
                matrix = set_up(matrix, row_idx, col_idx)
                matrix = set_down(matrix, row_idx, col_idx)
            end
        end
    end

    matrix.each_with_index do |row, row_idx|
        row.each_with_index do |pos, col_idx|
            if pos == 's'
                matrix[row_idx][col_idx] = 0
            end
        end
    end

    matrix
end

def set_left(matrix, row_idx, col_idx)
    return matrix if col_idx < 0
    if matrix[row_idx][col_idx] != 0
        matrix[row_idx][col_idx] = 's'
    end
    set_left(matrix, row_idx, col_idx - 1)
end

def set_right(matrix, row_idx, col_idx)
    cols = matrix[0].count
    return matrix if col_idx > cols - 1
    if matrix[row_idx][col_idx] != 0
        matrix[row_idx][col_idx] = 's'
    end
    set_right(matrix, row_idx, col_idx + 1)
end
def set_up(matrix, row_idx, col_idx)
    return matrix if row_idx < 0
    if matrix[row_idx][col_idx] != 0
        matrix[row_idx][col_idx] = 's'
    end
    set_up(matrix, row_idx - 1, col_idx)
end

def set_down(matrix, row_idx, col_idx)
    rows = matrix.count
    return matrix if row_idx > rows - 1
    if matrix[row_idx][col_idx] != 0
        matrix[row_idx][col_idx] = 's'
    end
    set_down(matrix, row_idx + 1, col_idx)
end
