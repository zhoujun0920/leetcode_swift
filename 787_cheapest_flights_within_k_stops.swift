func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) {
  var dict = [Int, [(Int, Int)]]()
  for flight in flights {
    var list = dict[flight[0]] ?? [(Int, Int)]()
    list.append((flight[1], flight[2]))
  }
  var parent = Array(repeating: -1, count: n)
  var memo = Array(repeating: Int.max)
  
}
