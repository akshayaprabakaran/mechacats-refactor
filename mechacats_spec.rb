require 'rspec'
require_relative './mechacats'

RSpec.describe Mechacats do
  describe '#speed' do
    it 'returns nil' do
      cat = Mechacats.new(:maine_coon, 1, 1, false)

      expect(cat.speed).to eq(nil)
    end

    it 'returns 12' do
      cat = Mechacats.new(:orange_tabby, 1, 1, false)

      expect(cat.speed).to eq(12)
    end

    it 'returns 0' do
      cat = Mechacats.new(:bombay, 5, 1, false)

      expect(cat.speed).to eq(0)
    end

    it 'returns 3' do
      cat = Mechacats.new(:bombay, 1, 1, false)

      expect(cat.speed).to eq(3)
    end

    it 'returns 0' do
      cat = Mechacats.new(:somali, 1, 1, true)

      expect(cat.speed).to eq(0)
    end

    it 'returns 24' do
      cat = Mechacats.new(:somali, 1, 3, false)

      expect(cat.speed).to eq(24)
    end

    it 'returns 6' do
      cat = Mechacats.new(:somali, 1, 0.5, false)

      expect(cat.speed).to eq(6)
    end
  end

  describe '#color' do
    it 'returns the right color' do
      cat = Mechacats.new(:orange_tabby, 1, 1, true)

      expect(cat.color).to eq('lightning')
    end

    it 'returns the right color' do
      cat = Mechacats.new(:orange_tabby, 1, 1, false)

      expect(cat.color).to eq('orange white brown and gray')
    end

    it 'returns the right color' do
      cat = Mechacats.new(:bombay, 1, 1, false)

      expect(cat.color).to eq('black')
    end

    it 'returns the right color' do
      cat = Mechacats.new(:somali, 1, 6, false)

      expect(cat.color).to eq('orange')
    end

    it 'returns the right color' do
      cat = Mechacats.new(:somali, 1, 4, false)

      expect(cat.color).to eq('orange and white')
    end
  end
end
