var rotateRight = function(head, k) {
    if (!head || k == 0) return head;

    let length = 1;
    let tail = head;
    while (tail.next) {
        tail = tail.next;
        length ++;
    }

    k = k % length;
    if( k ===  0) return head

    tail.next = head;
    let stepsToNewHead = length - k;
    let newTail = tail;
    while (stepsToNewHead--) {
        newTail = newTail.next;
    }

    let newHead = newTail.next;
    newTail.next = null;
    return newHead;
};