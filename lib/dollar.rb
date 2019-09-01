require "dollar/version"

module Dollar
  class Dollar
    def start
      arguments = ARGV

      if arguments[0] == "$" 
        arguments.shift
      elsif arguments.length < 1 || arguments[0] == "--help" 
        puts '$: Runs any commands that follow it to help with copy and paste errors'
        exit
      end

      exec arguments.join(' ')
    end
  end
end

puts Dollar::Dollar.new.start