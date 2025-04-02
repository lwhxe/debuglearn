class exponentiate {
    // INFO: You do not need to modify anything in the main function.
    public static void main(String[] args) {
        // INFO: Data used in x_raise_y()
        int x = 3;
        int y = 2;
        int x_raise_y_result = x_raise_y(x, y);
        // INFO: Checking result correctness:
        System.out.println("x raised to the power of y is equal to: " + x_raise_y_result);
        if (x_raise_y_result == 9) {
            System.out.println("This is correct!");
        } else {
            System.out.println("This is incorrect.");
        }
    }

    /* INFO: 
     * This function is meant to exponenciate x by y.
     * if x = 3 and y = 2. The result will be 3 to the power of 2.
     * 3^2 = 9
     */
    // FIX: This returns the wrong number?
    static int x_raise_y(int x, int y) {
        return x ^ y;
    }

}
