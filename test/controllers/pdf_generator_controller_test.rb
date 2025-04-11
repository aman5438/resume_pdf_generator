require "test_helper"

class PdfGeneratorControllerTest < ActionDispatch::IntegrationTest
  test "should get resume" do
    get pdf_generator_resume_url
    assert_response :success
  end

  test "should get cover_letter" do
    get pdf_generator_cover_letter_url
    assert_response :success
  end
end
