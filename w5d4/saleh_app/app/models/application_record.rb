class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end


class Person < ApplicationRecord
  belongs_to(
    :house,
    class_name: 'House',
    foreign_key: :house_id,
    primary_key: :id
  )
end

class House < ApplicationRecord
  belongs_to(
    :person,
    class_name: 'Person',
    foreign_key: :house_id,
    primary_key: :id
  )
end

Person.create(name: 'John Doe').valid? #
