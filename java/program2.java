import java.util.Scanner;

public class program2 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        System.out.print("Enter cost price: ");
        double cost_price = sc.nextDouble();

        System.out.print("Enter selling price: ");
        double selling_price = sc.nextDouble();

        if (cost_price <= 0 || selling_price <= 0) {
            System.out.println("Invalid data");
        }
        else if (selling_price > cost_price) {
            System.out.println("Profit = " + (selling_price - cost_price));
        }
        else if (cost_price > selling_price) {
            System.out.println("Loss = " + (cost_price - selling_price));
        }
        else {
            System.out.println("No Profit, No Loss");
        }

        sc.close();
    }
}