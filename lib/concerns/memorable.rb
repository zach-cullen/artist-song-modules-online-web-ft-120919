module Memorable
  module ClassMethods
    def self.reset_all
      self.all.clear
    end

    def self.count
      self.all.count
    end
  end
  
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end