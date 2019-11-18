require 'rails_helper'

# Should hav five examples defined given that you have four validations
RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    category = Category.new
    @product = Product.new
    it "is valid with valid attributes"
    it "is not valid without a name"
    it "is not valid without a price"
    it "is not valid without a quantity"
    it "is not valid without a category"
    # it { is_expected.to validate_presence_of(:name)}
    # it { is_expected.to validate_presence_of(:price)}
    # it { is_expected.to validate_presence_of(:quantity)}
    # it { is_expected.to validate_presence_of(:category)}
  end
end


