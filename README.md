# Gigih-Family-Catering
```bash
bundle install
```

```bash
rails s
```

rspec
```bash
rspec -fd
```
or
```bash
bundle exec rspec -fd
```

## URL Page
url = https://gigih-family-catering-simon-aditiaadi.gojek22.repl.co/

Foods
- url/foods
- url/foods/new
- url/foods/:id
- url/foods/:id/edit

Categoires
- url/categoires
- url/categoires/new
- url/categoires/:id
- url/categoires/:id/edit

Customers
- url/customers
- url/customers/new
- url/customers/:id
- url/customers/:id/edit

Order
- url/order
- url/order/new
- url/order/:id
- url/order/:id/edit

Order Details
- url/order_details
- url/order_details/new
- url/order_details/:id
- url/order_details/:id/edit

Reports
- url/reports

# Rails on Replit

This is a template to get you started with Rails on Replit. It's ready to go so you can just hit run and start coding!

This template was generated using `rails new` (after you install the `rails` gem from the packager sidebar) so you can always do that if you prefer to set it up from scratch. The only had two make config changes we had to make to run it on Replit:

- bind the app on `0.0.0.0` instead of `localhost` (see `.replit`)
- allow `*.repl.co` hosts (see `config/environments/development.rb`)
- allow the app to be iframed on `replit.com` (see `config/application.rb`)

## Running the app

Simple hit run! You can edit the run command from the `.replit` file.

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

SQLite would work in development but we don't recommend running it in production. Instead look into using the built-in [Replit database](http://docs.replit.com/misc/database). Otherwise you are welcome to connect databases from your favorite provider. 

## Help

If you need help you might be able to find an answer on our [docs](https://docs.replit.com) page. Alternatively you can [ask in the community](https://replit.com/talk/ask). Feel free to report bugs [here](https://replit.com/bugs) and give us feedback [here](https://Replit/feedback).