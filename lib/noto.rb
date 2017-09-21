require "noto/version"

module Noto
  module Core
    attr_accessor :aa
    # ---------------- Available Methods -------- #
    def noto(options = {})
      @aa = 'asdas'
    end
  end

  def self.included(base)
    base.class_eval do
      extend Core
      after_create :create_notification

      # private
      def create_notification
        logger.info "***********************"
        logger.info self.a
        logger.info "***********************"
      end
    end
  end
end

ActiveRecord::Base.send(:include, Noto)