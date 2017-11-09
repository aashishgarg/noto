require 'noto/version'
require 'noto/notifier'

module Noto
end

ActiveRecord::Base.send(:include, Noto)