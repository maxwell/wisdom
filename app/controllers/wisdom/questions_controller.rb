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

      if @topic.persisted?
        redirect_to root_path
      else
        render 'new'
      end
    end

    def edit
      @question = @topic.questions.find(params[:id])
    end

    def update
      @question = @topic.questions.find(params[:id])
      @question.update_attributes(params[:question])

      if @question.errors.blank?
        redirect_to edit_topic_path(@topic), notice: 'Question updated'
      else
        flash[:error] = @question.errors.full_messages.join(', ')
        render 'edit'
      end

    end

    def destroy
      @question = Wisdom::Question.find(params[:id])
      @question.destroy
      redirect_to edit_topic_path(@question.topic)
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
