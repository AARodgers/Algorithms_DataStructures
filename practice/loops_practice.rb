#while loop
#(continues loop until the condition becomes false, "while this is true continue doing this")
#(use when num of iterations is unfixed)
#Note: A while loop’s conditional is separated from code by the reserved word do, a newline, backslash(\), or a semicolon(;).

# def while_loop
#     x = 4
#     while x >= 1
#         puts "write this statement 4 times"
#         x -= 1
#     end
# end

# puts while_loop

#----------------------------------------------------------

#for loop
# like while loop but you know how many times the loop is to be executed beforehand
# it iterates over a specific range of numbers

# def for_loop
#     i = "write me 5 times"

#     for x in 1..5 do
#         puts i
#     end
# end

# for_loop

# def for_loop_2
#     for i in 0..5
#         puts "value for local variable equals #{i}"
#     end
# end

# for_loop_2

# def for_loop3
#     arr = [2, 3, 4]
#     for i in arr do
#         puts i * 2
#     end
# end

# for_loop3
#----------------------------------------------------------------------

#do..while loop
#similar to while loop but checks condition after executing all loops

# def do_while_loop
#     loop do
#         puts "write me once"
#         x = 7

#         if x == 7
#             break
#         end
#     end
# end

# do_while_loop

#----------------------------------------------------------

#until_loop
# Ruby until loop will executes the statements or code till the given condition evaluates to true
# it’s just opposite to the while loop which executes until the given condition evaluates to fals

# def until_loop
#     x = 7
#     until x == 11 do
#         puts x * 10
#         x += 1
#     end
# end

# until_loop

#------------------------------------------------------------------

