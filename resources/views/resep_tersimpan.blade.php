<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recepia - Resep Tersimpan</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        @font-face {
            font-family: 'MontserratSemiBold';
            src: url("{{ asset('asetts/Font/montserrat.semibold.ttf') }}") format('truetype');
        }
        body {
            font-family: 'MontserratSemiBold', sans-serif;
            background-color: #E28413; /* Background orange figma */
        }
    </style>
</head>
<body class="min-h-screen text-gray-800">

    <!-- 1. HEADER / NAVBAR -->
    <header class="bg-white px-6 py-4 flex items-center justify-between shadow-md sticky top-0 z-50">
        <div class="flex items-center gap-4">
            <button class="text-2xl text-gray-700 hover:text-orange-500 transition">
                <i class="fa-solid fa-bars"></i>
            </button>
            <a href="{{ route('resep.menu') }}">
                <img src="{{ asset('asetts/Images/recepia_logo.png') }}" alt="Recepia Logo" class="h-10 w-auto object-contain">
            </a>
        </div>

        <div class="flex flex-1 max-w-xl mx-8 bg-gray-100 rounded-lg overflow-hidden border border-gray-300">
            <select class="bg-gray-100 px-4 py-2 text-xs text-gray-600 outline-none border-r border-gray-300 font-sans cursor-pointer">
                <option>Semua Kategori</option>
            </select>
            <input type="text" placeholder="Cari Resep Makananmu Hari Ini" class="w-full bg-gray-100 px-4 py-2 text-xs outline-none font-sans">
            <button class="bg-[#FF7A00] text-white px-5 flex items-center justify-center hover:bg-orange-600 transition">
                <i class="fa-solid fa-magnifying-glass text-sm"></i>
            </button>
        </div>

        <div class="flex items-center gap-6">
            <nav class="hidden md:flex items-center gap-6 text-xs tracking-wider">
                <a href="{{ route('resep.menu') }}" class="text-gray-600 hover:text-orange-500 transition">Home</a>
                <a href="#" class="text-gray-600 hover:text-orange-500 transition">Profil</a>
                <a href="#" class="text-gray-600 hover:text-orange-500 transition">Bantuan</a>
            </nav>
            <div class="w-9 h-9 rounded-full overflow-hidden border-2 border-[#FF7A00]">
                <img src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&w=100&q=80" alt="User Profile" class="w-full h-full object-cover">
            </div>
        </div>
    </header>

    <main class="max-w-7xl mx-auto px-4 md:px-8 py-6 space-y-8">

        <!-- 2. BANNER UTAMA (HERO JUMBOTRON) -->
        <div class="relative rounded-3xl overflow-hidden h-[320px] shadow-xl bg-cover bg-center flex items-center" style="background-image: linear-gradient(to right, rgba(0,0,0,0.75) 40%, rgba(0,0,0,0.2)), url('{{ asset('asetts/Images/iga_bakar.jpg') }}');">
            <div class="p-8 md:p-12 text-white max-w-xl space-y-2">
                <span class="text-[#FF7A00] text-xs font-bold uppercase tracking-widest block">Makanan Viral</span>
                <h1 class="text-2xl md:text-4xl font-extrabold leading-tight">Lumpia Goreng With Sauce Rendang</h1>
                <p class="text-xs text-gray-300">By Linda Sapitri</p>
                
                <div class="flex items-center gap-4 pt-6">
                    <div class="flex gap-2 text-xs">
                        <button class="w-7 h-7 rounded-full bg-white/20 flex items-center justify-center hover:bg-white/40 transition"><i class="fa-solid fa-arrow-left"></i></button>
                        <button class="w-7 h-7 rounded-full bg-white/20 flex items-center justify-center hover:bg-white/40 transition"><i class="fa-solid fa-arrow-right"></i></button>
                    </div>
                    <div class="flex gap-1.5">
                        <span class="w-2 h-2 rounded-full bg-white/40"></span>
                        <span class="w-2 h-2 rounded-full bg-white/40"></span>
                        <span class="w-2 h-2 rounded-full bg-white"></span>
                        <span class="w-2 h-2 rounded-full bg-white/40"></span>
                    </div>
                </div>
            </div>
        </div>

        <!-- 3. TIGA TOMBOL NAVIGASI INTERAKTIF -->
        <div class="flex flex-wrap justify-center items-center gap-4 py-2">
            <a href="{{ route('resep.menu') }}" class="flex items-center justify-between w-64 bg-[#C84B24] hover:bg-[#b03f1b] text-white px-5 py-4 rounded-2xl shadow-md font-bold text-sm tracking-wide transition transform active:scale-95">
                <span>Resep Dan menu</span>
                <i class="fa-solid fa-chevron-right text-xs"></i>
            </a>
            <a href="{{ route('daftar.belanja') }}" class="flex items-center justify-between w-64 bg-[#E58900] hover:bg-[#cc7a00] text-white px-5 py-4 rounded-2xl shadow-md font-bold text-sm tracking-wide transition transform active:scale-95">
                <span>Buat daftar belanja</span>
                <i class="fa-solid fa-chevron-right text-xs"></i>
            </a>
            <!-- Tombol Aktif Halaman Ini (Resep Tersimpan) -->
            <a href="{{ route('resep.tersimpan') }}" class="flex items-center justify-between w-64 bg-[#578000] text-white px-5 py-4 rounded-2xl shadow-inner border-2 border-white/30 font-bold text-sm tracking-wide transition">
                <span>Resep Tersimpan</span>
                <i class="fa-solid fa-chevron-right text-xs"></i>
            </a>
        </div>

        <!-- 4. GRID CONTAINER: DATA MERGE 16 CARD RESEP TERSIMPAN -->
        <section class="space-y-6">
            <h2 class="text-xl md:text-2xl font-black text-white text-center tracking-wide uppercase">Koleksi Resep Tersimpan</h2>
            
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
                @php
                    $semua_resep = [
                        ['file' => 'ayamgoreng_hitam.jpg', 'title' => 'Ayam Goreng Hitam'],
                        ['file' => 'ayam_geprek.jpg', 'title' => 'Ayam Geprek'],
                        ['file' => 'bolu_kejukukus.jpg', 'title' => 'Bolu Keju Kukus'],
                        ['file' => 'iga_bakar.jpg', 'title' => 'Iga Bakar'],
                        ['file' => 'sup_igabakar.jpg', 'title' => 'Sup Iga Bakar'],
                        ['file' => 'nila_tumispaprika.jpg', 'title' => 'Nila Tumis Paprika'],
                        ['file' => 'nila_goreng.jpg', 'title' => 'Nila Goreng'],
                        ['file' => 'dessert_coklat.jpg', 'title' => 'Dessert Coklat'],
                        ['file' => 'tumis_kangkung.jpg', 'title' => 'Tumis Kangkung'],
                        ['file' => 'bubu_ayam.jpg', 'title' => 'Bubur Ayam'],
                        ['file' => 'siomay_bandung.jpg', 'title' => 'Siomay Bandung'],
                        ['file' => 'batagor_bandung.jpg', 'title' => 'Batagor Bandung'],
                        ['file' => 'baso_sapi.jpg', 'title' => 'Baso Sapi'],
                        ['file' => 'rujak_lutis.jpg', 'title' => 'Rujak Lutis'],
                        ['file' => 'gado_gado.jpg', 'title' => 'Gado - Gado'],
                        ['file' => 'rujak_nanas.jpg', 'title' => 'Rujak Nanas']
                    ];
                @endphp

                @foreach($semua_resep as $item)
                <div class="bg-white rounded-3xl overflow-hidden shadow-md p-3 flex flex-col justify-between border border-gray-100 hover:shadow-xl transition">
                    <div>
                        <div class="w-full h-32 md:h-40 rounded-2xl overflow-hidden mb-3 bg-gray-100">
                            <img src="{{ asset('asetts/Images/' . $item['file']) }}" alt="{{ $item['title'] }}" class="w-full h-full object-cover">
                        </div>
                        <span class="text-[9px] text-gray-400 block tracking-wider">Recepia</span>
                        <h3 class="text-xs md:text-sm font-bold text-gray-800 line-clamp-1 mb-2">{{ $item['title'] }}</h3>
                    </div>
                    
                    <div class="flex items-center justify-between text-[11px] text-gray-500 pt-1">
                        <span class="text-orange-500 font-bold">40 min</span>
                        <div class="flex items-center gap-3 text-xs">
                            <span class="text-gray-400 flex items-center gap-1"><i class="fa-solid fa-star text-yellow-400 text-[10px]"></i> 4.5</span>
                            <!-- Icon Hati Solid/Merah karena bertema Resep Tersimpan -->
                            <button class="text-red-500 hover:scale-110 transition"><i class="fa-solid fa-heart"></i></button>
                            <button class="hover:text-blue-500 transition"><i class="fa-regular fa-comment"></i></button>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </section>

    </main>

    <!-- 5. FOOTER 3 KOLOM + SOSMED -->
    <footer class="bg-white mt-16 pt-12 pb-6 px-6 md:px-12 border-t border-gray-200">
        <div class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-8 pb-8 border-b border-gray-200 text-xs text-gray-500 leading-relaxed">
            <div class="space-y-3">
                <div class="flex items-center gap-2">
                    <img src="{{ asset('asetts/Images/recepia_logo.png') }}" alt="Recepia App" class="h-8 w-auto object-contain">
                    <span class="bg-amber-500 text-white font-bold text-[9px] px-1.5 py-0.5 rounded uppercase">App</span>
                </div>
                <p class="pr-4">Web.app yang dibuat untuk tugas uas web programming lanjut dengan menggunakan flutter sebagai landing page dan vscode</p>
            </div>

            <div class="flex flex-col justify-center items-start md:items-center gap-3">
                <a href="#" class="block w-36 hover:opacity-80 transition">
                    <img src="{{ asset('asetts/Images/app_store.png') }}" alt="Download App Store" class="w-full h-auto">
                </a>
                <a href="#" class="block w-36 hover:opacity-80 transition">
                    <img src="{{ asset('asetts/Images/google_play.png') }}" alt="Get It On Google Play" class="w-full h-auto">
                </a>
            </div>

            <div class="space-y-3">
                <div class="flex items-center gap-2">
                    <img src="{{ asset('asetts/Images/recepia_logo.png') }}" alt="Recepia App" class="h-8 w-auto object-contain">
                    <span class="bg-amber-500 text-white font-bold text-[9px] px-1.5 py-0.5 rounded uppercase">App</span>
                </div>
                <p class="text-gray-400 italic">Ut risus mattis interdum faucibus facilisi. Facilisi purus accumsan aliquam.</p>
                <div class="flex rounded-lg overflow-hidden border border-gray-300 max-w-sm">
                    <div class="bg-gray-50 pl-3 pr-2 flex items-center text-gray-400">
                        <i class="fa-regular fa-envelope"></i>
                    </div>
                    <input type="email" value="Linda Sapitri" class="w-full bg-gray-50 px-2 py-2 text-gray-700 outline-none font-sans" readonly>
                    <button class="bg-[#28A745] hover:bg-green-600 text-white font-bold px-4 transition">Subscribe</button>
                </div>
            </div>
        </div>

        <div class="max-w-7xl mx-auto flex justify-center items-center gap-6 pt-6 text-gray-600 text-lg">
            <a href="#" class="hover:text-pink-600 transition"><img src="{{ asset('asetts/Images/instagram_logo.png') }}" alt="Instagram" class="w-5 h-5 object-contain"></a>
            <a href="#" class="hover:text-blue-400 transition"><img src="{{ asset('asetts/Images/twitter_logo.png') }}" alt="Twitter" class="w-5 h-5 object-contain"></a>
            <a href="#" class="hover:text-blue-700 transition"><img src="{{ asset('asetts/Images/Linkedin_logo.png') }}" alt="LinkedIn" class="w-5 h-5 object-contain"></a>
            <a href="#" class="hover:text-blue-800 transition"><img src="{{ asset('asetts/Images/facebook_logo.png') }}" alt="Facebook" class="w-5 h-5 object-contain"></a>
        </div>
    </footer>

</body>
</html>