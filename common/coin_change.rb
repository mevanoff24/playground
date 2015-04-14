

def coin_change(amount, avail_coins=[100,50,25,10,5,1])
	wallet = []
	index = 0
	each_coin = avail_coins[index]
	remaining_amount = amount
	until remaining_amount == 0
		until remaining_amount >= each_coin
			index += 1
			each_coin = avail_coins[index]
		end
		wallet << each_coin
		remaining_amount -= each_coin
	end
	wallet
end
p coin_change(206)



# describe coin_change do
 
#   it "returns [1] for 1" do
#     expect(subject.change(1)).to eq [1]
#   end
 
#   it "returns [1, 1, 1, 1] for 4" do
#     expect(subject.change(4)).to eq [1,1,1,1]
#   end
 
#   it "returns [5, 1] for 6" do
#     expect(subject.change(6)).to eq [5,1]
#   end
 
#   it "returns [25, 10, 10, 1, 1, 1] for 48" do
#     expect(subject.change(48)).to eq [25,10,10,1,1,1]
#   end
 
#   it "returns [100, 25, 10, 5, 1, 1] for 142" do
#     expect(subject.change(142)).to eq [100,25,10,5,1,1]
#   end
 
#   it "returns [100,100,50,25,10,1] for 286" do
#     expect(subject.change(286)).to eq [100,100,50,25,10,1]
#   end
# end