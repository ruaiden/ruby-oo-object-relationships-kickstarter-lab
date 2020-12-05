class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end 

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end 
    
    def backers
        project_backers = ProjectBacker.all.select {|proj| proj.project == self}
        project_backers.map {|pb| pb.backer}
    end

end 