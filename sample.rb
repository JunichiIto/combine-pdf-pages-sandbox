require 'combine_pdf'
require 'pdf-reader'
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def create_pdf
    CombinePDF.load('./sample.pdf').save('./saved.pdf')
  end

  def test_create_pdf
    create_pdf
    reader = PDF::Reader.new("./saved.pdf")
    assert_equal 2, reader.page_count
  end
end
