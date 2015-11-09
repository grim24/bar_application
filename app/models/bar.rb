class Bar < ActiveRecord::Base
  has_many :deals, dependent: :destroy
  before_save {self.address = address.downcase}
  validates :name, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: true}
  validates :address, presence: true, length: {maximum: 255}
end
