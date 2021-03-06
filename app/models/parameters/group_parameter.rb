class GroupParameter < Parameter
  belongs_to :hostgroup, :foreign_key => :reference_id, :inverse_of => :group_parameters
  audited :except => [:priority], :associated_with => :hostgroup, :allow_mass_assignment => true
  validates :name, :uniqueness => {:scope => :reference_id}
end
