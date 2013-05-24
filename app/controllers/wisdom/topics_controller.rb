module Wisdom
  class TopicsController< ApplicationController
    before_filter :require_admin!, except: [:public]

    def public
      @topics = Wisdom::Topic.includes(:questions).order('row_order asc').all
    end

    def index
      @topics = Wisdom::Topic.order('row_order asc').all
    end

    def new
      @topic = Wisdom::Topic.new
    end

    def show
      @topic = Wisdom::Topic.find(params[:id])
    end

    def edit
      @topic = Wisdom::Topic.find(params[:id])
    end

    def update
      @topic = Wisdom::Topic.find(params[:id])
      @topic.update_attributes(params[:topic])
      redirect_to action: :index
    end

    def create
      @topic = Wisdom::Topic.create(params[:topic])
      redirect_to action: :index
    end

    def reorder
      topic = Wisdom::Topic.find(params[:item_id])
      topic.row_order = params[:row_order_position]
      topic.save
      head :ok
    end
  end
end
