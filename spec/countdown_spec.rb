require_relative './spec_helper'

describe 'LOOPS' do

  describe '#countdown' do
    it 'returns HAPPY NEW YEAR!' do
      expect(countdown(12)).to eq "0 left. HAPPY NEW YEAR!"
    end
  end

  describe '#countdown_with_sleep' do
    it 'should take at least 5 seconds to execute' do
      runtime = Benchmark.measure { countdown_with_sleep(5) }
      expect(runtime.real.to_i >= 5).to be true
    end
  end

end






