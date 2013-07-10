module Wisdom
  module ApplicationHelper
    def edit_question_link(topic, question, opts={})
      return unless can_edit?
      link_to 'edit', edit_topic_question_path(topic, question), opts
    end

    def edit_topic_link(topic, opts={})
      return unless can_edit?
      link_to 'edit', edit_topic_path(topic), opts
    end

    def new_question_link(topic, opts={})
      return unless can_edit?
      link_to 'new question', new_topic_question_path(topic), opts
    end

    def new_topic_link(opts={})
      return unless can_edit?
      link_to 'new topic', new_topic_path, opts
    end
    
    def format_html(raw_html)
      raise raw_html.inspect
      simple_format(auto_link(raw_html), sanitize: false)
    end
  
  end
end
