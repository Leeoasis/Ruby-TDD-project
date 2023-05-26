require_relative '../solver'

RSpec.describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a non-negative integer' do
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an ArgumentError for negative integers' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
      expect { solver.factorial(-10) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
      expect(solver.reverse('ruby')).to eq('ybur')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" for numbers divisible by 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
      expect(solver.fizzbuzz(12)).to eq('fizz')
    end

    it 'returns "buzz" for numbers divisible by 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
      expect(solver.fizzbuzz(20)).to eq('buzz')
    end

    it 'returns "fizzbuzz" for numbers divisible by both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for other cases' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(13)).to eq('13')
      expect(solver.fizzbuzz(22)).to eq('22')
    end
  end
end
