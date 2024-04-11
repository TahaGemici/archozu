import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class RiscVCodeGenerator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input base address
        System.out.print("Enter base address (in hexadecimal format): ");
        String baseAddressStr = scanner.nextLine().trim();
        if (!isValidHex(baseAddressStr)) {
            throw new IllegalArgumentException("Invalid base address format");
        }
        int baseAddress = Integer.parseInt(baseAddressStr.substring(2), 16); // Convert hexadecimal string to int

        // Input number of addresses
        System.out.print("Enter number of addresses: ");
        int numAddresses = scanner.nextInt();
        if (numAddresses <= 0) {
            throw new IllegalArgumentException("Number of addresses must be positive");
        }

        // Input offset
        System.out.print("Enter offset (in bytes): ");
        int offset = scanner.nextInt();
        if (offset <= 0) {
            throw new IllegalArgumentException("Offset must be positive");
        }

        // Input data to write
        scanner.nextLine(); // Consume newline
        String[] data = new String[numAddresses]; // Placeholder for data
        for (int i = 0; i < numAddresses; i++) {
            System.out.print("Enter data to write (32-bit hexadecimal): ");
            String inputData = scanner.nextLine().trim();
            if (!isValidHex(inputData) || inputData.length() != 10) { // 8 hex characters (32 bits) + "0x"
                throw new IllegalArgumentException("Invalid data format. Must be 32-bit hexadecimal.");
            }
            data[i] = inputData;
        }

        StringBuilder assemblyCode = new StringBuilder();
        //assemblyCode.append(".section .text\n");
        //assemblyCode.append(".globl _start\n");
        //assemblyCode.append("_start:\n");

        for (int i = 0; i < numAddresses; i++) {
            assemblyCode.append(String.format("    lui t0, 0x0\n"));
            assemblyCode.append(String.format("    addi t0, t0, %d\n", baseAddress + (i * offset)));

            assemblyCode.append(String.format("    li t1, %s\n", data[i]));
            assemblyCode.append("    sw t1, 0(t0)\n");
        }

        assemblyCode.append("    li a7, 10\n");
        assemblyCode.append("    ecall\n");

        // Write assembly code to file
        try (FileWriter writer = new FileWriter("riscv_code.txt")) {
            writer.write(assemblyCode.toString());
            System.out.println("RISC-V assembly code written to riscv_code.txt successfully.");
        } catch (IOException e) {
            System.err.println("Error writing to file: " + e.getMessage());
        }
    }

    // Method to check if a string represents a valid hexadecimal number
    private static boolean isValidHex(String str) {
        if (str.length() < 3 || str.charAt(0) != '0' || str.charAt(1) != 'x') {
            return false;
        }
        for (int i = 2; i < str.length(); i++) {
            char c = Character.toLowerCase(str.charAt(i));
            if (!(c >= '0' && c <= '9') && !(c >= 'a' && c <= 'f')) {
                return false;
            }
        }
        return true;
    }
}
