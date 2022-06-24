def matrix_addition(arr1, arr2)
    final = []
    arr1.each_with_index do |x, i|
        temp = []
        arr2.each_with_index do |y, j|
            if j < arr1[0].length
            temp << arr1[i][j] + arr2[i][j]
            end
        end
        final << temp
    end
return final
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

# def matrix_addition(arr1, arr2)

#     sum = Array.new(arr1.length) {Array.new(arr1[0].length)}

#    (0...arr1.length).each do |x|
#     (0...arr1[0].length).each do |y|
#         sum[x][y] = arr1[x][y] + arr2[x][y]
#     end
# end

#     return sum


# end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]
