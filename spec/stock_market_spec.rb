describe '#get_buy_and_sell_times' do

  it 'returns a hash' do
    expect(get_buy_and_sell_times("spec/fixtures/jamba-juice-stock.json").class).to eq(Hash)
  end

  it 'contains two keys, :buy and :sell' do
    result = get_buy_and_sell_times("spec/fixtures/jamba-juice-stock.json")
    [:buy, :sell].each { |k| expect(result[k]).to_not eq(nil) }
  end

  it 'contains two string values for :buy and :sell' do
    result = get_buy_and_sell_times("spec/fixtures/jamba-juice-stock.json")
    [:buy, :sell].each { |k| expect(result[k].class).to eq(String) }
  end

  it 'correctly predicts when to buy and sell Jamba Juice stock' do
    result = get_buy_and_sell_times("spec/fixtures/jamba-juice-stock.json")
    expect(result[:buy]).to eq()
    expect(result[:sell]).to eq()
  end

  it 'correctly predicts when to buy and sell Apple stock' do
    result = get_buy_and_sell_times("spec/fixtures/apple-stock.json")
    expect(result[:buy]).to eq()
    expect(result[:sell]).to eq()
  end

  it 'correctly predicts when to buy and sell Tesla stock' do
    result = get_buy_and_sell_times("spec/fixtures/tesla-stock.json")
    expect(result[:buy]).to eq()
    expect(result[:sell]).to eq()
  end

end