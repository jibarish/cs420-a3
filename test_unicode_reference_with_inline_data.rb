require 'test/unit'
require_relative 'reference'
require_relative 'unicode_data'

class ReferenceTestWithInlinedData < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @reference = Reference.instance
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_codepoint_lookup
    null = @reference.character("NULL")
    assert(null == "0000")
  end

  def test_name_lookup
    null = @reference.name("0000")
    assert(null == "NULL")
  end

  def test_major_category_lookup
  	null = @reference.majorCategory("0000")
  	assert(null == "C")
  end

  def test_category_lookup
  	null = @reference.category("0000")
  	assert(null == "Cc")
  end

  def test_name_lookup_correction_alias
    name = @reference.name("01A2")
    assert(name == "LATIN CAPITAL LETTER GHA")
  end

end
