arr = [11, 4, 0, 21, 1, 13, 24, 21, 17, 6, 21, 9, 4, 29, 11, 9, 2, 4, 5, 8]

p arr.select{|e| e % 2 == 0}

# Output
# [4, 0, 24, 6, 4, 2, 4, 8]
