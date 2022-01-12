class a15{
public static void main(String[] args){
int i,j;
for(i=1;i<5;i++){
for(j=i;j<5;j++){
System.out.print("   ");
}
for(int k=1;k<=i;k++){
System.out.print(" * ");

}
for(int m=1;m<i;m++){
System.out.print(" * ");

}
System.out.println("\n");


}
for(i=1;i<=5;i++){
for(j=1;j<i;j++){
System.out.print("   ");
}
for(int k=i;k<=5;k++){
System.out.print(" * ");

}
for(int m=i;m<5;m++){
System.out.print(" * ");

}
System.out.println("\n");

}
}
}





/* output

              *

          *  *  *

       *  *  *  *  *

    *  *  *  *  *  *  *

 *  *  *  *  *  *  *  *  *

    *  *  *  *  *  *  *

       *  *  *  *  *

          *  *  *

             *

          

  */