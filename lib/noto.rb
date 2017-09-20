require "noto/version"

module Noto
  module ClassMethods

    attr_accessor :options, {}
    # ---------------- Available Methods -------- #
    def noto(option = {})
      @options.merge(options)
    end
  end

  def self.included(base)
    base.class_eval do
      extend ClassMethods
      after_create :create_notification

      private
      def create_notification
        logger.info '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
        logger.info @options.inspect
        logger.info '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
      end
    end
  end
end

ActiveRecord::Base.send(:include, Noto)