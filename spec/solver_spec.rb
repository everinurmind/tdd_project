require_relative '../solver'

describe Solver do
  describe 'factorial' do
    context 'calculating the factorial' do
      it 'returns 24 for factorial(4)' do
        result = subject.factorial(4)
        expect(result).to eq 24
      end
      it 'returns 1 when input is 0 or 1' do
        result_for_zero = subject.factorial(0)
        result_for_one = subject.factorial(1)
        expect(result_for_zero).to eq 1
        expect(result_for_one).to eq 1
      end
    end
    context 'when input is a negative number' do
      it 'should raise error' do
        num = -1
        expect { subject.factorial(num) }.to raise_error(ArgumentError)
      end
    end
  end

  describe 'reverse' do
    context 'should reverse the word' do
      it 'returns olleh for word hello' do
        word = 'hello'
        expected_result = 'olleh'
        result = subject.reverse(word)
        expect(result).to eql expected_result
      end
    end
  end

  describe 'fizzbuzz' do
    context 'when N is divisible by 3' do
      it 'returns "fizz" for fizzbuzz(9)' do
        result = subject.fizzbuzz(9)
        expect(result).to eq 'fizz'
      end
    end
    context 'when N is divisible by 5' do
      it 'returns "buzz" for fizzbuzz(10)' do
        result = subject.fizzbuzz(10)
        expect(result).to eq 'buzz'
      end
    end
    context 'when N is divisible by 3 and 5' do
      it 'returns "fizzbuzz" for fizzbuzz(15)' do
        result = subject.fizzbuzz(15)
        expect(result).to eq 'fizzbuzz'
      end
    end
    context 'when N is not divisible by 3 or 5' do
      it 'returns "7" for fizzbuzz(7)' do
        result = subject.fizzbuzz(7)
        expect(result).to eq '7'
      end
    end
  end
end
