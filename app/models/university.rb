class University
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :out, :departments, type: :has, model_class: :Department, dependent: :destroy_orphans
end
