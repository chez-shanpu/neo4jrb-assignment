class Year 
  include Neo4j::ActiveNode
  property :year, type: String
  has_many :in, :players, type: :year, model_class: :Player
end
