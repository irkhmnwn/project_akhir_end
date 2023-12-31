PGDMP     3                    {         	   dbLibrary    15.2    15.2     #           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            $           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            %           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            &           1262    17298 	   dbLibrary    DATABASE     �   CREATE DATABASE "dbLibrary" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "dbLibrary";
                postgres    false            �            1259    17304    buku    TABLE        CREATE TABLE public.buku (
    id_buku character(8) NOT NULL,
    isbn character(13),
    judul_buku character varying(100) NOT NULL,
    penerbit character varying(25) NOT NULL,
    bahasa character varying(25) NOT NULL,
    tahun_terbit integer NOT NULL,
    jumlah integer NOT NULL
);
    DROP TABLE public.buku;
       public         heap    postgres    false            �            1259    17363    kat_buku    TABLE     `   CREATE TABLE public.kat_buku (
    id_buku character(8),
    nama_kat character varying(100)
);
    DROP TABLE public.kat_buku;
       public         heap    postgres    false            �            1259    17371    kat_skripsi    TABLE     f   CREATE TABLE public.kat_skripsi (
    id_skripsi character(8),
    nama_kat character varying(100)
);
    DROP TABLE public.kat_skripsi;
       public         heap    postgres    false            �            1259    17309 	   mahasiswa    TABLE     `  CREATE TABLE public.mahasiswa (
    id_mahasiswa character(8) NOT NULL,
    nama character varying(100) NOT NULL,
    nim character(15) NOT NULL,
    prodi character varying(50) NOT NULL,
    fakultas character varying(50) NOT NULL,
    semester integer NOT NULL,
    email character varying(50) NOT NULL,
    alamat character varying(100) NOT NULL
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    17333    pinjam_buku    TABLE     �   CREATE TABLE public.pinjam_buku (
    id_peminjaman character(8) NOT NULL,
    id_mahasiswa character(8) NOT NULL,
    id_buku character(8) NOT NULL,
    tanggal character varying(100) NOT NULL,
    status character varying(50) NOT NULL
);
    DROP TABLE public.pinjam_buku;
       public         heap    postgres    false            �            1259    17348    pinjam_skripsi    TABLE     �   CREATE TABLE public.pinjam_skripsi (
    id_pinjam character(8) NOT NULL,
    id_mahasiswa character(8) NOT NULL,
    id_skripsi character(8) NOT NULL,
    tanggal character varying(100) NOT NULL,
    status character varying(50) NOT NULL
);
 "   DROP TABLE public.pinjam_skripsi;
       public         heap    postgres    false            �            1259    17299    skripsi    TABLE       CREATE TABLE public.skripsi (
    id_skripsi character(8) NOT NULL,
    judul_skripsi character varying(100) NOT NULL,
    penulis character varying(100) NOT NULL,
    pembimbing character varying(100) NOT NULL,
    tahun integer NOT NULL,
    jumlah integer NOT NULL
);
    DROP TABLE public.skripsi;
       public         heap    postgres    false                      0    17304    buku 
   TABLE DATA           a   COPY public.buku (id_buku, isbn, judul_buku, penerbit, bahasa, tahun_terbit, jumlah) FROM stdin;
    public          postgres    false    215   S$                 0    17363    kat_buku 
   TABLE DATA           5   COPY public.kat_buku (id_buku, nama_kat) FROM stdin;
    public          postgres    false    219   �$                  0    17371    kat_skripsi 
   TABLE DATA           ;   COPY public.kat_skripsi (id_skripsi, nama_kat) FROM stdin;
    public          postgres    false    220   �$                 0    17309 	   mahasiswa 
   TABLE DATA           f   COPY public.mahasiswa (id_mahasiswa, nama, nim, prodi, fakultas, semester, email, alamat) FROM stdin;
    public          postgres    false    216   %                 0    17333    pinjam_buku 
   TABLE DATA           \   COPY public.pinjam_buku (id_peminjaman, id_mahasiswa, id_buku, tanggal, status) FROM stdin;
    public          postgres    false    217   {%                 0    17348    pinjam_skripsi 
   TABLE DATA           ^   COPY public.pinjam_skripsi (id_pinjam, id_mahasiswa, id_skripsi, tanggal, status) FROM stdin;
    public          postgres    false    218   �%                 0    17299    skripsi 
   TABLE DATA           `   COPY public.skripsi (id_skripsi, judul_skripsi, penulis, pembimbing, tahun, jumlah) FROM stdin;
    public          postgres    false    214    &                  2606    17308    buku buku_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id_buku);
 8   ALTER TABLE ONLY public.buku DROP CONSTRAINT buku_pkey;
       public            postgres    false    215            �           2606    17315    mahasiswa mahasiswa_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (id_mahasiswa);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    216            �           2606    17337    pinjam_buku pinjam_buku_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.pinjam_buku
    ADD CONSTRAINT pinjam_buku_pkey PRIMARY KEY (id_peminjaman);
 F   ALTER TABLE ONLY public.pinjam_buku DROP CONSTRAINT pinjam_buku_pkey;
       public            postgres    false    217            �           2606    17352 "   pinjam_skripsi pinjam_skripsi_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.pinjam_skripsi
    ADD CONSTRAINT pinjam_skripsi_pkey PRIMARY KEY (id_pinjam);
 L   ALTER TABLE ONLY public.pinjam_skripsi DROP CONSTRAINT pinjam_skripsi_pkey;
       public            postgres    false    218            }           2606    17303    skripsi skripsi_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.skripsi
    ADD CONSTRAINT skripsi_pkey PRIMARY KEY (id_skripsi);
 >   ALTER TABLE ONLY public.skripsi DROP CONSTRAINT skripsi_pkey;
       public            postgres    false    214            �           2606    17366    kat_buku kat_buku_id_buku_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kat_buku
    ADD CONSTRAINT kat_buku_id_buku_fkey FOREIGN KEY (id_buku) REFERENCES public.buku(id_buku);
 H   ALTER TABLE ONLY public.kat_buku DROP CONSTRAINT kat_buku_id_buku_fkey;
       public          postgres    false    215    219    3199            �           2606    17374 '   kat_skripsi kat_skripsi_id_skripsi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kat_skripsi
    ADD CONSTRAINT kat_skripsi_id_skripsi_fkey FOREIGN KEY (id_skripsi) REFERENCES public.skripsi(id_skripsi);
 Q   ALTER TABLE ONLY public.kat_skripsi DROP CONSTRAINT kat_skripsi_id_skripsi_fkey;
       public          postgres    false    214    220    3197            �           2606    17343 $   pinjam_buku pinjam_buku_id_buku_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pinjam_buku
    ADD CONSTRAINT pinjam_buku_id_buku_fkey FOREIGN KEY (id_buku) REFERENCES public.buku(id_buku);
 N   ALTER TABLE ONLY public.pinjam_buku DROP CONSTRAINT pinjam_buku_id_buku_fkey;
       public          postgres    false    3199    217    215            �           2606    17338 )   pinjam_buku pinjam_buku_id_mahasiswa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pinjam_buku
    ADD CONSTRAINT pinjam_buku_id_mahasiswa_fkey FOREIGN KEY (id_mahasiswa) REFERENCES public.mahasiswa(id_mahasiswa);
 S   ALTER TABLE ONLY public.pinjam_buku DROP CONSTRAINT pinjam_buku_id_mahasiswa_fkey;
       public          postgres    false    217    216    3201            �           2606    17353 /   pinjam_skripsi pinjam_skripsi_id_mahasiswa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pinjam_skripsi
    ADD CONSTRAINT pinjam_skripsi_id_mahasiswa_fkey FOREIGN KEY (id_mahasiswa) REFERENCES public.mahasiswa(id_mahasiswa);
 Y   ALTER TABLE ONLY public.pinjam_skripsi DROP CONSTRAINT pinjam_skripsi_id_mahasiswa_fkey;
       public          postgres    false    218    3201    216            �           2606    17358 -   pinjam_skripsi pinjam_skripsi_id_skripsi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pinjam_skripsi
    ADD CONSTRAINT pinjam_skripsi_id_skripsi_fkey FOREIGN KEY (id_skripsi) REFERENCES public.skripsi(id_skripsi);
 W   ALTER TABLE ONLY public.pinjam_skripsi DROP CONSTRAINT pinjam_skripsi_id_skripsi_fkey;
       public          postgres    false    218    214    3197               ~   x�s�640260�t�IL# ��I,�N,RH�I�K��t�K)JMT��,J,I���K��K-�L�4204�4�r�64b�	$ML��-��8�us���*�dV���3*6�i4�И��G�)W� ��1!            x������ � �             x������ � �         P   x���042260��,��H��K,O��4426153��T �`O���̼��lNc�L�B��������\N�����l�=... ۑ	         2   x�p242260����2���# �oh�o`��Y���������� "         3   x�642260����2���##c}C#}SN�̼̂��\�=... #�@         t   x��644260�H�K��,�L�S�H-O���,��H��K�]�S�8���9��!z������&�f �:�$r�����")7FVWZ���钙�������؀+F��� A=-L     