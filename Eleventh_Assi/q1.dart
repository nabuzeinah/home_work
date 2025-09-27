/*Given the head of a singly linked list, reverse the list, and return the reversed list.*/

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main() {
  // Example usage:
  ListNode node5 = ListNode(5);
  ListNode node4 = ListNode(4, node5);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);

  ListNode? reversedHead = reverseList(head);

  // Print reversed list
  while (reversedHead != null) {
    print(reversedHead.val);
    reversedHead = reversedHead.next;
  }
}

ListNode? reverseList(ListNode? head) {
  ListNode? previous = null;
  ListNode? current = head;
  ListNode? nextNode;
  while (current != null) {
    nextNode = current.next; // Store the next node
    current.next = previous; // Reverse the link
    previous = current; // Move previous to current
    current = nextNode; // Move to the next node
  }
  return previous; // New head of the reversed list
}
