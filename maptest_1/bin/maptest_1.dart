void main(List<String> arguments) {
  List<String> letters =[
    'I','v','X'
  ];
  List<int> numbers =[
    3,2,10,1
  ];
  var mynewmap={
    1:'one',
    2:'two',
    3:'Three'
  };
  List<Map> listmap=[
    {
      1:'one',
    2:'two',
    3:'Three'
    },
    {
      4:'four',
    5:'five',
    6:'six'
    }
  ];
  Map<String,int>  map= Map.fromIterables(letters, numbers);
  Map<String,int> mymap= Map.fromIterable(numbers,key: (k)=> 'duoble'+k.toString(),value: (v)=>v*2);
 //listmap.forEach((element) {element[1].update(7, (value) =>value,ifAbsent: ()=> 'seven');});
  //listmap.forEach((element) {print(element);});
  //listmap[0].update('0', (value) => value,ifAbsent: ()=> 'zero');
  print(listmap);
  //listmap[0].forEach((key, value) {k})
  numbers.sort();
  print(numbers);
}
