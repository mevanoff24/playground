
class Dog
    def speak
        puts "woof"
    end

    private

    def dream
        puts "chasing a rabbit"
    end
end

dog = Dog.new
dog.speak
dog.send(:dream)