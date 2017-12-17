require 'rails_helper'

RSpec.describe "PageFiles", type: :request do
  describe "GET /page_files" do
    it "works! (now write some real specs)" do
      get page_files_path
      expect(response).to have_http_status(200)
    end
  end
end
