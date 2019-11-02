require_relative "./backer.rb"
require_relative "./project.rb"
require 'pry'

class BackerProjects
    #keeps track of backed projects and the backers.
    #Put projects in the backed_projects array
    #Put backers in the backers array.
    #Add the backer to the project's backers array
    #Add the project to the backer's backed_projects array.  
    attr_accessor :backer, :project

    @@all = []

    def initialize(backer, project)
        @backer = backer
        @project = project
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.replace_all(successor)
        @@all = successor
    end
end