describe '#analyze_stock' do

  context "w/Jamba Juice JSON" do
    before(:each) do
      @jamba_juice = analyze_stock("spec/fixtures/jamba-juice-stock.json")
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
      {:buy => "9:44 am", :sell => "12:06 pm", :profit => "$28.64"}.each do |k,v|
        expect(@jamba_juice[k]).to eq(v)
      end
    end
  end

  context "w/Apple JSON" do
    it 'correctly predicts when to buy and sell Apple stock' do
      apple = analyze_stock("spec/fixtures/apple-stock.json")
      {:buy => "11:04 am", :sell => "11:06 am", :profit => "$90.84"}.each do |k,v|
        expect(apple[k]).to eq(v)
      end
    end
  end

  context "w/Tesla JSON" do
    it 'correctly predicts when to buy and sell Tesla stock' do
      tesla = analyze_stock("spec/fixtures/tesla-stock.json")
      {:buy => "12:03 pm", :sell => "12:16 pm", :profit => "$80.09"}.each do |k,v|
        expect(tesla[k]).to eq(v)
      end
    end
  end

  context "Analyze stock" do
    it "write which stock you should invest in if you could only invest in one" do
      # replace the string below ("?") with "jamba juice", "apple", or "tesla"
      answer = "apple"
      expect(encode(answer)).to eq("d0be2dc421be4fcd0172e5afceea3970e2f3d940")
    end
  end

end
