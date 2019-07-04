#!/usr/bin/ruby

class NewName
    attr_accessor :title, :first_name, :middle_name, :last_name

    def initialize(title = "",
                    first_name = "",
                    middle_name = "",
                    last_name = "")
    
        @title = title
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
    end

    def full_name
        if @middle_name != ""
            return @title + " " + @first_name + " " + @middle_name + " " + @last_name
        else
            return @title + " " + @first_name + " " + @last_name
        end
    end
end

n = NewName.new("Mr.","Tiago","","Garcia")
puts n.full_name

