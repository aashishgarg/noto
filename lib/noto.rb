require "noto/version"

module Noto
  module ClassMethods

    def noto(options = {})

    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end

ActiveRecord::Base.send(:include, Noto)