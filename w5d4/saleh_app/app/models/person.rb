require_relative 'application_record'
class Person < ApplicationRecord
    belongs_to(
      :house,
      class_name: 'House',
      foreign_key: :house_id,
      primary_key: :id
    )
  end

  Person.create(name: 'John Doe').valid? #
