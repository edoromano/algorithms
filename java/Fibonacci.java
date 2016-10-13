import java.util.*;

public class Fibonacci{
  public static long fibonacci(int n) {
    if (n <= 1) return n;
    else return fibonacci(n-1) + fibonacci(n-2);
  }

  public static void main (String []args){
    Random rand =  new Random();
    int number = rand.nextInt(10);
    System.out.println("number: "+ number);
    System.out.println("fibonacci : "+ fibonacci(number));
    ;
  }
}
