require "pry"
require_relative "./project.rb"
require_relative "./backer_projects.rb"

class Backer

   attr_reader :name, :backed_projects
    #@@all = []

    def initialize(name)
        @name = name
        #@@all << self
        @backed_projects = []
    end

    # def self.all
    #     @@all
    # end

     def back_project(project)
        BackerProjects.new(self, project)
        self.backed_projects << project
        #project.backers << self
     end



    def list_project
       projects = BackerProjects.all.select do |backerproject|
            backerproject.backer == self
        end
        self.backed_projects
    end


end