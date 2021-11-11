class Post < ApplicationRecord
  belongs_to :user
  acts_as_commontable dependent: :destroy

  validates :title, presence:true
  validates :body, presence:true

  def self.posted
    where('schedueled_for < ? OR schedueled_for is NULL', DateTime.now )
  end
end
