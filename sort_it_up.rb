# You are given an array arr, consisting of only zeroes, ones and twos.

# Sort the same array in-place and return it. Do not create a new array.

# Input:

# n - the size of arr

# arr - the array itself

# Output:

# A sorted array

# Constraints:

# 1 <= n <= 100

# 0 <= arr[i] <= 2

# Sample Input
# 5
# 2 0 1 0 2
# Sample Output
# 0 0 1 2 2

# --------------
# Solution 1 by O(n log n)
# --------------
array = []
size = gets.to_i
size.times { array << gets.to_i }
array.sort!

print array


# --------------
# Solution 2 by O(n) 
# --------------
array = []
size = gets.to_i
size.times { array << gets.to_i }
l_bound = 0
r_bound = size - 1
i = 0
while i <= r_bound
  if array[i] == 2
    array[i] = array[r_bound]
    array[r_bound] = 2
    r_bound -= 1
  elsif array[i] == 1
    i += 1
  else
    array[i] = array[l_bound]
    array[l_bound] = 0
    l_bound += 1
    i += 1
  end
end

print array
