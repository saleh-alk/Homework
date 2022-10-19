def sum_to(n)
    return 1 if n == 1
    return nil if n <= 0
     n + sum_to(n-1)


end


  # Test Cases
  p sum_to(5)  # => returns 15
  p sum_to(1)  # => returns 1
  p sum_to(9)  # => returns 45
  p sum_to(-8)  # => returns nil


  def add_numbers(arr)
    return arr[0] if arr.length == 1
    return nil if arr.length == 0

    arr.shift + add_numbers(arr)

  end

puts
    # Test Cases
    p add_numbers([1,2,3,4]) # => returns 10
    p add_numbers([3]) # => returns 3
    p add_numbers([-80,34,7]) # => returns -39
    p add_numbers([]) # => returns nil

    def factorial(n)
        (1..n).inject {|acc, el| acc*el}
    end
    p factorial(7)

    require 'byebug'

    def gamma_fnc(n, first_n = [])
        return nil if n == 0
        first_n << n
        return 1.0/first_n[0] if n == 1


        n * gamma_fnc(n-1, first_n = first_n)
    end

    puts
    # Test Cases
  p gamma_fnc(0)  # => returns nil
  p gamma_fnc(1)  # => returns 1
  p gamma_fnc(4)  # => returns 6
  p gamma_fnc(8)  # => returns 5040


def ice_cream_shop(arr, str)
    return true if str == arr[0]
    return false if arr.length == 0

    arr.shift
    ice_cream_shop(arr, str)
end

puts
# Test Cases
p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p ice_cream_shop([], 'honey lavender')  # => returns false


def reverse(string)

    return '' if string.length == 0
    return string[0] if string.length == 1

    string[-1] + reverse(string[0...-1])
end


# Test Cases
p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""
