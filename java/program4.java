import java.util.Scanner;

public class program4 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter age: ");
        int age = sc.nextInt();

        if (age < 0 || age > 120) {
            System.out.println("Invalid age");
        }
        else if (age >= 18) {
            System.out.println("Eligible for voting");
        }
        else {
            System.out.println("Not eligible for voting");
        }

        sc.close();
    }
}