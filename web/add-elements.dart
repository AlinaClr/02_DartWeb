// https://dart.dev/tutorials/web/low-level-html/add-elements

import 'dart:html';

final InputElement toDoInput = querySelector('#to-do-input') as InputElement;
final UListElement toDoList = querySelector('#to-do-list') as UListElement;

void main() {
  toDoInput.onChange.listen(addToDoItem);
}

void addToDoItem(Event e) {
  //创建一个新的元素，令其文本的值等于用户输入的值
  final newToDo = LIElement()..text = toDoInput.value;
  //然后将输入的值清空
  toDoInput.value = '';
  //将新的元素添加到list中
  toDoList.children.add(newToDo);
}
