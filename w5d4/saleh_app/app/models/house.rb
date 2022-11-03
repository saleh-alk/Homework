class House < ApplicationRecord
    belongs_to(
      :person,
      class_name: 'Person',
      foreign_key: :house_id,
      primary_key: :id
    )
  end
