import java.util.Scanner;

public class program5 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter first word: ");
        String word1 = sc.nextLine();

        System.out.print("Enter second word: ");
        String word2 = sc.nextLine();

        if (word1.length() == 0 || word2.length() == 0) {
            System.out.println("Invalid data");
        }
        else if (word1.equalsIgnoreCase(word2)) {
            System.out.println("Anagram");
        }
        else {
            System.out.println("Not Anagram");
        }

        sc.close();
    }
}
