public class QuickSort{
  public static int partition(int arr[], int init, int end){
    int lastElement = arr[end];
    int i = init-1;
    int aux;
    for (int j=init;j < end; j++){
      if(arr[j] <= lastElement) {
        i+=1;
        aux = arr[i];
        arr[i] = arr[j];
        arr[j] = aux;
      }
    }
    aux = arr[i+1];
    arr[i+1] = arr[end];
    arr[end] = aux;
    return i + 1;
  }
  public static void quickSort(int arr[], int init, int end){
    if(init < end){
      int half = partition(arr, init, end);
      quickSort(arr, init, half - 1);
      quickSort(arr, half + 1, end);
    }
  }
  public static void print(int arr[]){
    for (int i=0; i< arr.length; i++) {
      System.out.print(arr[i]+" ");
    }
    System.out.println();
  }
  public static void main (String []args){
    int arr[] = {1,4,3,2,5,9,7,8,6};
    print(arr);
    quickSort(arr, 0, arr.length-1);
    print(arr);
  }
}
