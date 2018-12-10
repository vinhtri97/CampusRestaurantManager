USE CampusRestaurant;
INSERT INTO Restaurants VALUES ('Subway','6300 Ocean Dr, Corpus Christi TX 78412', '10:00 am to 9:00 pm', ' Monday to Friday','(361) 825-2760', 'Restaurants\subway.png'); 
INSERT INTO Restaurants VALUES ('Starbucks','6300 Ocean Dr #5763, Corpus Christi TX 78412', '10:00 am to 9:00 pm', ' Monday to Friday','(361) 825-2760','Restaurants\starbucks logo.png');
INSERT INTO Restaurants VALUES ('Panda Express','6300 Ocean Dr Unit 5763 in UC building, Corpus Christi TX 78412', '10:00 am to 9:00 pm', ' Monday to Friday','(361) 825-2760', 'Restaurants\panda-express-logos.png'); 
INSERT INTO Restaurants VALUES ('Chick-fil-A', '6300 Ocean Dr Unit 5763 in UC building, Corpus Christi TX 78412', '10:00 am to 9:00 pm', ' Monday to Friday', '(361) 825-2760', 'Restaurants\Chick-fil-A_Logo.svg.png') 
INSERT INTO Restaurants VALUES ('Smoke House','6300 Ocean Dr, Corpus Christi TX 78412', '10:00 am to 9:00 pm', ' Monday to Friday', '(361) 825-2760', 'Restaurants\oso creek.jpg') ;
INSERT INTO Restaurants VALUES ('Pizza Hut', '6300 Ocean Dr Unit 5763 in UC building, Corpus Christi TX 78412','10:00 am to 9:00 pm', ' Monday to Friday', '(361) 825-2760', 'Restaurants\pizzahut logo.jpg') ;
INSERT INTO Restaurants VALUES ('So Deli', '6300 Ocean Dr Corpus Christi TX 78412','10:00 am to 9:00 pm', ' Monday to Friday', '(361) 825-2760', 'Restaurants\Deli shop.png'); 
INSERT INTO Restaurants VALUES ('Chick-N-Grill','6300 Ocean Dr Unit 5763 In, C.I. building, Corpus Christi TX 78412', '10:00 am to 9:00 pm', ' Monday to Friday','(361) 825-2760', 'Restaurants\chick N grill logo.png') ;


INSERT INTO Users VALUES ('Renita','Newton', 'Student', '(361) 253-2760','Rnewton@islander.tamucc.edu','rnewton1','null'); 
INSERT INTO Users VALUES ('Pedro','Lauren', 'Student', '(361) 253-4565','Plauren@islander.tamucc.edu','plauren1','null');
INSERT INTO Users VALUES ('Legacy','Christopher', 'Professor','(361) 253-2255','Lchrist45@tamucc.edu','starfire45','6300 Ocean Dr  room 102 in CCH building, Corpus Christi TX 78412'); 
INSERT INTO Users VALUES ('Carlos','Barrera', 'Student', '(361) 253-7892','cbarrera@islander.tamucc.edu','cbarrera','null');  
INSERT INTO Users VALUES ('Gambit','Harris', 'Professor', '(361) 253-9563','Gambith@tamucc.edu','Gambitbabe','6300 Ocean Dr room 286 in BH building, Corpus Christi TX 78412');
INSERT INTO Users VALUES ('Carl','Clemmons', 'Student', '(361) 253- 8832','cclemmons@islander.tamucc.edu','carl23','null');   
INSERT INTO Users VALUES ('Jillian','Barrera', 'Student', '(361) 253-7892','Jbarrera@islander.tamucc.edu','Jbarrera44','null');
INSERT INTO Users VALUES ('Nola','West', 'Student', '(361) 253-678-899', 'Nola504@islander.tamucc.edu','Nola78','null');



INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken & Bacon Ranch Melt',4.75,'On the one hand, juicy strips of grilled all white meat chicken. On the other, strips of Maple wood smoked bacon. All topped off with a tangy smooth ranch sauce.','FoodItems\SUB1.JPG',1);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Black Forest Ham',3.75,'Our Black Forest ham, made with 100% Canadian ham, has never been better. Load it up with all the crunchy veggies you like on your choice of freshly baked bread. Yum! At just 4 grams of fat*, its something you can feel good about.','FoodItems\SUB2.JPG',1);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Meatball Marinara',3.75,'Zesty 100% Canadian meatballs covered with marinara sauce, served on freshly baked bread. Every bite is simply sensational! Get it toasted for even more great taste.','FoodItems\SUB3.JPG',1);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Pizza Sub Melt',3.75,'The Italian sandwich par excellence. Topped with marinara sauce, 100% Canadian pepperoni and cheese. Try it toasted for even more pizza taste!','FoodItems\SUB4.JPG',1);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Tuna',4.25,'Our tasty Tuna Sandwich is simply sumptuous. Made with flaked tuna, mixed with mayo and your choice of fresh vegetables served on freshly baked bread. This favourite contains no artificial colours or flavours.','FoodItems\SUB5.JPG',1);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Pepsi Fountain Pop',1.80,'As delicious as our sandwiches are, they are even better when paired with the perfect side and drink. Our sides run from salty to sweet and from better-for-you to indulgent. With such a variety there"s truly something for every taste.','FoodItems\SODA1.JPG',1);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Cafe Vanilla Frappuccino',3.75,'We take Frappuccino® roast coffee and vanilla bean powder, combine them with milk and ice, then top it with whipped cream. Tastes like happiness.','FoodItems\STAR1.JPG',2);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Caramel Frappucino',4.45,'Buttery caramel syrup meets coffee, milk and ice for a rendezvous in the blender. Then whipped cream and caramel sauce layer the love on top.','FoodItems\STAR2.JPG',2);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Caffe Latte',3.65,'Our dark, rich espresso balanced with steamed milk and a light layer of foam. A perfect milk forward warm up.','FoodItems\STAR3.JPG',2);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Iced White Chocolate Mocha',4.45,'Our signature espresso meets white chocolate sauce, milk and ice, then is finished off with sweetened whipped cream in this white chocolate delight.','FoodItems\STAR4.JPG',2);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Cheese Danish',2.45,'A flaky pastry folded around reduced-fat cream cheese.','FoodItems\STAR5.JPG',2);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chocolate Croissant',2.75,'Light, flakey, 100 percent butter croissant dough is wrapped around two chocolate batons to create a perfect balance thatll satisfy your sweet tooth.','FoodItems\STAR6.JPG',2);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Honey Walnut Shrimp',7.10,'Large tempura-battered shrimp, wok-tossed in a honey sauce and topped with glazed walnuts.','FoodItems\PAND1.JPG',3);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Orange Chicken',5.85,'Our signature dish. Crispy chicken wok-tossed in a sweet and spicy orange sauce.','FoodItems\PAND2.JPG',3);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Teriyaki',5.85,'Grilled chicken thigh hand-sliced to order and served with teriyaki sauce. Availability of Grilled Teriyaki Chicken may vary by location. View our Nutrition PDF for details.','FoodItems\PAND3.JPG',3);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Broccoli and Beef',5.85,'A classic favorite. Tender beef and fresh broccoli in a ginger soy sauce.','FoodItems\PAND4.JPG',3);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Honey Sesame Chicken',5.85,'Honey Sesame Chicken Breast is made with thin, crispy strips of all-white meat chicken tossed with fresh-cut string beans, crisp yellow bell peppers in a sizzling hot wok with our new delicious honey sauce and topped off with sesame seeds.','FoodItems\PAND5.JPG',3);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Kungpao Chicken',5.85,'A Szechwan-inspired dish with chicken, peanuts and vegetables, finished with chili peppers.','FoodItems\PAND6.JPG',3);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Sandwich',3.99,'A boneless breast of chicken seasoned to perfection, hand-breaded, pressure cooked in 100% refined peanut oil and served on a toasted, buttered bun with dill pickle chips.','FoodItems\CH1.PNG',4);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Spicy Chicken Sandwich',3.69,'A boneless breast of chicken seasoned with a spicy blend of peppers, hand-breaded, pressure cooked in 100% refined peanut oil and served on a toasted, buttered bun with dill pickle chips.','FoodItems\CH2.PNG',4);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chick-fil-A Nuggets',3.49,'Bite-sized pieces of tender all breast meat chicken, seasoned to perfection, hand-breaded and pressure cooked in 100% refined peanut oil.','FoodItems\CH3.PNG',4);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Waffle Potato Fries',1.85,'Waffle-shaped potatoes with the skin. Cooked in canola oil until crispy outside and tender inside.','FoodItems\CH4.PNG',4);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Brisket',6.85,'Say hello to bold hickory hardwood flavor. This brisket is given a Traeger Beef Rub coating then smoked low n’ slow to tender perfection.','FoodItems\OSO1.JPG',5);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Pulled Pork',6.25,'Our simple to make Pulled Pork recipe starts by smoking a bone-in pork butt or shoulder for up to five hours, before wrapping it up in foil, pouring in apple cider and cooking for another three to four hours.','FoodItems\OSO2.JPG',5);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Leg of Lamb',7.15,'Lamb seasoned with a flavorful marinade, Traegering this primo cut will ensure every bite melts in your mouth.','FoodItems\OSO3.JPG',5);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Not Your Mama Meatloaf',6.50,'Our meatloaf is even better than Mama’s family recipe, a rich bark and savory sage are what sets this meatloaf apart from traditional meatloaf.','FoodItems\OSO4.JPG',5);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Smoked Leg Quarter',6.00,'Smoked paprika chicken legs, finished with an herby, spicy chimichurri sauce is a great way to liven up your chicken routine with savory flavor.','FoodItems\OSO5.JPG',5);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Fried Steak Sandwich',6.99,'6 oz. Fried Beef Cutlet on Texas Toast w/White Gravy','FoodItems\DELI1.JPG',6);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Parmesan Burger',6.49,'Crispy Chicken Breast, Marinara Sauce, Melted Mozzarella Cheese','FoodItems\DELI2.JPG',6);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Burgers',4.99,'Crispy or Grilled Chicken Breast with Lettuce, Tomatoes, Pickles, Onions','FoodItems\DELI3.JPG',6);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Turkey Burger',5.99,'Grilled Turkey Patty in Aioli Sauce, Provolone Cheese, Lettuce, Tomato, Onions, Pickles.','FoodItems\DELI4.JPG',6);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Philly Cheese Steak',6.99,'Seasoned Sirloin Steak, Topped w/Sauteed Mushrooms, Grilled Onions, Provolone Cheese.','FoodItems\DELI5.JPG',6);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Fish Burger',7.49,'Fried or Grilled Fish Filet, Lettuce, Tomato Onions & Pickles','FoodItems\DELI6.JPG',6);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Cheese Pizza',4.79,'Your favorite cheese pizza made with classic marinara sauce topped with mozzarella cheese.','FoodItems\PIZZA1.PNG',7);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Pepperoni Pizza',4.79,'This gourmet pizza is ideal for easy late night delivery, complete with mozzarella cheese and pepperoni.','FoodItems\PIZZA2.JPG',7);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Meat Lovers Pizza',4.79,'Meat lovers pizza is the perfect game day pizza, packed with pepperoni, Italian sausage, ham, bacon, season pork','FoodItems\PIZZA3.PNG',7)
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Supreme',4.79,'Enjoy this freshly prepared pizza for family dinner or a group lunch, including pepperoni, seasoned pork, beef, mushrooms, green bell peppers and red onions.','FoodItems\PIZZA4.PNG',7);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Breadsticks',4.29,'Add to your pasta or pizza order for tasty crispy-on-the-outside, soft-on-the-inside bread sticks seasoned with garlic and parmesan. Comes with a cup of our delicious marinara sauce!','FoodItems\PIZZA5.PNG',7);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Cheese Sticks',5.29,'A side everyone can agree on for late night delivery—cheese sticks! They come sprinkled with flavorful Italian seasoning and a cup of our delicious marinara sauce.','FoodItems\PIZZA6.PNG',7);

INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Fried Steak Sandwich',6.99,'6 oz. Fried Beef Cutlet on Texas Toast w/White Gravy','FoodItems\DELI1.JPG',8);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Parmesan Burger',6.49,'Crispy Chicken Breast, Marinara Sauce, Melted Mozzarella Cheese','FoodItems\DELI2.JPG',8);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Chicken Burgers',4.99,'Crispy or Grilled Chicken Breast with Lettuce, Tomatoes, Pickles, Onions','FoodItems\DELI3.JPG',8);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Turkey Burger',5.99,'Grilled Turkey Patty in Aioli Sauce, Provolone Cheese, Lettuce, Tomato, Onions, Pickles.','FoodItems\DELI4.JPG',8);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Philly Cheese Steak',6.99,'Seasoned Sirloin Steak, Topped w/Sauteed Mushrooms, Grilled Onions, Provolone Cheese.','FoodItems\DELI5.JPG',8);
INSERT INTO FOOD(FOOD_NAME,FOOD_PRICE,FOOD_DESC,IMG_SRC,RES_ID) VALUES ('Fish Burger',7.49,'Fried or Grilled Fish Filet, Lettuce, Tomato Onions & Pickles','FoodItems\DELI6.JPG',8);

Select * from Users;
USE master;
