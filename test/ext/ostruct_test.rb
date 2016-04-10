require "test_helper"

class ::Fathom::OpenStructTest < ::ActiveSupport::TestCase

  def test_table
    @subject = OpenStruct.new({ :foo => :bar })
    expected = { :foo => :bar }
    assert_equal(expected, @subject.table)
  end
end