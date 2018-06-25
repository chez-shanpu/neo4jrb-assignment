class Birthday 
  include Neo4j::ActiveNode
  property :date, type: String
  has_many :in, :players, type: :birthday, model_class: :Player
end
