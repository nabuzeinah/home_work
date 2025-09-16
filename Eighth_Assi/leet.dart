void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];
  print(maxProfit(prices));
}

int maxProfit(List<int> prices) {
  int maxProfit = 0;
  int largestNum = prices[0];
  int smallestNum = prices[0];

  for (var price in prices) {
    if (price > largestNum) {
      largestNum = price;
    }
    if (price < smallestNum) {
      smallestNum = price;
      largestNum = price;
    }
    var currentProfit = largestNum - smallestNum;
    if (currentProfit > maxProfit) {
      maxProfit = currentProfit;
    }
  }
  return maxProfit;
}
