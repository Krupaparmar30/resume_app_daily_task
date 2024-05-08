# resume_app_daily_task

A new Flutter project.
# What is List and Map ?

# `List `

-> List is used to representing a collection  of  objects. It is an ordered group of objects.

-> List is collection of multiple values of any datatype.
-> List is user defained datatype.

* Example:
```
void main()

{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    print(names);

}
```

 * predefine methods

 ->
 Lenght of List
 ```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.length;
    print(names);
}
 ```
->
 Add to List
 ```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.add(['prachi']);
    print(names);

}
```
->
Add to all of List(multiple values)
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.addAll([50,'sima',52]);
    print(names);

}
```
->
Remove of List
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.remove('jinal');
    print(names);

}
```
-> 
Remove At of List
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.removeAt(2);
    print(names);
}
```
->
Remove The Last element of List
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.removeLast();
    print(names);

}
```
->
Insert the value in List
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.insert(2, 'kruti');
    print(names);

}
```
->
Insert the multiple values in List
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.insertAll(2, ['kunjal',58,'durga']);
    print(names);

}
```
-> Show datatype of List
```
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
  
    print(names);
    print(names.runtimeType);

}
```
* Genrice

->
provide a way to write reusable code that can work with different types.

* Example:
```
void main()

{
  
    List<String> names=['krupa','jinal','sneha','prathna','nikita'];
    
    print(names);
 
}
```
# `Map`

-> Map is an object that stores data in the form of a key-value pair.

* Example:
```
void main()

{
    Map n1={

    'product_name':'HP laptop',
    'price':500000,
  
    };
    print(n1['price']);

}

```
# Create a statusbar using appbar?
```
class _homePageState extends State<homePage> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.teal,
          systemNavigationBarColor:Colors.teal,
        ),
      ),
    );
  }
}
```
# Create a statusbar without appbar?
```
class _homePageState extends State<homePage> {

  @override
  
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.teal,

      )

    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return Scaffold(

    );
  }
}
```
