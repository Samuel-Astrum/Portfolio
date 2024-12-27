import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/**
 * Your implementation of an AVL.
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
public class AVL<T extends Comparable<? super T>> {

    // Do not add new instance variables or modify existing ones.
    private AVLNode<T> root;
    private int size;

    /**
     * Constructs a new AVL.
     *
     * This constructor should initialize an empty AVL.
     *
     * Since instance variables are initialized to their default values, there
     * is no need to do anything for this constructor.
     */
    public AVL() {
        // DO NOT IMPLEMENT THIS CONSTRUCTOR!
    }

    /**
     * Constructs a new AVL.
     *
     * This constructor should initialize the AVL with the data in the
     * Collection. The data should be added in the same order it is in the
     * Collection.
     *
     * @param data the data to add to the tree
     * @throws java.lang.IllegalArgumentException if data or any element in data
     *                                            is null
     */
    public AVL(Collection<T> data) {
        if (data == null) {
            throw new IllegalArgumentException("data input cannot be null");
        }
        if (data.isEmpty()) {
            root = null;
            size = 0;
        } else {
            Iterator<T> it = data.iterator();
            root = new AVLNode<T>(it.next());
            size = 1;
            while (it.hasNext()) {
                this.add(it.next());
            }
        }
    }

    /**
     * Adds the element to the tree.
     *
     * Start by adding it as a leaf like in a regular BST and then rotate the
     * tree as necessary.
     *
     * If the data is already in the tree, then nothing should be done (the
     * duplicate shouldn't get added, and size should not be incremented).
     *
     * Remember to recalculate heights and balance factors while going back
     * up the tree after adding the element, making sure to rebalance if
     * necessary.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * @param data the data to add
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public void add(T data) {
        if (data == null) {
            throw new IllegalArgumentException("input data cannot be null");
        }
        root = addHelper(data, root);
    }

    private AVLNode<T> addHelper(T data, AVLNode<T> parent) {
        if (parent == null) {
            AVLNode<T> node = new AVLNode<T>(data);
            node.setHeight(0);
            node.setBalanceFactor(0);
            size++;
            return node;
        } else if (data.compareTo(parent.getData()) < 0) {
            parent.setLeft(addHelper(data, parent.getLeft()));
            update(parent);
            if (Math.abs(parent.getBalanceFactor()) > 1) {
                parent = rotation(parent);
            }
        } else if (data.compareTo(parent.getData()) > 0) {
            parent.setRight(addHelper(data, parent.getRight()));
            update(parent);
            if (Math.abs(parent.getBalanceFactor()) > 1) {
                parent = rotation(parent);
            }
        }
        return parent;
    }
    /*
     * int hL, hR, bF;
            if (parent.getLeft() != null) {
                hL = parent.getLeft().getHeight();
            } else {
                hL = -1;
            }
            if (parent.getRight() != null) {
                hR = parent.getRight().getHeight();
            } else {
                hR = -1;
            }
            bF = hL - hR;
            parent.setBalanceFactor(bF);
            if (bF > 1 || bF < -1) {
                parent = rotation(parent);
            }
     */
    private AVLNode<T> rotation(AVLNode<T> parent) {
        //if parents BF = -2 and rChild BF = 0 or -1, left rotation
        //if parent BF = 2 and lChild BF = 0 or 1, right rotation
        //if parents BF = 2 and lChild BF = -1, Left-Right rotation
        //if parents BF = -2 and rChild BF = 1, Right-Left rotation
        int bF;
        bF = parent.getBalanceFactor();
        if (bF == 2) {
            if (parent.getLeft().getBalanceFactor() == -1) {
                return leftRightRotate(parent);
            } else {
                return rightRotate(parent);
            }
        } else {
            if (parent.getRight().getBalanceFactor() == 1) {
                //right-left rotate
                return rightLeftRotate(parent);
            } else {
                return leftRotate(parent);
            }
        }
        /*if (parent.getLeft() != null) {
            lBF = parent.getLeft().getBalanceFactor();
        } else {
            lBF = -1;
        }
        if (parent.getRight() != null) {
            rBF = parent.getRight().getBalanceFactor();
        } else {
            rBF = -1;
        }
        if (bF == 2 && ((lBF == 0) || (lBF == -1))) {
            return rightRotate(parent);
        } else
        if (bF == -2 && ((rBF == 0) || (rBF == 1))) {
            return leftRotate(parent);
        } else
        if (bF == 2 && lBF == -1) {
            return leftRotate(rightRotate(parent));
        } else
        if (bF == -2 && rBF == 1) {
            return rightRotate(leftRotate(parent));
        }
        */
    }

    private AVLNode<T> rightRotate(AVLNode<T> A) {
        AVLNode<T> B = A.getLeft();
        A.setLeft(A.getLeft().getRight());
        B.setRight(A);
        update(A);
        update(B);
        return B;
    }

    private AVLNode<T> rightLeftRotate(AVLNode<T> A) {
        AVLNode<T> B = A.getRight();
        A.setRight(rightRotate(B));
        return leftRotate(A);
    }

    private AVLNode<T> leftRightRotate(AVLNode<T> A) {
        AVLNode<T> B = A.getLeft();
        A.setLeft(leftRotate(B));
        return rightRotate(A);
    }

    private AVLNode<T> leftRotate(AVLNode<T> A) {
        AVLNode<T> B = A.getRight();
        A.setRight(A.getRight().getLeft());
        B.setLeft(A);
        update(A);
        update(B);
        return B;
    }

    private void update(AVLNode<T> parent) {
        if (parent != null) {
            int rH, lH;
            if (parent.getRight() != null) {
                rH = parent.getRight().getHeight();
            } else {
                rH = -1;
            }
            if (parent.getLeft() != null) {
                lH = parent.getLeft().getHeight();
            } else {
                lH = -1;
            }
            parent.setHeight(Math.max(rH, lH) + 1);
            parent.setBalanceFactor(lH - rH);
        }
    }

    /**
     * Removes and returns the element from the tree matching the given
     * parameter.
     *
     * There are 3 cases to consider:
     * 1: The node containing the data is a leaf (no children). In this case,
     * simply remove it.
     * 2: The node containing the data has one child. In this case, simply
     * replace it with its child.
     * 3: The node containing the data has 2 children. Use the predecessor to
     * replace the data, NOT successor. As a reminder, rotations can occur
     * after removing the predecessor node.
     *
     * Remember to recalculate heights and balance factors while going back
     * up the tree after removing the element, making sure to rebalance if
     * necessary.
     *
     * Do not return the same data that was passed in. Return the data that
     * was stored in the tree.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * @param data the data to remove
     * @return the data that was removed
     * @throws java.lang.IllegalArgumentException if data is null
     * @throws java.util.NoSuchElementException   if the data is not found
     */
    public T remove(T data) {
        AVLNode<T> dummy = new AVLNode<T>(null);
        root = removeHelper(root, data, dummy);
        update(root);
        if (dummy.getData() == null) {
            throw new NoSuchElementException("data not in AVL");
        } else {
            return dummy.getData();
        }
    }

    private AVLNode<T> removeHelper(AVLNode<T> temp, T data, AVLNode<T> dummy) {
        if (temp == null) {
            return null;
        } else if (data.compareTo(temp.getData()) < 0) {
            temp.setLeft(removeHelper(temp.getLeft(), data, dummy));
            update(temp);
            if (Math.abs(temp.getBalanceFactor()) > 1) {
                rotation(temp);
            }
        } else if (data.compareTo(temp.getData()) > 0) {
            temp.setRight(removeHelper(temp.getRight(), data, dummy));
            update(temp);
            if (Math.abs(temp.getBalanceFactor()) > 1) {
                rotation(temp);
            }
        } else {
            dummy.setData(temp.getData());
            size--;
            if (temp.getLeft() == null && temp.getRight() == null) {
                return null;
            } else if (temp.getLeft() != null) {
                return temp.getLeft();
            } else if (temp.getRight() != null) {
                return temp.getRight();
            } else {
                AVLNode<T> dummy2 = new AVLNode<T>(null);
                temp.setLeft(removePredecessor(temp.getLeft(), dummy2));
                update(temp.getLeft());
                update(temp);
                temp.setData(dummy2.getData());
            }
        }
        update(temp);
        if (Math.abs(temp.getBalanceFactor()) > 1) {
            rotation(temp);
        }
        return temp;
    }

    private AVLNode<T> removePredecessor(AVLNode<T> temp, AVLNode<T> dummy) {
        if (temp.getRight() == null) {
            dummy.setData(temp.getData());
            return temp.getLeft();
        } else {
            temp.setRight(removePredecessor(temp.getRight(), dummy));
            return temp;
        }
    }

    /**
     * Returns the element from the tree matching the given parameter.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * Do not return the same data that was passed in. Return the data that
     * was stored in the tree.
     *
     * @param data the data to search for in the tree
     * @return the data in the tree equal to the parameter
     * @throws java.lang.IllegalArgumentException if data is null
     * @throws java.util.NoSuchElementException   if the data is not in the tree
     */
    public T get(T data) {
        if (data == null) {
            throw new IllegalArgumentException("data cannot be null");
        }
        if (getHelper(root, data) == null) {
            throw new NoSuchElementException("data not in AVL");
        } else {
            return getHelper(root, data);
        }
    }

    private T getHelper(AVLNode<T> parent, T data) {
        if (parent == null) {
            return null;
        }
        if (parent.getData().compareTo(data) == 0) {
            return parent.getData();
        } 
        if (parent.getData().compareTo(data) > 0) {
            return getHelper(parent.getLeft(), data);
        } else {
            return getHelper(parent.getRight(), data);
        }
    }

    /**
     * Returns whether or not data matching the given parameter is contained
     * within the tree.
     *
     * Hint: Should you use value equality or reference equality?
     *
     * @param data the data to search for in the tree.
     * @return true if the parameter is contained within the tree, false
     * otherwise
     * @throws java.lang.IllegalArgumentException if data is null
     */
    public boolean contains(T data) {
        if (data == null) {
            throw new IllegalArgumentException("data input cannot be null");
        }
        if (getHelper(root, data) == null) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Returns the height of the root of the tree.
     *
     * Should be O(1).
     *
     * @return the height of the root of the tree, -1 if the tree is empty
     */
    public int height() {
        if (size == 0) {
            return -1;
        } else {
            return root.getHeight();
        }
    }

    /**
     * Clears the tree.
     *
     * Clears all data and resets the size.
     */
    public void clear() {
        root = null;
        size = 0;
    }

    /**
     * Returns the data on branches of the tree with the maximum depth. If you
     * encounter multiple branches of maximum depth while traversing, then you
     * should list the remaining data from the left branch first, then the
     * remaining data in the right branch. This is essentially a preorder
     * traversal of the tree, but only of the branches of maximum depth.
     *
     * This must be done recursively.
     *
     * Your list should not have duplicate data, and the data of a branch should be
     * listed in order going from the root to the leaf of that branch.
     *
     * Should run in worst case O(n), but you should not explore branches that
     * do not have maximum depth. You should also not need to traverse branches
     * more than once.
     *
     * Hint: How can you take advantage of the balancing information stored in
     * AVL nodes to discern deep branches?
     *
     * Example Tree:
     *                           10
     *                       /        \
     *                      5          15
     *                    /   \      /    \
     *                   2     7    13    20
     *                  / \   / \     \  / \
     *                 1   4 6   8   14 17  25
     *                /           \          \
     *               0             9         30
     *
     * Returns: [10, 5, 2, 1, 0, 7, 8, 9, 15, 20, 25, 30]
     *
     * @return the list of data in branches of maximum depth in preorder
     * traversal order
     */
    public List<T> deepestBranches() {

    }

    /**
     * Returns a sorted list of data that are within the threshold bounds of
     * data1 and data2. That is, the data should be > data1 and < data2.
     *
     * This must be done recursively.
     *
     * Should run in worst case O(n), but this is heavily dependent on the
     * threshold data. You should not explore branches of the tree that do not
     * satisfy the threshold.
     *
     * Example Tree:
     *                           10
     *                       /        \
     *                      5          15
     *                    /   \      /    \
     *                   2     7    13    20
     *                  / \   / \     \  / \
     *                 1   4 6   8   14 17  25
     *                /           \          \
     *               0             9         30
     *
     * sortedInBetween(7, 14) returns [8, 9, 10, 13]
     * sortedInBetween(3, 8) returns [4, 5, 6, 7]
     * sortedInBetween(8, 8) returns []
     *
     * @param data1 the smaller data in the threshold
     * @param data2 the larger data in the threshold
     * @return a sorted list of data that is > data1 and < data2
     * @throws IllegalArgumentException if data1 or data2 are null
     * or if data1 > data2
     */
    public List<T> sortedInBetween(T data1, T data2) {

    }

    /**
     * Returns the root of the tree.
     *
     * For grading purposes only. You shouldn't need to use this method since
     * you have direct access to the variable.
     *
     * @return the root of the tree
     */
    public AVLNode<T> getRoot() {
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
