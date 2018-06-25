class PitchingAndBatting 
  include Neo4j::ActiveNode
  property :dexterity, type: String
  has_many :in, :players, type: :pitching_and_batting, model_class: :Player,dependent: :destroy_orphans
end
