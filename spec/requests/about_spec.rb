require 'rails_helper'

RSpec.describe "About", type: :request do
    describe "GET user" do
        it 'return a status 200' do
            get("/about")
            expect(response).to have_http_status(200)  
        end
    end
end
