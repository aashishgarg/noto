require "noto/version"

module Noto
  module ClassMethods

    # ---------------- Accessors ---------------- #


    # ---------------- Available Methods -------- #
    def noto(option = {})
      logger.info "************************************"
      logger.info option[:actions]
      logger.info option[:notify]
      logger.info "************************************"
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end

ActiveRecord::Base.send(:include, Noto)