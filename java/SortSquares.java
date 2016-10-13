public class SortSquares{
  public static void printArr(int arr[]){
    for (int i=0; i<arr.length; i++) {
      System.out.print(" "+ arr[i]);
    }
    System.out.println();
  }
  public static void merge(int arr[], int init, int half, int end){
    int n1,n2,i,j;
    n1 = half - init + 1;
    n2 = end - half;
    int lar[] = new int [n1+1];
    int rar[] = new int [n2+1];
    for (i=0;i<n1; i++){
      lar[i] = arr[init + i];
    }
    for (j=0;j<n2; j++){
      rar[j] = arr[half + j + 1];
    }
    lar[n1] = 888888;
    rar[n2] = 888888;
    i = j = 0;
    for (int k=init;k<=end ; k++){
      if(lar[i] <= rar[j]){
        arr[k] = lar[i];
        i+=1;
      }else{
        arr[k] = rar[j];
        j+=1;
      }
    }
  }
  public static void main(String []args){
    int number = 1001;
    int arr[] = new int[number];
    for (int k=(-1*(number/2)), p=0;k < 0 ;k++, p++){
      arr[p] = k;
    }
    for (int k=0, p=(number/2);k < (number/2);k++, p++){
      arr[p] = k;
    }

    printArr(arr);
    int i,j;
    int length = arr.length;
    int arrAux[] = new int[length];
    for (i=0, j=0; i < length; i++){
      if(arr[i] >= 0){
        arrAux[j] = (int)Math.pow(arr[i],2);
        j+=1;
      }else{
        arrAux[length-i-1] =(int)Math.pow(arr[i],2);
      }
    }
    merge(arrAux, 0, j-1, arr.length-1);
    printArr(arrAux);
  }
}
