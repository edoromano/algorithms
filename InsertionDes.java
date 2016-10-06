import java.util.Random;

public class InsertionDes{
  public static void fillArray(int arr[]){
    Random rand = new Random();
    int size =  arr.length;
    for(int i=0; i< size; i++){
      arr[i] = rand.nextInt(size);
      System.out.print(arr[i]+" ");
    }
    System.out.println();
  }

  public static void printArray(int arr[]){
    int size =  arr.length;
    for(int i=0; i< size; i++){
      System.out.print(arr[i]+" ");
    }
    System.out.println();
  }

  public static void main (String []args){
    int key = 0;
    int i = 0;
    int arr[] = new int[10];
    fillArray(arr);
    for(int j=1; j < arr.length; j++){
      key = arr[j];
      i = j - 1;
      while( i >= 0 && arr[i] < key){
        arr[i+1] = arr[i];
        i = i - 1;
      }
      arr[i+1] = key;
    }
    printArray(arr);
  }
}
