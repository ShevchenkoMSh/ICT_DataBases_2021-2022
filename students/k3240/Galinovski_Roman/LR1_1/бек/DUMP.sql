PGDMP         ;                z            VAR13    14.2    14.2 k    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49172    VAR13    DATABASE     d   CREATE DATABASE "VAR13" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "VAR13";
                postgres    false                        2615    49525    var13    SCHEMA        CREATE SCHEMA var13;
    DROP SCHEMA var13;
                postgres    false            �            1259    49173    Cook    TABLE     �   CREATE TABLE public."Cook" (
    id_cook integer NOT NULL,
    set_of_dishes character varying(50) NOT NULL,
    id_employer integer NOT NULL
);
    DROP TABLE public."Cook";
       public         heap    postgres    false            �            1259    57443    Cook_skills    TABLE     b   CREATE TABLE public."Cook_skills" (
    id_cook integer NOT NULL,
    id_dish integer NOT NULL
);
 !   DROP TABLE public."Cook_skills";
       public         heap    postgres    false            �            1259    49176    Dish_composition    TABLE     �   CREATE TABLE public."Dish_composition" (
    id_ingredient integer NOT NULL,
    id_dish integer NOT NULL,
    count_ingredient real NOT NULL
);
 &   DROP TABLE public."Dish_composition";
       public         heap    postgres    false            �            1259    49179    Dishes    TABLE     �   CREATE TABLE public."Dishes" (
    id_dish integer NOT NULL,
    id_order integer NOT NULL,
    volume real NOT NULL,
    weight real NOT NULL,
    dish_name character varying(20)
);
    DROP TABLE public."Dishes";
       public         heap    postgres    false            �            1259    49182    Employer    TABLE        CREATE TABLE public."Employer" (
    id_employer integer NOT NULL,
    id_position integer NOT NULL,
    family character varying(20) NOT NULL,
    name character varying(20) NOT NULL,
    patronomyc character varying(20) NOT NULL,
    employer_passport character varying(20) NOT NULL
);
    DROP TABLE public."Employer";
       public         heap    postgres    false            �            1259    49185 
   Ingredient    TABLE     ^  CREATE TABLE public."Ingredient" (
    id_ingredient integer NOT NULL,
    ingredient_price real NOT NULL,
    ingredient_type character varying(20) NOT NULL,
    ingredient_name character varying(20) NOT NULL,
    ingredient_volume real NOT NULL,
    count_on_warehouse real NOT NULL,
    ingredient_bbd date NOT NULL,
    calories real NOT NULL
);
     DROP TABLE public."Ingredient";
       public         heap    postgres    false            �            1259    57428    Order_composition    TABLE     �   CREATE TABLE public."Order_composition" (
    id_order integer NOT NULL,
    id_dish integer NOT NULL,
    count_dish integer NOT NULL,
    notion character varying(50)
);
 '   DROP TABLE public."Order_composition";
       public         heap    postgres    false            �            1259    49188    Orders    TABLE     �   CREATE TABLE public."Orders" (
    id_order integer NOT NULL,
    id_table integer NOT NULL,
    id_waiter integer NOT NULL,
    date_order date NOT NULL
);
    DROP TABLE public."Orders";
       public         heap    postgres    false            �            1259    49191    Platen    TABLE     �   CREATE TABLE public."Platen" (
    id_table integer NOT NULL,
    table_occupation character varying(20),
    table_capacity integer NOT NULL,
    place_of_table character varying(20)
);
    DROP TABLE public."Platen";
       public         heap    postgres    false            �            1259    49194    Position    TABLE     �   CREATE TABLE public."Position" (
    id_position integer NOT NULL,
    salary real NOT NULL,
    employer_category character varying(20) NOT NULL
);
    DROP TABLE public."Position";
       public         heap    postgres    false            �            1259    49197    Purchase    TABLE     �   CREATE TABLE public."Purchase" (
    id_purchase integer NOT NULL,
    purchase_date date,
    purchase_volume real NOT NULL,
    id_supplier integer NOT NULL
);
    DROP TABLE public."Purchase";
       public         heap    postgres    false            �            1259    49200    Purchase_composition    TABLE     �   CREATE TABLE public."Purchase_composition" (
    id_purchase_composition integer NOT NULL,
    id_purchase integer NOT NULL,
    cost real NOT NULL,
    right_stock real NOT NULL,
    id_ingredient integer NOT NULL
);
 *   DROP TABLE public."Purchase_composition";
       public         heap    postgres    false            �            1259    49203    Supplier    TABLE     �   CREATE TABLE public."Supplier" (
    id_supplier integer NOT NULL,
    supplier_name character varying(50),
    supplier_city character varying(50),
    supplier_country character varying(50)
);
    DROP TABLE public."Supplier";
       public         heap    postgres    false            �            1259    49206    Supplier_id_supplier_seq    SEQUENCE     �   ALTER TABLE public."Supplier" ALTER COLUMN id_supplier ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Supplier_id_supplier_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    49207    Table_id_table_seq    SEQUENCE     �   ALTER TABLE public."Platen" ALTER COLUMN id_table ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Table_id_table_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    49208    Waiter    TABLE     c   CREATE TABLE public."Waiter" (
    id_waiter integer NOT NULL,
    id_employer integer NOT NULL
);
    DROP TABLE public."Waiter";
       public         heap    postgres    false            �            1259    49211    Waiter_id_waiter_seq    SEQUENCE     �   ALTER TABLE public."Waiter" ALTER COLUMN id_waiter ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Waiter_id_waiter_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            {          0    49173    Cook 
   TABLE DATA           E   COPY public."Cook" (id_cook, set_of_dishes, id_employer) FROM stdin;
    public          postgres    false    210   ��       �          0    57443    Cook_skills 
   TABLE DATA           9   COPY public."Cook_skills" (id_cook, id_dish) FROM stdin;
    public          postgres    false    226   \�       |          0    49176    Dish_composition 
   TABLE DATA           V   COPY public."Dish_composition" (id_ingredient, id_dish, count_ingredient) FROM stdin;
    public          postgres    false    211   ��       }          0    49179    Dishes 
   TABLE DATA           P   COPY public."Dishes" (id_dish, id_order, volume, weight, dish_name) FROM stdin;
    public          postgres    false    212   '�       ~          0    49182    Employer 
   TABLE DATA           k   COPY public."Employer" (id_employer, id_position, family, name, patronomyc, employer_passport) FROM stdin;
    public          postgres    false    213   �                 0    49185 
   Ingredient 
   TABLE DATA           �   COPY public."Ingredient" (id_ingredient, ingredient_price, ingredient_type, ingredient_name, ingredient_volume, count_on_warehouse, ingredient_bbd, calories) FROM stdin;
    public          postgres    false    214   /�       �          0    57428    Order_composition 
   TABLE DATA           T   COPY public."Order_composition" (id_order, id_dish, count_dish, notion) FROM stdin;
    public          postgres    false    225   ��       �          0    49188    Orders 
   TABLE DATA           M   COPY public."Orders" (id_order, id_table, id_waiter, date_order) FROM stdin;
    public          postgres    false    215   ��       �          0    49191    Platen 
   TABLE DATA           ^   COPY public."Platen" (id_table, table_occupation, table_capacity, place_of_table) FROM stdin;
    public          postgres    false    216   -�       �          0    49194    Position 
   TABLE DATA           L   COPY public."Position" (id_position, salary, employer_category) FROM stdin;
    public          postgres    false    217   ��       �          0    49197    Purchase 
   TABLE DATA           ^   COPY public."Purchase" (id_purchase, purchase_date, purchase_volume, id_supplier) FROM stdin;
    public          postgres    false    218   �       �          0    49200    Purchase_composition 
   TABLE DATA           x   COPY public."Purchase_composition" (id_purchase_composition, id_purchase, cost, right_stock, id_ingredient) FROM stdin;
    public          postgres    false    219   e�       �          0    49203    Supplier 
   TABLE DATA           a   COPY public."Supplier" (id_supplier, supplier_name, supplier_city, supplier_country) FROM stdin;
    public          postgres    false    220   ٗ       �          0    49208    Waiter 
   TABLE DATA           :   COPY public."Waiter" (id_waiter, id_employer) FROM stdin;
    public          postgres    false    223   H�       �           0    0    Supplier_id_supplier_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Supplier_id_supplier_seq"', 1, false);
          public          postgres    false    221            �           0    0    Table_id_table_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Table_id_table_seq"', 1, false);
          public          postgres    false    222            �           0    0    Waiter_id_waiter_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Waiter_id_waiter_seq"', 1, false);
          public          postgres    false    224            �           2606    49212    Cook Cook_id_cook_check    CHECK CONSTRAINT     c   ALTER TABLE public."Cook"
    ADD CONSTRAINT "Cook_id_cook_check" CHECK ((id_cook > 0)) NOT VALID;
 @   ALTER TABLE public."Cook" DROP CONSTRAINT "Cook_id_cook_check";
       public          postgres    false    210    210            �           2606    49214    Cook Cook_id_cook_id_cook1_key 
   CONSTRAINT     r   ALTER TABLE ONLY public."Cook"
    ADD CONSTRAINT "Cook_id_cook_id_cook1_key" UNIQUE (id_cook) INCLUDE (id_cook);
 L   ALTER TABLE ONLY public."Cook" DROP CONSTRAINT "Cook_id_cook_id_cook1_key";
       public            postgres    false    210            �           2606    49216    Cook Cook_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."Cook"
    ADD CONSTRAINT "Cook_pkey" PRIMARY KEY (id_cook);
 <   ALTER TABLE ONLY public."Cook" DROP CONSTRAINT "Cook_pkey";
       public            postgres    false    210            �           2606    57447    Cook_skills Cook_skills_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Cook_skills"
    ADD CONSTRAINT "Cook_skills_pkey" PRIMARY KEY (id_cook, id_dish);
 J   ALTER TABLE ONLY public."Cook_skills" DROP CONSTRAINT "Cook_skills_pkey";
       public            postgres    false    226    226            �           2606    49217 8   Dish_composition Dish_composition_count_ingredient_check    CHECK CONSTRAINT     �   ALTER TABLE public."Dish_composition"
    ADD CONSTRAINT "Dish_composition_count_ingredient_check" CHECK ((count_ingredient > (0)::double precision)) NOT VALID;
 a   ALTER TABLE public."Dish_composition" DROP CONSTRAINT "Dish_composition_count_ingredient_check";
       public          postgres    false    211    211            �           2606    49218 /   Dish_composition Dish_composition_id_dish_check    CHECK CONSTRAINT     {   ALTER TABLE public."Dish_composition"
    ADD CONSTRAINT "Dish_composition_id_dish_check" CHECK ((id_dish > 0)) NOT VALID;
 X   ALTER TABLE public."Dish_composition" DROP CONSTRAINT "Dish_composition_id_dish_check";
       public          postgres    false    211    211            �           2606    49219 5   Dish_composition Dish_composition_id_ingredient_check    CHECK CONSTRAINT     �   ALTER TABLE public."Dish_composition"
    ADD CONSTRAINT "Dish_composition_id_ingredient_check" CHECK ((id_ingredient > 0)) NOT VALID;
 ^   ALTER TABLE public."Dish_composition" DROP CONSTRAINT "Dish_composition_id_ingredient_check";
       public          postgres    false    211    211            �           2606    49221 &   Dish_composition Dish_composition_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Dish_composition"
    ADD CONSTRAINT "Dish_composition_pkey" PRIMARY KEY (id_ingredient, id_dish);
 T   ALTER TABLE ONLY public."Dish_composition" DROP CONSTRAINT "Dish_composition_pkey";
       public            postgres    false    211    211            �           2606    49222    Dishes Dishes_id_dish_check    CHECK CONSTRAINT     g   ALTER TABLE public."Dishes"
    ADD CONSTRAINT "Dishes_id_dish_check" CHECK ((id_dish > 0)) NOT VALID;
 D   ALTER TABLE public."Dishes" DROP CONSTRAINT "Dishes_id_dish_check";
       public          postgres    false    212    212            �           2606    49224 "   Dishes Dishes_id_dish_id_dish1_key 
   CONSTRAINT     v   ALTER TABLE ONLY public."Dishes"
    ADD CONSTRAINT "Dishes_id_dish_id_dish1_key" UNIQUE (id_dish) INCLUDE (id_dish);
 P   ALTER TABLE ONLY public."Dishes" DROP CONSTRAINT "Dishes_id_dish_id_dish1_key";
       public            postgres    false    212            �           2606    49226    Dishes Dishes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Dishes"
    ADD CONSTRAINT "Dishes_pkey" PRIMARY KEY (id_dish);
 @   ALTER TABLE ONLY public."Dishes" DROP CONSTRAINT "Dishes_pkey";
       public            postgres    false    212            �           2606    49227    Dishes Dishes_volume_check    CHECK CONSTRAINT     y   ALTER TABLE public."Dishes"
    ADD CONSTRAINT "Dishes_volume_check" CHECK ((volume > (0)::double precision)) NOT VALID;
 C   ALTER TABLE public."Dishes" DROP CONSTRAINT "Dishes_volume_check";
       public          postgres    false    212    212            �           2606    49228    Dishes Dishes_weight_check    CHECK CONSTRAINT     y   ALTER TABLE public."Dishes"
    ADD CONSTRAINT "Dishes_weight_check" CHECK ((weight > (0)::double precision)) NOT VALID;
 C   ALTER TABLE public."Dishes" DROP CONSTRAINT "Dishes_weight_check";
       public          postgres    false    212    212            �           2606    49229 #   Employer Employer_id_employer_check    CHECK CONSTRAINT     s   ALTER TABLE public."Employer"
    ADD CONSTRAINT "Employer_id_employer_check" CHECK ((id_employer > 0)) NOT VALID;
 L   ALTER TABLE public."Employer" DROP CONSTRAINT "Employer_id_employer_check";
       public          postgres    false    213    213            �           2606    49231 .   Employer Employer_id_employer_id_employer1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT "Employer_id_employer_id_employer1_key" UNIQUE (id_employer) INCLUDE (id_employer);
 \   ALTER TABLE ONLY public."Employer" DROP CONSTRAINT "Employer_id_employer_id_employer1_key";
       public            postgres    false    213            �           2606    49233    Employer Employer_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT "Employer_pkey" PRIMARY KEY (id_employer);
 D   ALTER TABLE ONLY public."Employer" DROP CONSTRAINT "Employer_pkey";
       public            postgres    false    213            �           2606    49234 )   Ingredient Ingredient_id_ingredient_check    CHECK CONSTRAINT     {   ALTER TABLE public."Ingredient"
    ADD CONSTRAINT "Ingredient_id_ingredient_check" CHECK ((id_ingredient > 0)) NOT VALID;
 R   ALTER TABLE public."Ingredient" DROP CONSTRAINT "Ingredient_id_ingredient_check";
       public          postgres    false    214    214            �           2606    49236 6   Ingredient Ingredient_id_ingredient_id_ingredient1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Ingredient"
    ADD CONSTRAINT "Ingredient_id_ingredient_id_ingredient1_key" UNIQUE (id_ingredient) INCLUDE (id_ingredient);
 d   ALTER TABLE ONLY public."Ingredient" DROP CONSTRAINT "Ingredient_id_ingredient_id_ingredient1_key";
       public            postgres    false    214            �           2606    49238    Ingredient Ingredient_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Ingredient"
    ADD CONSTRAINT "Ingredient_pkey" PRIMARY KEY (id_ingredient);
 H   ALTER TABLE ONLY public."Ingredient" DROP CONSTRAINT "Ingredient_pkey";
       public            postgres    false    214            �           2606    57432 (   Order_composition Order_composition_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public."Order_composition"
    ADD CONSTRAINT "Order_composition_pkey" PRIMARY KEY (id_order, id_dish);
 V   ALTER TABLE ONLY public."Order_composition" DROP CONSTRAINT "Order_composition_pkey";
       public            postgres    false    225    225            �           2606    49239    Orders Orders_id_order_check    CHECK CONSTRAINT     i   ALTER TABLE public."Orders"
    ADD CONSTRAINT "Orders_id_order_check" CHECK ((id_order > 0)) NOT VALID;
 E   ALTER TABLE public."Orders" DROP CONSTRAINT "Orders_id_order_check";
       public          postgres    false    215    215            �           2606    49241 $   Orders Orders_id_order_id_order1_key 
   CONSTRAINT     z   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_id_order_id_order1_key" UNIQUE (id_order) INCLUDE (id_order);
 R   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_id_order_id_order1_key";
       public            postgres    false    215            �           2606    49243    Orders Orders_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (id_order);
 @   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    215            �           2606    49244    Platen Platen_id_table_check    CHECK CONSTRAINT     i   ALTER TABLE public."Platen"
    ADD CONSTRAINT "Platen_id_table_check" CHECK ((id_table > 0)) NOT VALID;
 E   ALTER TABLE public."Platen" DROP CONSTRAINT "Platen_id_table_check";
       public          postgres    false    216    216            �           2606    49246    Platen Platen_id_table_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Platen"
    ADD CONSTRAINT "Platen_id_table_key" UNIQUE (id_table);
 H   ALTER TABLE ONLY public."Platen" DROP CONSTRAINT "Platen_id_table_key";
       public            postgres    false    216            �           2606    49248    Platen Platen_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Platen"
    ADD CONSTRAINT "Platen_pkey" PRIMARY KEY (id_table);
 @   ALTER TABLE ONLY public."Platen" DROP CONSTRAINT "Platen_pkey";
       public            postgres    false    216            �           2606    49249 "   Platen Platen_table_capacity_check    CHECK CONSTRAINT     u   ALTER TABLE public."Platen"
    ADD CONSTRAINT "Platen_table_capacity_check" CHECK ((table_capacity > 0)) NOT VALID;
 K   ALTER TABLE public."Platen" DROP CONSTRAINT "Platen_table_capacity_check";
       public          postgres    false    216    216            �           2606    49250 #   Position Position_id_position_check    CHECK CONSTRAINT     s   ALTER TABLE public."Position"
    ADD CONSTRAINT "Position_id_position_check" CHECK ((id_position > 0)) NOT VALID;
 L   ALTER TABLE public."Position" DROP CONSTRAINT "Position_id_position_check";
       public          postgres    false    217    217            �           2606    49252 .   Position Position_id_position_id_position1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Position"
    ADD CONSTRAINT "Position_id_position_id_position1_key" UNIQUE (id_position) INCLUDE (id_position);
 \   ALTER TABLE ONLY public."Position" DROP CONSTRAINT "Position_id_position_id_position1_key";
       public            postgres    false    217            �           2606    49254    Position Position_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Position"
    ADD CONSTRAINT "Position_pkey" PRIMARY KEY (id_position);
 D   ALTER TABLE ONLY public."Position" DROP CONSTRAINT "Position_pkey";
       public            postgres    false    217            �           2606    49255    Position Position_salary_check    CHECK CONSTRAINT     }   ALTER TABLE public."Position"
    ADD CONSTRAINT "Position_salary_check" CHECK ((salary > (0)::double precision)) NOT VALID;
 G   ALTER TABLE public."Position" DROP CONSTRAINT "Position_salary_check";
       public          postgres    false    217    217            �           2606    49256 G   Purchase_composition Purchase_composition_id_purchase_composition_check    CHECK CONSTRAINT     �   ALTER TABLE public."Purchase_composition"
    ADD CONSTRAINT "Purchase_composition_id_purchase_composition_check" CHECK ((id_purchase_composition > 0)) NOT VALID;
 p   ALTER TABLE public."Purchase_composition" DROP CONSTRAINT "Purchase_composition_id_purchase_composition_check";
       public          postgres    false    219    219            �           2606    49258 T   Purchase_composition Purchase_composition_id_purchase_composition_id_purchase_co_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Purchase_composition"
    ADD CONSTRAINT "Purchase_composition_id_purchase_composition_id_purchase_co_key" UNIQUE (id_purchase_composition) INCLUDE (id_purchase_composition);
 �   ALTER TABLE ONLY public."Purchase_composition" DROP CONSTRAINT "Purchase_composition_id_purchase_composition_id_purchase_co_key";
       public            postgres    false    219            �           2606    49260 .   Purchase_composition Purchase_composition_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Purchase_composition"
    ADD CONSTRAINT "Purchase_composition_pkey" PRIMARY KEY (id_purchase_composition);
 \   ALTER TABLE ONLY public."Purchase_composition" DROP CONSTRAINT "Purchase_composition_pkey";
       public            postgres    false    219            �           2606    49261 #   Purchase Purchase_id_purchase_check    CHECK CONSTRAINT     s   ALTER TABLE public."Purchase"
    ADD CONSTRAINT "Purchase_id_purchase_check" CHECK ((id_purchase > 0)) NOT VALID;
 L   ALTER TABLE public."Purchase" DROP CONSTRAINT "Purchase_id_purchase_check";
       public          postgres    false    218    218            �           2606    49263 .   Purchase Purchase_id_purchase_id_purchase1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Purchase"
    ADD CONSTRAINT "Purchase_id_purchase_id_purchase1_key" UNIQUE (id_purchase) INCLUDE (id_purchase);
 \   ALTER TABLE ONLY public."Purchase" DROP CONSTRAINT "Purchase_id_purchase_id_purchase1_key";
       public            postgres    false    218            �           2606    49265    Purchase Purchase_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Purchase"
    ADD CONSTRAINT "Purchase_pkey" PRIMARY KEY (id_purchase);
 D   ALTER TABLE ONLY public."Purchase" DROP CONSTRAINT "Purchase_pkey";
       public            postgres    false    218            �           2606    49266 #   Supplier Supplier_id_supplier_check    CHECK CONSTRAINT     s   ALTER TABLE public."Supplier"
    ADD CONSTRAINT "Supplier_id_supplier_check" CHECK ((id_supplier > 0)) NOT VALID;
 L   ALTER TABLE public."Supplier" DROP CONSTRAINT "Supplier_id_supplier_check";
       public          postgres    false    220    220            �           2606    49268 !   Supplier Supplier_id_supplier_key 
   CONSTRAINT     g   ALTER TABLE ONLY public."Supplier"
    ADD CONSTRAINT "Supplier_id_supplier_key" UNIQUE (id_supplier);
 O   ALTER TABLE ONLY public."Supplier" DROP CONSTRAINT "Supplier_id_supplier_key";
       public            postgres    false    220            �           2606    49270    Supplier Supplier_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Supplier"
    ADD CONSTRAINT "Supplier_pkey" PRIMARY KEY (id_supplier);
 D   ALTER TABLE ONLY public."Supplier" DROP CONSTRAINT "Supplier_pkey";
       public            postgres    false    220            �           2606    49271    Waiter Waiter_id_waiter_check    CHECK CONSTRAINT     k   ALTER TABLE public."Waiter"
    ADD CONSTRAINT "Waiter_id_waiter_check" CHECK ((id_waiter > 0)) NOT VALID;
 F   ALTER TABLE public."Waiter" DROP CONSTRAINT "Waiter_id_waiter_check";
       public          postgres    false    223    223            �           2606    49273 &   Waiter Waiter_id_waiter_id_waiter1_key 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Waiter"
    ADD CONSTRAINT "Waiter_id_waiter_id_waiter1_key" UNIQUE (id_waiter) INCLUDE (id_waiter);
 T   ALTER TABLE ONLY public."Waiter" DROP CONSTRAINT "Waiter_id_waiter_id_waiter1_key";
       public            postgres    false    223            �           2606    49275    Waiter Waiter_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Waiter"
    ADD CONSTRAINT "Waiter_pkey" PRIMARY KEY (id_waiter);
 @   ALTER TABLE ONLY public."Waiter" DROP CONSTRAINT "Waiter_pkey";
       public            postgres    false    223            �           1259    57453    fki_Cook_id_cook_fkey    INDEX     T   CREATE INDEX "fki_Cook_id_cook_fkey" ON public."Cook_skills" USING btree (id_cook);
 +   DROP INDEX public."fki_Cook_id_cook_fkey";
       public            postgres    false    226            �           1259    49277    fki_Dishes_id_dish_fkey    INDEX     [   CREATE INDEX "fki_Dishes_id_dish_fkey" ON public."Dish_composition" USING btree (id_dish);
 -   DROP INDEX public."fki_Dishes_id_dish_fkey";
       public            postgres    false    211            �           1259    49278    fki_Employer_id_employer_fkey    INDEX     Y   CREATE INDEX "fki_Employer_id_employer_fkey" ON public."Cook" USING btree (id_employer);
 3   DROP INDEX public."fki_Employer_id_employer_fkey";
       public            postgres    false    210            �           1259    49279 !   fki_Ingredient_id_ingredient_fkey    INDEX     o   CREATE INDEX "fki_Ingredient_id_ingredient_fkey" ON public."Purchase_composition" USING btree (id_ingredient);
 7   DROP INDEX public."fki_Ingredient_id_ingredient_fkey";
       public            postgres    false    219            �           1259    49280    fki_Orders_id_order_fkey    INDEX     S   CREATE INDEX "fki_Orders_id_order_fkey" ON public."Dishes" USING btree (id_order);
 .   DROP INDEX public."fki_Orders_id_order_fkey";
       public            postgres    false    212            �           1259    49281    fki_Position_id_position_fkey    INDEX     ]   CREATE INDEX "fki_Position_id_position_fkey" ON public."Employer" USING btree (id_position);
 3   DROP INDEX public."fki_Position_id_position_fkey";
       public            postgres    false    213            �           1259    49282    fki_Purchase_id_purchase_fkey    INDEX     i   CREATE INDEX "fki_Purchase_id_purchase_fkey" ON public."Purchase_composition" USING btree (id_purchase);
 3   DROP INDEX public."fki_Purchase_id_purchase_fkey";
       public            postgres    false    219            �           1259    49283    fki_Purchase_id_supplier_fkey    INDEX     ]   CREATE INDEX "fki_Purchase_id_supplier_fkey" ON public."Purchase" USING btree (id_purchase);
 3   DROP INDEX public."fki_Purchase_id_supplier_fkey";
       public            postgres    false    218            �           1259    49284    fki_Table_id_table_fkey    INDEX     R   CREATE INDEX "fki_Table_id_table_fkey" ON public."Orders" USING btree (id_table);
 -   DROP INDEX public."fki_Table_id_table_fkey";
       public            postgres    false    215            �           1259    49285    fki_Waiter_id_waiter_fkey    INDEX     U   CREATE INDEX "fki_Waiter_id_waiter_fkey" ON public."Orders" USING btree (id_waiter);
 /   DROP INDEX public."fki_Waiter_id_waiter_fkey";
       public            postgres    false    215            �           2606    57448    Cook_skills Cook_id_cook_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cook_skills"
    ADD CONSTRAINT "Cook_id_cook_fkey" FOREIGN KEY (id_cook) REFERENCES public."Cook"(id_cook) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 K   ALTER TABLE ONLY public."Cook_skills" DROP CONSTRAINT "Cook_id_cook_fkey";
       public          postgres    false    210    226    3238            �           2606    49291 $   Dish_composition Dishes_id_dish_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Dish_composition"
    ADD CONSTRAINT "Dishes_id_dish_fkey" FOREIGN KEY (id_dish) REFERENCES public."Dishes"(id_dish) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 R   ALTER TABLE ONLY public."Dish_composition" DROP CONSTRAINT "Dishes_id_dish_fkey";
       public          postgres    false    211    212    3246            �           2606    57438 %   Order_composition Dishes_id_dish_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_composition"
    ADD CONSTRAINT "Dishes_id_dish_fkey" FOREIGN KEY (id_dish) REFERENCES public."Dishes"(id_dish) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY public."Order_composition" DROP CONSTRAINT "Dishes_id_dish_fkey";
       public          postgres    false    3246    212    225            �           2606    57454    Cook_skills Dishes_id_dish_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cook_skills"
    ADD CONSTRAINT "Dishes_id_dish_fkey" FOREIGN KEY (id_dish) REFERENCES public."Dishes"(id_dish) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 M   ALTER TABLE ONLY public."Cook_skills" DROP CONSTRAINT "Dishes_id_dish_fkey";
       public          postgres    false    212    3246    226            �           2606    49296    Cook Employer_id_employer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Cook"
    ADD CONSTRAINT "Employer_id_employer_fkey" FOREIGN KEY (id_employer) REFERENCES public."Employer"(id_employer) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 L   ALTER TABLE ONLY public."Cook" DROP CONSTRAINT "Employer_id_employer_fkey";
       public          postgres    false    213    210    3251            �           2606    49301     Waiter Employer_id_employer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Waiter"
    ADD CONSTRAINT "Employer_id_employer_fkey" FOREIGN KEY (id_employer) REFERENCES public."Employer"(id_employer) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 N   ALTER TABLE ONLY public."Waiter" DROP CONSTRAINT "Employer_id_employer_fkey";
       public          postgres    false    213    223    3251            �           2606    49306 .   Dish_composition Ingredient_id_ingredient_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Dish_composition"
    ADD CONSTRAINT "Ingredient_id_ingredient_fkey" FOREIGN KEY (id_ingredient) REFERENCES public."Ingredient"(id_ingredient) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public."Dish_composition" DROP CONSTRAINT "Ingredient_id_ingredient_fkey";
       public          postgres    false    211    214    3256            �           2606    49311 2   Purchase_composition Ingredient_id_ingredient_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Purchase_composition"
    ADD CONSTRAINT "Ingredient_id_ingredient_fkey" FOREIGN KEY (id_ingredient) REFERENCES public."Ingredient"(id_ingredient) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public."Purchase_composition" DROP CONSTRAINT "Ingredient_id_ingredient_fkey";
       public          postgres    false    214    219    3256            �           2606    49316    Dishes Orders_id_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Dishes"
    ADD CONSTRAINT "Orders_id_order_fkey" FOREIGN KEY (id_order) REFERENCES public."Orders"(id_order) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 I   ALTER TABLE ONLY public."Dishes" DROP CONSTRAINT "Orders_id_order_fkey";
       public          postgres    false    3260    212    215            �           2606    57433 &   Order_composition Orders_id_order_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order_composition"
    ADD CONSTRAINT "Orders_id_order_fkey" FOREIGN KEY (id_order) REFERENCES public."Orders"(id_order) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 T   ALTER TABLE ONLY public."Order_composition" DROP CONSTRAINT "Orders_id_order_fkey";
       public          postgres    false    225    215    3260            �           2606    49321    Orders Platen_id_table_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Platen_id_table_fkey" FOREIGN KEY (id_table) REFERENCES public."Platen"(id_table) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 I   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Platen_id_table_fkey";
       public          postgres    false    215    216    3266            �           2606    49326 "   Employer Position_id_position_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Employer"
    ADD CONSTRAINT "Position_id_position_fkey" FOREIGN KEY (id_position) REFERENCES public."Position"(id_position) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 P   ALTER TABLE ONLY public."Employer" DROP CONSTRAINT "Position_id_position_fkey";
       public          postgres    false    3270    217    213            �           2606    49331 .   Purchase_composition Purchase_id_purchase_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Purchase_composition"
    ADD CONSTRAINT "Purchase_id_purchase_fkey" FOREIGN KEY (id_purchase) REFERENCES public."Purchase"(id_purchase) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public."Purchase_composition" DROP CONSTRAINT "Purchase_id_purchase_fkey";
       public          postgres    false    219    3274    218            �           2606    49520 "   Purchase Purchase_id_supplier_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Purchase"
    ADD CONSTRAINT "Purchase_id_supplier_fkey" FOREIGN KEY (id_supplier) REFERENCES public."Supplier"(id_supplier) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 P   ALTER TABLE ONLY public."Purchase" DROP CONSTRAINT "Purchase_id_supplier_fkey";
       public          postgres    false    218    220    3285            �           2606    49341    Orders Waiter_id_waiter_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Orders"
    ADD CONSTRAINT "Waiter_id_waiter_fkey" FOREIGN KEY (id_waiter) REFERENCES public."Waiter"(id_waiter) ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;
 J   ALTER TABLE ONLY public."Orders" DROP CONSTRAINT "Waiter_id_waiter_fkey";
       public          postgres    false    215    3289    223            {   N   x�344441�,.I-OM�O���IM���p�(Cδ�L�TEJjqjQI�~Rb6L�1D�1'D�>D=�S�=... �#      �   <   x�Uͱ  ��pva�9@J����z�t�W.��L�S�r��TO-Q��w��p*�.R�      |   o   x�]��� �s3LE�/����(-1� O�䠪�z�S���{����e˅�pY�˙�m���.Xa;��W�p��4�|γ;���F�y����oP�@ߟ{J3ny:9Fb      }   �   x�E�Mn� ���Sp���0��=A]vC$[���q���2�*$�}��1&��xBM�F��ڎy��aw�	��7�>�m+���!|����9�{�	���R"�e�&>�O���5��Gm�&��CD0��羞G��Z�_� L�H}ѱOۗ�3�����±���Z�ִ.��V�q������X�C��%_���[]:;X�!8n��J�1|�a~ '�U�      ~     x�M��N�0����&mi������W71�2�L�Ԕ�OokA��z�_�1�8��	+��G3\Z��!g'*kPS)��I��<**�fBx�����UZOz���ȢQ	(짳}���sMnF��4�e��/*+P���[e�ɇ� �P�[z3��#�Wv+s�:��#~��gG��6^q ��	�uL�;����~��^w4�w��R�h�ͼX>�#5u�����Oh�oI�Oz�܏���AH���M�$?5fv�         �   x�u��� F��S�0-P�av����u{���XB��|�yB��u��Z�)��N.��k+qƊF��c�᲋�VJ�/x���m��C|uo�Gl�x��)4�ȭ�{쩌��H����gx�mƻI�Mc�$�M�Aښ�ԅ��e�)�j$Y��_��
�ݧ�Qf<�,�g���q�3�5��R��V      �   �   x�m�;� ��>A���]Ҹ@��P ����!�����c@D��D�@��).�D��0���<g�]���l��Ũ�6�
b��n��9�v�$��HvH���)�%z���)ԗ�����Y�h+QU���wn��ы6]m���ڈ�V���-�tD��o��e�^;      �   k   x�e��	�0��K��5iv��s4���G�ǩ Pq��`s�fE�8�TK��k��Ngs[n�y�p��m��^��v?�-�/���[�������ySM��*�)"/8}      �   j   x�344445�L,��/JM�4�L��,�2�q�����qfg�$g��A$L�&���))9�
E���I�AF�Rf)CT���g�$�p�%�Ӑ���qqq 9VAM      �   Z   x�5�A
� ����a"5�2m&BJ�~9�[~�O�>0�;H����b��xSl�8	})�'�R�Xٷ�w�����8;�rީ&θM�� e��      �   D   x�E��	�0C�o{�IΣޥ���C��:$	� 5��۴45l�L��x��^q����b�s��f�      �   d   x�u���@��R��K1�_��#&$��"��Cv��]#v� ՘�,`E�l`m^Q�;ؚc�&w�e�'؞����W��@f����I�AD��*!      �   _   x�3444�4��/�I����/N�/w�,��2�A�F���E�����%%�I�E�A��ř�ƜA��U@�3R�3�*9�˲��b���� 1�      �   &   x�344446���Ff\ ���3���!<�=... Ĳ�     