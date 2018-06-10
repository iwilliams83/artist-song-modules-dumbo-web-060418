module Memorable

  module InstanceMethods
   def initialize
     self.class.all << self
   end
 end

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

end
