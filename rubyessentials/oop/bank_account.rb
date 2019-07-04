class BankAccount
    attr_reader :name

    def initialize(name = "")
        @name = name
        @transactions = []
        add_transaction("beginning balance",0.0)
    end

    def add_transaction(description,amount)
        @transactions.push(description: description, amount: amount)
    end

    def credit(description,amount)
        if amount < 0.0 
            add_transaction(description,-amount)
        else 
            add_transaction(description,amount)
        end
    end

    def debit(description,amount)
        if amount < 0.0 
            add_transaction(description,amount)
        else 
            add_transaction(description,-amount)
        end
    end

    def balance
        balance = 0
        @transactions.each do |transaction|
            balance += transaction[:amount]
        end  
        return balance      
    end

    def print_register
        puts "#{name}'s Bank Account"
        puts "*"*40
        puts "Description".ljust(30) + "Amount".rjust(10)
        @transactions.each do |transaction|
            puts transaction[:description].ljust(30) + sprintf("%0.2f",transaction[:amount]).to_s.rjust(10)    
        end
        puts "*"*40
        puts ("Balance".ljust(30) + sprintf("%0.2f", + balance).to_s).rjust(10)
        puts "*"*40
    end

    def overdrawn?
        balance < 0
    end
end

ba = BankAccount.new("Tiago")
ba.credit("Paycheck",1000.0)
ba.debit("Groceries",60.0)
ba.print_register


