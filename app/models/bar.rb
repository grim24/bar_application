class Bar < ActiveRecord::Base
  before_save {self.address = address.downcase}
  validates :name, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: true}
  validates :address, presence: true, length: {maximum: 255}
end
