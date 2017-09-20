require "noto/version"

module Noto
  module Core

    attr_accessor :options
    # ---------------- Available Methods -------- #
    def initialize(params)
      send "#{options}=", {}
    end

    def noto(option = {})
      logger.info '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
      logger.info options
      logger.info '%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%'
    end
  end

  def self.included(base)
    base.class_eval do
      extend Core
      after_create :create_notification

      private
      def create_notification

      end
    end
  end
end

ActiveRecord::Base.send(:include, Noto)