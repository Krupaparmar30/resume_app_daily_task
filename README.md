![Screenshot_20240509_130343](https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/1260208f-000f-4e0d-b2f2-d86c1a5143e9)![Screenshot_20240509_130332](https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/a9dac348-badb-48c0-ade3-fd7fa54d443f)# resume_app_daily_task

A new Flutter project.
# What is List and Map ?

# `List `

-> List is used to representing a collection  of  objects. It is an ordered group of objects.

-> List is collection of multiple values of any datatype.
-> List is user defained datatype.

* Example:
```javascript
void main()

{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    print(names);

}
```

 * predefine methods

 ->
 Lenght of List
 ```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.length;
    print(names);
}
 ```
->
 Add to List
 ```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.add(['prachi']);
    print(names);

}
```
->
Add to all of List(multiple values)
```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.addAll([50,'sima',52]);
    print(names);

}
```
->
Remove of List
```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.remove('jinal');
    print(names);

}
```
-> 
Remove At of List
```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.removeAt(2);
    print(names);
}
```
->
Remove The Last element of List
```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.removeLast();
    print(names);

}
```
->
Insert the value in List
```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.insert(2, 'kruti');
    print(names);

}
```
->
Insert the multiple values in List
```javascript
void main()
{

    List names=['krupa','jinal','sneha','prathna','nikita'];
    names.insertAll(2, ['kunjal',58,'durga']);
    print(names);

}
```
-> Show datatype of List
```javascript
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
```javascript
void main()

{
  
    List<String> names=['krupa','jinal','sneha','prathna','nikita'];
    
    print(names);
 
}
```
# `Map`

-> Map is an object that stores data in the form of a key-value pair.

* Example:
```javascript
void main()

{
    Map n1={

    'product_name':'HP laptop',
    'price':500000,
  
    };
    print(n1['price']);

}
```
* predefine methods of Map

->Lenght of Map
```javascript
void main()
{

    Map n1={

    'product_name':'HP laptop',
    'price':500000,
    
    };
    print(n1.length);
    
}
```
List of Map
```javascript
void main()
{
  
        List <dynamic> l1=[
        {
              'name':'krupa parmar',
              'roll_number':18,
              'age':18,
              'course':'Flutter devloper'

        },
          {
              'name':'prachi singh',
              'roll_number':22,
              'age':19,
              'course':'ui-ux devloper'
              
        },
          {
              'name':'mohoni parmar',
              'roll_number':22,
              'age':21,
              'course':'Flutter devloper'
              
        },



        ];
   
    for(int i=0; i<l1.length; i++)
    {
        print(l1[i]);
    }

 
}

```
# Create a statusbar using appbar?
```javascript
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
```javascript
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

# Drawer

<p>
      <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/f8853112-5a51-4c46-875e-007c90fc0169"width=22% height=35%>

</p>
# Login Pages
<p>
 <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/ff4c7085-5990-47e1-87a1-b987c004291c"width=22% height=35%>
  <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/c9664ea4-254a-45db-963d-f9e52b200b76"width=22% height=35%>



    
</p>
