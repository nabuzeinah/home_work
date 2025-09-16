/* Q1
 Create a class BankAccount with a private field _balance.
 - Add a getter balance that returns the balance.
 - Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
 - In main(), demonstrate creating an account, updating the balance, and trying to set a negative balance*/

void main() {
  BankAccount myAccount = BankAccount();
  myAccount.balance = 500;
  print(myAccount.balance);
}

class BankAccount {
  int _balance = 0;

  set balance(int balance) {
    if (balance >= 0) {
      this._balance = balance;
    } else {
      print('Invalid balance');
    }
  }

  int get balance => this._balance;
}
