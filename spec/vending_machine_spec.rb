require 'vending_machine'

describe VendingMachine do
  context 'valid coins' do
    it 'accepts a nickel and updates display' do
      subject.insert '5'
      expect(subject.display).to eq '5 cents'
    end

    it 'accepts a dime and updates display' do
      subject.insert '10'
      expect(subject.display).to eq '10 cents'
    end

    it 'accepts a quarter and updates display' do
      subject.insert '25'
      expect(subject.display).to eq '25 cents'
    end

    it 'accepts coin combo and updates display' do
      subject.insert '5'
      subject.insert '10'
      subject.insert '25'
      expect(subject.display).to eq '40 cents'
    end
  end

  context 'invalid coins' do

    it 'rejects and returns a penny' do
      subject.insert '1'
      expect(subject.coin_return).to eq '1'
    end

    it 'rejects and returns anything that is not a coin' do
      subject.insert '1asdas'
      expect(subject.coin_return).to eq '1asdas'
    end

    it 'displays INSERT COIN when no coins inserted' do
      expect(subject.display).to eq 'INSERT COIN'
    end
  end
end