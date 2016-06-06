require "rails_helper"

RSpec.feature "zip code search", type: :feature do
  it "returns 10 closest stations within 6 mile distance" do
    # As a user
    # When I visit "/"
    visit "/"
    # And I fill in the search form with 80203
    fill_in "search", with: "80203"
    # And I click "Locate"
    click_button "Locate"
    # Then I should be on page "/search?zip=80203"
    expect(current_path).to eq "/search?zip=80203"
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    expect(Station.count)to eq 10
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
  end
end
