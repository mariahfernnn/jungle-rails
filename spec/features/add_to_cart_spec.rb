require 'rails_helper'

RSpec.feature "Visitor can click the Add to Cart button", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'
    
    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "The cart increases by one" do
    # ACT
    visit root_path
    page.first('.add-to-cart').click

    # DEBUG
    # puts page.html
    # save_and_open_screenshot

    # VERIFY
    within('#navbar'){expect(page).to have_content('Home About Categories Admin Login Signup My Cart (1)')}
  end
2
end
