import java.util.Random;

public class MergeAsc{
  public static void printArr(int arr[]){
    for (int i=0;i< arr.length; i++ ){
      System.out.print(arr[i] + " ");
    }
    System.out.println();
  }

  public static void merge(int arr[], int p, int q, int r){
    int n1, n2, i, j;
    n1 = q - p + 1;
    n2 = r - q;
    int lar[] = new int[n1+1];
    int rar[] = new int[n2+1];
    for (i=0; i < n1 ; i++){
      lar[i] = arr[p + i];
    }
    for (j=0; j < n2 ; j++){
      rar[j] = arr[q + j + 1];
    }
    lar[n1] = 100000000;
    rar[n2] = 100000000;
    i = j = 0;
    for (int k=p;k < r; k++){
      if(lar[i] <= rar[j]){
        arr[k] = lar[i];
        i += 1;
      }else if(arr[k] == rar[j]){
        j += 1;
      }
    }
  }

  public static void mergeSort(int arr[], int p, int r){
    int q = 0;
    if(p < r){
      q = (r / 2);
      System.out.println("-----------arr--------");
      printArr(arr);
      mergeSort(arr, p, q);
      mergeSort(arr, q+1, r);
      merge(arr, p, q, r);
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
    int arr[] = new int[10];
    fillArray(arr);
    mergeSort(arr, 0, arr.length);
    printArr(arr);
  }
}
