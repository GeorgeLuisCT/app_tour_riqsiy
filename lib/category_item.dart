import 'package:flutter/material.dart';
import 'utils.dart';

class CategoryItem extends StatelessWidget{
  final String id;
  final String title;
  final String catImage;
  
  const CategoryItem(this.id,this.title,this.catImage,{super.key});
  
  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed('./category-viajes-screen', arguments:{
      'id': id,
      'title':title,
    });
  }
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: ()=> selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: borderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(catImage),
            fit:BoxFit.cover,
          ),
          borderRadius: borderRadius.circular(10),
        ),
        child:Text(
          t(context,title),
          style:TextStyle(
            fontSize: 17,
            color: Colors.white,
            background: Paint()..color=Colors.black54),
          
        ),
      ),
    );
  }
}
