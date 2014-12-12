---
tags: comp sci, computer science, logic, cs, interview questions, interview qs
languages: ruby
resources: 2
---

# Stock Market

## Contents

|Section|
|-------|
|[Background](#background)|
|[Objective](#objective)|
|[Instructions](#instructions)|
|[Resources](#resources)|

## Background

Today is November 18, 2014. At 9 am, a mysterious stranger emails you a list of Jamba Juice stock prices for today and for some reason, you suspect it was a weathly future version of youself. This is your big chance to invest!

The paper contains 361 key value pairs, one for each minute between 9:30 a.m. and 4:00 p.m. The paper begins like this:

```json
{
    "0":36.23,
  "324":36.48,
    "7":37.23,
    "3":34.03,
  "211":38.89,
    "5":22.55,
  "390":39.99
}
```

As you can see, the stock market information is a hash, where  the keys are the number of minutes that have passed since the trading floor opened at 9:30 a.m. and the values are the prices of a share of Jamba Juice stock (in dollars). 

From this information, you understand that at 9:30 a.m., you could buy a share of Jamba Juice for $36.23. You know this because the key of "0" points to that value. You also learn that 9:35 am, you could buy it for only $22.55 (key of "5"). Then at 4:00 p.m. one share was worth $39.99 (key of "390").

## Objective

Create a method `get_buy_and_sell_times` which will analyze the contents of a stock info JSON file, such as `spec/fixturesjamba-juice-stock.json`. This method should tell you what time to buy stock and what time to sell stock. Feel free to create more methods to help this method out if you'd like.

Let's assume two things:

1. You can only buy and sell once because you don't want to arouse suspicion
2. You must buy stock before you sell stock

You want to return a hash with two key-value pairs, for example:

```ruby
{:buy => "9:35 am", :sell => "2:40 pm"}
```

## Instructions

Flesh out the method `get_buy_and_sell_times` such that it passes the specs. This method should accept one argument, the file path to the JSON stock data.

## Resources

* [HackHands](https://hackhands.com/) - [Ruby Read JSON File Hash](https://hackhands.com/ruby-read-json-file-hash/)
* [StackOverflow](http://stackoverflow.com/) - [From JSON to a Ruby Hash?](http://stackoverflow.com/a/9055150/2890716)
