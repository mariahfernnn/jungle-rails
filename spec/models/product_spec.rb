require 'rails_helper'

# Should hav five examples defined given that you have four validations
RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    # @category = Category.new
    # @product = Product.new
    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:price)}
    it { is_expected.to validate_presence_of(:quantity)}
    it { is_expected.to validate_presence_of(:category)}
  end
end


