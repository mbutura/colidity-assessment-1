require 'pry'

# Apply patching
class String
    def camelcase
        self.split(' ').collect(&:capitalize).join
    end
end

binding.pry