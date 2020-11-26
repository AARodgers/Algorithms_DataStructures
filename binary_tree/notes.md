Binary Tree:

- binary tree means all nodes can only have two children
- a balanced binary tree means that there are equal nodes on left and right side
- Typically, for binary search tree, we can retrieve all the data in sorted order using in-order traversal.
- It is worth noting that when you delete nodes in a tree, deletion process will be in post-order. That is to say, when you delete a node, you will delete its left child and its right child before you delete the node itself.

- Level-order traversal is to traverse the tree level by level.
- Pre-order traversal is to visit the root first. Then traverse the left subtree. Finally, traverse the right subtree.
- In-order traversal is to traverse the left subtree first. Then visit the root. Finally, traverse the right subtree.
- Post-order traversal is to traverse the left subtree first. Then traverse the right subtree. Finally, visit the root.

- When we do breadth-first search in a tree, the order of the nodes we visited is in level order.
- The algorithm starts with a root node and visit the node itself first. Then traverse its neighbors, traverse its second level neighbors, traverse its third level neighbors, so on and so forth.
- Typically, we use a queue to help us to do BFS.

- 
