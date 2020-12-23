# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@min_value = 0.01
@max_value = 999.99 

Account.create([{
    account_name: "Bryan's Chase Bank",
    balance: 10000.00,
    account_type: "Checking Account"
    },
    {
    account_name: "Chase Amazon Card",
    balance: 500.00,
    account_type: "Credit Card Account"
    }
])

10.times do 
    Transaction.create({
        t_name: ["Target", "Best Buy", "Amazon", "Whole Foods", "Trader Joe's", "7 Eleven", "Shell"].sample,
        description: ["Gas", "Groceries", "Electronics", "Drinks", "Household Supplies"].sample,
        t_value: rand(@min_value..@max_value).round(2),
        account: Account.all.sample
    })
end