class a8{
public static void main(String[] args){
int i,j;
for(i=1;i<=5;i++){
for(j=5;j>i;j--){
System.out.print(" ");
}
System.out.println(" 1");
for(j=1;j<=5;j++){
if(i==j){
System.out.println("1");
}
System.out.println(" ");
}
}
}
}




/* output

1 2 3 4 5

2 3 4 5

3 4 5

4 5

5
                           */