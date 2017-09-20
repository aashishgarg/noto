require "noto/version"

module Noto
  module ClassMethods

    # ---------------- Accessors ---------------- #


    # ---------------- Available Methods -------- #
    def noto(option = {})
      self.errors.add('notify', 'Hello.com')
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end

ActiveRecord::Base.send(:include, Noto)