void setup(){
  
  int results = addmembers(10,5);
  int sumofnumber = addmembers(20,78);
  float avgnumber = avg(10,50,6);
  
  println("sum = "+ results);
  println("sum of the number = " + sumofnumber);
  println("Avaerage of number = " + avgnumber);
  
}

int addmembers (int a, int b)

{
  return a+b;
}
 float avg(int c,int d,int e)
 {
 return (c+d+e)/3;
 }
