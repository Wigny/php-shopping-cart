-- auto-generated definition
create table usuarios (
  id bigserial not null constraint usuarios_pkey primary key,
  nome varchar(150) not null,
  email varchar(150) not null,
  telefone varchar(25) not null,
  created_at timestamp(0),
  updated_at timestamp(0)
);

-- auto-generated definition
create table produtos (
  id bigserial not null constraint produtos_pkey primary key,
  produto varchar(150) not null,
  valor double precision not null,
  imagem text default '/images/404.jpg' :: text not null,
  estoque integer default 1 not null,
  created_at timestamp(0),
  updated_at timestamp(0),
  descricao text
);

-- auto-generated definition
create table compras (
  id bigserial not null constraint compras_pkey primary key,
  usuario_id integer not null constraint compras_usuario_foreign references usuarios,
  produto_id integer not null constraint compras_produto_foreign references produtos,
  quantidade integer default 1 not null,
  data timestamp(0) default CURRENT_TIMESTAMP not null,
  finalizado boolean default false not null,
  created_at timestamp(0),
  updated_at timestamp(0)
);

INSERT INTO public.usuarios (id, nome, email, telefone, created_at, updated_at) VALUES (1, 'Wígny', 'wignyalmeida@gmail.com', '(69) 99330-4603', '2020-06-10 15:15:45', '2020-06-10 15:15:49');
INSERT INTO public.usuarios (id, nome, email, telefone, created_at, updated_at) VALUES (2, 'Caio', 'caio@email.com', '99', '2020-06-07 20:50:38', '2020-06-07 20:50:38');

INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (2, 'Pedro Lucas', 1500, 'https://avatars1.githubusercontent.com/u/48169636?s=460&u=461699e370ca12060d2bdf4aa82ca3a76bd31b9e&v=4', 4, null, '2020-06-17 03:47:05', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (5, 'Ivanderson Carlos', 350000, 'https://images.passeidireto.com/user_picture/3676094/picture/67c40040-9063-45e4-a97c-8e8056f17947/picture.large', 20, '2020-06-08 00:55:19', '2020-06-09 00:09:30', 'Ivanderson olhando para o cara que está olhando ele nesse exato momento.');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (6, 'Wigny Bora', 250000, 'https://avatars1.githubusercontent.com/u/23202981?s=460&u=c55a2f3db9e87b35faeefec24a219e206b09e0d6&v=4', 100, '2020-06-08 01:17:57', '2020-06-08 23:09:12', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (7, 'Caio Roberto', 300000, 'https://avatars3.githubusercontent.com/u/48602177?s=460&u=22ed323aac8e9dc23f2361b2a658a345df1dd645&v=4', 99, '2020-06-08 01:20:03', '2020-06-26 02:32:00', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (8, 'Pablo Almeida', 1000000, 'https://cdn.discordapp.com/attachments/525396315589574671/719407228515254332/bf56378b-abb5-4ab5-8566-e1f8cb307e4a.jpg', 100, '2020-06-08 04:27:44', '2020-06-08 04:27:44', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (9, 'Pedro do universo alternativo', 5000000, 'https://cdn.discordapp.com/attachments/673351563833638933/693246557968924742/LzvknP4R5GDqwHZXVhqjD7nRRWs2OO-QT9VJm1TK3RucBpyb-JsrHWM4LVLHrVvpl8DRjCMsfPSyPMm0vDRjpH_INzH_tTmizeLI.png', 100, '2020-06-08 04:29:18', '2020-06-08 04:30:02', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (10, 'Pablo do universo alternativo', 120, 'https://cdn.discordapp.com/attachments/673351563833638933/676572672360054829/magik.png', 100, '2020-06-08 04:38:43', '2020-06-08 04:38:43', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (11, 'Analista de sistemas antifascista', 271, 'https://cdn.discordapp.com/attachments/460258700217548811/719689956045357076/358b44e7-6ee0-4f87-a4a5-5edf237b939b.jpg', 100, '2020-06-08 23:14:04', '2020-06-08 23:28:30', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (12, 'Reinaldo nas estrelas', 27000, 'https://media.discordapp.net/attachments/460258700217548811/719692389874139186/unknown.png?width=1084&height=566', 100, '2020-06-08 23:24:26', '2020-06-08 23:24:26', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (13, 'Bigodudo guitarrista', 12500, 'https://media.discordapp.net/attachments/460258700217548811/719695066267910547/unknown.png', 100, '2020-06-08 23:31:54', '2020-06-08 23:31:54', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (14, 'Fala Negão, fala dinho', 25, 'https://cdn.discordapp.com/attachments/525396315589574671/719297345648328826/dd2c6973a754e6166c4b22fd52f0252565fc5cdaf38290e78d5570b3f0783c04_1.jpg.jpg', 100, '2020-06-08 23:33:08', '2020-06-08 23:33:53', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (15, 'Cabeça de pedra', 20000, 'https://media.discordapp.net/attachments/525396315589574671/712115787514511440/maxresdefault.png?width=1007&height=566', 100, '2020-06-08 23:34:00', '2020-06-08 23:34:00', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (16, 'Pedro no mine', 245000, 'https://cdn.discordapp.com/attachments/673351563833638933/705256117474820156/magik.png', 100, '2020-06-08 23:35:50', '2020-06-08 23:35:50', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (18, 'Coquinha gelada', 18, 'https://media.discordapp.net/attachments/423200170335928332/719697580396904508/unknown.png', 100, '2020-06-08 23:41:58', '2020-06-08 23:41:58', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (19, 'abraham lincoln', 999000, 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/da/daedf2484141b3a06167bb6a9de27ae09d3b4dff_full.jpg', 100, '2020-06-08 23:42:54', '2020-06-09 01:28:05', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (20, 'Wigny Boy', 3, 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/33/33acb2f40d139e533f6953b49c784a46f9a6665f_full.jpg', 100, '2020-06-08 23:43:57', '2020-06-09 00:34:19', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (23, 'Wígny dos teclados', 17050, 'https://media.discordapp.net/attachments/423200170335928332/719699260232171570/unknown.png', 100, '2020-06-08 23:48:40', '2020-06-08 23:58:38', 'Eu sou um lindo');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (26, 'PHP', 1, 'https://i.pinimg.com/474x/48/4c/28/484c282e4d465661df35ba491e9267c0.jpg', 100, '2020-06-08 23:59:37', '2020-06-09 00:49:14', 'Bixo doido PHP PHP PHP PHP PHP PHP PHP PHP');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (27, 'O LENDÁRIO CHEVETTE TUBARÃO COM MOTOR V8 DE 800 CAVALOS', 100000000000, 'https://mundofixa.com/wp-content/uploads/2016/12/ccc-1200x900.jpg', 100, '2020-06-09 00:03:54', '2020-06-09 00:03:54', 'O Chevette fez história no Brasil, porém não foi só por aqui que ele fez muito sucesso, a turma do canal Street Machine acabou de filmar um Chevette australiano Holden Gemini 1976, V8 com blower e 800cv.');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (28, 'Panorâmica bugada', 15700, 'https://media.discordapp.net/attachments/423200170335928332/719704707555393657/unknown.png', 100, '2020-06-09 00:10:10', '2020-06-09 00:10:10', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (29, 'Chico e Bento', 2540, 'https://media.discordapp.net/attachments/423200170335928332/719705071994273822/unknown.png', 100, '2020-06-09 00:11:32', '2020-06-09 00:11:32', 'brabo');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (30, 'Caiu na vila o peixe fuzila', 777, 'https://images-ext-2.discordapp.net/external/dRLwZox6HWJtpyOOilkC79HhsJK-CKSN5PgQfEHmXN8/https/lh3.googleusercontent.com/RlqjyH07qM0g5eYYO6tjyke042UCRuYQZ4FPAMck8fQyiZep6T_JAWkgZpDLE9tI1BejpX69QSZKTArMi2Uh80_RL2ag6IELybnYqQMBv5O0y_ir3OCq0E79SCcEctRQEUtQDv2CxA%3Dw600-h315-p-k', 100, '2020-06-09 00:12:18', '2020-06-09 00:12:18', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (31, 'Leãozinho', 10, 'https://images-ext-1.discordapp.net/external/fyUxofjH6ThK33QBzHt9aZMjG3--PJEMIBUE7ZLfi6s/https/lh3.googleusercontent.com/94KRgC84BXD-H01Kq3u_PNFMJyPdRCfmLJZOmvSOy4Roio5-FKETVyNH6LDibhw5wN2Yi75QBy5RprDkma1iwu6zMP2-tcXW2kXpjvqm7-AFVqmpMFJ5g80o3h81yGZghTPIIJq0FA%3Dw600-h315-p-k', 100, '2020-06-09 00:13:09', '2020-06-09 00:13:09', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (32, 'Ivan Gangster Bordin', 18000, 'https://images-ext-2.discordapp.net/external/TC2rscRKWkG4WqZfZHtwN8bTpWup6Q95xw-_weJDIG0/https/lh3.googleusercontent.com/5xsi9_xIrl-ygKiiwQ1n2_n8D3cm8-rpk5-YHNjb1MJ7c0MT28JTVKvLQ2gJaYDM7Nx1kINU9ckl6apQxvGwIxBBo12qykBcQwBD7hXCkuuudW9G-gSArEDwASUzn3U5POuY2MY5yg%3Dw600-h315-p-k', 100, '2020-06-09 00:14:22', '2020-06-09 00:14:22', 'Se me ver na rua vc se torna solteiro instantaneamente');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (33, 'cain', 15, 'https://images-ext-2.discordapp.net/external/d_UoI-mwzfr7IOZQYalJOmiynXtBsMJWvlUSsQAI814/https/lh3.googleusercontent.com/kecejJxGHL6m6gYRqG4Rjhjzl9xQFHv2BqCk8UNgQNZBpJduXsH4RET0Ogr6wPxAFANtKY_Gkg1-6QZH45bIelT8MWINCgR5DiC_Bob0s_YEFem8eUpvxynpTMhxkmoyAueKxTUzOA%3Dw600-h315-p-k', 100, '2020-06-09 00:15:16', '2020-06-09 00:21:46', null);
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (34, 'Brabo de barba', 1890, 'https://images-ext-2.discordapp.net/external/KxAKZIINeXmCupparmWC4b1f1fQ5jQ7vuM4uLaNhsZU/https/lh3.googleusercontent.com/vKp9OTYShef0J36mb-TB20z5oKMWkmo4IzspmMYBaNRkkZoWvr7tyYoxmw75ltmr_R-JCGuYv_4UWwZ0EhLUYmKBeZmBDhATKlbeuSErUX-0-CcLwPGwktonEF8E8g7gpX9HI8nPlw%3Dw600-h315-p-k', 100, '2020-06-09 00:16:00', '2020-06-09 00:22:06', 'Tranquilo');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (35, 'Adolescente depressivo', 250, 'https://lh3.googleusercontent.com/6W6oxQJgUWqdnWzvpFEaV_FAjBmEzKoeg3GbnwmAluj98Ngy976ELdiHMmZDagA0CXjoVZwx_2Eh9ZkgifDLcwVbdXpX4lpDhtNfcjINIH0rc5pZRi4hD1dKxRVzKxPMUZuwi4rq4A=w600-h315-p-k', 100, '2020-06-09 00:16:52', '2020-06-09 00:17:38', 'Jovem na bad após perder sua namorada');
INSERT INTO public.produtos (id, produto, valor, imagem, estoque, created_at, updated_at, descricao) VALUES (37, 'Pesdro', 2500, 'https://lh3.googleusercontent.com/2joAw5MYdOo9XS9n6LuEsO4qvCOrR8VNHYcJjHT-RC3q1-uB5WaGsnVHu4mzFG3JVjF5NQYKiNrYsvSv-_JDfv4qSnU6cLIEMnBYKWZOOwdtxDb98Zki3xzdXV2ZDf1tYHeQhtXd3w=w600-h315-p-k', 100, '2020-06-09 00:21:19', '2020-06-09 01:26:59', null);