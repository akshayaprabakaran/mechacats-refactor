require 'rspec'
require_relative './mechacats'
require_relative './cats.rb'

RSpec.describe Mechacats do
   #test suite for verifying speed method
  describe 'Speed Check' do
    #tests for Somali's speed method 
    describe 'Somali' do
      it 'returns 0' do
        cat = Somali.new(1, 1, true)
        expect(cat.speed).to eq(0)
      end
      
      it 'returns 24' do 
        cat = Somali.new(1, 3, false)
        expect(cat.speed).to eq(24)
      end
      
      it 'returns 6' do
        cat = Somali.new(1, 0.5, false)
        expect(cat.speed).to eq(6)
      end
    end
    
    #tests for Bombay's speed method 
    describe 'Bombay' do
      it 'returns 0' do
        cat = Bombay.new(5, 1, false)
        expect(cat.speed).to eq(0)
      end

      it 'returns 3' do
        cat = Bombay.new(1, 1, false)
        expect(cat.speed).to eq(3)
      end
    end
    
    #tests for Orange Tabby's speed method 
    describe 'Orange Tabby' do
      it 'returns 12' do
        cat = Orange_tabby.new(1, 1, false)
        expect(cat.speed).to eq(12)
      end
    end
     
    #tests for Siamese's speed method
    describe 'Siamese' do
      #testing by passing negative values  
      it 'returns 60' do
        cat = Siamese.new(-2, 1, false)
        expect(cat.speed).to eq(60)
      end
    end
    
    #tests for Maine Coon's speed method 
    describe 'Maine Coon' do
      it 'returns nil' do
        cat = Maine_coon.new(1, 1, false)
        expect(cat.speed).to eq(nil)
      end
    end
  end

  #test suite for verifying color method
  describe 'Color Check' do
    #tests for Somali's color method 
    describe 'Somali' do
      it 'returns right color - orange' do
        cat = Somali.new(1, 6, false)
        expect(cat.color).to eq('orange')
      end
       
      it 'returns right color - lightning' do
        cat = Somali.new(1, 6, true)
        expect(cat.color).to eq('lightning')
      end

      it 'returns right color - nil' do
        cat = Somali.new(1, 5, false)
        expect(cat.color).to eq(nil)
      end
       
      it 'returns right color - orange and white' do
        cat = Somali.new(1, 4, false)
        expect(cat.color).to eq('orange and white')
      end
    end
    
    #tests for Bombay's color method 
    describe 'Bombay' do
      it 'returns right color - black' do
        cat = Bombay.new(1, 1, false)
        expect(cat.color).to eq('black')
      end
      
      it 'returns right color - lightning' do
        cat = Bombay.new(1, 1, true)
        expect(cat.color).to eq('lightning')
      end
    end
     
    #tests for Orange Tabby's color method 
    describe 'Orange Tabby' do
      it 'returns right color - orange white brown and gray' do
        cat = Orange_tabby.new(1, 1, false)
        expect(cat.color).to eq('orange white brown and gray')
      end
      
      it 'returns right color - lightning' do
        cat = Orange_tabby.new(1, 1, true)
        expect(cat.color).to eq('lightning')
      end
    end
    
    #tests for Siamese's color method
    describe 'Siamese' do
      it 'returns right color - orange white brown and gray' do
        cat = Siamese.new(1, 1, false)
        expect(cat.color).to eq('orange white brown and gray')
      end

      it 'returns right color - lightning' do
        cat = Siamese.new(1, 2, true)
        expect(cat.color).to eq('lightning')
      end
    end

    #tests for Maine Coon's color method
     describe 'Maine Coon' do
      it 'returns nil' do
        cat = Maine_coon.new(1, 1, false)
        expect(cat.speed).to eq(nil)
      end
    end
  end
end
