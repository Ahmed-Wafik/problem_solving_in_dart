// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

import 'dart:math';

class Solution {
  // O(n^2)
  int maxProfit(List<int> prices) {
    int maxValue = 0;
    for (var buy = 0; buy < prices.length; buy++) {
      for (var sell = buy + 1; sell < prices.length; sell++) {
        maxValue = max(maxValue, _calculateProfite(prices, buy, sell));
      }
    }

    return maxValue;
  }

  //O(n)
  int maxProfit2(List<int> prices) {
    int buyTime = 0;
    int sellTime = 1;
    int maxProfit = 0;

    while (sellTime < prices.length) {
      if (prices[buyTime] < prices[sellTime]) {
        int profite = prices[sellTime] - prices[buyTime];
        maxProfit = max(maxProfit, profite);
      } else {
        buyTime = sellTime;
      }
      sellTime += 1;
    }
    return maxProfit;
  }

  int maxProfit3(List<int> prices) {
    int sell = 1, buy = 0;
    int maxProfit = 0;
    for (var i = 0; i < prices.length; i++) {
      if (sell < prices.length && prices[sell] > prices[i]) {
        if (prices[i] < prices[buy]) buy = i;
        int profite = prices[sell] - prices[buy];
        maxProfit = profite > maxProfit ? profite : maxProfit;
      }
      sell++;
    }
    return maxProfit;
  }

  int _calculateProfite(List<int> prices, int buy, int sell) {
    int result = prices[sell] - prices[buy];
    return result <= 0 ? 0 : result;
  }
}
