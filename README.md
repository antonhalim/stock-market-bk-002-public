---
tags: comp sci, computer science, logic, cs, interview questions, interview qs
languages: ruby
resources: 1
---

# Stock Market

## Contents

## Background

Today is November 18, 2014. At 9 am, a mysterious stranger emails you a list of Jamba Juice stock prices for today and for some reason, you suspect it was a weathly future version of youself. This is your big chance to invest!

The paper looks like this:

```json
[
  {"0" => "36.23"},
  {"1" => "36.48"},
  {"2" => "37.23"},
  {"3" => "34.03"},
  {"4" => "38.89"},
  {"4" => "22.55"},
  ...
]
```

As you can see, the stock market information is an array of hashes, where each hash has one key-value pair: the key is the number of minutes that have passed since the trading floor opened at 9:30 am, the value is the price of a share of Jamba Juice stock (in dollars). 

From this information, you understand that at 9:30 am, you could buy a share of Jamba Juice for $36.23 and at 9:35 am, you could buy it for only $22.55.

## Objective

Create a method `get_buy_and_sell_times` which analyze the contents of `jamba-juice-stock.json` in your `lib` folder. This method should tell you what time to buy stock and what time to sell stock. Feel free to create more methods to help this method out if you'd like. 

Let's assume two things:

1. You can only buy and sell once, you don't want to arouse suspicion after all
2. that you must buy stock before you sell stock.

You want to return a hash with two key-value pairs:

* First key-value pair:
  * key: `:buy` *(symbol)*
  * value: time *(string)*
* Second key-value pair:
  * key: `:sell` *(symbol)*
  * value: time *(string)*

For example:

```ruby
{:buy => "9:35 a.m.", :sell => "2:40 p.m."}
```


