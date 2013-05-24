module Wisdom
  class Question < ActiveRecord::Base
    attr_accessible :row_order, :text, :title

    belongs_to :topic, inverse_of: :questions
    include RankedModel
    ranks :row_order
    
  end
end
