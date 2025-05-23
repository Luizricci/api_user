PGDMP      0    
            }            users    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16409    users    DATABASE     k   CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE users;
                     postgres    false            �            1259    16422    post    TABLE     �   CREATE TABLE public.post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    user_id integer,
    photo_post text
);
    DROP TABLE public.post;
       public         heap r       postgres    false            �            1259    16421    post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public               postgres    false    220                        0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public               postgres    false    219            �            1259    16411    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    photo text
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false            �            1259    16410    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public               postgres    false    218                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public               postgres    false    217            ]           2604    16425    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            \           2604    16414    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    16422    post 
   TABLE DATA           G   COPY public.post (id, title, content, user_id, photo_post) FROM stdin;
    public               postgres    false    220   �       �          0    16411    usuarios 
   TABLE DATA           D   COPY public.usuarios (id, name, email, password, photo) FROM stdin;
    public               postgres    false    218                     0    0    post_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.post_id_seq', 9, true);
          public               postgres    false    219                       0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 60, true);
          public               postgres    false    217            c           2606    16429    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public                 postgres    false    220            _           2606    16420    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public                 postgres    false    218            a           2606    16418    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    218            d           2606    16430    post post_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.post DROP CONSTRAINT post_user_id_fkey;
       public               postgres    false    218    4705    220            �      x������ � �      �   �  x��WK��6]לbN0-R�>Yş؉1��*����@;�4��*��*��s��$E;p���O��z|��������Fe��Ύ�F��p\����n����q����N���d��Y�ݨ��{<n�a���O��f��V���o��_�U�����?� ��tT��I|?�/�*�٤@M��U[�k�t�,��y�X7m�}���B�AA���˨0t����A�������5Jbl�v�[�㒵,r����m���3F
"�֊8�V{g��¨�,����&No����G¨�<��t{�*>e���7��u�L�gl�Q�s���'��)��Iu��JT0'��{��R&��c���yV0^rVU�3�J5|<u��ly���S� �%��N��M�d�Dj�kO~Iڶ��(��"6h�[EF��T�GN�j�(1����(@KN?����$�:��A�2�[�g?��Ft��� �2��3��>�m�t�#�˚NA;I��{=9�Ӫi��_�"X���lY���k|ǆ0b�X�9B�A�^��,#ކe<f�Ų��7�ٟW�W�H<��¿����b��.�l�����;��tW
<M�P0I&|ׯ��4a�[�<����\�zO~B\+��i���I5Q�{�;����l����q�3�f���#�剃2����ܭ���?#NQf���RT�IM�O�'�*�\D�����ޟgS�;�ST
���n�+[W�ǂV-fd����wL��E�\���S8��:�ǺƩ��L��H'�� ��`� ��V"�Z��Prx��S��g�؈O�d	��b<�3��L���>�����0b�2�Mg�$栝���G�,2EN1�?�>��b��� su֪�W����ώ��t�FfX��O6��tG=h	����rLu�E�m}u�/�2lE�W�}������C�*�k�~�����7|��     