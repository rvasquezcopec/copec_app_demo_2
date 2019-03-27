require "application_system_test_case"

class GasStationsTest < ApplicationSystemTestCase
  setup do
    @gas_station = gas_stations(:one)
  end

  test "visiting the index" do
    visit gas_stations_url
    assert_selector "h1", text: "Gas Stations"
  end

  test "creating a Gas station" do
    visit gas_stations_url
    click_on "New Gas Station"

    fill_in "Address", with: @gas_station.address
    fill_in "Id station", with: @gas_station.id_station
    fill_in "Image", with: @gas_station.image
    fill_in "Name", with: @gas_station.name
    click_on "Create Gas station"

    assert_text "Gas station was successfully created"
    click_on "Back"
  end

  test "updating a Gas station" do
    visit gas_stations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @gas_station.address
    fill_in "Id station", with: @gas_station.id_station
    fill_in "Image", with: @gas_station.image
    fill_in "Name", with: @gas_station.name
    click_on "Update Gas station"

    assert_text "Gas station was successfully updated"
    click_on "Back"
  end

  test "destroying a Gas station" do
    visit gas_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gas station was successfully destroyed"
  end
end
