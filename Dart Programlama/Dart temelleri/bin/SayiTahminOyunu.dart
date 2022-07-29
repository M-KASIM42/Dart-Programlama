
import 'dart:io';
import 'dart:math';

void  main() {
   print('***** sayi tahmin oyununa hoşgeldiniz *****');
   int count = 0; // deneme sayısını tutacak
   Random rand = Random(); 
   int temp = rand.nextInt(100); // 0 ile 100 arasında rastgele bir sayi üretecek
   while(true){
    print('tahmin ediniz: ');
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi == temp ) {
      count++;
      break;
    }
    else if(sayi > temp) {
      count ++;
      print('daha kucuk sayi giriniz!! ');
    }
    else{
      print('daha buyuk sayi giriniz: ');
      count++;
    }
   }
  print('tebrikler $count . denemede buldunuz');
}


