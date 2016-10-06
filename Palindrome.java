public class Palindrome{
  public static void validatePalindrome(String str){
    boolean valid = true;
    for (int i=0, j=str.length()-1;i < str.length()/2 ;i++, j--){
      if(str.charAt(i) != str.charAt(j)){
        valid = false;
      }
    }
    System.out.println(valid?"valid":"invalid");
  }
  public static void main (String []args){
    String str = "sooos";
    validatePalindrome(str);
  }
}
