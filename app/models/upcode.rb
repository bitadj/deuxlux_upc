class Upcode
  include Mongoid::Document
  field :upc, type: String

  has_one :style
end
