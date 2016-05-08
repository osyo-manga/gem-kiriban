require 'spec_helper'

describe Kiriban do
	it 'has a version number' do
		expect(Kiriban::VERSION).not_to be nil
	end

	it "#kiriban?" do
		expect("1000".kiriban?).to eq(true)
		expect(:wwww.kiriban?).to eq(true)
		expect(:"10000".kiriban?).to eq(true)
		expect(2345432.kiriban?).to eq(true)
	end

	it '#zeroban?' do
		expect("1000".zeroban?).to eq(true)
		expect("0000".zeroban?).to eq(true)
		expect("120000".zeroban? 2).to eq(true)

		expect("1001".zeroban?).to eq(false)
		expect("001000".zeroban?).to eq(false)
		expect("120000".zeroban?).to eq(false)
	end

	it "#zoroban?" do
		expect("11111".zoroban?).to eq(true)
		expect("11112".zoroban?).to eq(false)
	end

	it "#renban?" do
		expect("123456".renban?).to eq(true)
		expect("0123456".renban?).to eq(true)
		expect("10123456".renban?).to eq(false)
	end

	it "#miraban?" do
		expect("1234321".miraban?).to eq(true)
		expect("123444321".miraban?).to eq(true)
		expect("01234321".miraban?).to eq(false)
	end
end
