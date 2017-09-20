require "noto/version"

module Noto
  module Core

    # ---------------- Available Methods -------- #
    mattr_accessor :options

    def noto(option = {})
      @@options ||= {}
      @@options.merge!(options)
      logger.info '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
      logger.info @@options
      logger.info '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
    end
  end

  def self.included(base)
    base.class_eval do
      extend Core
      after_create :create_notification

      private
      def create_notification
        logger.info '###################################'
        logger.info @@options
        logger.info '###################################'
      end
    end
  end
end

ActiveRecord::Base.send(:include, Noto)