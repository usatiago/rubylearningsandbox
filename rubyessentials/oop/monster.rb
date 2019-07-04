class Monster
    attr_reader :name, :actions
    def initialize(name)
        @name = name
        @actions = {
            screams: 0,
            scares: 0,
            run: 0,
            hide: 0
        }
    end

    def say(&block)
        print "#{name} say..."
        yield
    end

    def screams(&block)
        actions[:screams] += 1
        print "#{name} screams!"
        yield
    end

    def scares(&block)
        actions[:scares] += 1
        print "#{name} scares!"
        yield
    end
    
    def run(&block)
        actions[:run] += 1
        print "#{name} runs!"
        yield
    end

    def hide(&block)
        actions[:hide] += 1
        print "#{name} hides!"
        yield self if block_given?
    end

    def print_scoreboard
        puts "="*30
        puts "#{name} scoreboard"
        puts "="*30
        puts "- Screams: #{actions[:screams]}"
        puts "- Scares: #{actions[:scares]}"
        puts "- Runs: #{actions[:run]}"
        puts "- Hides: #{actions[:hide]}"
        puts "="*30
    end

end

monster = Monster.new("Fluffy")
monster.say { print " arghhhhh...\n" }
monster.screams { print " BOO\n" }
monster.scares { print " Go away!\n" }
monster.run { print " monster runs!\n" }
monster.run { print " monster runs!\n" }
monster.run { print " monster runs!\n" }
monster.run { print " monster runs!\n" }
monster.hide { print " monster hides!\n" }
monster.print_scoreboard

