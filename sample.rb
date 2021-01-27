require 'combine_pdf'
require 'pdf-reader'
require 'minitest/autorun'

class SampleTest < Minitest::Test
  def create_pdf
    combined_pdf = CombinePDF.new
    file_path = './sample.pdf'
    pdf_path = open(file_path).path
    combined_pdf << CombinePDF.load(pdf_path)
    save_path = './sample-2.pdf'
    combined_pdf << CombinePDF.load(save_path)
    combined_pdf.save './saved.pdf'
  end

  def test_create_pdf
    create_pdf
    reader = PDF::Reader.new("./saved.pdf")
    assert_equal 3, reader.page_count
  end
end
