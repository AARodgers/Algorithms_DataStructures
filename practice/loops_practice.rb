#while loop
#(continues loop until the condition becomes false, "while this is true continue doing this")
#(use when num of iterations is unfixed)
#Note: A while loop’s conditional is separated from code by the reserved word do, a newline, backslash(\), or a semicolon(;).

def while_loop
    x = 4
    while x >= 1
        puts "write this statement 4 times"
        x -= 1
    end
end

puts while_loop
