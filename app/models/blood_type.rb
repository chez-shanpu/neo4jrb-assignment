class BloodType 
  include Neo4j::ActiveNode
  property :type, type: String
  has_many :in, :players, type: :blood_type, model_class: :Player
end
