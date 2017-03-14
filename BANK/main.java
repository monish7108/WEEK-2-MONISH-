import java.io.*;
import java.sql.*;
import java.util.*;



public class main{

		

		public static void main(String [] args) throws SQLException, ClassNotFoundException{

			 	String name_Of_Customer;
				int account_Number;
				String type_Of_Account;
				int balance,choice,act,amt;
				boolean flag;
				Bank obj;
				
	  		Scanner scan=new Scanner(System.in);

				HashMap<Integer,Bank> b1=new HashMap<Integer,Bank>();

				do{
						System.out.println("Enter appropriate option to proceed: \t");
						System.out.println("Enter 1 to Register\n");
						System.out.println("Enter 2 to get details\n");
						System.out.println("Enter 3 to withdraw\n");
						System.out.println("Enter 4 to deposit\n");
						System.out.println("Enter 5 to exit");

						System.out.println("Enter appropriate option to proceed: \t");

						choice=scan.nextInt();

						switch(choice){

								case 1:
											System.out.println("enter name: ");
											scan.nextLine();
		 									name_Of_Customer=scan.nextLine();
											while(true){
												System.out.println("enter account num: ");
												account_Number=scan.nextInt();
												if(account_Number < 1000000000)
												System.out.println("please enter 10 digit account number...");
												else
												break;
											}
											scan.nextLine();

											while(true){
												System.out.println("enter type of account: ");
												type_Of_Account=scan.nextLine();
												if(type_Of_Account.equalsIgnoreCase("savings") || type_Of_Account.equalsIgnoreCase("current"))
												break;
												else
												System.out.println("account type can only be savings or current");
											}
											while(true){
												System.out.println("enter initial balance: ");
												balance=scan.nextInt();
												if(balance < 500 )
												System.out.println("500 is initial balance...");
												else break;
											}
											
											b1.put(account_Number,new Bank(name_Of_Customer,account_Number,type_Of_Account,balance));
											break;

								case 2:
											System.out.println("Enter account number:");
											act=scan.nextInt();
											obj=(Bank)b1.get(act);
											obj.display();
											break;

								case 3:
											System.out.println("enter account number:");
											act=scan.nextInt();
											obj=(Bank)b1.get(act);
											System.out.println("enter amount you want to withdraw");
											amt=scan.nextInt();
											flag=obj.checkBalance(amt);
											if(flag)
											obj.withdraw(amt);
											else
											System.out.println("you dont have cash");
											break;

									case 4:
											System.out.println("enter account number:");
											act=scan.nextInt();
											obj=(Bank)b1.get(act);
											System.out.println("enter amount you want to deposit");
											amt=scan.nextInt();
											obj.deposit(amt);

								default: System.out.println("Invalid choice");
							}


						}while(choice!=5);
					scan.close();
					}
}
