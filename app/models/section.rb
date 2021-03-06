class Section < ApplicationRecord

	acts_as_list :scope => :subject

	belongs_to :page, {:optional => true} #soveling can't save problem.
	has_many :section_edits
	has_many :admin_users, :through => :section_edits
	
	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted, lambda { order("position ASC")}
	scope :newest_first, lambda { order("created_at DESC") }

	CONTENT_TYPES = ['text','HTML']

	# validates_presence_of :name
	# validates_length_of :name, :maximum => 255
	validates_inclusion_of :content_type, :in =>['text', 'HTML'], 
	:message =>"must be one of: #{CONTENT_TYPES.join(', ')}"
	# validates_presence_of :content

	validates :name, :presence => true,
					 :length => {:maximum => 255}
	validates :content, :presence => true

end
