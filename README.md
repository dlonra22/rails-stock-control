RAILS STOCK CONTROL APP

* Welcome to My Rails Stock Control App.
    The app is designed to help stock control in small shops with relatively low to medium quantity stock. It is based on real models of shops around the local 
    area and how they interact with their stock. 

* USAGE
    At app initialization an admin user will need to register. There after, only admins can add users to the system. 
    A user can be of type admin with additional previledges such as adding items to the database and creating new users of either type as mentioned above. Normal users can only interact with items through transactions and update their own profile, except their usertype, i.e whether admin or not

    Transcations can be of type sale, restock or reverse. These consequentially update the stock items accordingly. 

    Admins will also have access to reports including transactions by all users, with filters for dates and also transactions by item.

    The other reports accessible to all users include lists of items that have hit their stock reoder level or are out of stock 

* MODELS AND ASSOCIATIONS
    USER
    username string
    password password
    admin boolean
    associations: has_many transactions, has_many items through transactions

    TRANSACTION
    user_id
    item_id
    quantity
    value 
    superseded_by: only if transaction is reversed
    transaction date and time user_readable
    associations: belongs_to user, belongs_to item, belongs_to type
    Transaction_type: can only be of sale,reverse or restock - in a constant array 

    ITEM
    name
    description
    price
    quantity
    restock_level
    expirey_date
    associations: belongs_to category, has_many transactions, has_many users through transactions

* System dependencies
    ruby '2.6.1'
    The app utilises the bycrypt and omniauth gems outside the normal gems provided by rails new
* Configuration

* Database creation
  run rake db:migrate to ensure the schema is created on first use you can also create some seed data using the seeds file while considering validations and also the associations and structure provided above
* Deployment instructions
    run rails s in the command line after you have run bundle install. 
* ...
