class Deal < ActiveRecord::Base
  belongs_to :bar
  validates :bar_id, presence: true
  validates :content, presence: true, length: {maximum: 140}

end
