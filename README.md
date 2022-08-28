API URL : https://miner-api.herokuapp.com

API endpoints : <br>

POST /auth returns user if found and password is correct <br>

GET /products returns all products sorted by categroy <br>
GET /products/{article_number} returns one product <br>
GET /price?max={maxPrice} returns products with max price <br>
GET /price?min={minPrice}&max={maxPrice} returns range of product for given min and mac <br>
GET /categories returns a list of all categories <br>
GET /categories/{category} returns a list of all product from the given category
