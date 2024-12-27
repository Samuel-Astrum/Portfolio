import java.util.NoSuchElementException;

/**
 * Your implementation of an ArrayStack.
 *
 * @author Samuel Miller
 * @version 1.0
 * @userid smiller355
 * @GTID 903 776 173
 *
 * Collaborators: solo
 * Resources: n/a
 */
public class ArrayStack<T> {

    /*
     * The initial capacity of the ArrayStack.
     *
     * DO NOT MODIFY THIS VARIABLE.
     */
    public static final int INITIAL_CAPACITY = 9;

    /*
     * Do not add new instance variables or modify existing ones.
     */
    private T[] backingArray;
    private int size;

    /**
     * Constructs a new ArrayStack.
     */
    public ArrayStack() {
        Object[] toAdd = new Object[9];
        backingArray = (T[]) toAdd;
        size = 0;
    }

    /**
     * Adds the data to the top of the stack.
     *
     * If sufficient space is not available in the backing array, resize it to
     * double the current length.
     *
     * Must be amortized O(1).
     *
     * @param data the data to add to the top of the stack
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public void push(T data) {
        if (data == null) {
            throw new IllegalArgumentException("data input cant be null");
        }
        if (size == backingArray.length) {
            Object[] toAdd = new Object[backingArray.length * 2];
            for (int x = 0; x < backingArray.length; x++) {
                toAdd[x] = backingArray[x];
            }
            backingArray = (T[]) toAdd;
            backingArray[size] = data;
            size++;
        } else {
            backingArray[size] = data;
            size++;
        }
    }

    /**
     * Removes and returns the data from the top of the stack.
     *
     * Do not shrink the backing array.
     *
     * Replace any spots that you pop from with null.
     *
     * Must be O(1).
     *
     * @return the data formerly located at the top of the stack
     * @throws java.util.NoSuchElementException if the stack is empty
     */
    public T pop() {
        if (size == 0) {
            throw new NoSuchElementException("stack is empty");
        }
        T removeData = backingArray[size];
        backingArray[size] = null;
        size--;
        return removeData;
    }

    /**
     * Returns the data from the top of the stack without removing it.
     *
     * Must be O(1).
     *
     * @return the data from the top of the stack
     * @throws java.util.NoSuchElementException if the stack is empty
     */
    public T peek() {
        T top = backingArray[size];
        return top;
    }

    /**
     * Returns the backing array of the stack.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the backing array of the stack
     */
    public T[] getBackingArray() {
        // DO NOT MODIFY THIS METHOD!
        return backingArray;
    }

    /**
     * Returns the size of the stack.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the size of the stack
     */
    public int size() {
        // DO NOT MODIFY THIS METHOD!
        return size;
    }
}
