var inquirer = require("inquirer");
var fs = require("fs");
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3307,
  user: "root",
  password: "root",
  database: "bamazon_db"
});
connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  afterConnection();
});

function afterConnection() {
  connection.query("SELECT id, product_name, price  FROM products",  function(err, res) {
    if (err) throw err;
    console.log(res);
    console.log("*---------------*---------------------");
    console.log("Welcome to Bamazon!");    
    welcome();
  });
}
function welcome(){
  inquirer.prompt([
    {
    name: "itemId",
    type: "input",
    message: "Hello, type the item ID that you would like to purchase."
  },
  {
    name: "quantity",
    tipy: "input",
    message: "How many would you like?"
  }
]).then(function(answer){
    var query = "SELECT "
})
}






connection.end();

