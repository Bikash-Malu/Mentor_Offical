package authentication;
import java.util.*; 
public class Otpgen {
	
    public static String generateOTP(int length) {  
        String numbers = "0123456789";
        System.out.println("Your One Time Password is: ");
        Random rndm_method = new Random();  
        char[] otp = new char[length];  
        for (int i = 0; i < length; i++) {  
            otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));  
        }  
        return new String(otp);  
    }  
    
//    public static void main(String[] args) {  
//        int length = 4;  
//        String otp = generateOTP(length);  
//        System.out.println("Your One Time Password is: " + otp);  
//    }  
      

}
