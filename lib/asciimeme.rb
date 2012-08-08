require "asciimeme/version"
require "asciimeme/generator"

# Generates ascii art memes

module Asciimeme

  # returns a list of available memes, suitable for passing into the generator
  def self.memes
    Dir.glob("#{template_dir}/*.erb").collect { |f| File.basename(f).gsub(/\.erb$/, "")}.sort
    
  end

  protected

  # Returns the directory holding the template files
  def self.template_dir
    dir = File.join(File.dirname(File.expand_path(__FILE__)), 
                    "asciimeme",
                    "templates")
  end

end

