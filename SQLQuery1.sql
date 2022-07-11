use task2

create table Products (
	ID int primary key,
	NameProduct nvarchar(50),
	ID_Categorie int null)

create table Categories (
	ID_Categorie int primary key,
	NameCategorie nvarchar(50));
*
Insert into Products 
	Values (1, 'bread', 1),
		   (2, 'car', 2),
		   (3, 'potato', null );

Insert into Categories
	values (1, 'food'),
		   (2, 'transport');

select DISTINCT Products.NameProduct, Categories.NameCategorie
from Products left join Categories on Products.ID_Categorie = Categories.ID_Categorie 
