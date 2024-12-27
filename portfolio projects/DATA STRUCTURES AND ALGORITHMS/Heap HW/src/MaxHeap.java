import java.util.ArrayList;
import java.util.NoSuchElementException;

/**
 * Your implementation of a MaxHeap.
 *
 * @author Samuel Miller
 * @version 1.0
 * @userid smiller355
 * @GTID 903 776 173
 *
 * Collaborators: Solo
 * Resources: Modules
 */
public class MaxHeap<T extends Comparable<? super T>> {

    /*
     * The initial capacity of the MaxHeap when created with the default
     * constructor.
     *
     * DO NOT MODIFY THIS VARIABLE!
     */
    public static final int INITIAL_CAPACITY = 13;

    /*
     * Do not add new instance variables or modify existing ones.
     */
    private T[] backingArray;
    private int size;

    /**
     * Constructs a new MaxHeap.
     *
     * The backing array should have an initial capacity of INITIAL_CAPACITY.
     */
    public MaxHeap() {
        backingArray = (T[]) new Comparable[INITIAL_CAPACITY];
        size = 0;
    }

    /**
     * Creates a properly ordered heap from a set of initial values.
     *
     * You must use the BuildHeap algorithm that was taught in lecture! Simply
     * adding the data one by one using the add method will not get any credit.
     * As a reminder, this is the algorithm that involves building the heap
     * from the bottom up by repeated use of downHeap operations.
     *
     * Before doing the algorithm, first copy over the data from the
     * ArrayList to the backingArray (leaving index 0 of the backingArray
     * empty). The data in the backingArray should be in the same order as it
     * appears in the passed in ArrayList before you start the BuildHeap
     * algorithm.
     *
     * The backingArray should have capacity 2n + 1 where n is the
     * number of data in the passed in ArrayList (not INITIAL_CAPACITY).
     * Index 0 should remain empty, indices 1 to n should contain the data in
     * proper order, and the rest of the indices should be empty.
     *
     * Consider how to most efficiently determine if the list contains null data.
     * 
     * @param data a list of data to initialize the heap with
     * @throws java.lang.IllegalArgumentException if data or any element in data
     *                                            is null
     */
    public MaxHeap(ArrayList<T> data) {
        backingArray = (T[]) new Comparable[2 * data.size() + 1];
        for (int x = 0; x < data.size(); x++) {
            if(data.get(x) == null) {
                throw new IllegalArgumentException("no data in a heap can be null");
            } else {
                backingArray[x+1] = data.get(x);
            }
        }
        size = data.size();
        for (int x = size / 2; x >= 1; x--) {
            downHeap(x);
        }

    }
    /*
     * given index n:
     * left child is 2n
     * right child is 2n + 1
     * parent is n/2
     */

    /**
     * Reorders the backingArray/heap after root removal.
     * From initial index, look at two children, if child is greater, swap with largest child
     * go down the tree with downHeap until it reads a null child, meaning whole tree is now sorted
     * @param index Starting index.
     */
    private void downHeap(int index) {
        if (backingArray[index] != null) {
            T parent = backingArray[index];
            T lChild = backingArray[index * 2];
            T rChild = backingArray[index * 2 + 1];
            if (lChild != null && rChild != null) {
                if (lChild.compareTo(rChild) > 0) {
                    if (lChild.compareTo(parent) > 0) {
                        T temp = lChild;
                        backingArray[index * 2] = parent;
                        backingArray[index] = temp;
                    }
                    if (lChild.compareTo(rChild) < 0) {
                        if (rChild.compareTo(parent) > 0) {
                            T temp = rChild;
                            backingArray[index * 2 + 1] = parent;
                            backingArray[index] = temp;
                        }
                    }

                }
            } else if (lChild != null && rChild == null) {
                if (lChild.compareTo(parent) > 0) {
                        T temp = lChild;
                        backingArray[index * 2] = parent;
                        backingArray[index] = temp;
                }
            } else if (lChild == null && rChild != null) {
                if (rChild.compareTo(parent) > 0) {
                        T temp = rChild;
                        backingArray[index * 2 + 1] = parent;
                        backingArray[index] = temp;
                }
            }
        }
    }

    /**
     * Reorders the backingArray/heap after insertion.
     * @param index
     */
    private void upHeap(int index) {
        T child = backingArray[index];
        T parent = backingArray[index / 2];
        if (child.compareTo(parent) > 0) {
            backingArray[index] = parent;
            backingArray[index / 2] = child;
        }
    }

    /**
     * Adds the data to the heap.
     *
     * If sufficient space is not available in the backing array (the backing
     * array is full except for index 0), resize it to double the current
     * length.
     *
     * @param data the data to add
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public void add(T data) {
        if (data == null) {
            throw new IllegalArgumentException("data cannot be null");
        }
        if (size + 1 == backingArray.length) {
            T[] temp = (T[]) new Comparable[backingArray.length * 2];
            for (int x = 1; x < backingArray.length; x++) {
                temp[x] = backingArray[x];
            }
            backingArray = temp;
        }
        backingArray[size + 1] = data;
        size++;
        for (int x = size; x > 0; x = x / 2) {
            upHeap(x);
        }
    }

    /**
     * Removes and returns the root of the heap.
     *
     * Do not shrink the backing array.
     *
     * Replace any unused spots in the array with null.
     *
     * @return the data that was removed
     * @throws java.util.NoSuchElementException if the heap is empty
     */
    public T remove() {
        if (size == 0) {
            throw new NoSuchElementException("the heap is empty");
        }
        T temp = backingArray[1];
        backingArray[1] = backingArray[size];
        backingArray[size] = null;
        size--;
        for (int x = size / 2; x >= 1; x--) {
            downHeap(x);
        }
        return temp;
    }

    /**
     * Returns the maximum element in the heap.
     *
     * @return the maximum element
     * @throws java.util.NoSuchElementException if the heap is empty
     */
    public T getMax() {
        if (size == 0) {
            throw new NoSuchElementException("the heap is empty");
        } else {
            return backingArray[1];
        }
    }

    /**
     * Returns whether or not the heap is empty.
     *
     * @return true if empty, false otherwise
     */
    public boolean isEmpty() {
        return size == 0;
    }

    /**
     * Clears the heap.
     *
     * Resets the backing array to a new array of the initial capacity and
     * resets the size.
     */
    public void clear() {
        backingArray = (T[]) new Object[INITIAL_CAPACITY];
        size = 0;
    }

    /**
     * Returns the backing array of the heap.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the backing array of the list
     */
    public T[] getBackingArray() {
        // DO NOT MODIFY THIS METHOD!
        return backingArray;
    }

    /**
     * Returns the size of the heap.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the size of the list
     */
    public int size() {
        // DO NOT MODIFY THIS METHOD!
        return size;
    }
}
