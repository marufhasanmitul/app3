
 //List Item
    //Json Array
    var MyItems=[
      {'img':'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png', 'title':'Rabbil'},
      {'img':'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png', 'title':'Rupom'},
      {'img':'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png', 'title':'Hasn'},
      {'img':'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png', 'title':'Khalid'},
      {'img':'https://cdn.rabbil.com/photos/images/2022/12/27/mernS.png', 'title':'Maruf'}
    ];



//List View========================
      ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context,index){
              return GestureDetector(
                onTap: (){
                  MySnackbar(MyItems[index]['title'], context);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 220,
                  child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),
                ),
              );
          },

      ),
