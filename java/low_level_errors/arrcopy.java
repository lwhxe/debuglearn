class arrcopy {
    // INFO: You don't need to modify the main function.
    public static void main(String[] args) {
        // INFO: Data used in copy_array()
        int[] source = {1, 2, 3, 4, 5};
        int[] destination = new int[5];
        copy_array(source, destination);
        int iterator = 0;
        // INFO: Checking result correctness:
        for (int num : destination) {
            if (num != source[iterator]) {
                System.out.println("Source wasn't copied into destination properly.");
                break;
            }
            System.out.println("Source was copied into destination perfectly!");
        }
    }
    /* INFO: 
     * This function is meant to copy the source array into the destination array.
     */
    // FIX: Source isn't being copied into destination properly.
    static void copy_array(int[] source, int[] destination) {
        for (int i = 0; i <= source.length; i++) {
            destination[i] = source[i];
        }
    }
}
