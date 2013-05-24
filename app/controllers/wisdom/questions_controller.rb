module Wisdom
  class QuestionsController< ApplicationController
    before_filter :set_topic
    before_filter :require_admin!

    def index
      @questions = @topic.questions
    end

    def new
      @question = @topic.questions.build
    end

    def create
      @topic = @topic.questions.create(params[:question])
      redirect_to root_path
    end

    def reorder
      question = @topic.questions.find(params[:item_id])
      question.row_order = params[:row_order_position]
      question.save
      head :ok
    end

    private

    def set_topic
      @topic = Wisdom::Topic.find(params[:topic_id])
    end
  end
end
