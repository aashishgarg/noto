require "noto/version"

module Noto
  module ClassMethods

    # ---------------- Available Methods -------- #
    def noto(option = {})

    end
  end

  def self.included(base)
    base.class_eval do
      extend ClassMethods
      after_create :create_notification

      private
      def create_notification
        logger.info "sasdasdasdasdasdasdasda"
        logger.info "sasdasdasdasdasdasdasda"
        logger.info "sasdasdasdasdasdasdasda"
      end
    end
  end
end

ActiveRecord::Base.send(:include, Noto)