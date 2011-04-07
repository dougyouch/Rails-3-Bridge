module ActiveRecord
  class Base
    def self.where(*args)
      self.scoped :conditions => args.length == 1 ? args[0] : args
    end

    def self.joins(*args)
      self.scoped :joins => args.length == 1 ? args[0] : args
    end

    def self.includes(*args)
      self.scoped :include => args.length == 1 ? args[0] : args
    end

    def self.select(arg)
      self.scoped :select => arg
    end

    def self.order(arg)
      self.scoped :order => arg
    end

    def self.limit(arg)
      self.scoped :limit => arg
    end

    def self.offset(arg)
      self.scoped :offset => arg
    end

    def self.group(arg)
      self.scoped :group => arg
    end

    def self.having(arg)
      self.scoped :having => arg
    end

    def self.named_scope(name, options={}, &block)
      options = options.proxy_options if options.respond_to?(:proxy_options)
      super(name, options, &block)
    end
  end
end
