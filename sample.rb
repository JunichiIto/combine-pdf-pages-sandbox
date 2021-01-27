require 'combine_pdf'
require 'pdf-reader'
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def create_pdf
    combined_pdf = CombinePDF.new
    file_path = './sample.pdf'
    combined_pdf << CombinePDF.load(file_path)
    file_2_path = './sample-2.pdf'
    combined_pdf << CombinePDF.load(file_2_path)
    combined_pdf.save './saved.pdf'
  end

  def test_create_pdf
    create_pdf
    reader = PDF::Reader.new("./saved.pdf")
    assert_equal 3, reader.page_count
  end
end
