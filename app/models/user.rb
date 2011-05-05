class User < ActiveRecord::Base
    attr_accessible :fixed, :float, :count

    before_save :default_values
    
    def default_values
        self.count = 1 unless self.count
    end

    validates :fixed, :presence => true
    validates :float, :presence => true
    validates :count, :presence => true
end
