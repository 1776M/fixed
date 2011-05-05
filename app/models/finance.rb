class Finance < ActiveRecord::Base
    attr_accessible :ebitda, :debt

    belongs_to :client

    default_scope :order => 'finances.created_at DESC'

end
