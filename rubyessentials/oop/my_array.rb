class MyArray
    attr_reader :array
    def initialize
        @array = []
    end

    def push(item)
        array.push(item)
    end
    def each(&block)
        i=0
        while i < array.length
            block.call(array[i])
            i+=1
        end
        array
    end
end

a = MyArray.new 
a.push(1)
a.push(2)
a.push(3)
a.each do |z|
    print "#{z}-"
end
