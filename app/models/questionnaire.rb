class Questionnaire < ActiveRecord::Base
  belongs_to :user
  has_many :questions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_and_belongs_to_many :categories
end
