void main() {
  String sequence = "NNMMM";
  print(number(sequence));
}

String number(String sequence) {
  // inisialisasi while loop
  int initialNumber = 0;
  bool isValid = true;

  // Perulangan untuk pengecekan setiap karakter
  while (initialNumber < sequence.length) {
    // apabila karakter tidak M/N, proses tidak dijalankan
    if (sequence[initialNumber] != 'M' && sequence[initialNumber] != 'N') {
      isValid = false;
      break;
    }
    initialNumber++;
  }

  // data
  List<int> result = [];
  List<int> stackDigit = [];
  int digit = 1;

  if (isValid) {
    for (int i = 0; i < sequence.length; i++) {
      String character = sequence[i];

      // Menambahkan digit angka ke stack
      stackDigit.add(digit);
      // print(digit);
      digit += 1;
      // print(digit);

      //* Jika character N
      if (character == 'N') {
        //* Perulangan selama List stackNumber tidak kosong
        while (stackDigit.isNotEmpty) {
          //* Menambahkan semua digit pada List stackNumber ke List result, dengan cara menambahkan number pada index terakhir pada List stackNumber, kemudian angka yang telah ditambahkan akan di remove pada List stackNumber
          result.add(stackDigit.removeLast());
        }
      }
    }
    //* Menambahkan nilai digit terakhir
    // print(digit);
    stackDigit.add(digit);

    //* Perulangan selama List stackNumber tidak kosong
    while (stackDigit.isNotEmpty) {
      //* Menambahkan semua digit pada List stackNumber ke List result, dengan cara menambahkan number pada index terakhir pada List stackNumber, kemudian angka yang telah ditambahkan akan di remove pada List stackNumber
      result.add(stackDigit.removeLast());
    }
  } else {
    print('Karakter harus M dan N !');
  }

  //* Menampilkan hasil penggabungan List result
  return result.join();
  // return result.join('-');
}
