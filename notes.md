Linked List:

1. Each node has a value and a reference field to link to the next node

2. Typically use the first node to represent whole list

3. Not like an array where you can find a random element by index, you have to go through each node before the element you are looking for. Traverse from head to Nth node O(n) time to visit an element in index, where N is length of linked list.

4. Linked list are good for inserting and deleting at random indexes unlike arrays which are stored in one place in memory, so if you have to insert an element you have to move all elements past the inserted element, save in extra memory and reattach. In linked list, you just add a next element to the node before it and each node is stored somewhere else in memory.

5. If want to ADD A NODE IN MIDDLE:
    - initialize new node with value
    - link the next field of new node to the following node
    - link the prev node next field to new node
    - Inserting an element into a linked list takes O(1) time

6. ADD A NODE AT BEGINNING:
    - the head node represents the whole list so when you add a node at the front, you have to update it as the head
    - first, initialize new node
    - link new node to original head node
    - assign new node as head

7. DELETE OPERATION - for singly linked list
    - find the node that you want to delete previous node and it's next node ( find next node with reference field, to find prev node have to traverse linked list from head to the node O(n). Time complexity of deleting a node in singly linked list is O(N) time. The space complexity is O(1) because we only need constant space to store the pointers.
    - link the prev node to the next node ( now the node in between them doesn't exist in the link)

    - TO DELETE FIRST NODE:
        - just assign the seconde node as the head node


   =========================================================================================
   Binary Trees ( binary is most common tree, but is defined by nodes that have at max 2 children):
   1. Traverse a tree:
    - Pre-order traversal:
        visit root node first, traverse left subtree and then right
    - In-order traversal:
        traverse left subtree first (start at lowest left node and work way up to     root, then go to root and then traverse right subtree ( can gather all data from tree)
    - Post-order traveral:
        traverse left subtree first, then right subtree and then root
        when you delete a node, it is in post-order traversal ( you delete it's left child, then its right childe and then the node itself), is used widely to write programs to parse post order expression
