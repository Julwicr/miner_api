API URL : https://miner-api.herokuapp.com

API endpoints : <br>

POST /users create user <br>
POST /auth/login returns JWT token if credentials ok <br>
GET /products returns all products sorted by categroy. Price filters: ?min={minPrice} ?max={maxPrice} <br>
GET /products/{article_number} returns one product <br>
GET /categories returns a list of all categories <br>
GET /categories/{category} returns a list of all product from the given category
