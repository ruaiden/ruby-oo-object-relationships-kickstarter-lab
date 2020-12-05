class Backer

    attr_reader :name

    def initialize(name)
        @name = name

    end 

    def back_project(project)
        ProjectBacker.new(project,self)
    end 

    def backed_projects
        project_backers = ProjectBacker.all.select {|backed| backed.backer == self}
        # back_project.map {|project| project.project_backer}

    project_backers.map {|pb| pb.project}
    end 
end 