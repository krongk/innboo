class Book < ActiveRecord::Base
  belongs_to :user
  has_many :chapters
  validates_presence_of :name
end
