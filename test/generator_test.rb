require 'test_helper'
require 'stringio'

class GeneratorTest < MiniTest::Unit::TestCase

  def setup
    @generator = Asciimeme::Generator.new('interesting')
  end

  def test_finds_right_template_file
    assert_equal 'interesting.erb', File.basename(@generator.template_file)
  end

  def test_adds_top_line
    io = StringIO.new
    @generator.write('top line test', "", io)
    assert_match /^\s*top line test/, io.string
  end

  def test_adds_bottom_line
    io = StringIO.new
    @generator.write("", 'bottom line test', io)
    assert_match /bottom line test\s*$/, io.string
  end
  

end
