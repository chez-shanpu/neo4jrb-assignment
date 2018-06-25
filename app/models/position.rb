class Position 
  include Neo4j::ActiveNode
  property :name, type: String
  has_many :in, :players, type: :position, model_class: :Player,dependent: :destroy_orphans
end
