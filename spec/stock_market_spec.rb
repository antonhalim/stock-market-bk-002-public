describe '#get_buy_and_sell_times' do

  context "w/Jamba Juice JSON" do
    before(:each) do
      @jamba_juice = get_buy_and_sell_times("spec/fixtures/jamba-juice-stock.json")
    end

    it 'returns a hash' do
      expect(@jamba_juice.class).to eq(Hash)
    end

    it 'contains two keys, :buy and :sell' do
      [:buy, :sell, :profit].each { |k| expect(@jamba_juice[k]).to_not eq(nil) }
    end

    it 'contains two string values for :buy and :sell' do
      [:buy, :sell, :profit].each { |k| expect(@jamba_juice[k].class).to eq(String) }
    end

    it 'correctly predicts when to buy and sell Jamba Juice stock' do
      expect(@jamba_juice[:buy]).to eq("9:44 am")
      expect(@jamba_juice[:sell]).to eq("12:06 pm")
      expect(@jamba_juice[:profit]).to eq("$28.64")
    end
  end

  context "w/Apple JSON" do
    it 'correctly predicts when to buy and sell Apple stock' do
      apple = get_buy_and_sell_times("spec/fixtures/apple-stock.json")
      expect(apple[:buy]).to eq("11:04 am")
      expect(apple[:sell]).to eq("11:06 am")
      expect(apple[:profit]).to eq("$90.84")
    end
  end

  context "w/Tesla JSON" do
    it 'correctly predicts when to buy and sell Tesla stock' do
      tesla = get_buy_and_sell_times("spec/fixtures/tesla-stock.json")  
      expect(tesla[:buy]).to eq("12:03 pm")
      expect(tesla[:sell]).to eq("12:16 pm")
      expect(tesla[:profit]).to eq("$80.09")
    end
  end

  context "Analyze stock" do
    it "write which stock you should invest in if you could only invest in one" do
      # replace the string below with "jamba juice", "apple", or "tesla"
      answer = "apple"
      expect(encode(answer)).to eq("d0be2dc421be4fcd0172e5afceea3970e2f3d940")
    end
  end

end
