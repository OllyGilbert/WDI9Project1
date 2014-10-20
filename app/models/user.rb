class User < ActiveRecord::Base
  attr_accessible :name, :references
end
