<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recepia - Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @font-face {
            font-family: 'MontserratSemiBold';
            src: url("{{ asset('asetts/Font/montserrat.semibold.ttf') }}") format('truetype');
        }
        body {
            font-family: 'MontserratSemiBold', sans-serif;
            background-color: #E28413; /* Warna dasar orange figma */
        }
    </style>
</head>
<body class="min-h-screen flex flex-col justify-center items-center px-4">

    <!-- Logo Utama Recepia -->
    <div class="mb-8 max-w-md w-full flex justify-center">
        <img src="{{ asset('asetts/Images/recepia_logo.png') }}" alt="Recepia Logo" class="w-80 h-auto object-contain">
    </div>

    <!-- Form Container -->
    <div class="w-full max-w-md space-y-4">
        <!-- Input Username -->
        <div>
            <input type="text" placeholder="Username" class="w-full px-5 py-3 rounded-xl bg-white text-gray-700 outline-none shadow-md placeholder-gray-400">
        </div>

        <!-- Input Password -->
        <div class="relative">
            <input type="password" placeholder="Password" class="w-full px-5 py-3 rounded-xl bg-white text-gray-700 outline-none shadow-md placeholder-gray-400">
            <!-- Icon Mata Show/Hide -->
            <div class="absolute inset-y-0 right-0 pr-4 flex items-center cursor-pointer text-gray-600">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 0 1 0-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178Z" />
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z" />
                </svg>
            </div>
        </div>

        <!-- Teks Bawah Input -->
        <div class="flex justify-between items-center text-xs text-white px-1">
            <p>Belum Punya Akun ? <a href="#" class="text-yellow-300 hover:underline">Daftar Akun</a></p>
            <a href="#" class="hover:underline">Lupa Password?</a>
        </div>

        <!-- Tombol Masuk Berupa Gambar -->
        <div class="pt-4 flex justify-center">
            <a href="{{ route('resep.menu') }}" class="inline-block transform active:scale-95 transition w-48 text-center relative">
                <!-- Fallback background jika button.png bermasalah, jika aman gambarnya menimpa -->
                <button type="button" class="w-full bg-[#FF7A00] text-white font-bold py-3 px-6 rounded-xl shadow-lg uppercase tracking-wider text-sm" style="background-image: url('{{ asset('asetts/Images/button.png') }}'); background-size: cover; background-position: center;">
                    MASUK
                </button>
            </a>
        </div>

        <!-- Separator Atau -->
        <div class="text-center text-white text-xs py-2">
            Atau
        </div>

        <!-- Tombol Login Google -->
        <div class="flex justify-center">
            <button class="w-full max-w-xs bg-[#4285F4] text-white font-bold py-3 px-4 rounded-xl shadow-md flex items-center justify-center gap-3 hover:bg-blue-600 transition text-xs tracking-wider">
                <!-- Logo Box G -->
                <div class="bg-white p-1 rounded">
                    <img src="https://fonts.gstatic.com/s/i/productlogos/googleg/v6/web-24dp/logo_googleg_color_1x_web_24dp.png" alt="Google" class="w-4 h-4">
                </div>
                LOGIN GOOGLE
            </button>
        </div>
    </div>

</body>
</html>