import java.util.Random;

public class Merge{
  public static void printArr(int arr[]){
    for (int i=0; i< arr.length; i++){
      System.out.print(arr[i] + " ");
    }
    System.out.println();
  }

  public static void merge(int arr[], int init, int half, int end){
    int n1, n2, i, j;
    n1 = half - init + 1;
    n2 = end - half;
    System.out.println("init: "+init);
    System.out.println("half: "+half);
    System.out.println("end: "+end);
    int lar[] = new int[n1+1];
    int rar[] = new int[n2+1];
    for (i=0; i < n1; i++){
      System.out.println("i: "+i);
      lar[i] = arr[init + i];
    }
    for (j=0; j < n2; j++){
      System.out.println("j: "+j);
      rar[j] = arr[half + j + 1];
    }
    System.out.println("lar");
    printArr(lar);
    System.out.println("rar");
    printArr(rar);
    lar[n1] = 100000000;
    rar[n2] = 100000000;
    i = j = 0;
    for (int k=init;k <= end; k++){
      if(lar[i] <= rar[j]){
        arr[k] = lar[i];
        i += 1;
      }else{
        arr[k] = rar[j];
        j += 1;
      }
    }
  }

  public static void mergeSort(int arr[], int init, int end){
    if(init < end){
      int half = ((end+init) / 2);
      mergeSort(arr, init, half);
      mergeSort(arr, half+1, end);
      merge(arr, init, half, end);
    }
  }
  public static void fillArray(int arr[]){
    Random rand = new Random();
    int size =  arr.length;
    for(int i=0; i< size; i++){
      arr[i] = rand.nextInt(size);
      System.out.print(arr[i]+" ");
    }
    System.out.println();
  }
  public static void main (String []args){
 //   int arr[] = new int[10];
 //   fillArray(arr);
    int arr[] = {1,4,2,5};
    mergeSort(arr, 0, arr.length-1);
    printArr(arr);
  }
}
