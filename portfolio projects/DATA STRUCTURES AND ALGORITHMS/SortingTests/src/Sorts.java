public class Sorts {
    
    public static int[] bubbleSort(int[] a) {
        //left to right, least to greatest
        // 5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
        int[] ans = a;
        for (int x = 0; x < a.length; x++) {
            for (int y = x; y < a.length-1; y++) {
                if (ans[y] > ans[y+1]) {
                    int temp = ans[y+1];
                    ans[y+1] = ans[y];
                    ans[y] = temp;
                }
            }
        }
        return ans;
    }


    public static int[] insertionSort(int[] a) {
        int[] ans = a;
        for (int x = 1; x < ans.length; x++) {
            int temp = ans[x];
            int y = x-1;
            while (y >= 0 && temp < ans[y]) {
                ans[y+1] = ans[y];
                y--;
            }
            ans[y+1] = temp;
        }
        return ans;
    }

    public static int[] selectionSort(int[] a) {
        int[] ans = a;
        int min;
        int index;
        for (int x = 0; x < ans.length; x++) {
            min = ans[x];
            index = x;
            for (int y = x; y < ans.length; y++) {
                if (ans[y] < min) {
                    min = ans[y];
                    index = y;
                }
            }
            int temp = ans[x];
            ans[x] = min;
            ans[index] = temp;
        }
        return ans;
    }

    
    public static void main(String[] args) {
        int[] tester = {5, 9, 1, 4, 6, 2, 3, 10, 8, 7};
        int[] toPrint = selectionSort(tester);
        for (int x = 0; x < toPrint.length; x++) {
            System.out.print(toPrint[x] + ", ");
        }
    }
}
