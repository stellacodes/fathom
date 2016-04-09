module Fathom
  class HeadFile < ::ServiceObject

    DEFAULT_LINE_COUNT = 5

    attr_reader :filename, :opts

    def initialize(filename, opts = {})
      @filename = filename
      @opts = opts.with_indifferent_access
    end

    def n
      @n ||= opts.fetch(:n, DEFAULT_LINE_COUNT)
    end

    def lines
      @lines ||= ::File
        .foreach(filename)
        .first(n)
    end

    def call
      lines
    end

  end
end
