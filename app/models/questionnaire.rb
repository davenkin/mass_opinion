class Questionnaire < ActiveRecord::Base
  belongs_to :user
  has_many :options, :dependent => :destroy
  has_and_belongs_to_many :categories
end
