require 'rails_helper'

# Should hav five examples defined given that you have four validations
RSpec.describe Product, type: :model do
  describe 'Validations' do

    it "is valid with valid attributes" do
      @category = Category.new
      @category.name = 'Shoes'
      subject { described_class.new }
      subject.name = 'Hipster combat boots'
      subject.price = 240.00
      subject.quantity = 2
      subject.category = @category
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      @category = Category.new
      subject { described_class.new }
      expect(subject).to_not be_valid
      puts subject.errors.full_messages
    end

    it "is not valid without a price" do
      @category = Category.new
      subject { described_class.new }
      subject.name = 'Hipster combat boots'
      expect(subject).to_not be_valid
      puts subject.errors.full_messages
    end

    it "is not valid without a quantity" do
      @category = Category.new
      subject { described_class.new }
      subject.name = 'Hipster combat boots'
      subject.price = 240.00
      expect(subject).to_not be_valid
      puts subject.errors.full_messages
    end

    it "is not valid without a category" do
      @category = Category.new
      subject { described_class.new }
      subject.name = 'Hipster combat boots'
      subject.price = 240.00
      subject.quantity = 2
      expect(subject).to_not be_valid
      puts subject.errors.full_messages
    end
  end
end


