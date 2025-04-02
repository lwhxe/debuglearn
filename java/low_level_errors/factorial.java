class factorial {
    // INFO: You do not need to modify the main function.
    public static void main(String[] args) {
        // INFO: Data used in factorial()
        int n = 20;
        int result = factorial(n);
        // INFO: Checking result correctness:
        for (int i = 1; i <= 20; i++) {
            if (result % i == 0) {
                if (i == 20) {
                    System.out.println("This is exactly how you should do it! Great Job!");
                }
                continue;
            }
            System.out.println("This is not correct, consider another method.");
            break;
        }
    }
    /* INFO: 
     * This function is meant to calculate the factorial (WikiPedia) of "n".
     * n! = n * (n - 1) * (n - 2) ... 1
     */
    // FIX: The calculation is incorrect... but can it be correct?
    static int factorial(int n) {
        int result = 1;
        for (int i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }
}
