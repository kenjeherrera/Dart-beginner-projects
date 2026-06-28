List<Map<String, dynamic>> book = [
  {
    "title": "Clean Code",
    "author": "Robert C. Martin",
    "category": "Programming",
    "price": 850,
    "available": true,
  },
  {
    "title": "Atomic Habits",
    "author": "James Clear",
    "category": "Self-help",
    "price": 650,
    "available": false,
  },
  {
    "title": "Deep Work",
    "author": "Cal Newport",
    "category": "Productivity",
    "price": 700,
    "available": true,
  },
];
int totalBook(List<Map<String, dynamic>> books) {
  for (Map<String, dynamic> book in books) {}
  return books.length;
}

int countAvailableBooks(List<Map<String, dynamic>> books) {
  int availableBook = 0;
  for (Map<String, dynamic> book in books) {
    if (book["available"] == true) {
      availableBook++;
    }
  }
  return availableBook;
}

double averageBookPrice(List<Map<String, dynamic>> books) {
  double averagePrice = 0;
  for (Map<String, dynamic> book in books) {
    averagePrice += (book["price"] as int);
  }
  return averagePrice / book.length;
}

int highestBookPrice(List<Map<String, dynamic>> books) {
  int highest = (book[0]["price"] as int);
  for (Map<String, dynamic> book in books) {
    if (book["price"] as int > highest) {
      highest = book["price"] as int;
    }
  }
  return highest;
}

int lowestBookPrice(List<Map<String, dynamic>> books) {
  int lowest = (book[0]["price"] as int);
  for (Map<String, dynamic> book in books) {
    if (book["price"] as int < lowest) {
      lowest = book["price"] as int;
    }
  }
  return lowest;
}

void showBooks(List<Map<String, dynamic>> books) {
  for (Map<String, dynamic> book in books) {
    print("Title: ${book["title"]}");
    print("Author: ${book["author"]}");
    print("Category: ${book["category"]}");
    print("Price: ${book["price"]}");
    print("Available: ${book["available"]}");

    print("------------------------------");
  }
}

countBooksbyCategory(List<Map<String, dynamic>> books, String category) {
  int bookCategory = 0;
  for (Map<String, dynamic> book in books) {
    if (book["category"] == category) {
      bookCategory++;
    }
  }
  return bookCategory;
}

void main() {
  showBooks(book);

  print("Total Books: ${totalBook(book)}");
  print("Available Books: ${countAvailableBooks(book)}");
  print("AveragePrice: ₱${averageBookPrice(book)}");
  print("Highest Book Price: ₱${highestBookPrice(book)}");
  print("Lowest Book price: ₱${lowestBookPrice(book)}");
  print("Programming Books:  ${countBooksbyCategory(book, "Programming")}");
}
