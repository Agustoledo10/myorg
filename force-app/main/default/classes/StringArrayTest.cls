public with sharing class StringArrayTest {
    public static List <String>  generateStringArray(Integer param) {
    List<String> mylist = new List<String>();
        for (Integer i = 0; i < param; i++) {
            mylist.add ('Test '+ i);
    }
    return mylist;
    }
}