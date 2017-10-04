require "noto/version"

module Noto
  module Core
    # ---------------- Available Methods -------- #
    def noto
      puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
      # puts options
      puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    end
  end

  def self.included(base)
    base.class_eval do
      extend Core

    end
  end
end

ActiveRecord::Base.send(:include, Noto)