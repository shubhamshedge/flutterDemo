void main() {
  //Bubble Sort
  // List<int> array = [5, 1, 4, 2, 8];
  // List<int> sortedarray = bubbleSort(array);
  // print(sortedarray);

  // When to Choose Insertion Sort
  // Insertion Sort shines when you have a small list or when the list
  // is nearly sorted. It’s efficient for this kind of scenario and can be faster than other algorithms.

  // there are two array sorted and unsorted , in sorted array contain one element , unsorted item compare with sorted array items
  // List<int> array = [5, 1, 4, 2, 8];
  // List<int> sortedarray1 = insertionSort(array);
  // print(sortedarray1);

  // List<int> array = [5, 1, 4, 2, 8];
  // List<int> sortedarray1 = selectionSort(array);
  // print(sortedarray1);

  // insertionSortPractice();
  // selectionSortPractice();
  print(countAsyncData(10));
}

insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int j = i - 1; // j = 0
    int key = arr[i]; // 1

    while (j >= 0 && arr[j] > key) {
      // 5,    1, 4, 2, 8
      arr[j + 1] = arr[j]; // 1,5,  4, 2, 8
      j = j - 1; // 1,4,5,   2, 8
      print(j);
    }

    arr[j + 1] = key;
    print("arry[j + 1] = ${arr[j + 1]}");
  }
  return arr;
}

bubbleSort(List<int> array) {
  // find array length = 5
  int lengthOfArray = array.length;

  for (int i = 0; i < lengthOfArray - 1; i++) {
    print("Outer Loop");
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      // 0 < 4
      print("Inner Loop j value is = $j < ${lengthOfArray - i - 1}");
      if (array[j] > array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
        print("Sort Array ${array}");
      }
    }
  }
  return (array);
}

//output = [1, 2, 4, 5, 8]

// How Selection Sort Works
// Picking the Smallest:
//
// Visualize yourself scanning the cards for the smallest number.
// You pick that card and place it in the first position.
// This step leaves an “empty” spot at the start of the deck.
// Filling the Empty Spot:
//
// As you continue, you search for the smallest card among the remaining unsorted cards.
// You place this card in the empty spot created earlier.
// This process repeats until all cards are sorted.

// List<int> array = [5, 1, 4, 2, 8];
// there are two array 1. empty sort array and unsorted array.  2. find minimum element from unsorted array and swap with sorted array
selectionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[minIndex];
    arr[minIndex] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

insertionSortPractice() {
  List<int> array = [2, 5, 1, 3];
  int n = array.length;
  for (int i = 1; i < n; i++) {
    int j = i - 1; //step 1 = 0, step 2 =  1
    int min = array[i]; //step 1 = 5, step 2 =  1
    while (j >= 0 && array[j] > min) {
      // 2 > 5 , 5 > 1
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = min;
  }
  print(array);
}

selectionSortPractice() {
  List<int> array = [8, 5, 1, 3];

  for (int i = 0; i < array.length - 1; i++) {
    int minElement = i;    // 0,

    for (int j = i + 1; j < array.length; j++) {
      if (array[minElement] > array[j]) { // 8 > 5, 8 > 1
        minElement = j;  // 1, 2
      }
    }
    if (minElement != i) {
      var temp = array[i]; // 8
      array[i] = array[minElement];
      array[minElement] = temp;
      // 1, 5, 8, 3
      //
    }
  }
  print(array);
}

Stream<int> countAsyncData(int item) async* {
  for (int i = 1; i <= item; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<int> addAsyncData(int a, int b) async {
  await Future.delayed(const Duration(seconds: 100));
  return a + b;
}
// flutter lifecycle
//createState()
//initState()
//didChangeDependancy()
//build()
//didUpdateWidget()
//deactive
//dispose