create table budget(
    codename varchar(255) primary key,
    daily_limit integer
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

create table expense(
    id integer primary key,
    user integer,
    amount integer,
    created datetime,
    category_codename integer,
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

insert into category (codename, name, is_base_expense, aliases)
values
    ("products", "продукты", true, "еда"),
    ("alco", "алкоголь", true, "вино, алкоголь"),
    ("coffee", "кофе", true, ""),
    ("dinner", "обед", true, "столовая, ланч, бизнес-ланч, бизнес ланч"),
    ("cafe", "кафе", true, "ресторан, рест, мак, макдональдс, макдак, kfc, ilpatio, il patio"),
    ("transport", "общ. транспорт", false, "метро, автобус, metro"),
    ("taxi", "такси", false, "яндекс такси, yandex taxi"),
    ("phone", "телефон", false, "телефон, связь"),
    ("books", "книги", false, "литература, литра, лит-ра"),    
    ("subscriptions", "подписки", false, "подписка"),
    ("rest", "отдых", false, "поезд, самолет, самолёт, гостиница"),
    ("culture", "досуг", false, "концерт, выставка, кино, экскурсия"),
    ("kids", "дети", true, "школа, кружок, бассейн, репетитор"),
    ("auto", "авто", true, "бензин, автосервис, запчасти, мойка"),
    ("communal", "коммуналка", true, "газ, электричество, откачка, инет, inet, ростелеком, интернет"),
    ("house", "дом", false, "ремонт, стройка, мебель"),
    ("garden", "огород", false, "огород"),
    ("domestic", "бытовые", false, "быт, мыло, посуда"),
    ("other", "прочее", true, "");

insert into budget(codename, daily_limit) values ('base', 500);
