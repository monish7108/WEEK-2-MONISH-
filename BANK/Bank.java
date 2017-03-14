
import java.io.*;

public class Bank{
	private String name_Of_Customer;
	private int account_Number;
	private String type_Of_Account;
	private int balance;

	Bank(String name_Of_Customer,int account_Number,String type_Of_Account,int balance){
		this.name_Of_Customer=name_Of_Customer;
		this.account_Number=account_Number;
		this.type_Of_Account=type_Of_Account;
		this.balance=balance;
	}

	public void  withdraw(int amount){
		balance-=amount;

	}
	public void deposit(int amount){
		balance+=amount;

	}

	public boolean checkBalance(int bal){
		if(balance>bal)
		return true;
		return false;
	}

	public void display(){
		System.out.println("Name of Customer is "+name_Of_Customer);
		System.out.println("Account Number is "+account_Number);
		System.out.println("Type Of Account is "+type_Of_Account);
		System.out.println("Balance is :"+balance);

	}
}
