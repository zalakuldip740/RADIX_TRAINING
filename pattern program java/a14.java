class a14{
public static void main(String[] args){
int i,j;
for(i=1;i<=5;i++){
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
}
}





/* output

              *

          *  *  *

       *  *  *  *  *

    *  *  *  *  *  *  *

 *  *  *  *  *  *  *  *  *
          

  */