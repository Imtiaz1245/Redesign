import 'package:flutter/material.dart';
class TextFieldView extends StatefulWidget {
  final fieldheight,fieldwidth,fillcolor,controller,borderradius,outline,prefixicon,hint,label,filled,ispasword;
  const TextFieldView({Key? key, this.fieldheight, this.fieldwidth, this.fillcolor, this.controller, this.borderradius, this.outline, this.prefixicon, this.hint, this.label, this.filled=false, this.ispasword=false}) : super(key: key);

  @override
  State<TextFieldView> createState() => _TextFieldViewState();
}

class _TextFieldViewState extends State<TextFieldView> {
  var obscure=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.fieldheight,
      width: widget.fieldwidth,
      child: TextFormField(
        obscureText:obscure ,
        controller: widget.controller,
        decoration: InputDecoration(
          border: widget.borderradius,
          hintText: widget.hint,

          suffixIcon: widget.ispasword!?(IconButton(onPressed: (){
            setState(() {

              obscure=!obscure;
            });
          }, icon:Icon(
              obscure?Icons.visibility:Icons.visibility_off))):SizedBox(),
          prefixIcon: widget.prefixicon,
          labelText: widget.label,
          fillColor: widget.fillcolor,

        ),
      ),
    );
  }

  @override
  void initState() {
   obscure=widget.ispasword==true ;
  }
}
