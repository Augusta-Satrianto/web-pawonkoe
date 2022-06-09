-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2022 pada 12.54
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pawonkoe`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Olahan Ayam', 'olahan-ayam', '2022-06-06 00:54:40', '2022-06-06 00:54:40'),
(2, 'Olahan Sapi', 'olahan-sapi', '2022-06-06 02:21:37', '2022-06-06 02:21:37'),
(3, 'Olahan Udang', 'olahan-udang', '2022-06-06 09:12:59', '2022-06-06 09:12:59'),
(4, 'Olahan Jamur', 'olahan-jamur', '2022-06-06 09:13:16', '2022-06-06 09:13:16'),
(5, 'Minuman', 'minuman', '2022-06-07 22:15:14', '2022-06-07 22:15:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_05_30_133904_create_posts_table', 1),
(4, '2022_05_30_151956_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredient` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `step` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `picture`, `title`, `slug`, `ingredient`, `step`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'post-pictures/S2WrnVjUVT9078L1p7kZBFcu5AD1I2AIJoKAdSJF.jpg', 'Sate Ayam Madura', 'sate-ayam-madura', '350 gr fillet bagian dada ayam\r\n50 gr kulit ayam\r\n250 gr kacang tanah\r\nBumbu marinasi\r\n1 1/2 sdm kacang halus\r\n1 sdm santan kental\r\n30 CC air\r\n2 siung bawang merah\r\n2 siung bawang putih\r\n1 sdm kecap manis\r\n1/2 sdt kaldu jamur\r\n1/3 garam\r\nBahan saos kacang\r\n6 siung bawang merah\r\n3 siung bawang putih\r\n3 cabai rawit merah\r\n3 lembar daun jeruk\r\n1/2 sdt garam\r\n1/2 keping gula merah (ukuran kecil) / satu sendok makan\r\n1/2 sdt gula putih\r\n2 sdm kecap manis\r\n2 sdm santan kental\r\n100 cc air', 'Potong ayam kotak-kotak. Lakukan juga dengan kulit ayam. Lalu tusukan kedalam tusuk sate. Lakukan hingga semua ayam habis. Sisihkan\r\n\r\nGoreng kacang hingga kecoklatan. Angkat dan biarkan dingin lalu blender hingga halus. Sisihkan\r\n\r\nBumbu marinasi : Ambil kacang halus sebanyak satu setengah sendok makan tambahkan santan bawang merah bawang putih air lalu blender hingga halus. Tambahkan garam kaldu Jamur dan kecap manis. Aduk rata\r\n\r\nTuang bumbu marinasi ke dalam ayam yang sudah di tusuk. Oles hingga merata dan diamkan hingga 30 menit atau lebih. Panaskan teflon / happy call lalu masukan yang sudah di bumbu marinasi. Panggang hingga ke dua sisinya matang\r\nDalam wadah mangkok ambil tiga sendok makan kacang yang sudah di haluskan beri 100 CC air. Sisihkan\r\n\r\nGoreng cabai bawang merah dan bawang putih daun jeruk hingga layu. Angkat dan biarkan dingin. Haluskan bumbu lalu tumis hingga matang\r\n\r\nMasukan bumbu kacang yang sudah di beri air ke dalam tumisan cabai tambahkan garam gula putih gula merah dan santan aduk rata\r\n\r\nTambahkan kecap manis aduk kembali. Koreksi rasa dan masak hingga bumbu mengental.\r\nPenyelesaiannya : ambil 3 sdm bumbu kacang ke dalam piring lalu tambahkan kecap manis aduk rata masukan sate yang sudah di panggang. Sajikan', '2022-06-06 00:58:16', '2022-06-06 02:28:47'),
(2, 1, 3, 'post-pictures/oo5t4kjooXYKmSduwEpi06TPQPVIEdvYiVp0dH1X.jpg', 'Ayam Bakar Taliwang', 'ayam-bakar-taliwang', '3 Ekor Ayam (Sudah di rebus)\r\n4 Siung bawang Putih\r\n1 Sdm Minyak Wijen\r\n1 Sdm Saus Teriyaki\r\n1 Sdm Saus Tiram\r\n8 Sdm Kecap Manis\r\n1/2 Sdt Garam\r\n1 Sdt Kaldu Jamur\r\n1 Cm Jahe', 'Siapkan ayam yang sudah di rebus.\r\n\r\nCuci bersih bawang putih.\r\n\r\nPisahkan 2 siung bawang putih lalu cincang bawang dan masukkan bawang ke dalam mangkok.\r\n\r\nSetelah bawang putih sudah di mangkok lalu tambahkan minyak wijen, saus teriyaki, saus tiram, kecap manis, garam dan kaldu jamur semua jadi satu.\r\n\r\nLalu masukkan ayam yang sudah di rebus tadi ke dalam bumbu, aduk hingga rata semua.\r\n\r\nSiapkan teflon, kalau sudah panas masukkan 2 siung bawang putih utuh dan jahe .Lalu masukkan ayam yang sudah di kasih bumbu tadi ke dalam teflon, sekali kali boleh di kasih bumbunya lagi biar tambah enak dan sekali kali ayam dan bawang putih di balik biar ga terlalu gosong.\r\n\r\nKalau sudah matang boleh angkat dan sajikan. Selamat Mencoba.', '2022-06-06 01:08:37', '2022-06-06 01:08:37'),
(3, 2, 2, 'post-pictures/eUXH520QAy5IiOvuI6gDy7sqJYnaZK7GwUjRbA9i.png', 'Abon Sapi', 'abon-sapi', '250 gr daging sapi tanpa lemak\r\n60 ml santan kental\r\n2 lembar daun salam\r\n1/2 sdm ketumbar bubuk\r\n30 gr gula merah\r\n1/2 sdt kaldu jamur\r\n1/2 sdt garam\r\n30 ml minyak goreng\r\nBumbu Halus\r\n4 siung bawang merah\r\n2 siung bawang putih\r\n2 ruas jari lengkuas', 'Rebus daging hingga benar-benar matang. Biarkan dingin lalu suir-suir.\r\n\r\nUleg/tumbuk suiran daging hingga halus.\r\n\r\nSiapkan bumbu halus. Tumis bumbu halus dan daun salam hingga harum. Kemudian masukkan gula, garam, ketumbar dan kaldu jamur. Aduk rata.\r\n\r\nMasukkan santan, aduk. Lalu masukkan daging.\r\n\r\nMasak terus dengan api kecil sambil diaduk-aduk sampai hasilnya kering.\r\n\r\nDinginkan. Siap disimpan untuk lauk dadakan.', '2022-06-06 02:11:31', '2022-06-06 02:32:27'),
(4, 1, 3, 'post-pictures/1nkdIXJBOQyJpEgdrNbgZsmCh2BFQeMZgp1ZKIU0.jpg', 'Ayam Geprek Maknyus', 'ayam-geprek-maknyus', 'Bahan Tambahan :\r\n400 ml air es\r\nMinyak goreng yang banyak\r\nTimun\r\n\r\nBahan Ayam :\r\n1/2 ekor ayam (dada), potong 6\r\n2 sdm bumbu marinasi (bumbu jadi)\r\n1 sdm tpg baput\r\n1/2 sdt garam\r\n1/2 sdt lada bubuk\r\nJeruk nipis\r\n\r\nBahan Tepung :\r\n150 gr terigu serbaguna\r\n1 1/2 sdm tepung baput\r\n1 sdm tepung beras\r\n1 sdm biang tepung (bumbu jadi)\r\n1/2 sdt lada bubuk\r\n1 sdt baking powder\r\n1 sdt baking soda\r\n1/2 sdt garam\r\n1 sdt kaldu jamur\r\n\r\nSambal :\r\nRawit merah segenggam, goreng\r\n1 baput kating, goreng\r\n1 bamer, goreng\r\nGaram\r\nKaldu jamur', 'Kucuri ayam dg jeruk nipis diamkan beberapa saat & cuci bersih. Tiris.\r\nMarinasi ayam, diamkan semalaman di kulkas.\r\n\r\nSiapkan bumbu tepung. Baluri ayam dg tepung sampai merata, lalu celupkan di air es. Masukan lagi ke tepung, tepuk - tepuk ayam supaya sisa tepung berjatuhkan.\r\n\r\nPanaskan minyak, kecilkan api lalu masukkan ayam. Masak dg suhu minyak di bawah 120 derajat (supaya ayam tidak gosong & bagian dalam ayam matang) masak kurleb 15 menit atau sampai matang ya.\r\n\r\nGoreng bawang & cabe sebentar. Lalu uleg kasar dg garam & kaldu jamur. Geprek sedikit ayam di atas cobek. Sajikan dg nasi putih & timun (lalapan).', '2022-06-06 08:52:21', '2022-06-06 08:52:21'),
(5, 1, 4, 'post-pictures/uk6jZd9ZFFpxnEW65buZEhQVmE4irCT3hryJizw3.jpg', 'Ayam Rica-rica', 'ayam-rica-rica', '1 ekor ayam (saya pakai ayam pejantan)\r\n3 batang sereh,geprek\r\n3 lembar daun salam\r\n3 lembar daun jeruk\r\n1 lembar daun pandan,ikat simpul\r\n1 batang daun bawang,rajang\r\n2 ikat daun kemangi,petiki daunnya\r\nSecukupnya air,garam dan kaldu bubuk\r\nBumbu Yang Di Haluskan :\r\n6 butir bawang merah\r\n3 siung bawang putih\r\n3 butir kemiri\r\n50 gram cabe merah keriting\r\n15 buah cabe rawit\r\n2 ruas jari lengkuas\r\n2 cm jahe\r\nSedikit kunyit', 'Potong ayam jadi 12 bagian,saya potong kecil-kecil,cuci bersih lalu lumuri dengan kunyit bubuk,air perasan jeruk nipis dan sedikit garam,diamkan 10 menit kemudian goreng setengah kering,angkat,tiriskan.Sisihkan dahulu.\r\nMaafkeun ayam yang sudah di goreng lupa gak ke foto 🙏\r\n\r\nTumis bumbu halus sampai harum,masukkan daun salam,daun pandan,daun jeruk dan sereh,tumis sampai bumbu matang.\r\n\r\nMasukkan ayam yang telah di goreng setengah kering tadi,aduk-aduk.Masukkan air secukupnya kira-kira sampai ayam terendam,beri garam dan kaldu bubuk.\r\n\r\nMasak sampai kuah menyusut sambil sesekali di aduk-aduk dan jangan lupa koreksi rasanya sampai pas sesuai selera.\r\n\r\nSesaat sebelum di angkat,masukkan daun bawang dan daun kemangi,aduk rata sampai kemangi layu.Matikan kompor.\r\n\r\nPindahkan ke wadah,siap untuk di sajikan.', '2022-06-06 08:53:50', '2022-06-06 08:53:50'),
(6, 1, 5, 'post-pictures/e8oqBKS6SqlBcmLOMsS1I56f5PQtQuRkYwEiDWdB.jpg', 'Ayam Bumbu Bali', 'ayam-bumbu-bali', '1 ekor ayam potong (sekitar 1 kg)\r\n6 lembar daun jeruk (iris tipis)\r\n7 sdm kecap manis\r\nsecukupnya kaldu bubuk dan garam\r\n600 ml air\r\n\r\nBumbu halus\r\n4 butir kemiri sangrai\r\n6 buah bawang putih\r\n8 buah bawang merah\r\n7 buah cabai keriting merah\r\n1/2 sdt terasi\r\n1 buah tomat merah', 'Haluskan bumbu\r\n\r\nTumis bumbu halus hingga harum, masukkan daun jeruk dan kecap\r\n\r\nTambahkan air dan masukkan ayam. Jangan lupa beri bumbu, koreksi rasa sesuai selera. Aduk-aduk hingga mencapai kekentalan yang diinginkan.', '2022-06-06 08:56:08', '2022-06-06 08:56:08'),
(7, 1, 4, 'post-pictures/sOyjjjF7WxXBIkphrSdNAou4QK2mcgcS7pQzSqPw.png', 'Soto Ayam Lamongan', 'soto-ayam-lamongan', '1/2 kg ayam Dada, Sayap\r\n1/4 ceker\r\nBumbu halus:\r\n2 ruas kunyit bakar\r\n8 bamer\r\n8 baput\r\n5 kemiri\r\n1 sdt merica\r\n1 /2 sdt jinten\r\n1 sdt ketumbar\r\nBumbu cemplung:\r\n10 lmbr daun saĺam\r\n10 lmbr daun jeruk\r\n4 btg sereh\r\n2 ruas lengkoas\r\nsesuai selera Garam gula kaldu jamur\r\n4 btang daun bawang\r\nPelengkap:\r\nBihun, telor, toge yg sdh direbus\r\nJeruk nipis\r\nSambel\r\nBumbu koya :\r\nKerupuk udang + bawang putih diblender', 'Cuci bersih ayam n ceker, kucuri jeruk nipis, diamkan 5 mnt.\r\nRebus sbntr untuk buang kotorannya. Lalu tiriskan\r\n\r\nSiapkan bumbu halus, dan bumbu cemplung lalu tumis sampai harum. Lalu Masukan air kurleb 1 1/2liter, masukan ayam yg sdh drebus, tambahkan garam gula kaldu jamur koreksi rasa.\r\n\r\nAngkat Ayam sayap dan dada utnk digoreng(Kalau sayap dan ceker sy biarkan didlm kuah) kemudian Masukan daun bawang.\r\n\r\nLalu sajikan sesuai selera...\r\n\r\nSelamat mencoba', '2022-06-06 09:02:52', '2022-06-06 09:02:52'),
(8, 3, 5, 'post-pictures/noAcu0CM4nrJRXgEprbEu0PWdOPcTvIZ2ZmerwGx.png', 'Udang Saus Tiram', 'udang-saus-tiram', '250 gram udang\r\n1 sdt garam\r\nJeruk nipis/lemon\r\n3 sdm minyak goreng untuk menumis\r\n150 air\r\n1 buah tomat (saya skip krn tidak ada)\r\n\r\nBumbu halus\r\n4 siung bawang merah\r\n2 siung bawang putih\r\n2 cabe rawit\r\n\r\nBahan lainnya\r\n2 sdm saos tomat\r\n2 sdm saos tiram\r\n2 lembar daun jeruk\r\n1 cm jahe, geprek\r\n1 sdt gula pasir\r\n1 sdt garam\r\n1/2 sdt penyedap', 'Bersihkan udang, lalu campurkan dengan garam dan air jeruk nipis. Aduk rata, diamkan 15 menit. Lalu cuci bersih\r\n\r\nPanaskan minyak goreng, tumis bumbu halus hingga wangi, lalu masukkan bahan lainnya. Aduk rata\r\n\r\nMasukkan udang, masak hingga berubah warna. Lalu masukkan air. Masak hingga mengental. Jangan lupa tes rasa\r\n\r\nUdang saos tiram siap disajikan', '2022-06-06 09:04:27', '2022-06-06 09:17:48'),
(9, 2, 4, 'post-pictures/DxIkb1Ary6SuTCUvSoQdmnhRBGzRH6b2jXuv8nlB.png', 'Bakso Bakar', 'bakso-bakar', '30 butir bakso sapi\r\nTusukan sate\r\n\r\nBumbu marinasi:\r\n1/2 sdt bawang putih bubuk\r\n1 sdm saus tiram\r\n2 sdm kecap manis\r\n2 sdm madu\r\n2 sdm saus sambal\r\n3 sdm saus tomat\r\nSecukupnya lada', 'Campur semua bahan marinasi. Masukkan bakso, aduk rata. Simpan di kulkas min.30 menit.\r\n\r\nKeluarkan dari kulkas. Tusuki bakso dengan tusukan sate.\r\n\r\nSiapkan pan. Lelehkan margarin. Bakar bakso sambil dioles sisa bumbu marinasi hingga berkaramel.\r\n\r\nSajikan dengan taburan bawang merah goreng. Yummy!!', '2022-06-06 09:06:53', '2022-06-06 09:06:53'),
(10, 4, 1, 'post-pictures/NzD1NlUIZNn1V2jGhKsg5oitoO8fBXoyjMrx750o.png', 'Cah Jamur Tahu ', 'cahjamurtahu33333333-33er', '1 bungkus Jamur tiram\r\n2 buah Tahu potong kotak2\r\n1 sdm saos tiram\r\n2 sdm kecap asin\r\nKaldu jamur, kaldu ayam bubuk\r\nLada bubuk\r\nsedikit Garam dan gula\r\n3 siung bawang putih geprek dan diiris tipis2\r\nCabe rawit (bisa skip kalau tdk suka pedas)\r\n1 sendok Larutkan tepung maizena', 'Tumis bawang putih dan cabe rawit sampai harum\r\nTambahkan air secukupnya. Masukkan saos tiram, kecap asin, garam, gula sedikit, kaldu dan lada. Test rasa\r\nTunggu sampai mendidih, lalu masukkan tahu. Masak kurang lebih 8 menit dan bolak balik tahu agar mateng.\r\nSetelah itu masukkan jamur. Terakhir tambahkan air larutan tepung maizena sambil diaduk agar tahu kuah sudah cukup kental atau belum. Lalu masak dengan api sedang kurang lebih lima menit', '2022-06-07 02:13:55', '2022-06-08 02:34:08'),
(11, 5, 6, 'post-pictures/NGWs161UA9jhulEA5BHVSJufy0MYDJNPIHyP4yYm.webp', 'Es Campur Pelangi', 'es-campur-pelangi', 'Setup pepaya\r\n1/2 buah pepaya mengkal\r\n500 ml air\r\n5 sdm gula pasir\r\n1 ruas kayu manis\r\nSetup Nanas\r\n1 buah nanas\r\n500 ml air\r\n5 sdm gula pasir\r\n1 ruas kayu manis\r\nPuding Jelly\r\n20 gram jelly rasa anggur (saset kecil)\r\n20 gram jelly rasa Melon (saset kecil)\r\n20 gram jelly rasa blue berry (saset kecil)\r\n300-400 ml air untuk masing2 jelly\r\n2-3 sdm gula untuk masing2 jelly\r\nSecukupnya fruit acid\r\nPelengkap\r\n1/2 gelas syrup jeruk nipis atau sirup cocopandan\r\n2 sachet susu kental manis\r\n1 gelas es batu\r\nSecukupnya pewarna untuk mempertegas warna jelly jika suka', 'Kupas pepaya, potong dadu. Kemudian rendam air kapur sirih. Cuci bersih dan masak dalam air, gula dan kayu manis yg sdh mendidih. Setelah lunak, angkat.\r\nPotong tipis nanas kupas. Lalu masak nanas dalam air, gula dan kayumanis yg sdh mendidih. Setelah mendidih segera angkat.\r\nDalam panci campur masing2 bubuk jelly dengan gula, aduk rata, tambahkan air lalu masak hg mendidih. Angkat, tambahkan sedikit pewarna dan fruit acid, lalu cetak dalam loyang. Diamkan hg beku.\r\nPotong masing2 jelly sesuai selera, sisihkan.\r\nSiapkan gelas, tata jelly dari warna ungu, biru, hijau, lalu buah nanas dan pepaya.\r\nTambahkan susu kental manis, sirup, air dan es batu. Sajikan dan selamat mencoba.', '2022-06-08 00:32:49', '2022-06-08 00:32:49'),
(12, 5, 1, 'post-pictures/lU2UrtmjoWBpKSgOovWlQ7RU9YAtFqNbWWjBA3Kh.webp', 'Es Pisang Ijo', 'es-pisang-ijo', 'Bahan Utama :\r\n6 pisang raja\r\nAgar-agar\r\nSirup merah\r\nSelasih / chia seed\r\nEs batu\r\n\r\nPisang Ijo :\r\n150 gr terigu\r\n150 gr tepung beras\r\n20 gr tapioka\r\n1-2 sdm margarin\r\n500 ml santan cair\r\n40 gr gula pasir\r\nSecukupnya pasta pandan\r\n\r\nBUBUR SUMSUM :\r\n250 gr tepung beras\r\n500 ml santan cair\r\n1/2 sdt garam\r\n2 daun pandan', 'Kukus pisang, sisihkan\r\nDalam panci (kompor masih mati), masukkan terigu, tepung beras, tapioka, gula pasir, santan cair, pasta pandan, aduk-aduk sambil nyalakan api sedang, masak aduk-aduk hingga membentuk adonan\r\nAmbil genggam adonan, pipihkan, beri isian pisang lalu bungkus hingga adonan menutupi pisang, kukus selama 15 menit\r\nMembuat bubur sumsum, masukkan semua bahan, pakai api kecil aduk-aduk hingga kental\r\nPenyajian, dalam wadah, siapkan es batu, beri bubur sumsum, pisang ijonya dipotong-potong, beri agar-agar, beri selasih, lalu guyur sirup, siap disajikan', '2022-06-08 00:36:36', '2022-06-08 00:36:36'),
(13, 5, 4, 'post-pictures/8zEQz87drk6SuWXUszSkE6lrhg88rjvSpFksoKMP.webp', 'Jus Jambu Kental Manis', 'jus-jambu-kental-manis', '250 gr jambu merah\r\n300 ml air\r\n2 sdm gula pasir\r\nSecukupnya susu kental manis putih\r\nSecukupnya es batu', 'Petik dulu jambunya, cuci bersih.Potong² jambu, masukan ke dalam blender.\r\nMasukan juga gula pasir dan air. Blender hg halus, saring.\r\nTuang skm ke dalam gelas jus, masukan es batu, tuang jus yg sudah disaring tadi (aku kebetulan blendernya udh ada saringan jd langsung tuang aja). Sajikan selagi dingin.', '2022-06-08 00:38:49', '2022-06-08 00:38:49'),
(14, 5, 6, 'post-pictures/skFu479RNb4fvgANg7pMhSYZSZrn7Rg7BjrTIDWG.webp', 'Ice kepal Milo', 'ice-kepal-milo', '3 sdm bubuk susu milo\r\n2 sdm SKM\r\n1/2 gelas sedang air panas\r\nSecukupnya es batu\r\nAneka Toping', 'Larukan millo,skm dgn air pnas,biar kan dingin dl/taruh kulkas\r\nBlender es batu,hingga menjadi serbuk,tuang dlm wadah saji\r\nTuang milo dlm es batu,kurang lembut es batunya😂\r\nTaburi toping,dan bubuk milo\r\nSajikan', '2022-06-08 00:40:43', '2022-06-08 00:40:43'),
(15, 5, 6, 'post-pictures/8wNhEIlMGAdc8FipZJG0ZsmyXa5U9pIK5scDijZu.jpg', 'Brown Sugar Boba Iced Coffee Float', 'brown-sugar-boba-iced-coffee-float', 'Bahan Boba :\r\n5 sdm tepung kanji\r\n3 sdm palm sugar\r\n50 mili air (sesuaikan lagi takaran airnya)\r\n3 sdm sirup gula merah\r\n\r\nFloat :\r\n25 gram susu bubuk full cream\r\n3 sdm susu kental manis\r\n1 sdm gula pasir\r\n1/4 sdt SP (di tim dulu sebentar\r\n50 mil air es\r\n\r\nBahan kopi :\r\n5 sdm kopi merk kapal api (bisa juga Nescafe)\r\n200 mili freshmilk / susu cair\r\n3 sdm sirup gula merah\r\nEs batu yang sudah di hancurkan\r\n200 mili air panas\r\n\r\nTopping :\r\nOreo,,,coklat batang,,chocolatos dan springkle', 'Membuat Boba :\r\nSiapkan wadah,,,masukkan tepung kanji dan palm sugar,,,tuang air sedikit demi sedikit sambil di ulen\r\n\r\nSetelah bisa di pulung bentuk bulat kecil ²,,,lakukan hingga adonan habis,,,siapkan panci lalu masukkan air,,tunggu sampai air mendidih lalu kecilkan api kemudian masukkan bulatan Boba,,,masak sambil terus di aduk-aduk,,setelah setengah matang masukkan sirup gula merah lalu masak kembali boba hingga matang\r\n\r\nMembuat float : campur semua bahan lalu mixer hingga mengembang,,,kemudian masukan ke pipping bag dan simpan di kulkas\r\n\r\nSiapkan gelas,,,masukkan sirup gula merah lalu masukkan boba,,sisihkan\r\n\r\nSeduh kopi hitam dengan air panas,,aduk2 biarkan dingin,,,setelah dingin ambil air kopi cukup bagian atasnya saja,,,ampas kopi jangan terikut\r\nBlender/Chopper susu cair bersama es batu,,,haluskan lalu masukkan susu halus ke dalam gelas berisi sirup gula merah & boba,,,tuang juga perlahan kopi hitamnya\r\n\r\nSemprotkan float ke bagian atas minuman lalu beri aneka topping kesukaan', '2022-06-08 00:46:51', '2022-06-08 00:46:51'),
(16, 5, 3, 'post-pictures/xtfgxy1nkUawUb5p95jw3lhstFyKFZmxlMpAoMcy.webp', 'Jus Buah Kecombrang', 'jus-buah-kecombrang', '500 gram buah kecombrang / honje\r\n1,5 liter air\r\nSecukupnya sirup gula / simple syrup atau madu (selera)', 'Petik, bersihkan buah honje lalu cuci sampai bersih\r\nBlender buah honje utuh dengan air secara bertahap sampai halus. Lalu tuang ke panci, aduk sesekali, masak sampai mendidih\r\nSetelah mendidih, angkat lalu saring. Setelah di saring, tuang ke gelas, bisa di tambahkan sirup gula atau madu sesuai selera. Rasa aslinya asam segar dengan aroma khas.\r\nSiap disajikan. Diminum hangat atau dingin sama nikmatnya.', '2022-06-08 00:48:48', '2022-06-08 00:48:48'),
(17, 1, 6, 'post-pictures/pv6XPVXQqwCbqDyJuUS2Tudph6rvQ0pwiIbiOqU7.webp', 'Szechuan Chicken Rice Bowl', 'szechuan-chicken-rice-bowl', '2 buah dada ayam matang\r\n1/4 siung bawang bombay\r\n1 siung bawang putih\r\n75 gram bumbu/pasta Szechuan\r\n20 ml air\r\n3 sdm minyak goreng\r\nSejumput biji wijen\r\n1/4 buah paprika merah', 'Marinasi ayam dengan bumbu lalu masukan dalam kulkas selama 10 menit.\r\nCincang bawang putih hingga halus, lalu potong sesuai selera bawang bombay dan paprika.\r\nPanaskan minyak dalam katel, lalu tumis bawang putih hingga harum kemudian tumis bawang bombay dan paprika hingga sedikit layu.\r\nSetelah itu tambahkan bumbu szechuan lalu tambahkan air, aduk hingga rata koreksi rasa. Tambahkan ayam yang sudah di marinasi. Masak hingga harum.\r\nAmbil nasi dalam paper bowl, lalu isi dengan ayam dan siap di nikmati', '2022-06-08 00:50:36', '2022-06-08 00:50:36'),
(18, 2, 6, 'post-pictures/4jG0cHIOacHN2VTly3qD7ewPircJaloV3fuOR9WH.jpg', 'Serundeng Paru Sapi', 'serundeng-paru-sapi', '250 gr Paru sapi\r\n2 kelapa setengah tua (diambil kelapanya)\r\n10 siung bawang merah\r\n4 biji cabai rawit\r\n3 biji cabai keriting\r\n5 siung bawang putih\r\n1 sdm ketumbar\r\n2 sdm gula pasir\r\n1/2 keping gula merah (ukuran kecil)\r\n2 lembar daun salam (1 untk merebus paru, 1 untk memasak)\r\n5 lembar daun jeruk (3 untuk merebus paru, 2 untuk memasak)\r\n2 batang sereh (1 untuk merebus paru, 1 untuk memasak)\r\n1 Ruas jari Lengkuas\r\n1 ruas jari jahe (untuk merebus paru)\r\n1/4 sdt Penyedap\r\n1 sdt garam\r\n300 ml air', 'Cuci bersih paru, lalu rebus paru hinggga matang (masukan garam, jahe, daun salam, daun jeruk biar ngilangin bau amis)\r\nSambil rebus paru, kita sangrai kelapa parutnya sampai kecoklatan\r\nSetelah paru dingin potong-potong sesuai yang diinginkan (potong tipis tipis biar empuk)\r\nBlender bumbu\r\nSemua cabai, bawang merah, bawang putih (bumbu halus)\r\nTumis sebentar bumbu halus, masukkan ketumbar, daun salam, daun jeruk, serai dan bumbu-bumbu lainnya\r\nMasukkan air 300ml koreksi rasa masukkan paru\r\nSetelah air menyusut masukkan kelapa sangrai(serundeng)\r\nAduk perlahan sampai benar benar kering', '2022-06-08 00:58:09', '2022-06-08 01:09:08'),
(19, 2, 9, 'post-pictures/OTptujCO9RuPqx8UYe92NIjMu01ruLl4oN5T1tft.jpg', 'Sop Tulang Iga Sapi', 'sop-tulang-iga-sapi', '300 gram tulang iga sapi\r\n2 buah kentang\r\n2 buah wortel\r\n1 batang daun bawang\r\n1 buah tomat\r\nBumbu Halus\r\n5 siung bawang merah\r\n5 siung bawang putih\r\n1/2 sdt merica\r\nBumbu Cemplung\r\n4 buah kapulaga\r\n2 batang kayu manis\r\n2 buah cengkeh\r\nsecukupnya Garam\r\nKaldu jamur / sapi\r\nBawang goreng untuk taburan\r\n2 ruas jahe untuk merebus daging\r\n2 lembar daun salam untuk merebus daging', 'Cuci bersih tulang iga, lalu rebus (saya merebusnya pake magic com kurang lebih 30 menit) tambahkan jahe dan daun salam. Setelah empuk, tiriskan.\r\nUlek bumbu halus\r\nTumis bumbu halus dengan sedikit minyak\r\nDidihkan air di kompor, lalu rebus kembali tulang iga yg sudah direbus dari magic com. Lalu masukkan bumbu yg sudah ditumis sebelumnya. Tambahkan kapulaga, kayu manis, dan cengkeh.\r\nBiarkan sampe meletup letup, setelah itu masukkan sayuran yg sudah dipotong-potong (saya masukin daun bawang dan tomat terakhiran)\r\nBumbui dengan garam, dan kaldu jamur / sapi (saya pakai kaldu jamur totole dan royco sapi)\r\nSetelah rasa sudah sesuai, terakhir masukkan daun bawang dan tomat. Aduk-aduk sebentar, sop tulang iga sapi sudah bisa dinikmati, jangan lupa taburan bawang gorengnya yaaaa… hmmm mantul 👍🏻\r\nSelamat mencoba bund', '2022-06-08 00:59:41', '2022-06-08 01:10:13'),
(20, 2, 5, 'post-pictures/IPCitZuRb1VisVJZ2nL1X4dtsxwTg4dipXucBQk1.jpg', 'Sambal Goreng Hati Sapi', 'sambal-goreng-hati-sapi', '1/2 kg hati sapi\r\n4 siung bawang putih\r\n8 siung bawang merah\r\n5 buah cabe merah teropong\r\nSecukupnya cabe merah keriting\r\nKemiri\r\nGaram\r\nGula jawa\r\nSedikit santan kental\r\nsecukupnya Minyak\r\nLengkuas, daun salam, sereh, daun jeruk\r\nJahe & kunyit\r\nAir asam jawa', 'Cuci bersih hati sapi, kemudian rebus dengan sedikit garam halus, potongan jahe, sobekan daun jeruk dan salam.\r\nSetelah matang tiriskan dan bilas pada air bersih yang mengalir dan potong kotak kecil2.\r\nGoreng hati sapi pd minyak yg panas, tetapi jangan terlalu lama agar tidak keras teksturnya.\r\nSembari menggoreng hati, Haluskan bumbu halus :\r\nDuo bawang, cabe keriting, kemiri, garam, kunyit dan jahe\r\nKemudian bersihkan cabai teropong dari biji bijinya,kemudian iris tipis.\r\nLalu goreng dengan sedikit minyak. Tujuannya agar masakan tidak langu atau bau cabe mentah\r\nPanaskan sedikit minyak goreng lalu tumis bumbu yg sudah di uleg beserta lengkuas, daun jeruk, daun salam dan sereh geprek. Aduk sampai tanak/benar² matang. Tandanya jika minyak dan bumbu sudah mulai terpisah\r\nMasukkan hati goreng dan cabe teropong tadi, bolak balik hingga bumbu tercampur rata. Masukkan gula jawa yg telah disisir dan 3 sendok air asam jawa.\r\nTuang santan kental, aduk rata dan koreksi rasa.\r\nberi tambahan penyedap rasa (saya skip).\r\nTunggu hingga santan menyusut, dan pastikan matang sempurna karena sambal & santan sangat rawan \'cepat basi\'\r\nSambal goreng hati siap dihidangkan. Tambahkan acar memtah agar terasa lebih segar.', '2022-06-08 01:17:47', '2022-06-08 01:21:41'),
(21, 4, 6, 'post-pictures/1lQK93Vxi3JKVFsWNcYET3LidDUkl8UfsjTBvLtk.webp', 'Tumis Brokoli Jamur', 'tumis-brokoli-jamur', '1 buah brokoli ukuran kecil\r\n1/2 cup jamur kancing iris\r\n1 siung bawang putih, cincang\r\n1 sdt saus tiram\r\n1 sdt kecap manis\r\n1/2 sdt kecap asin\r\n30 ml air putih\r\nSecukupnya penyedap (garam, gula, merica, kaldu)\r\nSecukupnya minyak untuk menumis', 'Siapkan bahan Potong potong brokoli sesuai selera lalu rendam sebentar di air garam Iris bawang putih dan cucibersih jamur kancing iris menggunakan air panas Bahan saus, kecap dan penyedap rasa disatukan dalam satu wadah lalu aduk rata\r\nPanaskan sedikit minyak, tumis bawang putih sampai wangi Masukan jamur dan brokoli aduk sebentar lalu masukkan air putih Setelah itu campurkan bahan saus aduk rata sampai brokoli layu\r\nSetelah matang sajikan dengan nasi hangat', '2022-06-08 01:23:55', '2022-06-08 01:23:55'),
(22, 4, 7, 'post-pictures/RglI6YXgZleOdwMqpzW8DkQz08tIQDBx3ZXsXqlM.jpg', 'Sup jamur shimeji tofu', 'sup-jamur-shimeji-tofu', '1 box jamur shimeji hitam\r\n2 buah tofu\r\n1 butir telur\r\n500 mlt air\r\nBahan bumbu :\r\n2 siung bawang putih cincang halus\r\n2 tangkai daun bawang iris memanjang\r\n1/2 sdt gula pasir\r\n1 sdt garam\r\n1 sdt kaldu jamur\r\n2 sdm saos tomat', 'Siapkan semua bahan.\r\nBuang akar jamur shimeji,cuci bersih tiriskan.\r\nDalam pan,tumis bawang putih sampai harum tuang air,masukan garam dan kaldu jamur masak sampai mendidih.\r\nMasukan daun bawang,jamur dan tofu masak selama 3 menit.\r\nMasukan telur kocok,masak lagi sampai telur matang,tes rasa,matikan kompor.\r\nSup jamur shimeji tofu sudah matang,siap di nikmati.\r\nSelamat mencoba', '2022-06-08 01:28:35', '2022-06-08 01:28:35'),
(23, 4, 8, 'post-pictures/9Gso0e1TXtBCnF4JTYKGr64hLW3GLAeL5znKodLt.webp', 'Mun Tahu Jamur', 'mun-tahu-jamur', '1 block tahu sutra/tahu china potong dadu (Saya 10 tahu putih Yunyi)\r\n150 g daging cincang\r\n1 tangkai daun bawang iris halus (saya: 2 batang putihnya saja)\r\n2 siung bawang putih cincang (saya: pakai bumbu dasar putih) (lihat resep)\r\n1 ruas jahe geprek (Saya diiris korek api)\r\n1 sdm kecap asin\r\n1/2 sdt kaldu bubuk\r\n1 sdm minyak wijen\r\n1 sdt gula pasir\r\n1 sdt maizena larutkan dgn air\r\nSecukupnya garam\r\nSecukupnya air\r\nMinyak untuk numis\r\n100 gram Champignon (Opsional)\r\n1 batang seledri untuk garnish (Opsional)\r\n1/2 butir bawang bombay diiris (Opsioanl)', 'Siapkan bahan-bahan, iris jamur champignon dan tahu.\r\n\r\nIris Bawang Bombay, daun bawang dan jahe.\r\n\r\nPanaskan minyak, tumis bumbu dasar putih sampai harum, masukkan bawang bombay dan jahe. Setelah itu masukkan daging cincang dan jamur, masak sebentar lalu tambahkan kecap asin, minyak wijen, lada bubuk, gula, garam dan kaldu bubuk. Aduk sebentar, lalu masukkan air secukupnya dan tambahkan tahu dan irisan daun bawang. Aduk-aduk lalu tambahkan maizena yang sudah dilarutkan di air. Tes rasa lalu matikan kompor. Sajikan mun tahu dengan taburan daun seledri.', '2022-06-08 01:32:24', '2022-06-08 01:32:24'),
(24, 4, 7, 'post-pictures/Tu57Nhnn3mE0ug7nD2UX1HbrhYaGeVq4nC2O2wdY.webp', 'Cah Buncis Jamur Kuping', 'cah-buncis-jamur-kuping', 'Buncis ½ bungkus, potong²\r\nJamur kuping 2 lembar (size lebar), potong²\r\n2 siung bawang putih, cincang\r\nsecukupnya garam\r\n1/2 sdt kaldu jamur\r\n1/4 sdt lada/ sesuai selera', 'Tumis bawang putih hingga layu sedikit kecoklatan. Masukkan buncis dan jamur.\r\n\r\nBumbui dengan garam, kaldu jamur, dan lada. Aduk rata.\r\n\r\nKoreksi rasa. Masak hingga buncis dan jamur matang. Angkat, sajikan.', '2022-06-08 01:33:43', '2022-06-08 01:33:43'),
(25, 3, 9, 'post-pictures/O749DwYiriSSGeQ7ye6HqUyWt9NUaNwnVlGFNOGH.webp', 'Tahu Udang Kukus', 'tahu-udang-kukus', '100 gram Ayam Dada Filet\r\n100 gram Daging Sapi\r\n50 gram Udang Kupas Kulit\r\n2 butir Telur\r\nBumbu Seasoning :\r\n1 sdt Bacemam Bawang Putih\r\n2 sdt Minyak Wijen\r\n1 sdt Saori Saos Tiram\r\n1 sdt Kecap Asin\r\n1/2 sdt Garam\r\n1/2 sdt Merica\r\n2 sdt Gula Pasir\r\n3 sdm Tepung Sagu Tani\r\n1/2 sdt Baking Soda (boleh di skip)\r\n4 sdm Minyak Goreng\r\n2 ikan Daun Bawang, iris\r\n4 bh Tahu Putih Ukuran Sedang\r\nTopping : Udang Kupas', 'Siapkan mesin chopper masukkan semua bahan, kecuali tepung sagu dan daun bawang. Setelah halus baru masukkan tepung sagu, matikan mesin. Tuang ke mangkuk dan csmpur dengan irisan daun bawang yang sudah diiris, aduk rata.\r\n\r\nMasukkan tahu putih, haluskan dengan garpu aduk rata dan tuang ke dalam cetakan yang sudah dioles minyak goreng dan beri topping udang. Kukus selama 30-35 menit atau sampai matang. Hidangkan panas bersama saus kacang atau saus sambal botolan favorit keluarga. Selamat mencoba..', '2022-06-08 01:35:30', '2022-06-08 01:35:30'),
(26, 3, 6, 'post-pictures/5JO0lAvK01NQdepOHLcbIXnfUisnuDgXEsBokHW3.webp', 'Udang Goreng Saus Asam Manis', 'udang-goreng-saus-asam-manis', 'Daun Bawang\r\n5 buah cabe rawit hijau\r\n5 siung Bawang Merah\r\n4 siung bawang putih\r\nTepung Maizena\r\nBumbu saos :\r\n1 sdm Saos Tiram\r\n2 sdm saos tomat\r\n1 sdm kecap inggris\r\n1 sdm mentega\r\nsecukupnya Gula, garam, lada\r\nSedikit air', 'Cuci udang yang sudah dikupas, keringkan, lalu lumuri demgan tepung maizena\r\nPanaskan minyak, lalu goreng udang sebentar saja lalu tiriskan\r\nHaluskan bawang merah dan bawang putih, lalu iris tipis bawang bombay, daun bawang dan cabe rawit\r\nSiapkan wajan, tumis bawang yang telah dihaluskan, masukkan irisan bawang bombay tumis hingga harum\r\nMasukkan bumbu saos, mentega dan beri sedikit air, aduk aduk, lalu masukan irisan daun bawang dan cabe\r\nLalu masukkan udang goreng, aduk bentar lalu sajikan', '2022-06-08 01:36:40', '2022-06-08 01:36:40'),
(27, 3, 4, 'post-pictures/BhenI7Y1fAet5Rn0mDAHhRXtxCKXlxW29QoMDOWW.webp', 'Udang Asam Manis', 'udang-asam-manis', '1/2 kg Udang uk besar\r\n1 buah wortel\r\n1 buah timun\r\n1 buah bawang bombay\r\n7 buah bawang putih\r\n2 buah cabe merah (sesuai selera)\r\n15 buah cabe rawit (sesuai selera)\r\nDaun bawang\r\nSaus tomat\r\n1 bungkus Tepung crispy\r\nGula\r\nGaram\r\nPenyedap rasa', 'Bersihkan udang dan cuci bersih.\r\nKemudian buat adonan tepung basah dan kering untuk udangnya, lalu di goreng sampai kuning keemasan.\r\nTumis bawang bombay, bawang putih, cabe merah, cabe rawit lalu masukan wortel yg sudah di iris memanjang dan timun terakhir masukan udang\r\nTambahkan penyedap rasa, gula dan garam. Kemudian masukan saus dan cek rasa.', '2022-06-08 01:38:05', '2022-06-08 01:38:05'),
(28, 3, 2, 'post-pictures/x1druvS3ZR54c8iQxtuceik5KY0FIzSvJHtpvGPl.webp', 'Cah Sawi Tahu Udang', 'cah-sawi-tahu-udang', '2 ikat kecil Sawi Hijau\r\n1 Buah Tahu (potong dadu)\r\nUdang (secukupnya)\r\n\r\nBumbu\r\n2 bawang merah\r\n3 bawang putih\r\n5 cabe (sesuai selera)\r\nGaram, gula, kaldu jamur (optional)\r\nJeruk nipis', 'Menyiapkan bahan.\r\nMemotong tahu tidak terlalu kecil, kemudian dilanjutkan dengan memilah dan memotong sayur. Membersihkan udang dan merendam dengan sedikit jeruk nipis agar tidak bau. Menyiapkan bumbu.\r\nMemanaskan minyak secukupnya, memasukkan bawang merah, bawang putih, kemudian tahu, dilanjutkan dengan udang.\r\nTunggu hingga udang dan tahu mulai matang. Masukkan sawi dan cabai.\r\nMemasukka air dan menambahkan garam, gula, kaldu. Kemudia tes rasa.\r\nCah siap dihidangkan dengan nasi hangat.\r\nTerimakasih selamat mencoba', '2022-06-08 01:39:51', '2022-06-08 01:39:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `isVerified` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `photo`, `name`, `username`, `email`, `email_verified_at`, `password`, `about`, `isAdmin`, `isVerified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user-photos/chef.png', 'Pawonkoe Official', 'pawonkoe_official', 'admin@gmail.com', NULL, '$2y$10$k6PLCsjwpZ.4vIBZXwgWwOvUMDpsxgftwNSg6TP3P22y0WM/5eU8O', 'Hi everybody', 1, 1, NULL, '2022-06-06 00:50:34', '2022-06-07 10:35:26'),
(2, 'user-photos/HW15uQ4u3vTpXRRjT9ygz071Hx2jbCM1QIEA6hxe.jpg', 'Jefri Nichol', 'Jefri15', 'jefri@gmail.com', NULL, '$2y$10$kkpYP7IfFX8A32X8sy8sjOjEmPw59hYpIajxKT9qqfm7lCqh/Zwoq', 'Hi everybody', 0, 0, NULL, '2022-06-06 00:55:17', '2022-06-07 23:09:21'),
(3, 'user-photos/ywU2BwkG1J7N2USNTfH8w6QM4xKMXLJqgntboygi.jpg', 'Chef Marinka', 'ririnmarinka', 'marinka@gmail.com', NULL, '$2y$10$PkaO04WRh7HsKhgkYffhV./3bP9awCYAMc3gNoSngVkL3kQhk1nKC', 'Hi everybody', 0, 1, NULL, '2022-06-06 01:04:53', '2022-06-06 01:53:29'),
(4, 'user-photos/3eZXrHhUIBWCLMmmGSu0kagKVVzMoJ3yH9iqCjOm.jpg', 'Rara Kirana', 'rarakirana', 'rara@gmail.com', NULL, '$2y$10$tp2F8TiU6G7Wh7ivInBK2e2JpamrTIrvvHmZd7z3N.7PIqoaWwfkS', 'Hi everybody', 0, 0, NULL, '2022-06-06 08:49:11', '2022-06-08 01:43:57'),
(5, 'user-photos/6OSgliNZyFhK9Qk2wFOBZ7Uis5IL6HOw2u49q7be.jpg', 'Suhaidi Jamaan', 'adi.mci8', 'adi@gmail.com', NULL, '$2y$10$MINxowudb0KwtgN8GkB27ejFpZJuV7fVWUmF.gQJkGLiITW2Th3rG', 'Hi everybody', 0, 1, NULL, '2022-06-06 22:41:52', '2022-06-07 22:21:00'),
(6, 'user-photos/IqlpRoz6NHk5yj6ms7m6nMmuCtnwebNYSuRubEws.jpg', 'Joe Taslim', 'joe_taslim', 'joe@gmail.com', NULL, '$2y$10$w.W5B6Ur.N8VhCucVI/99.IPzJ84zVQawxML/exJlwQ8yoqlaw8/K', 'Hi everybody', 0, 0, NULL, '2022-06-08 00:20:36', '2022-06-08 00:21:41'),
(7, 'user-photos/5ORGCjftaa7oZzMGy9h5ZHS2ZySAvcKpPQO5TtiF.jpg', 'Bara Ilham', 'tanboy_kun', 'tanboy@gmail.com', NULL, '$2y$10$IaisoC/zbhqOchtTz12PVeg9Y8mW1mDtYk3stSc8zXxsbsTp.f3.i', 'Hi everybody', 0, 0, NULL, '2022-06-08 01:45:44', '2022-06-08 01:48:45'),
(8, 'user-photos/tm04Q6J5w34oXgmFPSsgRTDVCfEF80sVDxJxlQX1.jpg', 'Viorenita Sutanto', 'onic_vior', 'vior@gmail.com', NULL, '$2y$10$4h6tjhq0oYsKBgc.nldiseu38E/Gb5nlGJE1mEAzTn5m/YFHFxB0K', 'Hi everybody', 0, 0, NULL, '2022-06-08 01:56:16', '2022-06-08 01:58:15'),
(9, 'user-photos/2Xl7IdoFYVkcqu8B5Hi7MPoJw3vZZ92ykTYtMyHT.jpg', 'Arnold Poernomo', 'arnoldpo', 'arnold@gmail.com', NULL, '$2y$10$J8WB0XSof0roio3y0Huscum2FKr8vktB2HqdeDW4K.q4e14dl3u42', 'Hi everybody', 0, 1, NULL, '2022-06-08 02:00:06', '2022-06-08 03:50:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
