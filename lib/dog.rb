class Dog
    attr_accessor :name
   @@all = []
    @@name = []
    def initialize(name)
        @name = name
        @@all << self
        @@name << name
        save
    end

    def self.all
        @@all.uniq
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        puts @@name.uniq.delete_if{|name| name == "Snoopy"}
    end

    def save
        @@all << self
    end
end