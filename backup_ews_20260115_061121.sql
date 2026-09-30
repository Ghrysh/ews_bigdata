--
-- PostgreSQL database dump
--

\restrict NsDNwScRsu681NLrMUG3ntlbigoRHNVF2cf2YVGE0xnvXSM7v5tBI1ZarnwHsst

-- Dumped from database version 15.15 (Debian 15.15-1.pgdg13+1)
-- Dumped by pg_dump version 15.15 (Debian 15.15-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: analysis_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.analysis_history (
    id integer NOT NULL,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    sumber_case text,
    redaksi_input text,
    fase text,
    dimensi text,
    sub_dimensi text,
    indikator text,
    skor_keyakinan double precision,
    rekomendasi text
);


ALTER TABLE public.analysis_history OWNER TO postgres;

--
-- Name: analysis_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.analysis_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.analysis_history_id_seq OWNER TO postgres;

--
-- Name: analysis_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.analysis_history_id_seq OWNED BY public.analysis_history.id;


--
-- Name: matrix_indicators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matrix_indicators (
    id integer NOT NULL,
    dimensi text,
    sub_dimensi text,
    indikator text,
    fase_laten text,
    fase_persepsi text,
    fase_manifes text,
    fase_eskalasi text,
    fase_krisis text,
    deskripsi text
);


ALTER TABLE public.matrix_indicators OWNER TO postgres;

--
-- Name: matrix_indicators_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matrix_indicators_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matrix_indicators_id_seq OWNER TO postgres;

--
-- Name: matrix_indicators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matrix_indicators_id_seq OWNED BY public.matrix_indicators.id;


--
-- Name: social_media_reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_media_reports (
    id integer NOT NULL,
    source text,
    content text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.social_media_reports OWNER TO postgres;

--
-- Name: social_media_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_media_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_media_reports_id_seq OWNER TO postgres;

--
-- Name: social_media_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_media_reports_id_seq OWNED BY public.social_media_reports.id;


--
-- Name: analysis_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analysis_history ALTER COLUMN id SET DEFAULT nextval('public.analysis_history_id_seq'::regclass);


--
-- Name: matrix_indicators id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matrix_indicators ALTER COLUMN id SET DEFAULT nextval('public.matrix_indicators_id_seq'::regclass);


--
-- Name: social_media_reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_reports ALTER COLUMN id SET DEFAULT nextval('public.social_media_reports_id_seq'::regclass);


--
-- Data for Name: analysis_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.analysis_history (id, "timestamp", sumber_case, redaksi_input, fase, dimensi, sub_dimensi, indikator, skor_keyakinan, rekomendasi) FROM stdin;
1	2026-01-15 06:07:10.926161	Case 2: Berita Indonesia (Auto-Scraping)	MENGATASI POLEMIK PENDIRIAN RUMAH IBADAT - Setara Institute | For Democracy and Peace	Laten	Ekstern Agama	Intoleransi Antarumat Beragama	Ekslusivisme Beragama	0.23853102326393127	⚠️ **Tindakan Pre-emtif**: Lakukan pemetaan aktor kunci dan dialog persuasif tertutup.
2	2026-01-15 06:09:10.369122	Case 1: Input Manual (Laporan Internal)	terjadi aksi di majalengka menolak pembangunan gereja	Krisis	Agama dan Negara	Pemanfaatan Agama untuk Kepentingan Politik	Kebijakan Publik Bias Agama	0.19473032653331757	🚨 **Tindakan Darurat**: Penegakan hukum tegas, lokalisir area konflik, dan bantuan kemanusiaan.
3	2026-01-15 06:10:07.276817	Case 2: Berita Indonesia (Auto-Scraping)	Koordinasi Pusat dan Daerah Jadi Sorotan Terkait Izin Pendirian Rumah Ibadah - Tribunnews.com	Eskalasi	Ekstern Agama	Pelecehan Simbol-Simbol Keagamaan	Penyebaran Konten Penghinaan	0.1828395426273346	👮 **Tindakan Intervensi**: Koordinasi ketat dengan aparat keamanan dan cegah mobilisasi massa.
\.


--
-- Data for Name: matrix_indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matrix_indicators (id, dimensi, sub_dimensi, indikator, fase_laten, fase_persepsi, fase_manifes, fase_eskalasi, fase_krisis, deskripsi) FROM stdin;
1	Intern Agama	Perebutan atau Sengketa Tempat Ibadah	Konflik Kepemilikan	Perbedaan klaim atas tanah atau properti mulai muncul, tetapi belum menjadi masalah terbuka.	Pihak-pihak mulai menyadari adanya klaim yang bertentangan atas kepemilikan aset tertentu.	Salah satu pihak mulai mengajukan klaim secara formal, seperti laporan ke pihak berwenang.	Terjadi penolakan, protes, atau bahkan tindakan seperti pemasangan tanda kepemilikan secara paksa.	Konflik meluas dengan tindakan fisik atau hukum yang berujung pada konfrontasi langsung.	Perselisihan terkait pendirian, renovasi, atau penggunaan tempat ibadah tertentu.
2	Intern Agama	Perebutan atau Sengketa Tempat Ibadah	Konflik Perizinan	Ketidakpuasan terhadap prosedur perizinan yang tidak jelas atau tidak adil mulai dirasakan.	Pihak-pihak mulai menyadari bahwa ada perbedaan pandangan atau ketidaksetujuan terkait proses perizinan.	Aduan resmi diajukan atau keberatan disampaikan secara langsung kepada pihak yang berwenang.	Terjadi mobilisasi massa, petisi, atau protes yang lebih besar untuk menentang kebijakan perizinan.	Ketegangan meningkat, melibatkan tekanan politik, media, atau bahkan tindakan hukum yang besar.	Perselisihan terkait pendirian, renovasi, atau penggunaan tempat ibadah tertentu.
3	Intern Agama	Perebutan atau Sengketa Tempat Ibadah	Konflik Penggunaan	Ketidakpuasan terhadap penggunaan sumber daya, fasilitas, atau wilayah tertentu mulai muncul.	Masyarakat atau pihak terkait menyadari adanya ketimpangan atau pelanggaran dalam penggunaan sumber daya tersebut.	Tuntutan atau protes terhadap penggunaan sumber daya mulai diajukan.	Terjadi perlawanan aktif, seperti demonstrasi atau blokade akses.	Konflik menjadi terbuka dengan potensi benturan antara pihak yang bersengketa.	Perselisihan terkait pendirian, renovasi, atau penggunaan tempat ibadah tertentu.
4	Intern Agama	Penyelewengan Ajaran Agama (Aliran Menyimpang)	Doktrin Penyimpangan Ajaran	Kelompok masyarakat mulai menyadari adanya ajaran yang menyimpang dari norma agama yang diakui.	Diskusi atau opini publik muncul terkait ajaran yang dianggap menyimpang.	Protes dari kelompok agama atau lembaga resmi mulai diajukan untuk mengkritisi ajaran tersebut.	Konflik berkembang dengan pelaporan kepada otoritas, aksi massa, atau desakan pembubaran kelompok.	Tindakan langsung seperti razia, bentrok, atau intervensi hukum terjadi.	Tuduhan terhadap kelompok tertentu yang dianggap menyimpang dari ajaran agama mainstream.
5	Intern Agama	Penyelewengan Ajaran Agama (Aliran Menyimpang)	Klaim Pemimpin Agama/Orang Suci	Klaim seseorang sebagai pemimpin agama atau orang suci mulai dipertanyakan oleh kelompok tertentu.	Kekhawatiran atau keraguan terhadap keabsahan klaim tersebut menyebar di masyarakat.	Oposisi mulai menyatakan ketidaksetujuan secara terbuka melalui media atau forum publik.	Benturan pendapat meluas dengan aksi protes atau seruan pemboikotan.	Terjadi konfrontasi langsung antara pendukung dan penentang klaim tersebut.	Tuduhan terhadap kelompok tertentu yang dianggap menyimpang dari ajaran agama mainstream.
6	Intern Agama	Penyelewengan Ajaran Agama (Aliran Menyimpang)	Penafsiran Kitab Suci yang Salah	Penafsiran yang berbeda atau dianggap keliru mulai muncul tanpa tanggapan besar dari masyarakat.	Diskusi tentang dampak negatif dari penafsiran tersebut mulai muncul di kalangan masyarakat.	Ulama atau otoritas agama mengeluarkan pernyataan resmi untuk menentang penafsiran tersebut.	Debat publik, ceramah, atau aksi protes meluas terhadap penafsiran yang salah.	Bentrok antar kelompok terjadi atau langkah hukum diambil.	Tuduhan terhadap kelompok tertentu yang dianggap menyimpang dari ajaran agama mainstream.
7	Intern Agama	Penyelewengan Ajaran Agama (Aliran Menyimpang)	Eksploitasi Jamaah	Muncul desas-desus atau kecurigaan tentang adanya praktik eksploitasi jamaah oleh pihak tertentu.	Bukti awal eksploitasi mulai muncul dan mempengaruhi opini publik.	Jamaah atau pihak luar mulai mengajukan tuntutan atau melaporkan kasus eksploitasi.	Konflik meluas melalui demonstrasi, pemberitaan media, atau aksi hukum.	Tindakan hukum, perpecahan komunitas, atau aksi massa terjadi.	Tuduhan terhadap kelompok tertentu yang dianggap menyimpang dari ajaran agama mainstream.
8	Intern Agama	Penyelewengan Ajaran Agama (Aliran Menyimpang)	Praktek Ritual yang Berbeda	Perbedaan ritual mulai diperhatikan, tetapi belum dianggap sebagai ancaman.	Kelompok masyarakat mulai memperdebatkan kesesuaian ritual dengan ajaran utama.	Kritik terbuka atau pelarangan terhadap ritual mulai diajukan.	Protes meluas, dan masyarakat terbagi menjadi pihak pendukung dan penentang ritual.	Bentrokan langsung atau langkah hukum terhadap praktik ritual terjadi.	Tuduhan terhadap kelompok tertentu yang dianggap menyimpang dari ajaran agama mainstream.
9	Ekstern Agama	Intoleransi Antarumat Beragama	Diskriminasi	Perlakuan berbeda terhadap kelompok tertentu mulai muncul, baik dalam bentuk kebijakan atau praktik sosial, namun belum disadari sepenuhnya oleh pihak yang dirugikan.	Kelompok yang mengalami diskriminasi mulai menyadari adanya ketidakadilan dan merasa hak-haknya terabaikan.	Diskriminasi menjadi jelas melalui aksi atau keputusan yang terbuka, misalnya pelarangan akses atau perlakuan tidak setara di ruang publik.	Pihak yang merasa terdiskriminasi memprotes atau mengambil langkah hukum, diikuti reaksi balasan dari pihak pelaku diskriminasi.	Diskriminasi memicu aksi massa, demonstrasi besar, atau bahkan konflik fisik antara pihak yang terlibat.	Ketidakmampuan menerima keberadaan atau praktik agama lain, seperti larangan mendirikan tempat ibadah atau diskriminasi dalam kehidupan sosial.
10	Ekstern Agama	Intoleransi Antarumat Beragama	Kekerasan	Ketegangan antar kelompok meningkat, ditandai dengan ancaman, intimidasi, atau perilaku agresif yang tidak langsung.	Kekerasan fisik atau verbal pertama mulai terjadi, dan kelompok yang menjadi korban mulai merasakan ancaman nyata.	Kekerasan dilakukan secara terbuka dan berulang, melibatkan lebih banyak individu atau kelompok.	Kekerasan meluas menjadi konflik yang melibatkan kelompok besar, aksi balasan, atau intervensi pihak berwenang.	Konflik berubah menjadi perang terbuka atau kekerasan sistematis yang sulit dikendalikan.	Ketidakmampuan menerima keberadaan atau praktik agama lain, seperti larangan mendirikan tempat ibadah atau diskriminasi dalam kehidupan sosial.
11	Ekstern Agama	Intoleransi Antarumat Beragama	Pelarangan	Ide atau usulan pelarangan aktivitas, kelompok, atau simbol tertentu mulai dibahas di lingkup terbatas.	Kelompok yang terancam pelarangan mulai menyadari adanya upaya tersebut dan merasa tertekan.	Pelarangan diumumkan atau diberlakukan secara resmi, memicu ketidakpuasan di kalangan yang terdampak.	Protes, aksi hukum, atau kampanye menentang pelarangan dilakukan oleh kelompok yang dirugikan.	Konflik terbuka terjadi, seperti demonstrasi, bentrokan, atau resistensi hukum terhadap kebijakan tersebut.	Ketidakmampuan menerima keberadaan atau praktik agama lain, seperti larangan mendirikan tempat ibadah atau diskriminasi dalam kehidupan sosial.
25	Ekstern Agama	Diskriminasi atau Eksklusivitas Agama Tertentu	Ketidakmampuan untuk Dialog	Kelompok-kelompok agama mulai menghindari diskusi atau saling menutup diri terhadap perbedaan.	Muncul kesadaran tentang ketidakmampuan untuk berdialog akibat kesenjangan pemahaman atau prasangka.	Upaya dialog formal sering gagal karena ketegangan atau kurangnya kesepahaman.	Ketegangan meningkat dengan penyampaian pandangan eksklusif secara publik, memicu kemarahan kelompok lain.	Terjadi kebuntuan total atau konflik terbuka akibat ketidakmampuan untuk berdialog.	Pemberlakuan aturan sosial atau hukum yang lebih menguntungkan salah satu kelompok agama di atas yang lain.
12	Ekstern Agama	Intoleransi Antarumat Beragama	Fanatisme Berlebihan	Sikap fanatik mulai tumbuh di kalangan tertentu, ditandai dengan penolakan terhadap perbedaan atau pendapat lain.	Kelompok lain mulai merasa terancam oleh sikap fanatik, namun respons masih bersifat individual.	Fanatisme diekspresikan secara terbuka melalui aksi intoleransi, penghujatan, atau kampanye melawan kelompok lain.	Terjadi protes atau perlawanan terhadap kelompok fanatik, yang dapat memperburuk situasi.	Fanatisme berujung pada tindakan kekerasan, pengucilan sosial, atau konflik antar kelompok.	Ketidakmampuan menerima keberadaan atau praktik agama lain, seperti larangan mendirikan tempat ibadah atau diskriminasi dalam kehidupan sosial.
13	Ekstern Agama	Intoleransi Antarumat Beragama	Ekslusivisme Beragama	Sikap eksklusif dalam memahami dan mempraktikkan agama muncul, namun belum terlihat secara signifikan di ruang publik.	Kelompok yang merasa terpinggirkan mulai menyadari adanya pengucilan atau pembatasan sosial berbasis agama.	Eksklusivisme beragama terlihat secara nyata melalui pengucilan kelompok lain, baik dalam tindakan maupun kebijakan.	Kelompok yang dirugikan merespons melalui protes, perlawanan, atau tindakan hukum.	Konflik meningkat menjadi bentrokan sosial, segregasi komunitas, atau bahkan kekerasan berbasis agama.	Ketidakmampuan menerima keberadaan atau praktik agama lain, seperti larangan mendirikan tempat ibadah atau diskriminasi dalam kehidupan sosial.
14	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Pencemaran Nama Baik	Niat atau perasaan negatif terhadap individu atau kelompok.	Muncul persepsi atau spekulasi mengenai pencemaran nama baik.	Tindakan nyata seperti penyebaran fitnah atau kata-kata merusak reputasi.	Penyebaran semakin luas, pihak tercemar mulai merespons.	Perpecahan, permusuhan terbuka, perselisihan lebih besar.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
15	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Penistaan	Ketidaksetujuan atau ketidaksenangan tersembunyi.	Persepsi atau tafsiran mengenai penistaan mulai berkembang.	Tindakan nyata penistaan, baik melalui kata-kata, tulisan, atau tindakan.	Reaksi dari kelompok yang dihina, protes atau demonstrasi.	Konflik terbuka, permusuhan, dan perpecahan sosial.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
16	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Perbuatan Tidak Menyenangkan	Ketidaknyamanan tersembunyi, belum terlihat jelas.	Muncul perasaan bahwa tindakan atau perkataan menimbulkan ketidaknyamanan.	Tindakan atau kata-kata yang dianggap tidak menyenangkan mulai terjadi.	Ketidaknyamanan berkembang menjadi konflik kecil.	Ketidaknyamanan berkembang menjadi pertikaian atau permusuhan.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
17	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Provokasi	Potensi atau niat provokasi tersembunyi.	Persepsi bahwa seseorang mencoba memprovokasi atau membangkitkan reaksi negatif.	Tindakan provokasi nyata yang membangkitkan emosi atau konflik.	Provokasi memperburuk ketegangan, meningkatkan reaksi emosional.	Konflik terbuka, kekerasan, atau perpecahan sosial.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
18	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Menghasut	Ketidakpuasan atau perbedaan pandangan tersembunyi.	Pemahaman bahwa seseorang menghasut orang lain untuk bertindak dengan cara tertentu.	Tindakan nyata menghasut melalui pidato, media sosial, atau komunikasi lainnya.	Hasutan menyebabkan ketegangan sosial, kelompok terhasut mulai bertindak.	Pemberontakan, kerusuhan, atau perpecahan sosial yang lebih besar.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
19	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Menyebarkan Berita Bohong	Informasi palsu dalam bentuk rumor atau desas-desus yang belum jelas.	Muncul keyakinan bahwa informasi yang beredar tidak benar.	Berita bohong disebarluaskan melalui saluran media sosial atau lainnya.	Berita bohong memicu kebingungan atau ketegangan sosial.	Kebingungan atau permusuhan terbuka akibat berita bohong.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
20	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Bahasa Stereotip	Prasangka atau pemikiran yang tersembunyi mengenai suatu kelompok atau individu.	Bahasa stereotip mulai dipersepsikan sebagai bagian dari kebiasaan berbicara.	Penggunaan bahasa stereotip yang merendahkan berdasarkan ras, agama, atau etnis.	Stereotip menambah ketegangan, diskriminasi, memicu reaksi dari kelompok.	Konflik terbuka atau ketegangan antar kelompok yang lebih serius.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
21	Ekstern Agama	Penyebaran Ujaran Kebencian (Hate Speech)	Pernyataan Ambigu, Ironi, atau Sarkasme	Pernyataan ambigu atau ironi yang belum disadari sepenuhnya.	Pemahaman atau penafsiran bahwa pernyataan tersebut memiliki makna tersembunyi.	Pernyataan ambigu atau sarkastik yang digunakan secara terang-terangan.	Ketegangan meningkat akibat misinterpretasi atau reaksi terhadap sarkasme.	Konflik terbuka akibat pernyataan ambigu atau sarkastik.	Peredaran ujaran kebencian atau provokasi berbasis agama, baik melalui media sosial, ceramah, atau media massa.
22	Ekstern Agama	Diskriminasi atau Eksklusivitas Agama Tertentu	Penghakiman Terakhir	Pemahaman yang sempit tentang keyakinan akhirat memicu persepsi bahwa hanya satu kelompok tertentu yang akan "selamat."	Muncul diskusi atau kritik dari kelompok lain yang merasa terganggu dengan klaim tersebut.	Pernyataan tegas atau seruan dari tokoh agama untuk memperdebatkan konsep penghakiman ini.	Konflik berkembang dengan tindakan seperti penyebaran opini secara masif, termasuk ceramah atau media sosial.	Terjadi bentrok antar kelompok yang merasa keyakinannya diserang atau diklaim salah.	Pemberlakuan aturan sosial atau hukum yang lebih menguntungkan salah satu kelompok agama di atas yang lain.
23	Ekstern Agama	Diskriminasi atau Eksklusivitas Agama Tertentu	Penolakan Terhadap Agama Lain	Penolakan terhadap agama lain muncul dalam bentuk stereotip atau prasangka, tetapi belum diungkapkan secara terbuka.	Kelompok tertentu mulai menyadari adanya sikap intoleransi yang meluas.	Pernyataan diskriminatif atau pelarangan kegiatan keagamaan kelompok tertentu mulai disampaikan secara terbuka.	Protes atau tuntutan resmi dari pihak yang merasa dirugikan.	Konflik terjadi secara langsung, seperti pengusiran atau pelarangan ibadah kelompok agama lain.	Pemberlakuan aturan sosial atau hukum yang lebih menguntungkan salah satu kelompok agama di atas yang lain.
24	Ekstern Agama	Diskriminasi atau Eksklusivitas Agama Tertentu	Penghujatan dan Pengkafiran	Sikap menganggap pihak lain sesat atau kafir mulai muncul dalam percakapan internal kelompok.	Kelompok yang dianggap kafir mulai menyadari adanya tuduhan ini dan meresponsnya.	Pernyataan kafir secara eksplisit mulai disampaikan di forum publik atau media.	Terjadi bentrok opini yang melibatkan tokoh agama atau debat publik yang sengit.	Tindakan kekerasan verbal atau fisik, pemboikotan, atau bahkan konflik hukum terjadi.	Pemberlakuan aturan sosial atau hukum yang lebih menguntungkan salah satu kelompok agama di atas yang lain.
26	Ekstern Agama	Diskriminasi atau Eksklusivitas Agama Tertentu	Penghancuran Identitas Agama Lain	Pemikiran/ sikap meremehkan atau menyalahkan simbol-simbol agama lain mulai muncul secara tidak langsung.	Kelompok agama yang diserang mulai menyadari adanya ancaman terhadap identitas mereka.	Upaya sistematis untuk menghilangkan simbol, praktik, atau keberadaan agama tertentu mulai terjadi.	Aksi penghancuran tempat ibadah, larangan simbol agama, atau propaganda meluas.	Konflik fisik atau tuntutan hukum terjadi akibat penghancuran simbol atau tempat ibadah.	Pemberlakuan aturan sosial atau hukum yang lebih menguntungkan salah satu kelompok agama di atas yang lain.
27	Ekstern Agama	Pelecehan Simbol-Simbol Keagamaan	Penghinaan Verbal	Ucapan atau komentar merendahkan mulai muncul dalam lingkungan privat, tetapi belum menimbulkan reaksi publik.	Kelompok atau individu yang dihina mulai menyadari penghinaan tersebut, namun respons masih bersifat pasif.	Penghinaan verbal disampaikan secara terbuka di forum, media sosial, atau tempat umum, menimbulkan perasaan tersinggung.	Kelompok yang merasa dihina merespons dengan tuntutan, protes, atau tindakan balasan verbal.	Konflik berlanjut menjadi pertengkaran langsung, baik secara verbal maupun fisik.	Penghinaan terhadap simbol, praktik, atau kepercayaan agama tertentu yang dapat menyinggung Komunitas Terkait
28	Ekstern Agama	Pelecehan Simbol-Simbol Keagamaan	Pengrusakan Fisik	Ketidaksenangan terhadap kelompok tertentu mulai diekspresikan melalui ancaman tidak langsung atau perilaku agresif.	Kelompok yang dirugikan mulai menyadari adanya tindakan perusakan simbol atau aset yang dimiliki.	Pengrusakan fisik terhadap properti atau tempat ibadah dilakukan secara terbuka dan diketahui publik.	Respons balik dari pihak yang dirugikan, baik melalui protes, aduan hukum, atau tindakan serupa.	Konflik berubah menjadi bentrokan fisik atau tindakan balasan yang lebih besar.	Penghinaan terhadap simbol, praktik, atau kepercayaan agama tertentu yang dapat menyinggung Komunitas Terkait
29	Ekstern Agama	Pelecehan Simbol-Simbol Keagamaan	Penggunaan Simbol Secara Tidak Pantas	Simbol tertentu mulai digunakan dengan maksud yang tidak pantas atau tidak sesuai, tetapi hanya dalam lingkup terbatas.	Kelompok yang merasa simbolnya dihina mulai menyadari dan menunjukkan ketidakpuasan.	Penggunaan simbol secara tidak pantas menyebar luas melalui media atau aksi publik.	Tindakan protes, peringatan, atau tuntutan hukum dari pihak yang merasa dirugikan.	Terjadi bentrokan antara kelompok atau pihak terkait, baik verbal maupun fisik.	Penghinaan terhadap simbol, praktik, atau kepercayaan agama tertentu yang dapat menyinggung Komunitas Terkait
30	Ekstern Agama	Pelecehan Simbol-Simbol Keagamaan	Penyebaran Konten Penghinaan	Konten penghinaan dibuat dan disebarkan dalam lingkup terbatas, seperti grup privat atau komunitas kecil.	Kelompok yang dihina mulai mengetahui konten tersebut, tetapi respons masih bersifat individu.	Penyebaran konten meluas melalui media sosial atau media lainnya, menimbulkan respons kolektif.	Terjadi tuntutan hukum, aksi protes, atau perang opini di ruang publik.	Konflik meningkat menjadi aksi demonstrasi, kekerasan, atau tindakan hukum besar-besaran.	Penghinaan terhadap simbol, praktik, atau kepercayaan agama tertentu yang dapat menyinggung Komunitas Terkait
31	Agama dan Negara	Polarisasi Sosial Berdasarkan Agama	Pembagian Sosial Berdasarkan Agama	Masyarakat merasa Ketidaksetaraan sosial atau prasangka berbasis agama yang belum terbuka.	Mulai munculnya perbedaan perlakuan atau pandangan berdasarkan agama.	Kelompok-kelompok sosial terpisah berdasarkan agama, baik dalam kehidupan sehari-hari maupun kebijakan sosial.	Ketegangan sosial akibat perbedaan agama memicu perselisihan di masyarakat.	Ketegangan sosial meluas, membentuk perpecahan antara kelompok agama.	Fragmentasi masyarakat menjadi kelompok-kelompok yang tegas dan eksklusif berdasarkan agama atau aliran.
32	Agama dan Negara	Polarisasi Sosial Berdasarkan Agama	Pengaruh Politik Berdasarkan Agama	Masyarakat merasa Pengaruh agama belum terlihat jelas dalam politik, meskipun ada ketidaksepakatan.	Peran agama dalam politik mulai dirasakan, dengan adanya polarisasi berdasarkan agama.	Kelompok-kelompok berbasis agama mulai terlibat aktif dalam politik untuk membentuk kebijakan.	Pengaruh politik agama semakin kuat, dengan konflik ideologis antar kelompok agama.	Konflik politik terbuka yang mempengaruhi kebijakan dan stabilitas sosial.	Fragmentasi masyarakat menjadi kelompok-kelompok yang tegas dan eksklusif berdasarkan agama atau aliran.
33	Agama dan Negara	Polarisasi Sosial Berdasarkan Agama	Isu Gender	Ketidaksetaraan gender yang tersembunyi atau tidak diakui dalam masyarakat.	Kesadaran akan ketidakadilan gender mulai tumbuh, meskipun masih diabaikan.	Tindakan nyata terkait diskriminasi gender, seperti kebijakan atau praktek yang tidak setara.	Ketegangan meningkat dengan gerakan protes atau advokasi terkait kesetaraan gender.	Konflik terbuka terkait hak-hak gender dan kesetaraan, dengan ketegangan sosial yang besar.	Fragmentasi masyarakat menjadi kelompok-kelompok yang tegas dan eksklusif berdasarkan agama atau aliran.
34	Agama dan Negara	Pemanfaatan Agama untuk Kepentingan Politik	Mobilisasi Massa	masyarakat merasa Kelompok tertentu Mulai mengorganisasi massa secara diam-diam untuk mendukung agenda mereka, namun belum terlihat aktivitas nyata.	Pihak yang berseberangan mulai menyadari adanya mobilisasi massa, memunculkan kekhawatiran atau ketegangan.	Mobilisasi massa terjadi secara terbuka, seperti aksi demonstrasi atau unjuk rasa besar-besaran di ruang publik.	Mobilisasi melibatkan provokasi atau bentrokan dengan kelompok lain, memicu ketidakstabilan situasi.	Massa yang dimobilisasi menyebabkan kerusuhan, bentrokan fisik, atau tindakan anarkis yang sulit dikendalikan.	Penyalahgunaan isu agama untuk memobilisasi massa atau menjatuhkan lawan politik, terutama menjelang pemilu.
35	Agama dan Negara	Pemanfaatan Agama untuk Kepentingan Politik	Penyampaian Pesan Politik	Masyarakat merasa pesan politik mulai disusun dan disebarkan melalui saluran tidak langsung, seperti pertemuan internal atau media sosial terbatas.	Kelompok lain mulai merasa pesan politik tersebut mengancam kepentingan mereka, memicu respons kritis.	Pesan politik disampaikan secara terbuka melalui pidato, kampanye, atau media massa, memunculkan polarisasi di masyarakat.	Perseteruan muncul akibat pesan politik yang memicu reaksi keras, seperti debat publik, protes, atau propaganda tandingan.	Pesan politik berujung pada konflik terbuka, seperti demonstrasi besar, bentrokan ideologi, atau aksi anarkis.	Penyalahgunaan isu agama untuk memobilisasi massa atau menjatuhkan lawan politik, terutama menjelang pemilu.
36	Agama dan Negara	Pemanfaatan Agama untuk Kepentingan Politik	Legitimasi Kepemimpinan	Ada keraguan terhadap legitimasi pemimpin, tetapi masih terbatas pada diskusi tertutup atau kelompok kecil.	Kelompok tertentu mulai menyadari adanya upaya untuk mempertanyakan atau menggugat legitimasi kepemimpinan.	Kritik terhadap kepemimpinan disampaikan secara terbuka melalui media, pidato, atau aksi massa.	Konflik meningkat ketika kelompok pro dan kontra saling berhadapan, memunculkan protes atau aksi tandingan.	Legitimasi kepemimpinan dipertaruhkan dalam konflik besar, seperti mosi tidak percaya, kudeta, atau kerusuhan politik.	Penyalahgunaan isu agama untuk memobilisasi massa atau menjatuhkan lawan politik, terutama menjelang pemilu.
37	Agama dan Negara	Pemanfaatan Agama untuk Kepentingan Politik	Kebijakan Publik Bias Agama	Kebijakan yang condong pada satu agama mulai dirasakan di kalangan pembuat kebijakan, namun belum diimplementasikan.	Kelompok lain mulai menyadari adanya bias agama dalam kebijakan tersebut, memicu keresahan atau protes kecil.	Kebijakan bias agama diberlakukan secara terbuka, memunculkan reaksi dari kelompok yang merasa dirugikan.	Protes dan resistensi meningkat, baik melalui aksi massa, gugatan hukum, atau tekanan politik.	Kebijakan tersebut memicu konflik terbuka, seperti unjuk rasa besar-besaran, bentrokan antar kelompok agama, atau kerusuhan sosial.	Penyalahgunaan isu agama untuk memobilisasi massa atau menjatuhkan lawan politik, terutama menjelang pemilu.
\.


--
-- Data for Name: social_media_reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_media_reports (id, source, content, created_at) FROM stdin;
1	dki kemenag	Gini Ratio Jakarta Tertinggi di Indonesia: Tokoh Agama Jadi Kunci Cegah Konflik Sosial - dki kemenag	2026-01-15 06:05:34.720682
2	RRI.co.id	Penguatan Deteksi Dini Menyelesaikan Konflik Agama di NTT - RRI.co.id	2026-01-15 06:05:34.730156
3	detikNews	Di Kongres Astana, Anwar Abbas Sebut Kesenjangan Ekonomi Akar Konflik Agama - detikNews	2026-01-15 06:05:34.732909
4	SinPo.id	Kemenag Optimis Sistem Deteksi Dini Bisa Cegah Konflik Keagamaan di Indonesia - SinPo.id	2026-01-15 06:05:34.734552
5	republika.co.id	Deteksi Dini Bahaya Konflik Agama, Menag Luncurkan Aplikasi SiRukun - republika.co.id	2026-01-15 06:05:34.736206
6	NU Online	Media Punya Peran Strategis dalam Cegah Konflik Beragama di Indonesia - NU Online	2026-01-15 06:05:34.737951
7	MetroTVNews.com	Abrahamic Circles: Gaza Bukan Konflik Agama, tapi Krisis Kemanusiaan - MetroTVNews.com	2026-01-15 06:05:34.739381
8	Kementerian Agama	Kemenag Matangkan Sistem Deteksi Dini untuk Cegah Konflik Keagamaan - Kementerian Agama	2026-01-15 06:05:34.74086
9	Tempo.co	Ujaran Kebencian Berbasis Agama Paling Menyulut Konflik - Tempo.co	2026-01-15 06:05:34.742291
10	dw.com	Konflik Agama di Aceh, Gereja Dibakar - dw.com	2026-01-15 06:05:34.74455
11	jalandamai.org	Mewaspadai Manipulasi Agama dalam Konflik Global - jalandamai.org	2026-01-15 06:05:34.747746
12	RRI.co.id	MUI Sambas Soroti Konflik Agama dan Transmigrasi - RRI.co.id	2026-01-15 06:05:34.749137
13	Kantor Kementerian Agama Kota Yogyakarta	Penyuluh Agama KUA Umbulharjo Ikuti SPARK 2025, Perkuat Peran dalam Resolusi Konflik Keagamaan - Kantor Kementerian Agama Kota Yogyakarta	2026-01-15 06:05:34.75061
14	Direktorat Jenderal Bimbingan Masyarakat Kristen	Permasalahan Ibadah di Bekasi "Upaya Damai Jaga Toleransi di Kota Paling Toleran” - Direktorat Jenderal Bimbingan Masyarakat Kristen	2026-01-15 06:05:34.751892
15	Kompas.id	Memori Konflik Agama dan Politik Identitas - Kompas.id	2026-01-15 06:05:34.753137
16	Direktorat Jenderal Bimbingan Masyarakat Buddha	Bimas Buddha dan Majelis Keagamaan Buddha Indonesia Satukan Langkah dalam Pemetaan Potensi Konflik Keagamaan - Direktorat Jenderal Bimbingan Masyarakat Buddha	2026-01-15 06:05:34.754458
17	CNBC Indonesia	India Chaos Dipicu Konflik Agama, Warga Muslim Ketakutan - CNBC Indonesia	2026-01-15 06:05:34.755673
18	NU Online	Penemuan Enam Jenis Konflik Keagamaan di Indonesia - NU Online	2026-01-15 06:05:34.75708
19	Kanwil Kementerian Agama Provinsi Nusa Tenggara Timur	2023 Tahun Kerukunan, Ingat Deteksi Dini Konflik Kerukunan Umat Bergama - Kanwil Kementerian Agama Provinsi Nusa Tenggara Timur	2026-01-15 06:05:34.758348
20	Radar Tulungagung	Drama Malaysia Ini Ungkap Realita Konflik Agama dan Adat, Berikut Fakta dari Series Bidaah! - Radar Tulungagung - Radar Tulungagung	2026-01-15 06:05:34.759595
21	Indonesia Satu	Akademisi UGM: Konflik Agama Biasanya Terjadi Karena Relasi Mayoritas-Minoritas - Indonesia Satu	2026-01-15 06:05:34.761007
22	BBC	Kebebasan beragama dan berkeyakinan di Indonesia pada 2023: Pendirian rumah ibadah masih sulit - BBC	2026-01-15 06:05:34.764198
23	KBR.ID	KWI Minta Pemerintah Bijak Selesaikan Konflik Antarumat Beragama - KBR.ID	2026-01-15 06:05:34.765699
24	KBR.ID	Rentetan Konflik Rumah Ibadah Tahun 2022 - KBR.ID	2026-01-15 06:05:34.76754
25	BBC	Konflik agama di Afrika Tengah 'tewaskan 75' - BBC	2026-01-15 06:05:34.769059
26	Dinkominfo Demak	Partisipasi Masyarakat Dan Peran Ulama Mampu Cegah Konflik Sosial Jelang Pilkada - Dinkominfo Demak	2026-01-15 06:05:34.770654
27	Kompas.id	Memediasi Konflik Rumah Ibadah - Kompas.id	2026-01-15 06:05:34.77358
28	ANTARA News	BRIN nilai konsep moderasi beragama mampu meredam konflik agama RI - ANTARA News	2026-01-15 06:05:34.775299
29	NU Online Lampung	Perlu Deteksi Dini Konflik Keagamaan di Indonesia - NU Online Lampung	2026-01-15 06:05:34.776667
30	suara indonesia	Deteksi Dini Konflik Keagamaan, Kemenag Jombang Libatkan Tokoh Agama dari 21 Kecamatan - suara indonesia	2026-01-15 06:05:34.777943
31	Republika.id	Syafruddin: Tidak Ada Konflik Agama | - Republika.id	2026-01-15 06:05:34.77962
32	CNN Indonesia	Menag Yaqut: Dunia Tak Baik-baik Saja, Konflik Agama Sering Terjadi - CNN Indonesia	2026-01-15 06:05:34.780995
33	Suara Merdeka Kedu	Konflik Agama Masih Ancam Kohesi Sosial di Indonesia - Suara Merdeka Kedu - Suara Merdeka Kedu	2026-01-15 06:05:34.782312
34	NU Online	Kemenag: Media Perlu Bijak dan Kritis saat Liput Konflik Keagamaan - NU Online	2026-01-15 06:05:34.783617
35	BBC	Papua: Konflik bersenjata di Paniai, ribuan warga sipil mengungsi - ‘‘Roh Kudus, berkati kami agar bisa selamat’ - BBC	2026-01-15 06:05:34.785245
36	BBC	Bentrok antar umat beragama di India, puluhan orang meninggal dunia - BBC	2026-01-15 06:05:34.786696
37	Kompas.com	PBNU Beberkan Kenapa Konflik Agama di Indonesia Tak Pernah Selesai: Dikirim Dunia - Kompas.com	2026-01-15 06:05:34.788284
38	NU Online	Konflik Agama di Indonesia Lebih Kecil Dibanding Negara Lain - NU Online	2026-01-15 06:05:34.789689
39	ANTARA News	Ormas Islam minta Indonesia berperan selesaikan konflik agama di India - ANTARA News	2026-01-15 06:05:34.791049
40	Kompasiana.com	Upaya Penyelesaian Konflik Horizontal Antar Agama Mayoritas dan Minoritas di Indonesia - Kompasiana.com - Kompasiana.com	2026-01-15 06:05:34.792486
41	uin-malang.ac.id	Bukan Konflik Antar Agama Melainkan Saling Berkompetisi - uin-malang.ac.id	2026-01-15 06:05:34.794009
42	NU Online	Di Hadapan Grand Syekh Al-Azhar, Menag Paparkan Solusi Cegah Konflik Antar Negara dan Agama - NU Online	2026-01-15 06:05:34.795425
43	Voice of America Indonesia	Dubes Palestina: Konflik dengan Israel Persoalan Politik, Bukan Agama - Voice of America Indonesia	2026-01-15 06:05:34.79679
44	ANTARA News	Politikus sebut konflik di masyarakat terjadi bukan karena agama - ANTARA News	2026-01-15 06:05:34.798218
45	Setara Institute | For Democracy and Peace	Dari Konflik Ambon hingga Pengusiran Ahmadiyah - Setara Institute | For Democracy and Peace	2026-01-15 06:05:34.799557
46	Islami[dot]co	Konflik Muslim-Hindu di India adalah Buah dari Mayoritarianisme yang Melembaga, Alih-alih Agama - Islami[dot]co	2026-01-15 06:05:34.800865
47	Aktual.com	Ormas Islam Minta Indonesia Berperan Selesaikan Konflik Agama Di India - Aktual.com	2026-01-15 06:05:34.803365
48	Kompas.id	25 Tahun Konflik Maluku, Perdamaian Terus Dirawat - Kompas.id	2026-01-15 06:05:34.805169
49	republika.co.id	Konflik di Indonesia Bagian Timur tak Terkait Isu Beda Agama - republika.co.id	2026-01-15 06:05:34.806725
50	BBC	Kasus pembubaran ibadah mahasiswa Katolik: Ketua RT dan tiga warga jadi tersangka - BBC	2026-01-15 06:05:34.8081
51	BBC	'Polisi pahlawan' di India yang mengadang amukan massa dalam konflik agama demi selamatkan nyawa - BBC	2026-01-15 06:05:34.809533
52	NU Online	Membangun Sistem Peringatan dan Respons Dini Konflik Keagamaan di Indonesia - NU Online	2026-01-15 06:05:34.810957
53	netralnews.com	BRIN: Moderasi Agama Mampu Redam Konflik Agama di Indonesia - netralnews.com	2026-01-15 06:05:34.812561
54	BBC	Demo Gaza, isu politik atau agama? - BBC	2026-01-15 06:05:34.814011
55	Islami[dot]co	Konflik Agama Terus Terjadi, Kemenag-Unicef Gelar Dialog Nasional Bersama Sejumlah Pakar Media di Islami Fest 2023 - Islami[dot]co	2026-01-15 06:05:34.815481
56	NU Online	Cegah Konflik Sosial Keagamaan, Kemenag Siapkan Program Strategis - NU Online	2026-01-15 06:05:34.816901
57	Kompas.id	Konflik Intrareligius dan Wajah Baru Arab Saudi - Kompas.id	2026-01-15 06:05:34.818458
59	ANTARA News	Konflik horizontal di Surabaya ditekan dengan toleransi antaragama - ANTARA News	2026-01-15 06:05:34.822723
61	Intisari Online	Berbagai Konflik Bernuansa Suku dan Agama yang Pernah Terjadi di Indonesia - Intisari Online	2026-01-15 06:05:34.826266
63	PWMU.CO	Konflik Agama dan Sains saat Ini - PWMU.CO	2026-01-15 06:05:34.829252
65	detikcom	Walkot Bobby Klaim Belum Ada Konflik Agama di Medan - detikcom	2026-01-15 06:05:34.832504
67	SEJUK	Memberitakan Konflik Etnis dan Agama di Kalimantan Barat: Undangan Workshop & Story Grant Jurnalisme Keberagaman - SEJUK	2026-01-15 06:05:34.835676
69	PWM Jateng	Menjaga Keberagaman: Resolusi Konflik Antar Umat Beragama - PWM Jateng	2026-01-15 06:05:34.859812
71	Setara Institute | For Democracy and Peace	Lampu Kuning Meningkatnya Radikalisme di Sekolah-Sekolah Indonesia - Setara Institute | For Democracy and Peace	2026-01-15 06:05:34.86559
73	dw.com	Konflik Agama: Intoleransi atau Perebutan Lapak? - dw.com	2026-01-15 06:05:34.869041
75	news.indozone.id	Indahnya Toleransi Agama dan Sikap untuk Selalu Menghindari Konflik Antar Umat - news.indozone.id	2026-01-15 06:05:34.872311
77	Kompas.tv	Guru Besar Fisip UI: Penjajajahan Israel ke Palestina Bukan Konflik Agama - Kompas.tv	2026-01-15 06:05:34.875238
79	Sinar Indonesia	Cegah Sengketa, Nusron Wahid Percepat Sertifikasi Aset Rumah Ibadah - Sinar Indonesia	2026-01-15 06:05:35.527113
81	Kompas.id	Berkaca pada Kasus Sidoarjo, Menag: Bangunan Ponpes dan Rumah Ibadah Bakal Dievaluasi - Kompas.id	2026-01-15 06:05:35.542761
83	99.co	Pentingnya Sertifikasi Tanah Rumah Ibadah Agar Terhindar dari Sengketa (Tujuan, Cara, dan Kelengkapan) - 99.co	2026-01-15 06:05:35.545976
85	waspada.id	Kasus Intoleransi Dan Aturan Rumah Ibadah Harus Jadi Perhatian Khusus DPD RI - waspada.id	2026-01-15 06:05:35.549544
87	Blitar Kawentar	Menteri Nusron Dorong Sertipikasi Tanah Wakaf dan Rumah Ibadah, Lindungi Aset Umat dari Sengketa - Blitar Kawentar - Blitar Kawentar	2026-01-15 06:05:35.554316
89	news.okezone.com	Kasus Pembubaran dan Perusakan Tempat Ibadah di Sukabumi Diselesaikan Secara Damai - news.okezone.com	2026-01-15 06:05:35.557615
91	BBC	Kasus pembubaran paksa retret di Cidahu Sukabumi – Bagaimana kronologinya? - BBC	2026-01-15 06:05:35.561779
93	Kompas.id	Pemerintah dan Konflik Rumah Ibadah - Kompas.id	2026-01-15 06:05:35.566594
95	Voice of America Indonesia	Setara Institute: 50 Rumah Ibadah Diganggu Sepanjang 2022, Jawa Timur Paling Intoleran - Voice of America Indonesia	2026-01-15 06:05:35.573183
97	Setara Institute | For Democracy and Peace	PEMBUBARAN PERIBADATAN DAN PENOLAKAN TEMPAT IBADAH DI BERBAGAI DAERAH : PEMBANGKANGAN ATAS ARAHAN PRESIDEN - Setara Institute | For Democracy and Peace	2026-01-15 06:05:35.577338
98	BBC	Presiden Jokowi peringatkan 'hati-hati' polemik izin rumah ibadah, pegiat: ‘tapi aturan intoleran masih dipertahankan menterinya’ - BBC	2026-01-15 06:05:35.579777
99	Tempo.co	Setara Institute Sebut Kasus Penolakan dan Perusakan Tempat Ibadah Masih Tinggi - Tempo.co	2026-01-15 06:05:35.58176
101	Kompasiana.com	Penolakan Pembangunan Rumah Ibadah bagi Agama Minoritas: Tantangan Ruang Publik yang Inklusif di Indonesia - Kompasiana.com - Kompasiana.com	2026-01-15 06:05:35.585839
103	PERGERAKAN INDONESIA UNTUK SEMUA	Lagi, Kasus Pelarangan Beribadah Terjadi di Indonesia - PERGERAKAN INDONESIA UNTUK SEMUA	2026-01-15 06:05:35.589446
105	Tempo.co	Menag Nasaruddin Umar Minta Insiden Perusakan Rumah Ibadah Jangan Dijadikan Isu Nasional - Tempo.co	2026-01-15 06:05:35.593613
107	Kompas.tv	SETARA: Ada 573 Kasus Gangguan terhadap Ibadah Minoritas, SKB 2 Menteri Sebaiknya Dicabut - Kompas.tv	2026-01-15 06:05:35.598472
109	ucanews.com	Kaleidoskop 2016: Kasus intoleran di Indonesia berakhir dengan perusakan rumah ibadah - ucanews.com	2026-01-15 06:05:35.601506
111	ANTARA News	Bawaslu Yogyakarta dalami kasus caleg diduga kampanye di tempat ibadah - ANTARA News	2026-01-15 06:05:35.604712
113	Voice of America Indonesia	Sengketa IMB Gereja Masuk Pengadilan Yogya - Voice of America Indonesia	2026-01-15 06:05:35.607819
115	HARIAN MISTAR	Banyak Penolakan Rumah Ibadah di Sumut, Edy Rahmayadi Dianggap Gagal - HARIAN MISTAR	2026-01-15 06:05:35.613847
117	detikNews	Persekutuan Gereja Indonesia: Sulit Dapat IMB, Banyak Penutupan Rumah Ibadah - detikNews	2026-01-15 06:05:35.61685
119	Kompas.com	Kasus Penolakan Rumah Ibadah di Karimun Selesai, Mahfud Minta Semua Pihak Tahan Diri - Kompas.com	2026-01-15 06:05:35.653657
121	Kompas.tv	Kasus Perusakan Tempat Ibadah Ahmadiyah di Sintang, 9 Orang Ditetapkan Jadi Tersangka - Kompas.tv	2026-01-15 06:05:35.663848
123	Tempo.co	Warga Laporkan Perusak Rumah Ibadah di Sleman   - Tempo.co	2026-01-15 06:05:35.667092
125	Simada News	Perlindungan Hukum terhadap Rumah Ibadah Kristen di Indonesia: Hak Konstitusional dan Mekanisme Penyelesaian - Simada News	2026-01-15 06:05:35.671016
127	Sukabumi Update	Rumah Doa dan Izin Beribadah: Mengurai Kusut Intoleransi, Studi Kasus Cidahu Sukabumi - Sukabumi Update - Sukabumi Update	2026-01-15 06:05:35.684096
129	Akurat.co	5 Kasus Pelarangan Ibadah dan Perusakan Fasilitas Ibadah Paling Parah di Indonesia, Ada yang Diancam Pakai Sajam - Akurat - Akurat.co	2026-01-15 06:05:35.687426
131	Lintas Terkini	Soal Mushola Dirusak, Menag Fachrul: Kasus Perusakan Tempat Ibadah Masih Sangat Kecil - Lintas Terkini	2026-01-15 06:05:35.690126
58	Portal Lebak	Konflik antar umat beragama di Jakarta Timur terkait sengketa hak pakai gereja - Portal Lebak - Portal Lebak	2026-01-15 06:05:34.820268
60	republika.co.id	Konflik Melibatkan Umat Beragama Sumbernya Bukan Agama? - republika.co.id	2026-01-15 06:05:34.824707
62	Kompas.com	Din Syamsuddin: Konflik Agama karena Masalah Politik, Ekonomi dan Hukum - Kompas.com	2026-01-15 06:05:34.827782
64	SINDOnews Nasional	Indonesia Diminta Ambil Peran Hentikan Konflik Agama di India - SINDOnews Nasional	2026-01-15 06:05:34.830928
66	Ahlulbait Indonesia	Mufti Suriah: Konflik di Suriah Bukan Konflik Agama, Apalagi Sunni dan Syiah - Ahlulbait Indonesia	2026-01-15 06:05:34.834106
68	ANTARA News	MUI: Konflik antaragama akibat faktor non-agama - ANTARA News	2026-01-15 06:05:34.837385
70	BBC	Bentrok antarormas pembawa bendera Israel dan Palestina di Bitung, kedua pihak sepakat akhiri konflik dan 'menolak provokasi' - BBC	2026-01-15 06:05:34.862537
72	Kompas.com	Survei Litbang "Kompas": Sikap Toleransi Masyarakat Tinggi, tetapi Dibayangi Ancaman Konflik Agama dan Politik - Kompas.com	2026-01-15 06:05:34.867292
74	ANTARA News	Gus Najih: Situasi Suriah bukan karena agama melaikan konflik politik - ANTARA News	2026-01-15 06:05:34.870651
76	BincangSyariah	Prof. Quraish Shihab; Konflik Israel dan Palestina Bukan Konflik Agama - BincangSyariah	2026-01-15 06:05:34.873766
78	Antara News jatim	Franz Magnis : Korupsi Lebih Berbahaya Ketimbang Konflik Agama - Antara News jatim	2026-01-15 06:05:34.876736
80	Kompas.com	Menag Minta Kasus Perusakan Rumah Ibadah Tak Jadi Isu Nasional - Kompas.com	2026-01-15 06:05:35.535547
82	NU Online	Kementerian HAM Dinilai Tak Tegas Hadapi Kasus Perusakan Rumah Ibadah di Cidahu - NU Online	2026-01-15 06:05:35.544505
84	MetroTVNews.com	Kasus Perusakan Rumah Doa di Padang, DPR: Negara Harus Jamin Keamanan Tempat Ibadah - MetroTVNews.com	2026-01-15 06:05:35.547735
86	BincangSyariah	Ironi Moderasi Beragama: Mengapa Rumah Ibadah Sulit Berdiri dan Diganggu? - BincangSyariah	2026-01-15 06:05:35.552561
88	Media Indonesia	Legislator Minta Aparat Usut Kasus Perusakan Rumah Ibadah di Padang - Media Indonesia	2026-01-15 06:05:35.555955
90	Setara Institute | For Democracy and Peace	Kasus Penolakan Peribadatan dan Tempat Ibadah Lebih Serius dari Apa yang Disampaikan Presiden Jokowi - Setara Institute | For Democracy and Peace	2026-01-15 06:05:35.560173
92	Suara.com	5 Fakta Polemik Pembangunan Holyland di Karanganyar, Rumah Ibadah Jadi Sengketa? - Suara.com	2026-01-15 06:05:35.564998
94	Voice of America Indonesia	Komnas HAM Temukan 23 Kasus Rumah Ibadah Sepanjang 3 Tahun Terakhir - Voice of America Indonesia	2026-01-15 06:05:35.56947
96	Kantor Staf Presiden	Penyelesaian Sengketa GKI Yasmin, Moeldoko: Momentum Penguatan Toleransi - Kantor Staf Presiden	2026-01-15 06:05:35.575249
100	KutaiRaya.com	GMKI Nilai Regulasi Rumah Ibadah jadi Celah Intoleransi, Minta Aturan Dicabut - KutaiRaya.com	2026-01-15 06:05:35.583261
102	BBC	Ketua RT jadi tersangka karena bubarkan ibadah gereja Lampung: 'Berharap kelompok intoleran jera' - BBC	2026-01-15 06:05:35.587803
104	Republika.id	DMI: Rumah Ibadah Bagian Fasum | - Republika.id	2026-01-15 06:05:35.591028
106	Kompas.id	Kasus Pembubaran Ibadah Gereja, Ketua RT di Lampung Divonis Tiga Bulan Penjara - Kompas.id	2026-01-15 06:05:35.596849
108	ANTARA News	Polisi: Pembubaran jemaat rumah ibadah di Tangerang adalah kasus lama - ANTARA News	2026-01-15 06:05:35.599978
110	BBC	Pilkada: Bupati Pasaman divonis bersalah langgar aturan kampanye di tempat ibadah - BBC	2026-01-15 06:05:35.603143
112	Setara Institute | For Democracy and Peace	AKSI PEMBUBARAN IBADAH TERHADAP MAHASISWA KATOLIK UNIVERSITAS PAMULANG: GEJALA LEMAHNYA EKOSISTEM TOLERANSI - Setara Institute | For Democracy and Peace	2026-01-15 06:05:35.606191
114	Voice of America Indonesia	Kasus Perusakan dan Penyerangan Rumah Ibadah Diduga Terkait Kepentingan Politik - Voice of America Indonesia	2026-01-15 06:05:35.610998
116	Setara Institute | For Democracy and Peace	MENGATASI POLEMIK PENDIRIAN RUMAH IBADAT - Setara Institute | For Democracy and Peace	2026-01-15 06:05:35.615443
118	Tirto.id	Setara Institute Catat 140 Perusakan & 90 Penolakan Rumah Ibadah - Tirto.id	2026-01-15 06:05:35.651177
120	Tempo.co	Fakta GKI Yasmin Bogor: Kronologi Konflik, Didemo, Relokasi hingga Peresmian - Tempo.co	2026-01-15 06:05:35.661901
122	Jawaban.com	Menag Kasih Solusi Kasus Penyegelan Rumah Ibadah, KWI dan PGI Sampaikan Komentar Tegas - Jawaban.com	2026-01-15 06:05:35.665391
124	Jawaban.com	Pembangunan Rumah Ibadah Di Tapanuli Utara Ditolak Warga - Jawaban.com	2026-01-15 06:05:35.668643
126	Tajuk Nasional	DPR RI Tegaskan Sertifikasi Tanah Rumah Ibadah Penting Cegah Sengketa Lahan - Tajuk Nasional	2026-01-15 06:05:35.682355
128	Tribunnews.com	Koordinasi Pusat dan Daerah Jadi Sorotan Terkait Izin Pendirian Rumah Ibadah - Tribunnews.com	2026-01-15 06:05:35.686007
130	joglosemar news	Inilah 11 Kasus Penyerangan Tempat Ibadah Sebelum Kasus di Gereja St Lidwina - joglosemar news	2026-01-15 06:05:35.688836
\.


--
-- Name: analysis_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.analysis_history_id_seq', 3, true);


--
-- Name: matrix_indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matrix_indicators_id_seq', 37, true);


--
-- Name: social_media_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_media_reports_id_seq', 131, true);


--
-- Name: analysis_history analysis_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.analysis_history
    ADD CONSTRAINT analysis_history_pkey PRIMARY KEY (id);


--
-- Name: matrix_indicators matrix_indicators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matrix_indicators
    ADD CONSTRAINT matrix_indicators_pkey PRIMARY KEY (id);


--
-- Name: social_media_reports social_media_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_media_reports
    ADD CONSTRAINT social_media_reports_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict NsDNwScRsu681NLrMUG3ntlbigoRHNVF2cf2YVGE0xnvXSM7v5tBI1ZarnwHsst

