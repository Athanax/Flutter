class house{
  int width = 0;
  int length = 0;

  //this is a default constructor of the class house class
//  house(){
//    print('constructed');
//  }
  //you can add parameters to the constructor to set default values

  house(int v, int k){
    width = v;
    length = k;
    print('width is $width and Length is $length');
  }

  // to destroy the class, you call the dispose() which is called by default when the program closes.

  void dispose(){
    print('You just killed me');
  }
}