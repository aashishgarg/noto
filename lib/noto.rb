require "noto/version"

module Noto
  module Core
    # ---------------- Available Methods -------- #
    def noto(options = {})

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