module Noto
  module Core
    def notifier(options = {})
      @@target = options[:target]
      puts '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
      puts @@target
      puts valid_target?
      puts '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
    end

    def valid_options
      [:target, :notify_on, :message]
    end

    def valid_target?
      self.reflect_on_all_associations.collect(&:name).any?{|association_name| association_name == @@target.keys.first}
    end
  end
end