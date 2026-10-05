import java.util.Scanner;

public class program3 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number: ");
        int num = sc.nextInt();

        if (num < 0) {
            System.out.println("Invalid data");
        }
        else if (num % 2 == 0) {
            System.out.println("Even number");
        }
        else {
            System.out.println("Odd number");
        }

        sc.close();
    }
}