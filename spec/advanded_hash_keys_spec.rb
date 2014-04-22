require 'rspec'

RSpec.configure do |c|
  c.color     = true
  c.tty       = true
end

require File.expand_path("#{File.dirname(__FILE__)}/../lib/advanced_hash_keys")

describe Hash do
  before do
    @strings = { 'a' => 1, 'b' => 2 }
    @symbols = { :a  => 1, :b  => 2 }
    @mixed   = { :a  => 1, 'b' => 2 }
    @fixnums = {  0  => 1,  1  => 2 }
    @illegal_symbols = { [] => 3 }
    @nested_hash = { 'a' => { 'b' => 2 }, 'c' => [{ 'd' => 3 }] }
    @nested_hash_first_level_symbolized = { :a => { 'b' => 2 }, :c => [{ 'd' => 3 }] }
    @nested_hash_all_keys_symbolized = { :a => { :b => 2 }, :c => [{ :d => 3 }] }
    @nested_hash_first_level_stringfied = { 'a' => { 'b' => 2 }, 'c' => [{ 'd' => 3 }] }
    @nested_hash_all_keys_stringfied = { 'a' => { 'b' => 2 }, 'c' => [{ 'd' => 3 }] }
  end

  describe 'symolize_keys' do
    subject { base_param.symbolize_keys(input_param) }
    context 'input_param is true' do
      let(:input_param) { true }
      context 'base_param is string key' do
        let(:base_param)  { @strings }

        it 'agrees with symbols' do
          expect(subject).to eq @symbols
        end
      end

      context 'base_param is mixed key' do
        let(:base_param)  { @mixed }

        it 'agrees with symbols' do
          expect(subject).to eq @symbols
        end
      end

      context 'base_param is nested_hash' do
        let(:base_param)  { @nested_hash }

        it 'agrees with nested hash all keys symbolized' do
          expect(subject).to eq @nested_hash_all_keys_symbolized
        end
      end

      context 'base_param is illegal_symbol' do
        let(:base_param) { @illegal_symbol }

        it 'raise NoMethodError' do
          expect { subject }.to raise_error NoMethodError
        end
      end
    end

    context 'input_param is false' do
      let(:input_param) { false }

      context 'base_param is string key' do
        let(:base_param)  { @strings }

        it 'agrees with symbols' do
          expect(subject).to eq @symbols
        end
      end

      context 'base_param is mixed key' do
        let(:base_param)  { @mixed }

        it 'agrees with symbols' do
          expect(subject).to eq @symbols
        end
      end

      context 'base_param is nested_hash' do
        let(:base_param)  { @nested_hash }

        it 'agrees with nested hash first level symbolized' do
          expect(subject).to eq @nested_hash_first_level_symbolized
        end
      end

      context 'base_param is illegal_symbol' do
        let(:base_param) { @illegal_symbol }

        it 'raise NoMethodError' do
          expect { subject }.to raise_error NoMethodError
        end
      end
    end
  end

  describe 'stringify_keys' do
    subject { base_param.stringify_keys(input_param) }

    context 'input_param is true' do
      let(:input_param) { true }

      context 'base_param is symolized key' do
        let(:base_param)  { @symbols }

        it 'agrees with string' do
          expect(subject).to eq @strings
        end
      end

      context 'base_param is mixed key' do
        let(:base_param)  { @mixed }

        it 'agrees with symbols' do
          expect(subject).to eq @strings
        end
      end

      context 'base_param is nested_hash' do
        let(:base_param)  { @nested_hash }

        it 'agrees with nested hash all keys stringified' do
          expect(subject).to eq @nested_hash_all_keys_stringfied
        end
      end

      context 'base_param is illegal_symbol' do
        let(:base_param) { @illegal_symbol }

        it 'raise NoMethodError' do
          expect { subject }.to raise_error NoMethodError
        end
      end
    end

    context 'input_param is false' do
      let(:input_param) { false }

      context 'base_param is symolized key' do
        let(:base_param)  { @symbols }

        it 'agrees with string' do
          expect(subject).to eq @strings
        end
      end

      context 'base_param is mixed key' do
        let(:base_param)  { @mixed }

        it 'agrees with symbols' do
          expect(subject).to eq @strings
        end
      end

      context 'base_param is nested_hash' do
        let(:base_param)  { @nested_hash }

        it 'agrees with nested hash first level stringified' do
          expect(subject).to eq @nested_hash_first_level_stringfied
        end
      end

      context 'base_param is illegal_symbol' do
        let(:base_param) { @illegal_symbol }

        it 'raise NoMethodError' do
          expect { subject }.to raise_error NoMethodError
        end
      end
    end
  end
end
