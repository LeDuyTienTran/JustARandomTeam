


CREATE TABLE Food (
    food_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    image_url NVARCHAR(255) NOT NULL
);



CREATE TABLE Beverages (
    beverage_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    image_url NVARCHAR(255) NOT NULL
);



CREATE TABLE Fuels (
    fuel_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    image_url NVARCHAR(255) NOT NULL
);






CREATE TABLE UTR_Locations (
    utr_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    
    image_url NVARCHAR(255) NOT NULL,
	location_url NVARCHAR(255) NOT NULL
);



INSERT INTO Food (name, cost, image_url) VALUES 
('Pizza', 12.99, 'https://t3.ftcdn.net/jpg/05/60/70/82/360_F_560708240_pMZPOuSfvblWGRoaiZFLT4wiFTzQPwQe.jpg'),
('Burger', 9.99, 'https://www.shutterstock.com/image-photo/burger-tomateoes-lettuce-pickles-on-600nw-2309539129.jpg'),
('Pasta', 11.49, 'https://foodhub.scene7.com/is/image/woolworthsltdprod/Easy-chicken-and-bacon-pasta:Square-1300x1300'),
('Salad', 7.99, 'https://d2gtpjxvvd720b.cloudfront.net/system/recipe/image/6285/retina_Hungry-Girl-Healthy-Summer-Chopped-Salad-Recipe-20230816-1928-1886-8633.jpg'),
('Sushi', 14.99, 'https://elavegan.com/wp-content/uploads/2021/06/vegan-sushi-on-a-white-plate-from-above-500x375.jpg'),
('Tacos', 8.99, 'https://assets.tmecosys.cn/image/upload/t_web767x639/img/recipe/ras/Assets/7f17c36b-38db-4d74-8ed4-d3983957a293/Derivates/ab88505f-8375-4990-82fa-864f6bda6ce1.jpg'),
('Sandwich', 6.49, 'https://www.southernliving.com/thmb/UW4kKKL-_M3WgP7pkL6Pb6lwcgM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ham_Sandwich_011-1-49227336bc074513aaf8fdbde440eafe.jpg'),
('Soup', 5.99, 'https://nomoneynotime.com.au/uploads/recipes/shutterstock_1807292581-1.jpg'),
('Steak', 19.99, 'https://img.taste.com.au/BI1PJu7n/taste/2016/11/paprika-beef-steaks-with-chimichurri-sauce-and-wedges-102931-1.jpeg'),
('Chicken Wings', 10.99, 'https://www.seriouseats.com/thmb/5WA__-XcKNzOKw2wjHFhTsdEpY4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/20231204-SEA-AirfryerBuffaloWings-Jen-Causey-hero-c9a6d2c83af844d89e1d3ec49b2f70b7.jpg');





INSERT INTO Beverages (name, cost, image_url) VALUES 
('Coke', 1.99, 'https://tkcdn.tekedia.com/wp-content/uploads/2022/05/23204855/coke-768x432.jpg'),
('Pepsi', 1.89, 'https://insidefmcg.com.au/wp-content/uploads/2020/11/Pepsi.png'),
('Orange Juice', 2.49, 'https://images-prod.healthline.com/hlcmsresource/images/AN_images/orange-juice-1296x728-feature.jpg'),
('Coffee', 2.99, 'https://coffeeconnection.com.au/cdn/shop/articles/Health-Benefits-Of-Cappuccino-Coffee.jpg?v=1667752802'),
('Tea', 1.99, 'https://imageio.forbes.com/specials-images/imageserve/5f6c061ca71799093f55fd02/0x0.jpg?format=jpg&crop=5023,3350,x0,y0,safe&height=600&width=1200&fit=bounds'),
('Water', 0.99, 'https://i.guim.co.uk/img/media/9ebfe6eb392f208e944a21d1903b698965d35527/0_0_7360_4417/master/7360.jpg?width=465&dpr=1&s=none'),
('Milk', 1.49, 'https://img.freepik.com/premium-vector/cartoon-milk-box-carton-varian-design-vector-illustration_773815-92.jpg'),
('Lemonade', 2.29, 'https://www.jocooks.com/wp-content/uploads/2023/05/lemonade-1-28.jpg'),
('Energy Drink', 3.49, 'https://www.mydrinkbeverages.com/wp-content/uploads/bfi_thumb/dreamstime_m_97745941-39x022mlw2ksem0gfw1ugp8bxroltel28zs1f9o3s3jcz1kao.jpg'),
('Smoothie', 3.99, 'https://www.dinneratthezoo.com/wp-content/uploads/2018/05/frozen-fruit-smoothie-3.jpg');




INSERT INTO Fuels (name, cost, image_url) VALUES 
('Petrol', 1.29, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSI5RnN-0zsZ4HalQwSf48wg59vHSTAAHtv7sNTudSjJiMteMSqkY8SPNJi5KxszDLtWKbxLTUF1mDjsDFMHaNIlDGIaNFq-I3TzDzRpsNqvBWZQDLyBJqDCErWBCtgZLkSgIoRHVbPReY&usqp=CAc'),
('Diesel', 1.39, 'https://img.freepik.com/premium-vector/fuel-diesel-icon-logo-vector-design-template_827767-83.jpg'),
('LPG', 0.99, 'https://www.goauto.com.au/images/939d0e8386e1d33a4cf213d331422a654aa98d5f.jpg'),
('E85', 1.49, 'https://upload.wikimedia.org/wikipedia/en/thumb/9/92/E85_fuel.svg/1200px-E85_fuel.svg.png'),
('CNG', 1.19, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvhL6URSXr9Q5CkLHI7EiBmij512BBzb7qcA&s'),
('Natural Gas', 1.09, 'https://www.shutterstock.com/image-vector/3d-vector-natural-gas-tank-600nw-2220406991.jpg'),
('Ethanol', 1.59, 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRdOaPrOnarUQ_kq4p41hmTqWeOhZ2JFptYayfTZIcDyORJvL0bGuE0vQfYGgV22bh6sGYKyUL3I-Pmf8gq8YhITtJXdoWqhcRclrWIyUc8QlYy-vxI_7BKNvlsj3QW6w5AQU2-mQ&usqp=CAc'),
('Methanol', 1.69, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN0Tu4LXQjL8Lakj4879L1MYLKzkUB50E5tg&s'),

('Biofuel', 1.79, 'https://green.org/wp-content/uploads/2024/01/OIP-2-136.jpg');





INSERT INTO UTR_Locations (name,  image_url, location_url) VALUES 
('UTR Port Augusta West',  'https://www.otr.com.au/wp-content/uploads/2023/12/Toilets-ATM-and-convenience-items-are-sold-in-store.jpg', 'https://www.google.com/maps/dir//-32.483738,137.759354/@-32.4836144,137.6766909,12z?entry=ttu&g_ep=EgoyMDI0MDkwMi4xIKXMDSoASAFQAw%3D%3D'),
('UTR Mawson Lakes',  'https://www.otr.com.au/wp-content/uploads/2023/11/OTR-Mawson-Lakes-is-open-every-day-and-night.jpg', 'https://maps.google.com/?daddr=-34.805984,138.615616'),
('UTR Dry Creek',  'https://www.otr.com.au/wp-content/uploads/2023/12/Get-your-weekend-entertainment-sorted-at-the-convenience-store.jpg','https://maps.google.com/?daddr=-34.819618,138.591965'),
('UTR Para Hills West', 'https://www.otr.com.au/wp-content/uploads/2023/12/Toilets-ATM-and-convenience-items-are-sold-in-store.jpg', 'https://maps.google.com/?daddr=-34.801128,138.638763'),
('UTR Pooraka',  'https://www.otr.com.au/wp-content/uploads/2023/12/Toilets-ATM-and-convenience-items-are-sold-in-store.jpg', 'https://maps.google.com/?daddr=-34.828224,138.631897'),
('UTR Parafield Gardens', 'https://www.otr.com.au/wp-content/uploads/2023/12/Cold-drinks-warm-food-and-friendly-smiles-all-at-OTR.jpg','https://maps.google.com/?daddr=-34.780735,138.608765'),
('UTR Salisbury Downs',  'https://www.otr.com.au/wp-content/uploads/2023/12/Toilets-ATM-and-convenience-items-are-sold-in-store.jpg', 'https://maps.google.com/?daddr=-34.779240,138.626953'),
('UTR Parafield', 'https://www.otr.com.au/wp-content/uploads/2023/12/Cold-drinks-warm-food-and-friendly-smiles-all-at-OTR.jpg','https://maps.google.com/?daddr=-34.791111,138.645920'),
('UTR Cavan', 'https://www.otr.com.au/wp-content/uploads/2023/12/Get-your-weekend-entertainment-sorted-at-the-convenience-store.jpg','https://maps.google.com/?daddr=-34.832848,138.598602'),
('UTR Para Hills',  'https://www.otr.com.au/wp-content/uploads/2023/12/Flowers-sandwiches-batteries-and-warm-food-all-in-OTR.jpg','https://maps.google.com/?daddr=-34.813988,138.643204');


