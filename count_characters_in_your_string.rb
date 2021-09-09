# The main idea is to count all the occurring characters in a string. If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.



# MY solutions

def count_chars(s)
  s.chars.each_with_object({}) { |c, h| h[c].nil? ? h.merge!(c => 1) : h[c] += 1 }
end


# Others soultions

def count_chars(s)
  s.chars.uniq.each_with_object({}) { |c, h| h[c] = s.count(c) }
end


def count_chars(s)
  count = Hash.new(0)
  s.split("").each do |x|
    count[x] += 1
  end
  count
end


def count_chars(s)
  s.chars.group_by(&:itself).transform_values(&:count)
end

def count_chars(s)
  s.chars.map {|c| [c, s.chars.count(c)] }.to_h
end

# LInk solutions 
# https://www.codewars.com/kata/52efefcbcdf57161d4000091/solutions/ruby
