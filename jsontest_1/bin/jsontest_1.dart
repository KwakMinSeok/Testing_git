void main(List<String> arguments) {
  List<String> numbers=['a','b','c'];
  Map<String,String> mymap= Map.fromIterable(
    numbers,key: (element) => element,
    value: (element) => element,
  );
  Map<String,int> map1 = {
    'zero':0,'one':1,'two':2
  };
  Map map2 = Map.from(map1);
  Map map3= Map.of(map1);
//
  print(map2);
  print(mymap);
  print(map3);
map1.removeWhere((key, value) => key.startsWith('z'));
print(map1);
Map<String,int> map4={
'one':3,
'two':1,
'three':2,
'four':4
};
var sortedmap= Map.fromEntries(
  map4.entries.toList()..sort((e1,e2)=> e1.value.compareTo(e2.value))
);
print(sortedmap);

}