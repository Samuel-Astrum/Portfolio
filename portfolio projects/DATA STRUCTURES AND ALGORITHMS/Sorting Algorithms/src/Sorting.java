import java.util.Comparator;
import java.util.List;
import java.util.Random;

/**
 * Your implementation of various sorting algorithms.
 *
 * @author YOUR NAME HERE
 * @version 1.0
 * @userid YOUR USER ID HERE (i.e. gburdell3)
 * @GTID YOUR GT ID HERE (i.e. 900000000)
 *
 * Collaborators: LIST ALL COLLABORATORS YOU WORKED WITH HERE
 *
 * Resources: LIST ALL NON-COURSE RESOURCES YOU CONSULTED HERE
 */
public class Sorting {

    /**
     * Implement selection sort.
     *
     * It should be:
     * in-place
     * unstable
     * not adaptive
     *
     * Have a worst case running time of:
     * O(n^2)
     *
     * And a best case running time of:
     * O(n^2)
     *
     * @param <T>        data type to sort
     * @param arr        the array that must be sorted after the method runs
     * @param comparator the Comparator used to compare the data in arr
     * @throws java.lang.IllegalArgumentException if the array or comparator is
     *                                            null
     */
    public static <T> void selectionSort(T[] arr, Comparator<T> comparator) {
        if (arr == null || comparator == null) {
            throw new IllegalArgumentException("inputs cannot be null");
        }
        for (int i = arr.length - 1; i >= 0; i--) {
            T max = arr[i];
            int index = i;
            for (int j = i - 1; j >= 0; j--) {
                if (comparator.compare(max, arr[j]) < 0) {
                    max = arr[j];
                    index = j;
                }
            }
            T temp = arr[i];
            arr[i] = max;
            arr[index] = temp;
        }
    }

    /**
     * Implement cocktail sort.
     *
     * It should be:
     * in-place
     * stable
     * adaptive
     *
     * Have a worst case running time of:
     * O(n^2)
     *
     * And a best case running time of:
     * O(n)
     *
     * NOTE: See pdf for last swapped optimization for cocktail sort. You
     * MUST implement cocktail sort with this optimization
     *
     * @param <T>        data type to sort
     * @param arr        the array that must be sorted after the method runs
     * @param comparator the Comparator used to compare the data in arr
     * @throws java.lang.IllegalArgumentException if the array or comparator is
     *                                            null
     */
    public static <T> void cocktailSort(T[] arr, Comparator<T> comparator) {
        if (arr == null || comparator == null) {
            throw new IllegalArgumentException("inputs cannot be null");
        }
        boolean swapMade = true;
        int startInd = 0;
        int endInd = arr.length - 1;
        while (swapMade) {
            swapMade = false;
            int tempEnd = endInd;
            for (int i = startInd; i < tempEnd; i++) {
                if (comparator.compare(arr[i], arr[i + 1]) > 0) {
                    T temp = arr[i];
                    arr[i] = arr[i + 1];
                    arr[i + 1] = temp;
                    swapMade = true;
                    endInd = i;
                }
            }
            if (swapMade) {
                swapMade = false;
                int tempStart = startInd;
                for (int i = endInd; i > tempStart; i--) {
                    if (comparator.compare(arr[i - 1], arr[i]) > 0) {
                        T temp = arr[i];
                        arr[i] = arr[i - 1];
                        arr[i - 1] = temp;
                        swapMade = true;
                        startInd = i;
                    }
                }
            }        
        }
    }

    /**
     * Implement merge sort.
     *
     * It should be:
     * out-of-place
     * stable
     * not adaptive
     *
     * Have a worst case running time of:
     * O(n log n)
     *
     * And a best case running time of:
     * O(n log n)
     *
     * You can create more arrays to run merge sort, but at the end, everything
     * should be merged back into the original T[] which was passed in.
     *
     * When splitting the array, if there is an odd number of elements, put the
     * extra data on the right side.
     *
     * Hint: If two data are equal when merging, think about which subarray
     * you should pull from first
     *
     * @param <T>        data type to sort
     * @param arr        the array to be sorted
     * @param comparator the Comparator used to compare the data in arr
     * @throws java.lang.IllegalArgumentException if the array or comparator is
     *                                            null
     */
    public static <T> void mergeSort(T[] arr, Comparator<T> comparator) {   
       if (arr == null || comparator == null) {
            throw new IllegalArgumentException("inputs cannot be null");
       }
       if (arr.length == 1) {
        } else {
            int length = arr.length;
            int midIndex = length / 2;
            T[] left = (T[]) new Object[midIndex];
            for (int i = 0; i < midIndex; i++) {
                left[i] = arr[i];
            }
            T[] right = (T[]) new Object[length - left.length];
            for (int i = 0; i < right.length; i++) {
                right[i] = arr[i + midIndex];
            }
            mergeSort(left, comparator);
            mergeSort(right, comparator);
            int i = 0;
            int j = 0;
            while (i < left.length && j < right.length) {
                if (comparator.compare(left[i], right[j]) <= 0) {
                    arr[i + j] = left[i];
                    i++;
                } else {
                    arr[i + j] = right[j];
                    j++;
                }
            }
            while (i < left.length) {
                arr[i + j] = left[i];
                i++;
            }
            while (j < right.length) {
                arr[i + j] = right[j];
                j++;
            }
        }
    }
    /**
     * Implement kth select.
     *
     * Use the provided random object to select your pivots. For example if you
     * need a pivot between a (inclusive) and b (exclusive) where b > a, use
     * the following code:
     *
     * int pivotIndex = rand.nextInt(b - a) + a;
     *
     * If your recursion uses an inclusive b instead of an exclusive one,
     * the formula changes by adding 1 to the nextInt() call:
     *
     * int pivotIndex = rand.nextInt(b - a + 1) + a;
     *
     * It should be:
     * in-place
     *
     * Have a worst case running time of:
     * O(n^2)
     *
     * And a best case running time of:
     * O(n)
     *
     * You may assume that the array doesn't contain any null elements.
     *
     * Make sure you code the algorithm as you have been taught it in class.
     * There are several versions of this algorithm and you may not get full
     * credit if you do not implement the one we have taught you!
     *
     * @param <T>        data type to sort
     * @param k          the index to retrieve data from + 1 (due to
     *                   0-indexing) if the array was sorted; the 'k' in "kth
     *                   select"; e.g. if k == 1, return the smallest element
     *                   in the array
     * @param arr        the array that should be modified after the method
     *                   is finished executing as needed
     * @param comparator the Comparator used to compare the data in arr
     * @param rand       the Random object used to select pivots
     * @return the kth smallest element
     * @throws java.lang.IllegalArgumentException if the array or comparator
     *                                            or rand is null or k is not
     *                                            in the range of 1 to arr
     *                                            .length
     */
    public static <T> T kthSelect(int k, T[] arr, Comparator<T> comparator,
                                  Random rand) {
        if (k < 1 || k > arr.length || arr == null || rand == null || comparator == null) {
            throw new IllegalArgumentException("inputs cannot be null");
        }
        return kthHelper(k, arr, comparator, rand, 0, arr.length - 1);
        
    }

    private static <T> T kthHelper(int k, T[] arr, Comparator<T> comparator, Random rand, int start, int end) {
        if (end - start < 1) {
            return null;
        } else {
            int pivotIndex = rand.nextInt(end - start) + start;
            T pivotVal = arr[pivotIndex];
            arr[pivotIndex] = arr[start];
            arr[start] = pivotVal;
            int i = start;
            int j = end;
            while (i < j) {
                while (i < j && comparator.compare(arr[i], pivotVal) <= 0) {
                    i++;
                }
                while (i < j && comparator.compare(arr[j], pivotVal) >= 0) {
                    j++;
                }
                if (i < j) {
                    T temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                    i++; j--;
                }
            }
            T temp = arr[start];
            arr[start] = arr[j];
            arr[j] = temp;
            if (j == k - 1) {
                return arr[j];
            }
            if (j > k - 1) {
                kthHelper(k, arr, comparator, rand, start, j - 1);
            } else {
                kthHelper(k, arr, comparator, rand, j + 1, end);
        }
    }
        return null;
}

    /**
     * Implement LSD (least significant digit) radix sort.
     *
     * Make sure you code the algorithm as you have been taught it in class.
     * There are several versions of this algorithm and you may not get full
     * credit if you do not implement the one we have taught you!
     *
     * Remember you CANNOT convert the ints to strings at any point in your
     * code! Doing so may result in a 0 for the implementation.
     *
     * It should be:
     * out-of-place
     * stable
     * not adaptive
     *
     * Have a worst case running time of:
     * O(kn)
     *
     * And a best case running time of:
     * O(kn)
     *
     * You are allowed to make an initial O(n) passthrough of the array to
     * determine the number of iterations you need. The number of iterations
     * can be determined using the number with the largest magnitude.
     *
     * At no point should you find yourself needing a way to exponentiate a
     * number; any such method would be non-O(1). Think about how how you can
     * get each power of BASE naturally and efficiently as the algorithm
     * progresses through each digit.
     *
     * Refer to the PDF for more information on LSD Radix Sort.
     *
     * You may use ArrayList or LinkedList if you wish, but it may only be
     * used inside radix sort and any radix sort helpers. Do NOT use these
     * classes with other sorts. However, be sure the List implementation you
     * choose allows for stability while being as efficient as possible.
     *
     * Do NOT use anything from the Math class except Math.abs().
     *
     * @param arr the array to be sorted
     * @throws java.lang.IllegalArgumentException if the array is null
     */
    public static void lsdRadixSort(int[] arr) {

    }

    /**
     * Implement heap sort.
     *
     * It should be:
     * out-of-place
     * unstable
     * not adaptive
     *
     * Have a worst case running time of:
     * O(n log n)
     *
     * And a best case running time of:
     * O(n log n)
     *
     * Use java.util.PriorityQueue as the heap. Note that in this
     * PriorityQueue implementation, elements are removed from smallest
     * element to largest element.
     *
     * Initialize the PriorityQueue using its build heap constructor (look at
     * the different constructors of java.util.PriorityQueue).
     *
     * Return an int array with a capacity equal to the size of the list. The
     * returned array should have the elements in the list in sorted order.
     *
     * @param data the data to sort
     * @return the array with length equal to the size of the input list that
     * holds the elements from the list is sorted order
     * @throws java.lang.IllegalArgumentException if the data is null
     */
    public static int[] heapSort(List<Integer> data) {

    }
}
