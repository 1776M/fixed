class Client < ActiveRecord::Base
    attr_accessible :name, :industry

    has_many :finances, :dependent => :destroy
end
