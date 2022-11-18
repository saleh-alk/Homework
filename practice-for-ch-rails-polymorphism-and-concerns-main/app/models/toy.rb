class Toy < ApplicationRecord
    validates :name, presence: true, uniqueness: true


    belongs_to :toyable,
    foreign_key: :toyable_id,
    polymorphic: true


end
