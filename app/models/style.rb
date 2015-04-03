class Style
  include Mongoid::Document
  field :styleno, type: String
  field :year, type: Integer
  field :styleupcode, type: String
  
  belongs_to :season
  belongs_to :upcode

  validates_presence_of :styleno, :year, :styleupcode, :season_id, :upcode_id
end
