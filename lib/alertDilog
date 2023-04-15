    //Create AlertDialog
    MyAlertDialog(context){
      return showDialog(
          context: context,
          builder: (BuildContext context){
            return Expanded(
                child: AlertDialog(
                  title: Text("Aleart"),
                  content: Text("Do you want to delet"),
                  actions: [
                    TextButton(onPressed: () {
                      MySnackbar("Delete Successfully", context);
                      Navigator.of(context).pop();
                    }, child: Text('Yes')),
                    TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('No')),

                  ],
                )
            );
          }
      );
    }

//============================================================================================================================


   //Center & Button for Allert
      
      Center(
        child: ElevatedButton(
          child: Text('Click Me'),
          onPressed: (){
            MyAlertDialog(context);
          },
        ),
      ),
