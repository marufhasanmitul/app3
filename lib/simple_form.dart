

//Design submit Button
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60)
    );

//=============================================================================



  //Simple form
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //Item
        children: [
          Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                label: Text('First Name'),
                border: OutlineInputBorder(),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Last Name'),
                border: OutlineInputBorder(),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Eamil Address'),
                border: OutlineInputBorder(),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child:ElevatedButton(
              onPressed: (){},
              child: Text('Submit'),
              style: buttonStyle,
            ),


          ),






        ],
      ) ,
