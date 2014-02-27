require "thor/rails/version"

# thor extension to load rails environment before running tasks
# Thor commands must include the module which will start the rails
# environment for *all* defined commands
class Thor
  module Rails
    def self.included(base)
      base.singleton_class.send(:alias_method, :start_original, :start)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def start(*args)
        load_environment
        start_original(*args)
      end

      private

      def load_environment
        ENV['RAILS_ENV'] ||= 'development'
        require File.expand_path('config/environment.rb')
      end
    end
  end
end
