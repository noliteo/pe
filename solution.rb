module Solution

# https://projecteuler.net/problem=20
# n! means n × (n − 1) × ... × 3 × 2 × 1
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!
  def problem20(input=100)
    p "Problem 20"
    res, ans = 1, 0

    (1..input).each do |n|
      res=res*n
    end

    p "#{input}! is #{res}"

    res.to_s.split("").map{ |i| i.to_i }.each do |n|
      ans+=n
    end

    p "RESULT: #{ans}"

  end

end
