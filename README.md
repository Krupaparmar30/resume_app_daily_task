# resume_app_daily_task

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
 <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/72945119-d2df-4cea-931e-25a8ab0afa67"width=22% height=35%>
 <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/c9664ea4-254a-45db-963d-f9e52b200b76"width=22% height=35%>
</p>

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/d5c25ee5-64b4-4569-a463-809b16120f7c

# Email_password_pages
<p>
  <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/9d306feb-f246-47b9-9a4e-933b5b6da33d">
  <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/2b9e7398-3303-42b0-82ed-11f00a948396">
  <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/1ac3ca20-5ea8-450f-a380-47459467fa88">
  <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/53c73129-3703-458c-b0b3-6cf07c38ca52">
</p>

screen_recording_google_pages

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/817ee482-059e-43b5-a77c-375ed9e3375d


# SnackBar
<p>
<img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/57bc3208-307f-4fc1-8a11-3716763d187c">
</p>


<p>
    <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/9b5aaef6-1755-47c4-8b7f-fdd954b88b52"width=22% height=35%>

</p>

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/400a6621-2024-46b3-8a57-e842bd4a672a

# Image Picker

<p>
<img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/db84202a-1053-4cef-b206-f69701818e5f"width=22% height=35%>
<img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/0d51ce1d-82ec-4336-8c49-f42b03ac81c2"width=22% height=35%>

</p>

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/89e8c691-568d-4bd0-9142-eece0778d78d

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/cff42c43-eb07-468d-a4b5-2cf9ba8234f7

# Dynamic_text_fieldPage

<p>
    <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/8c587230-86be-487f-bf86-0aca1f49e18f"width=22% height=35%><br>
    <img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/9c98922c-60de-4060-bc37-c49694fa9ea1"width=22% height=35%>

</p>

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/e24b8cfe-3f61-4f0b-974e-637d92d2320a

# Invoice Genreter
<p>
<img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/184fc221-713e-4f8b-8f97-4fb03345d386"width=22% height-35%>
<img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/719448bc-fe32-40f9-9171-b0e8d6bfa3a0"width=22% height-35%>
<img src="https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/163a15d2-aa71-42a5-9821-49537c8b945d"width=22% height-35%>
</p>

https://github.com/Krupaparmar30/resume_app_daily_task/assets/149374671/af09451f-70ab-4121-a130-c59faa879c18








