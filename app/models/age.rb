class Age
  include Neo4j::ActiveNode
  property :age, type: String
  has_many :in, :players, type: :age, model_class: :Player
end
