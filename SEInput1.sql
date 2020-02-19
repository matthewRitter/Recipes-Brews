INSERT INTO ingredient (Ingredient_Name) VALUES ('white bread');
INSERT INTO ingredient (Ingredient_Name) VALUES ('provolone cheese');
INSERT INTO ingredient (Ingredient_Name) VALUES ('american cheese');
INSERT INTO ingredient (Ingredient_Name) VALUES ('swiss cheese');
INSERT INTO ingredient (Ingredient_Name) VALUES ('turkey');
INSERT INTO ingredient (Ingredient_Name) VALUES ('mayonnaise');
INSERT INTO ingredient (Ingredient_Name) VALUES ('lettuce');
INSERT INTO ingredient (Ingredient_Name) VALUES ('tomato');
INSERT INTO ingredient (Ingredient_Name) VALUES ('bacon');
INSERT INTO ingredient (Ingredient_Name) VALUES ('onion');
INSERT INTO ingredient (Ingredient_Name) VALUES ('bread');
INSERT INTO ingredient (Ingredient_Name) VALUES ('ciabatta bread');
INSERT INTO ingredient (Ingredient_Name) VALUES ('wheat bread');
INSERT INTO ingredient (Ingredient_Name) VALUES ('multigrain bread');
INSERT INTO ingredient (Ingredient_Name) VALUES ('rye bread');
INSERT INTO ingredient (Ingredient_Name) VALUES ('ham');
INSERT INTO ingredient (Ingredient_Name) VALUES ('pickles');
INSERT INTO ingredient (Ingredient_Name) VALUES ('salami');
INSERT INTO ingredient (Ingredient_Name) VALUES ('chicken');
INSERT INTO ingredient (Ingredient_Name) VALUES ('pastrami');
INSERT INTO ingredient (Ingredient_Name) VALUES ('roast beef');
INSERT INTO ingredient (Ingredient_Name) VALUES ('pepperoni');
INSERT INTO ingredient (Ingredient_Name) VALUES ('pork loin');
INSERT INTO ingredient (Ingredient_Name) VALUES ('mustard');

INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11111,'Turkey Club Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11112,'BLT Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11113,'Italian Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11114,'Roast Beef Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11115,'Cuban Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11116,'Club Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11117,'Grilled Cheese Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11118,'Ham Sandwich',1);
INSERT INTO recipe (recipe_ID, recipe_name,Servings)
VALUES (11119,'Club Sandwich',1);

insert into dbuser values('Leo','password123','leoemail@email.com');


Insert into rates values('Leo',11112,5);
Insert into rates values('Leo',11113,4);
Insert into rates values('Leo',11115,4);
Insert into rates values('Leo',11117,4);
Insert into rates values('Leo',11118,5);


INSERT INTO contains VALUES ('turkey', 11111,1);
INSERT INTO contains VALUES ('american cheese', 11111,1);
INSERT INTO contains VALUES ('mayonnaise', 11111,1);
INSERT INTO contains VALUES ('lettuce', 11111,1);
INSERT INTO contains VALUES ('bacon', 11111,4);

INSERT INTO contains VALUES ('white bread', 11112,2);
INSERT INTO contains VALUES ('tomato', 11112,2);
INSERT INTO contains VALUES ('lettuce', 11112,2);
INSERT INTO contains VALUES ('bacon', 11112,4);


INSERT INTO contains VALUES ('tomato', 11113,6);
INSERT INTO contains VALUES ('provolone cheese', 11113,2);
INSERT INTO contains VALUES ('salami', 11113,1);
INSERT INTO contains VALUES ('lettuce', 11113,2);
INSERT INTO contains VALUES ('pepperoni', 11113,4);
INSERT INTO contains VALUES ('onion', 11113,1);

Insert into contains values('mustard',11115,1);
Insert into contains values('swiss cheese',11115,1);
Insert into contains values('ham',11115,1);
Insert into contains values('pickles',11115,1);
Insert into contains values('white bread',11115,1);
Insert into contains values('pork loin',11115,1);

Insert into contains values('american cheese',11117,1);
Insert into contains values('white bread',11117,1);


Insert into contains values('american cheese',11118,1);
Insert into contains values('white bread',11118,1);
Insert into contains values('ham',11118,1);
Insert into contains values('lettuce',11118,1);
Insert into contains values('tomato',11118,1);
Insert into contains values('mayonnaise',11118,1);

insert into origin values(11112,'America');
insert into origin values(11113,'Italy');
insert into origin values(11115,'Cuba');
insert into origin values(11117,'America');
insert into origin values(11118,'France');

Insert into owns values('Leo','tomato');
Insert into owns values('Leo', 'white bread');
Insert into owns values('Leo','bacon');
Insert into owns values('Leo','lettuce');
Insert into owns values('Leo','pork loin');
Insert into owns values('Leo', 'mustard');
Insert into owns values('Leo','ham');
Insert into owns values('Leo','pickles');
Insert into owns values('Leo','mayonnaise');
Insert into owns values('Leo','swiss cheese');
Insert into owns values('Leo','american cheese');

