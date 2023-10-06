import 'dart:html';
// InkWellAllows on tap feature to any widget
main(){
  Body: Inkwell(
    child: Text('Hello'),
    onTap:(){
      print('val');
    }
    onLongPress(){
      print('v');
    }
  )
}