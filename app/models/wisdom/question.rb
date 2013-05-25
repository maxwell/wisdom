module Wisdom
  class Question < ActiveRecord::Base
    attr_accessible :row_order, :text, :title

    belongs_to :topic, inverse_of: :questions
    include RankedModel
    ranks :row_order

    validates :text, :presence => true
    validates :title, :presence => true
    before_save do
      self.slug = slug.downcase.parameterize
    end
    
  end
end
