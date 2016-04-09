require "test_helper"

class Fathom::HeadFileTest < ::ActiveSupport::TestCase

  def setup
    @subject = ::Fathom::HeadFile.new(filename)
  end

  def test_interface
    assert_equal(filename, @subject.filename)
    opts = { "foo" => :bar }
    @subject = ::Fathom::HeadFile.new(filename, opts)
    assert_equal(opts, @subject.opts)
  end

  def test_n
    assert_equal(::Fathom::HeadFile::DEFAULT_LINE_COUNT, @subject.n)
    @subject = ::Fathom::HeadFile.new(filename, { :n => 42 })
    assert_equal(42, @subject.n)
  end

  def test_lines
    handle = mock
    ::File.expects(:foreach).with(filename).returns(handle)
    handle.expects(:first).with(@subject.n).returns(true)
    assert(@subject.lines)
  end

  def test_call
    @subject.expects(:lines).returns(true)
    assert(@subject.call)
  end

  def filename
    @filename ||= Fathom.root.join("test/support/short.csv").to_s
  end
end
