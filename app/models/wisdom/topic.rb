module Wisdom
  class Topic < ActiveRecord::Base
    attr_accessible :description, :row_order, :slug, :title

    has_many :questions, inverse_of: :topic, order: 'row_order asc'

    include RankedModel
    ranks :row_order

    validates :title, presence: true
    validates :slug, presence: true, uniqueness: true
 
  end
end
