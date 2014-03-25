require_relative 'string_calc'

describe "String Calculator" do
	before :each do
		@nums = StringCalculator.new
	end

	context "converts single string to num" do
		it "converts "" to 0" do
			@nums.add("").should eq 0
		end

		it "converts 1 to 1" do
			@nums.add("1").should eq 1
		end

		it "converts 10 to 10" do
			@nums.add("10").should eq 10
		end
	end

	context "adds numbers" do
		it "converts 1,2 to 3" do
			@nums.add("1,2").should eq 3
		end

		it "converts 3,5,1 to 9" do
			@nums.add("3,5,1").should eq 9
		end
	end

	context "converts new line" do
		it "converts 1\n2,3 to 6" do
			@nums.add("1\n2,3").should eq 6
		end

		it "converts 3,5,6,\n,1 to 15" do
			@nums.add("3,5,6,\n,1").should eq 15
		end
	end

	context "converts delimiters" do
		it "converts //;\n1;2 to 3" do
			@nums.add("//;\n1;2").should eq 3
		end

		it "converts //;3,5,6,\n,1 to 15" do
			@nums.add("//;3,5,6,\n,1").should eq 15
		end
	end
end
