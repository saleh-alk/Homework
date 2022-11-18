# == Schema Information
#
# Table name: corgis
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Corgi < ApplicationRecord
  validates :name, presence: true

  has_many :toys,
  foreign_key: :toyable_id,
  class_name: :Toy,
  dependent: :destroy
end
