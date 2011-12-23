class User < ActiveRecord::Base
  has_many :questionnaires, :dependent => :destroy
end
