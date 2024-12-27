import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;

/**
 * Your implementation of a BST.
 *
 * @author Samuel MIller
 * @version 1.0
 * @userid smiller355
 * @GTID 903 776 173
 *
 * Collaborators: me :)
 *
 * Resources: module
 */
public class BST<T extends Comparable<? super T>> {

    /*
     * Do not add new instance variables or modify existing ones.
     */
    private BSTNode<T> root;
    private int size;

    /**
     * Constructs a new BST.
     *
     * This constructor should initialize an empty BST.
     *
     * Since instance variables are initialized to their default values, there
     * is no need to do anything for this constructor.
     */
    public BST() {
        // DO NOT IMPLEMENT THIS CONSTRUCTOR!
    }

    /**
     * Constructs a new BST.
     *
     * This constructor should initialize the BST with the data in the
     * Collection. The data should be added in the same order it is in the
     * Collection.
     *
     * Hint: Not all Collections are indexable like Lists, so a regular for loop
     * will not work here. However, all Collections are Iterable, so what type
     * of loop would work?
     *
     * @param data the data to add
     * @throws java.lang.IllegalArgumentException if data or any element in data
     *                                            is null
     */
    public BST(Collection<T> data) {
        if (data == null) {
            throw new IllegalArgumentException("Collection input cannot be null.");
        }
        for (T temp : data) {
            if (temp == null) {
                throw new IllegalArgumentException("Data within this collection cannot be null.");
            } else {
                add(temp);
            }
        }
    }

    /**
     * Adds the data to the tree.
     *
     * This must be done recursively.
     *
     * The data becomes a leaf in the tree.
     *
     * Traverse the tree to find the appropriate location. If the data is
     * already in the tree, then nothing should be done (the duplicate
     * shouldn't get added, and size should not be incremented).
     *
     * Must be O(log n) for best and average cases and O(n) for worst case.
     *
     * @param data the data to add
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public void add(T data) {
        if (data == null) {
            throw new IllegalArgumentException("Data cannot be null");
        }
        root = addHelper(root, data);
    }
    /**
     * Helper for the add method, recurses through the tree to place the data;
     * @param parent root node to recurse with
     * @param data data to be added
     */
    private BSTNode<T> addHelper(BSTNode<T> parent, T data) {
        if (parent == null) {
            BSTNode<T> node = new BSTNode<T>(data);
            size++;
            return node;
        } else if (data.compareTo(parent.getData()) < 0) {
            parent.setLeft(addHelper(parent.getLeft(), data));
        } else if (data.compareTo(parent.getData()) > 0) {
            parent.setRight(addHelper(parent.getRight(), data));
        }
        return parent;
    }
    /**
     * Removes and returns the data from the tree matching the given parameter.
     *
     * This must be done recursively.
     *
     * There are 3 cases to consider:
     * 1: The node containing the data is a leaf (no children). In this case,
     * simply remove it.
     * 2: The node containing the data has one child. In this case, simply
     * replace it with its child.
     * 3: The node containing the data has 2 children. Use the successor to
     * replace the data. You MUST use recursion to find and remove the
     * successor (you will likely need an additional helper method to
     * handle this case efficiently).
     *
     * Do not return the same data that was passed in. Return the data that
     * was stored in the tree.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * Must be O(log n) for best and average cases and O(n) for worst case.
     *
     * @param data the data to remove
     * @return the data that was removed
     * @throws java.lang.IllegalArgumentException if data is null
     * @throws java.util.NoSuchElementException   if the data is not in the tree
     */
    public T remove(T data) {
        if (data == null) {
            throw new IllegalArgumentException("Data cannot be null");
        }
        T ans = removeHelper(root, data);
        if (ans == null) {
            throw new NoSuchElementException("Data doesnt exist in BST");
        } else {
            return ans;
        }
    }
    /**
     * helper for the remove method, recurses to what needs to be removed from the BST
     * @param parent root note to recurse with
     * @param data data that is to be removed
     * @return data that was removed
     */
    private T removeHelper(BSTNode<T> parent, T data) {
        if (parent == null) {
            return null;
        }
        if (data.equals(parent.getData())) {
            T ans = parent.getData();
            if (parent.getLeft() == null && parent.getRight() == null) {
                parent = null;
                size--;
                return ans;
            } else if ((parent.getLeft() == null && parent.getRight() != null) || (parent.getLeft() != null && parent.getRight() == null)) {
                if (parent.getLeft() == null && parent.getRight() != null) {
                    BSTNode<T> node = parent.getRight();
                    parent = node;
                    size--;
                    return ans;
                } else {
                    BSTNode<T> node = parent.getLeft();
                    parent = node;
                    size--;
                    return ans;
                }
            } else {
                BSTNode<T> node = parent.getRight();
                remove(node.getData());
                parent = node;
                size--;
                return ans;
            }
        } else {
            if (data.compareTo(parent.getData()) < 0) {
                removeHelper(parent.getLeft(), data);
            }
            if (data.compareTo(parent.getData()) > 0) {
                removeHelper(parent.getRight(), data);
            }
        }
        return null;
    }

    /**
     * Returns the data from the tree matching the given parameter.
     *
     * This must be done recursively.
     *
     * Do not return the same data that was passed in. Return the data that
     * was stored in the tree.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * Must be O(log n) for best and average cases and O(n) for worst case.
     *
     * @param data the data to search for
     * @return the data in the tree equal to the parameter
     * @throws java.lang.IllegalArgumentException if data is null
     * @throws java.util.NoSuchElementException   if the data is not in the tree
     */
    public T get(T data) {
        if (data == null) {
            throw new IllegalArgumentException("data cannot be null");
        } else {
            T temp = getHelper(root, data);
            if (temp == null) {
                throw new NoSuchElementException("data is not within BST");
            } else {
                return temp;
            }
        }
    }
    /**
     * helper for the get method, recurses through to find correct data
     * @param parent root node to be recursed with
     * @param data data that is being searched for
     * @return found data from the BST
     */
    private T getHelper(BSTNode<T> parent, T data) {
        if (parent == null) {
            return null;
        }
        if (parent.getData().compareTo(data) == 0) {
            return parent.getData();
        } 
            if (data.compareTo(parent.getData()) < 0) {
                return getHelper(parent.getLeft(), data);
            } else {
               return getHelper(parent.getRight(), data);
            }
        
        
    }

    /**
     * Returns whether or not data matching the given parameter is contained
     * within the tree.
     *
     * This must be done recursively.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * Must be O(log n) for best and average cases and O(n) for worst case.
     *
     * @param data the data to search for
     * @return true if the parameter is contained within the tree, false
     * otherwise
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public boolean contains(T data) {
        if (data == null) {
            throw new IllegalArgumentException("data cannot be null");
        }
        T temp = getHelper(root, data);
        if (temp == null) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Generate a pre-order traversal of the tree.
     *
     * This must be done recursively.
     *
     * Must be O(n).
     *
     * @return the preorder traversal of the tree
     */
    public List<T> preorder() {
        return preorderHelper(root);
    }
    /**
     * Helper for the preorder method. Recurses through to add to an ArrayList
     * @param parent root node to recurse with
     * @return ArrayList of the BST pre-ordered
     */
    private ArrayList<T> preorderHelper(BSTNode<T> parent) {
        ArrayList<T> ans = new ArrayList<T>();
        if (parent == null) {
            return ans;
        }
        ans.add(parent.getData());
        ans.addAll(preorderHelper(parent.getLeft()));
        ans.addAll(preorderHelper(parent.getRight()));
        return ans;
    }

    /**
     * Generate an in-order traversal of the tree.
     *
     * This must be done recursively.
     *
     * Must be O(n).
     *
     * @return the inorder traversal of the tree
     */
    public List<T> inorder() {
        return inorderHelper(root);
    }
    /**
     * Helper for the inorder method. Recurses through and makes an ArrayList in order
     * @param parent root node to recurse with
     * @return ArrayList of BST in in-order
     */
    private ArrayList<T> inorderHelper(BSTNode<T> parent) {
        ArrayList<T> ans = new ArrayList<T>();
        if (parent == null) {
            return ans;
        }
        if (parent.getLeft() == null && parent.getRight() == null) {
            ans.add(parent.getData());
        }
        if (parent.getLeft() == null && parent.getRight() != null) {
            ans.addAll(inorderHelper(parent.getRight()));
        } else {
            ans.addAll(inorderHelper(parent.getLeft()));
            ans.addAll(inorderHelper(parent.getRight()));
        }
        return ans;
    }

    /**
     * Generate a post-order traversal of the tree.
     *
     * This must be done recursively.
     *
     * Must be O(n).
     *
     * @return the postorder traversal of the tree
     */
    public List<T> postorder() {
        return postorderHelper(root);
    }
    /**
     * Helper for the postorder method
     * @param parent root node to recurse with
     * @return ArrayList of the BST in post-order
     */
    private ArrayList<T> postorderHelper(BSTNode<T> parent) {
        ArrayList<T> ans = new ArrayList<T>();
        if (parent == null) {
            return ans;
        }
        ans.addAll(postorderHelper(parent.getLeft()));
        ans.addAll(postorderHelper(parent.getRight()));
        ans.add(parent.getData());
        return ans;
    }

    /**
     * Generate a level-order traversal of the tree.
     *
     * This does not need to be done recursively.
     *
     * Hint: You will need to use a queue of nodes. Think about what initial
     * node you should add to the queue and what loop / loop conditions you
     * should use.
     *
     * Must be O(n).
     *
     * @return the level order traversal of the tree
     */
    public List<T> levelorder() {
        ArrayList<T> ans = new ArrayList<T>();
        Queue<BSTNode<T>> temp = new LinkedList<BSTNode<T>>();
        temp.add(root);
        while (ans.size() != size) {
            BSTNode<T> node = temp.peek();
            temp.remove();
            ans.add(node.getData());
            if (node.getLeft() != null) {
                temp.add(node.getLeft());
            }
            if (node.getRight() != null) {
                temp.add(node.getRight());
            }
        }
        return ans;
    }

    /**
     * Returns the height of the root of the tree.
     *
     * This must be done recursively.
     *
     * A node's height is defined as max(left.height, right.height) + 1. A
     * leaf node has a height of 0 and a null child has a height of -1.
     *
     * Must be O(n).
     *
     * @return the height of the root of the tree, -1 if the tree is empty
     */
    public int height() {
        return heightHelper(root);
    }
    /**
     * Helper for the height method. Recurses through to find the greatest height from leaf to root.
     * @param parent root node to be recursed with
     * @return number of tiers of the BST, or otherwise its height
     */
    private int heightHelper(BSTNode<T> parent) {
        if (parent == null) {
            return -1;
        } else {
            int heightL = heightHelper(parent.getLeft());
            int heightR = heightHelper(parent.getRight());
            return Integer.max(heightL, heightR) + 1;
        }
    }

    /**
     * Clears the tree.
     *
     * Clears all data and resets the size.
     *
     * Must be O(1).
     */
    public void clear() {
        root = null;
        size = 0;
    }

    /**
     * Finds and retrieves the k-largest elements from the BST in sorted order,
     * least to greatest.
     *
     * This must be done recursively.
     *
     * In most cases, this method will not need to traverse the entire tree to
     * function properly, so you should only traverse the branches of the tree
     * necessary to get the data and only do so once. Failure to do so will
     * result in an efficiency penalty.
     *
     * EXAMPLE: Given the BST below composed of Integers:
     *
     *                50
     *              /    \
     *            25      75
     *           /  \
     *          12   37
     *         /  \    \
     *        10  15    40
     *           /
     *          13
     *
     * kLargest(5) should return the list [25, 37, 40, 50, 75].
     * kLargest(3) should return the list [40, 50, 75].
     *
     * Should have a running time of O(log(n) + k) for a balanced tree and a
     * worst case of O(n + k), with n being the number of data in the BST
     *
     * @param k the number of largest elements to return
     * @return sorted list consisting of the k largest elements
     * @throws java.lang.IllegalArgumentException if k < 0 or k > size
     */
    public List<T> kLargest(int k) {
        if (k < 0 || k > size) {
            throw new IllegalArgumentException("k must be in the range of size");
        }
        List<T> one = kLargestHelper(k, root);
        ArrayList<T> ans = new ArrayList<T>();
        int index = one.size() - 1;
        while (ans.size() < k) {
            ans.add(one.get(index));
            index--;
        }
        return ans;

        
    }
    /**
     * Helper for the kLargest method, recurses through and builds an ArrayList of values to be reordered in kLargest
     * @param k number of largest vals to be returned
     * @param parent root node to be recursed with
     * @return backwards ordered list of largest values
     */
    private List<T> kLargestHelper(int k, BSTNode<T> parent) {
        if (parent == null) {
            return null;
        }
        ArrayList<T> ans = new ArrayList<T>();
        ans.add(parent.getData());
        ans.addAll(kLargestHelper(k, parent.getRight()));
        if (ans.size() < k) {
            ans.addAll(kLargestHelper(k, parent.getLeft()));
        }
        return ans;
    }

    /**
     * Returns the root of the tree.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the root of the tree
     */
    public BSTNode<T> getRoot() {
        // DO NOT MODIFY THIS METHOD!
        return root;
    }

    /**
     * Returns the size of the tree.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the size of the tree
     */
    public int size() {
        // DO NOT MODIFY THIS METHOD!
        return size;
    }
}
