#!/bin/bash
# This is a hacky way of just executing the last line of the file in Ruby
ruby -e "$(tail $0 -n1)" -rcolorize
exit 0

################################################################################
#                                                                              #
# In one line of Ruby you can...                                               #
#                                                                              #
################################################################################

################################################################################
# 1. Print a message (laaame)                                                  #
################################################################################
puts "Hello World!"

################################################################################
# 2. Swap two objects                                                          #
################################################################################
one, two = two, one

################################################################################
# 3. Cheer up on Fridays                                                       #
################################################################################
puts "Hooray!" if Date.today.friday?

################################################################################
# 4. Print an array as a numbered list                                         #
################################################################################
list = %w[this is not a long list]
puts list.each_with_index.map { |w,i| "#{i}. #{w}" }

################################################################################
# 5. Find the inner product of two vectors                                     #
################################################################################
v1 = [6, 4, -1]
v2 = [-9, 0, 1]
inner_product = v1.zip(v2).inject(0) { |p, (n, m)| p + n * m }
# result: -55

################################################################################
# 6. Create your own type of exception                                         #
################################################################################
class MyCustomError < StandardError; end
# Later you can `raise MyCustomError`

################################################################################
# 7. Start a web server in the current directory                               #
################################################################################
WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start

################################################################################
# 8. Search the next solution of the First Ascent hill-climbing algorithm      #
#   This was actually implemented in https://git.io/vPxQ6                      #
#   but changed in later versions                                              #
################################################################################
solution.neighborhood.detect { |attempt, fitness| fitness > @current_fitness }

################################################################################
# 9. Generate a Hash that calculates the Fibonacci sequence                    #
################################################################################
fibonacci = Hash.new { |h, i| h[i] = h[i - 2] + h[i - 1] }.update(0 => 0, 1 => 1)
# result:
# > fibonacci[200]
#=> 280571172992510140037611932413038677189525

################################################################################
# 10. Display a file by blocks, as a presentation                              #
################################################################################
File.read('oneline.rb').split("\n\n").each { |b| puts b.gsub(/^(#.*?)$/, '\1 '.on_cyan); gets; system "clear" }