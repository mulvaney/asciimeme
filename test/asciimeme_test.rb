require 'test_helper'

class AsciimemeTest < MiniTest::Unit::TestCase

  def test_template_list
    templates = Asciimeme.memes
    assert templates.size > 0

    assert templates.include?("interesting"), "should have 'interesting' at least"

  end

end
