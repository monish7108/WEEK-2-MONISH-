import java.io.*;

public class practice{

  public static void main(String [] arg){

    String name_Of_Customer="monish";
    int account_Number=111111;
    String type_Of_Account="savings";
    int balance=8327483;

    String sql="insert into customerDetails values(\""+name_Of_Customer+"\","+account_Number+",\""+type_Of_Account+"\","+balance+")";
    System.out.println(sql);
  }

}
