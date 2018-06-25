class BodyHeight 
  include Neo4j::ActiveNode
  property :height, type: String
  has_many :in, :players, type: :body_height, model_class: :Player,dependent: :destroy_orphans
end
