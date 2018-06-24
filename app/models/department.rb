class Department
  include Neo4j::ActiveNode
  property :name, type: String

  has_many :in, :universities, type: :has, model_class: :University, dependent: :destroy_orphans
end
