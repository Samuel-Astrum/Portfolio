import java.util.NoSuchElementException;

/**
 * Your implementation of a CircularSinglyLinkedList without a tail pointer.
 *
 * @author Samuel Miller
 * @version 1.0
 * @userid smiller355
 * @GTID 903 776 173
 *
 * Collaborators: solo
 *
 * Resources: n/a
 */
public class CircularSinglyLinkedList<T> {

    /*
     * Do not add new instance variables or modify existing ones.
     */
    private CircularSinglyLinkedListNode<T> head;
    private int size;

    /*
     * Do not add a constructor.
     */

    /**
     * Adds the data to the specified index.
     *
     * Must be O(1) for indices 0 and size and O(n) for all other cases.
     *
     * @param index the index at which to add the new data
     * @param data  the data to add at the specified index
     * @throws java.lang.IndexOutOfBoundsException if index < 0 or index > size
     * @throws java.lang.IllegalArgumentException  if data is null
     */
    public void addAtIndex(int index, T data) {
        if (index < 0 || index > size) {
            throw new IndexOutOfBoundsException("Index is less than zero or too large.");
        }
        else if (data == null) {
            throw new IllegalArgumentException("Data cannot be null.");
        }

        else if (size == 0) {
            CircularSinglyLinkedListNode<T> add = new CircularSinglyLinkedListNode<T>(data, null);
            head = add;
            add.setNext(add);
            size++;
        }
        else if (index == 0) {
            //CircularSinglyLinkedListNode<T> toAdd = new CircularSinglyLinkedListNode<T>(data, head);
            CircularSinglyLinkedListNode<T> node = head;
            head = new CircularSinglyLinkedListNode<T>(data, node);
            size++;
        }
        else if (index == size && index != 0) {
                CircularSinglyLinkedListNode<T> toAdd = new CircularSinglyLinkedListNode<T>(data, null);
                toAdd.setNext(head);
                head = toAdd.getNext();
                size++;
        } else {
            /*CircularSinglyLinkedListNode<T> node = head;
            int count = 0;
            while (count < index) {
                node = node.getNext();
                count++;
            }
            CircularSinglyLinkedListNode<T> add = new CircularSinglyLinkedListNode<T>(data, node.getNext());
            node.setNext(add);
            size++; */
            CircularSinglyLinkedListNode<T> temp = head;
            for (int x = 0; x < index - 1; x++) {
                temp = temp.getNext();
            }
            CircularSinglyLinkedListNode<T> toAdd = new CircularSinglyLinkedListNode<T>(data, temp.getNext());
            temp.setNext(toAdd);
            size++;
            
        }
    }

    /**
     * Adds the data to the front of the list.
     *
     * Must be O(1).
     *
     * @param data the data to add to the front of the list
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public void addToFront(T data) {
        if (data == null) {
            throw new IllegalArgumentException("Argument cannot be null.");
        }
        this.addAtIndex(0, data);
    }

    /**
     * Adds the data to the back of the list.
     *
     * Must be O(1).
     *
     * @param data the data to add to the back of the list
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public void addToBack(T data) {
        if (data == null) {
            throw new IllegalArgumentException("Data cannot be null.");
        }
        this.addAtIndex(size, data);
    }

    /**
     * Removes and returns the data at the specified index.
     *
     * Must be O(1) for index 0 and O(n) for all other cases.
     *
     * @param index the index of the data to remove
     * @return the data formerly located at the specified index
     * @throws java.lang.IndexOutOfBoundsException if index < 0 or index >= size
     */
    public T removeAtIndex(int index) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException("Index cannot be less than zero or larger/equal to size.");
        }
        if (index == 0) {
            CircularSinglyLinkedListNode<T> toRemove = head;
            head = head.getNext();
            T data = toRemove.getData();
            toRemove.setNext(null);
            size--;
            return data;
        } else if (index == size - 1) {
            CircularSinglyLinkedListNode<T> toRemove;
            CircularSinglyLinkedListNode<T> iterate = head;
            while (iterate.getNext().getNext() != head) {
                iterate = iterate.getNext();
            }
            toRemove = iterate.getNext();
            T data = toRemove.getData();
            toRemove.setNext(null);
            iterate.setNext(head);
            size--;
            return data;
        } else {
            CircularSinglyLinkedListNode<T> node = head;
            for (int x = 1; x < index; x++) {
                node = node.getNext();
            }
            T data = node.getNext().getData();
            node.setNext(node.getNext().getNext()); 
            size--;
            return data;
        }
    }

    /**
     * Removes and returns the first data of the list.
     *
     * Must be O(1).
     *
     * @return the data formerly located at the front of the list
     * @throws java.util.NoSuchElementException if the list is empty
     */
    public T removeFromFront() {
        if (size == 0) {
            throw new NoSuchElementException("The list is empty.");
        } else {
            return this.removeAtIndex(0);
        }
    }

    /**
     * Removes and returns the last data of the list.
     *
     * Must be O(n).
     *
     * @return the data formerly located at the back of the list
     * @throws java.util.NoSuchElementException if the list is empty
     */
    public T removeFromBack() {
        if (size == 0) {
            throw new NoSuchElementException("List is empty.");
        } else {
            return this.removeAtIndex(size - 1);
        }
    }

    /**
     * Returns the data at the specified index.
     *
     * Should be O(1) for index 0 and O(n) for all other cases.
     *
     * @param index the index of the data to get
     * @return the data stored at the index in the list
     * @throws java.lang.IndexOutOfBoundsException if index < 0 or index >= size
     */
    public T get(int index) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException("Index cannot be less than 0 or greater/equal to size.");
        } else if (index == 0 && head != null) {
            return head.getData();
        } else {
            CircularSinglyLinkedListNode<T> node = head;
            for (int x = 0; x < index; x++) {
                node = node.getNext();
            }
            return node.getData();
        }
    }

    /**
     * Returns whether or not the list is empty.
     *
     * Must be O(1).
     *
     * @return true if empty, false otherwise
     */
    public boolean isEmpty() {
        if (size == 0 && head == null) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Clears the list.
     *
     * Clears all data and resets the size.
     *
     * Must be O(1).
     */
    public void clear() {
        head = null;
        size = 0;
    }

    /**
     * Removes and returns the last copy of the given data from the list.
     *
     * Do not return the same data that was passed in. Return the data that
     * was stored in the list.
     *
     * Must be O(n).
     *
     * @param data the data to be removed from the list
     * @return the data that was removed
     * @throws java.lang.IllegalArgumentException if data is null
     * @throws java.util.NoSuchElementException   if data is not found
     */
    public T removeLastOccurrence(T data) {
        if (data == null) {
            throw new IllegalArgumentException("Data input cannot be null.");
        }
        int index = -1;
        int count = 0;
        CircularSinglyLinkedListNode<T> node = head;
        while (node.getNext() != head) {
            if (node.getData().equals(data)) {
                index = count;
            }
            node = node.getNext();
            count++;
        }
        if (node.getData().equals(data)) {
            index = count;
        }
        if (index == -1) {
            throw new IllegalArgumentException("Desired data could not be found.");
        } else {
            return removeAtIndex(index);
        }
    }

    /**
     * Returns an array representation of the linked list.
     *
     * Must be O(n) for all cases.
     *
     * @return the array of length size holding all of the data (not the
     * nodes) in the list in the same order
     */
    public T[] toArray() {
        Object[] ans = new Object[size];
        ans = (T[]) ans;
        int count = 0;
        CircularSinglyLinkedListNode<T> node = head;
        while (node.getNext() != head) {
            ans[count] = node.getData();
            node = node.getNext();
            count++;
        }
        ans[count] = node.getData();
        return (T[]) ans;
    }

    /**
     * Returns the head node of the list.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the node at the head of the list
     */
    public CircularSinglyLinkedListNode<T> getHead() {
        // DO NOT MODIFY!
        return head;
    }

    /**
     * Returns the size of the list.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the size of the list
     */
    public int size() {
        // DO NOT MODIFY!
        return size;
    }
}
