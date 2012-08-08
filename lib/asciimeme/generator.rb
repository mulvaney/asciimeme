require 'erb'


module Asciimeme

  # Generates a meme from a template
  class Generator
    attr_accessor :meme_name
    
    # Create a new generator.  meme_name should be the name of a meme, as returned
    # from Asciimeme.memes

    def initialize(meme_name)

      @meme_name = meme_name
    end

    # Write the meme out.
    #
    # top_line: The text to show at the top
    # bottom_line: the text to show at the bottom
    # out_file: The output goes here, defaults to stdout
    def write(top_line,
              bottom_line, out_file = STDOUT)
      

      template = ERB.new(File.read(template_file))
      out_file.puts(template.result(binding))
    end

    # location of the template file
    def template_file
      File.join(Asciimeme.template_dir, "#{meme_name}.erb")
    end

  end
end
