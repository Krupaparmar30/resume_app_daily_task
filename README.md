# resume_app_daily_task

A new Flutter project.

# Create a statusbar using appbar?

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


