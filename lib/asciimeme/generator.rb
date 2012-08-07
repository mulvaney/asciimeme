require 'erb'

module Asciimeme
  class Generator
    attr_accessor :template_name

    def initialize(template_name)
      @template_name = template_name
    end

    def write(top_line,
               bottom_line, out_file = STDOUT)
      

      template = ERB.new(File.read(template_file))
      out_file.puts(template.result(binding))
    end

    def template_file
      dir = File.dirname(File.expand_path(__FILE__))
      File.join(dir, "templates", "#{template_name}.erb")
    end

  end
end
