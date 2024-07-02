//https://leetcode.com/problems/merge-two-sorted-lists/description

import 'package:problem_solving_in_dart/helpers/lindedlist.dart';

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;
    if (list1.val < list2.val) {
      list1.next = mergeTwoLists(list1.next, list2);
      return list1;
    } else {
      list2.next = mergeTwoLists(list1, list2.next);
      return list2;
    }
  }

  ListNode? mergeTwoLists2(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;

    ListNode? newList = ListNode();
    ListNode? temp = newList;

    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        temp?.next = list1;
        list1 = list1.next;
      } else {
        temp?.next = list2;
        list2 = list2.next;
      }

      temp = temp?.next;
    }
    // if one of the linkedlist has more elements than other
    if (list1 != null) {
      temp?.next = list1;
    }
    if (list2 != null) {
      temp?.next = list2;
    }
    return newList.next;
  }
}
