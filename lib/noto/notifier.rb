module Noto
  module Core
    def notifier(options = {})
      @@target = options[:target]
      valid_target?
    end

    def valid_options
      [:target, :notify_on, :message]
    end

    def valid_target?
      if @@target.is_a?(Hash)
        raise 'Association not found' unless self.reflect_on_all_associations.collect(&:name).include?(*@@target.keys)
      elsif @@target.is_a?(Symbol)

      else

      end

    end
  end
end