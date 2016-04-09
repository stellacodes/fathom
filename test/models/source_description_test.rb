require "test_helper"

class ::Fathom::SourceDescriptionTest < ::ActiveSupport::TestCase

  def setup
    @subject = ::Fathom::SourceDescription.new(filename)
  end

  def test_filename
    assert_equal(filename, @subject.filename)
  end

  def test_filename_required
    assert_raises(ArgumentError) do
      ::Fathom::SourceDescription.new
    end
  end

  def test_open_interface
    @subject.foo = :bar
    assert_equal(:bar, @subject.foo)
    @subject = ::Fathom::SourceDescription.new(filename, :thud => :thunk)
    assert_equal(:thunk, @subject.thud)
  end

end