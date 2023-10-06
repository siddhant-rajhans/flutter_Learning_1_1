
 main(){
  var listName = [10,20,30,40];
  listName.add(50);
  print("Hello $listName");

  var val = [];
  val.add("value");
  val.add("value2");
  val.add("value3");

  val.insertAll(1, listName);
  val.insert(1, 32);
  print("Hello ${val.length}");
  print("Isempty ${val.isEmpty} ");

 }
 void final(){
 // Permanent name type
     //Type 1
     final name= "u_name";

     //Type 2
     final String val;
     val= 'kuch bhi';

// Do not use *Var* or *Dynamic*. They cause the change in data through the run time.
 }

 void const(){
   // must be defined at the time of initialization
    const val = 'naam';
    val = 'vaj';

 }