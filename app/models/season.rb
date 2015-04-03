class Season
  include Mongoid::Document
  field :name, type: String

  has_many :styles
end
