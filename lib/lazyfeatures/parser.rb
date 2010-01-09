module LazyFeatures
  class Parser

    attr_accessor :route_contents, :singleton_resources, :collection_resources

    def initialize(file_path)
      self.route_contents = File.open(file_path).read.split("\n")
      parse_resources
    end

    def parse_resources
      self.singleton_resources = parse_singletons
      self.collection_resources = parse_collections
    end

    def parse_singletons
      route_contents.map do |route|
        match = route.match(/^.*\.resource\s\:(\w+).*$/)
        match[1] if match
      end.compact
    end

    def parse_collections
      route_contents.map do |route|
        match = route.match(/^.*\.resources\s\:(\w+).*$/)
        match[1] if match
      end.compact
    end

  end
end