
CREATE TABLE dbuser (
    Username    VARCHAR(50) PRIMARY KEY,
    Pswd        VARCHAR(30) not null,
    Email       VARCHAR(50) not null
);

CREATE TABLE recipe (
    Recipe_ID       Int PRIMARY KEY,
    Recipe_Name     VARCHAR(50) not null,
    Total_Time      INT,
    Servings        INT not null,
    Average_Rating  INT,
    Parent_Recipe   INT,
    Instructions VARCHAR(4000),
    
    Foreign key (Parent_Recipe) references recipe(Recipe_ID)
);

CREATE TABLE Ingredient(
    Ingredient_Name VARCHAR(100) PRIMARY KEY,
    Cost_Per_Unit   INT
);

CREATE TABLE ing_type(
    Ing_Name        VARCHAR(100),
    Food_Category   VARCHAR(100),
    Primary key (Ing_Name, Food_Category),
    Foreign key (Ing_Name) references ingredient(Ingredient_Name)
);


CREATE TABLE origin(
    Rc_ID  INT,
    Country VARCHAR(30),
    Primary key (Rc_ID, Country),
    Foreign key (Rc_ID) references recipe(Recipe_ID)
);


CREATE TABLE rates(
    Usrnm   VARCHAR(50),
    Rcp_ID  INT,
    Rating  INT not null,
    Primary key (Usrnm, Rcp_ID),
    Foreign key (Usrnm) references dbuser(Username),
    Foreign key (Rcp_ID) references recipe(Recipe_ID)
);


CREATE TABLE contains (
    Ing_Nm      VARCHAR(100),
    RcpID       INT,
    Amount      INT not null,
    Primary key (Ing_Nm, RcpID),
    Foreign key (Ing_Nm) references ingredient(Ingredient_Name),
    Foreign key (RcpID) references recipe(Recipe_ID)
);

CREATE TABLE makes (
    Usr     VARCHAR(50),
    Rp_ID   INT,
    Primary key (Usr, Rp_ID),
    Foreign key (Usr) references dbuser(Username),
    Foreign key (Rp_ID) references recipe(Recipe_ID)
);

CREATE TABLE owns (
    Usrn    VARCHAR(50),
    Ingr    VARCHAR(100),
    Primary key (Usrn, Ingr),
    Foreign key (Usrn) references dbuser(Username),
    Foreign key (Ingr) references ingredient(Ingredient_Name)
);

