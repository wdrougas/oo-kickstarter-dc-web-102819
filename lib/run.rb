require 'pry'
require_relative "backer.rb"
require_relative "project.rb"
require_relative "backer-projects.rb"

natsu = Backer.new("Natsu")
lucy = Backer.new("Lucy")

#Backer.all.each do |backer|
#   puts backer.name

project_nanban = Project.new("Project Nanban")
fairy_tail = Project.new("Fairy Tail")

#Project.all.each do |project|
    # puts project.title
#end

natsu.back_project(project_nanban)
lucy.back_project(project_nanban)
lucy.back_project(fairy_tail)

puts "I'm all fired up!"

fairy_tail.view_backers
puts "######"
project_nanban.view_backers

puts "****************"
natsu.divest(fairy_tail)

fairy_tail.view_backers
puts "#######"
project_nanban.view_backers
binding.pry
0