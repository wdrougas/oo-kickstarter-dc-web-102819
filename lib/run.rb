require "pry"
require_relative "backer.rb"
require_relative "project.rb"
require_relative "backer_projects.rb"


project_1 = Project.new("My Awesome Project")
# project_2 = Project.new("Baking Project")
# project_3 = Project.new("Sewing Project")
# project_4 = Project.new("Coding Project")
backer_1 = Backer.new("Bob Smith")
# backer_2 = Backer.new("Carol Jones")
# backer_3 = Backer.new("Sarah Smith")
# backer_4 = Backer.new("Lebron James")
# backer_1.back_project(project_2)
# backer_1.back_project(project_1)
# backer_2.back_project(project_3)
# backer_3.back_project(project_2)


project_1.add_backer(backer_1)
puts project_1.backers.include?(backer_1)

backer_1.back_project(project_1)
puts backer_1.backed_projects.include?(project_1)


puts backer_1.list_project

