describe '#get_buy_and_sell_times' do
  
  let(:jamba_juice) { get_buy_and_sell_times("spec/fixtures/jamba-juice-stock.json") }
  let(:apple)       { get_buy_and_sell_times("spec/fixtures/apple-stock.json")       }
  let(:tesla)       { get_buy_and_sell_times("spec/fixtures/tesla-stock.json")       }

  it 'returns a hash' do
    expect(jamba_juice.class).to eq(Hash)
  end

  it 'contains two keys, :buy and :sell' do
    [:buy, :sell].each { |k| expect(jamba_juice[k]).to_not eq(nil) }
  end

  it 'contains two string values for :buy and :sell' do
    [:buy, :sell].each { |k| expect(jamba_juice[k].class).to eq(String) }
  end

  it 'correctly predicts when to buy and sell Jamba Juice stock' do
    expect(jamba_juice[:buy]).to eq()
    expect(jamba_juice[:sell]).to eq()
  end

  it 'correctly predicts when to buy and sell Apple stock' do
    expect(apple[:buy]).to eq()
    expect(apple[:sell]).to eq()
  end

  it 'correctly predicts when to buy and sell Tesla stock' do
    expect(tesla[:buy]).to eq()
    expect(tesla[:sell]).to eq()
  end

end
