class arrcopy {
    public static void Main() {
        // INFO: Data used in copy_array()
        int[] source = {1, 2, 3, 4, 5};
        int[] destination = new int[5];
        copy_array(source, destination);
        // INFO: Checking result correctness:
        int iterator = 0;
        foreach (int num in destination) {
            if (num != source[iterator]) {
                Console.WriteLine("Source wasn't copied into destination properly.");
                break;
            }
            Console.WriteLine("Source was copied into destination perfectly.");
        }
    }

    /* INFO: 
     * This function is meant to copy the source array into the destination array.
     */
    // FIX: Source isn't being copied into destination properly.
    static void copy_array(int[] source, int[] destination) {
        for (int i = 0; i <= source.Length; i++) {
            destination[i] = source[i];
        }
    }
}
