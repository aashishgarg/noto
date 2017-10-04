require 'noto/version'
require 'noto/notifier'

module Noto
  def self.included(base)
    base.class_eval do
      extend Core
    end
  end
end

ActiveRecord::Base.send(:include, Noto)