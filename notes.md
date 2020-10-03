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
    - the head node represents the whole
