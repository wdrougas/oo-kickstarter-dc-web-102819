require_relative "project.rb"
require 'pry'
class Backer
    attr_accessor :name
    attr_reader :backed_projects

    @@all = []

    def initialize(name)
        @name = name
        #@backed_projects = []
        @@all << self
    end

    def self.all
        @@all
    end
    def back_project(project)
        BackerProjects.new(project, self)
    end

    def view_projects_invested
        BackerProjects.all.select do |projectTeam|
            projectTeam.backer == self
        end.map do |investor|
            investor.project
        end.each do |project|
            puts self.name + ": " +project.title
        end
    end

    def divest(unback_project)
        final_array = BackerProjects.all.delete_if do |projectTeam|
            projectTeam.backer == self && projectTeam.project == unback_project
        end
        BackerProjects.replace_all(final_array)
        puts "#{self.name} is no longer backing #{unback_project.title}."
    end 
end