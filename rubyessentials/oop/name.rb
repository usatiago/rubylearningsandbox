class Name
    def initialize(title, first_name,middle_name,last_name)
        @title = title
        @first_name=first_name
        @middle_name=middle_name
        @last_name=last_name
    end
    
    def title 
        @title
    end

    def first_name
        @first_name
    end
    
    def middle_name
        @middle_name
    end

    def last_name
        @last_name
    end
end

myname = Name.new("Mr.","Tiago","","Garcia")
puts myname.title
puts myname.first_name
puts myname.middle_name
puts myname.last_name