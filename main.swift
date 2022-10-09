
var words = [String]()

// ask user for words to add to array
//print("Enter a word to add to the list of words to sort. Once finished adding all words, press ENTER. ", terminator:"")
var line = readLine()
while line != nil && line != "" && line != " " {
    words.append(line!)
    //print("Enter a word to add to the list of words to sort. Once finished adding all words, press ENTER. ", terminator:"")
    line = readLine()
}

func Swap(words: inout [String], firstIndex: Int, secondIndex: Int) {
    let placeHolder = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = placeHolder
}
func sort() {
    var placeHolder = 0
    var totalCount = 0
    var functionInvoke = true

    print("Pass: \(0), Swaps: \(placeHolder)/\(totalCount), Array: \(words)")
    while(functionInvoke) {
        for i in 0..<words.count {
            for j in 1..<words.count - i {
                if(words[j] < words[j-1]) {
                    functionInvoke = true
                    placeHolder += 1
                    totalCount += 1
                    Swap(words: &words, firstIndex: j, secondIndex: j-1)
                }
            }
            print("Pass: \(i+1), Swaps: \(placeHolder)/\(totalCount), Array: \(words)")

            if(placeHolder == 0) {
                functionInvoke = false
                break
            }
            placeHolder = 0
        }
    }
    
      }
sort()
