PGDMP      2            	    {            analysis    16.0    16.0     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    19312    analysis    DATABASE     �   CREATE DATABASE analysis WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_South Africa.1252';
    DROP DATABASE analysis;
                postgres    false            	           1259    19575    train_rides    TABLE     �   CREATE TABLE public.train_rides (
    trip_id bigint NOT NULL,
    segment character varying(50) NOT NULL,
    departure timestamp with time zone NOT NULL,
    arrival timestamp with time zone NOT NULL
);
    DROP TABLE public.train_rides;
       public         heap    postgres    false                       1259    19574    train_rides_trip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.train_rides_trip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.train_rides_trip_id_seq;
       public          postgres    false    265            C           0    0    train_rides_trip_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.train_rides_trip_id_seq OWNED BY public.train_rides.trip_id;
          public          postgres    false    264            �           2604    19578    train_rides trip_id    DEFAULT     z   ALTER TABLE ONLY public.train_rides ALTER COLUMN trip_id SET DEFAULT nextval('public.train_rides_trip_id_seq'::regclass);
 B   ALTER TABLE public.train_rides ALTER COLUMN trip_id DROP DEFAULT;
       public          postgres    false    264    265    265            <          0    19575    train_rides 
   TABLE DATA           K   COPY public.train_rides (trip_id, segment, departure, arrival) FROM stdin;
    public          postgres    false    265   U       D           0    0    train_rides_trip_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.train_rides_trip_id_seq', 6, true);
          public          postgres    false    264            �           2606    19580    train_rides train_rides_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.train_rides
    ADD CONSTRAINT train_rides_pkey PRIMARY KEY (trip_id);
 F   ALTER TABLE ONLY public.train_rides DROP CONSTRAINT train_rides_pkey;
       public            postgres    false    265            <   �   x�mб
�0��9}��E��$��&����$���(	���o�)����;.$֗kYT��'_�#�s�9)@m$��0րdX~�	�>�C}��k�ɐ;)�4��#E�v��7�r���&nZJM�(og�R"j;�X8�օ+�M�*FC��S�*`Z�����i�8h�O�ܗg)�Y�_�J@�G��lt�y�$�Qyf      