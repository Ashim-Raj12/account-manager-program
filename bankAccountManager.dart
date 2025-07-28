void main() {
  BankAccount bankAccount1 = new BankAccount('Ashim Raj', 7759023891, 1000);

  String userAction = 'Deposit';

  if (userAction.toUpperCase() == 'WITHDRAW') {
    bankAccount1.withdraw(2000);
  } else if (userAction.toUpperCase() == 'DEPOSIT') {
    bankAccount1.deposit(4000);
  } else {
    print('Invalid Operation');
  }
}

class BankAccount {
  String accountHolderName;
  int accountNumber;
  double balance;

  BankAccount(this.accountHolderName, this.accountNumber, this.balance);

  void deposit(double amount) {
    balance = amount + balance;
    print('Depositing Rs $amount');
    print('Your final balance is Rs $balance');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance = balance - amount;
      print('Withdrawing $amount ');
      print('Your final balance is Rs $balance');
    } else {
      print('Insufficient balance');
      print('Your final balance is Rs $balance');
    }
  }
}
