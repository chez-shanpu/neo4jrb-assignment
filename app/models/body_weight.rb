class BodyWeight 
  include Neo4j::ActiveNode
  property :weight, type: String
  has_many :in, :players, type: :body_weight, model_class: :Player,dependent: :destroy_orphans
end
