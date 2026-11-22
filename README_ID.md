# Ultimate Party Battle — Cloud Build Starter (Godot)

**Status jujur:** ini proyek starter 3D lokal yang disiapkan untuk diekspor sebagai APK lewat GitHub Actions. Ini belum APK, belum multiplayer online, dan belum diuji pada perangkat Redmi. Proyek menggunakan Godot 4.x dan bukan Unity.

## Alur dari HP Android saja
1. Buat akun GitHub jika belum punya.
2. Buat repository baru bernama `ultimate-party-battle`.
3. Ekstrak ZIP ini menggunakan aplikasi pengelola file.
4. Upload seluruh isi folder proyek ke repository (termasuk folder `.github`).
5. Buka tab **Actions** di repository, aktifkan Actions bila diminta.
6. Jalankan workflow **Build Android APK** dengan tombol **Run workflow**.
7. Jika workflow berhasil, buka hasil run → **Artifacts** → unduh `UltimatePartyBattle-Android-APK`.
8. Ekstrak artifact ZIP, lalu instal APK. Android mungkin meminta izin instalasi dari sumber tersebut.

## Penting sebelum workflow bisa berhasil
Godot Android export memerlukan export templates dan Android build dependencies. Container workflow di ZIP ini adalah starter dan dapat perlu penyesuaian versi image/template atau pengaturan export berdasarkan versi Godot yang dipakai. Jika gagal, buka log Actions dan kirim bagian error terakhir untuk diperbaiki.

## Yang sudah ada
- Arena 3D sederhana berbasis primitive mesh.
- Karakter third-person.
- Kontrol layar sentuh dan keyboard.
- Rintangan berputar.
- HUD timer dan skor.
- Target render mobile dengan Compatibility renderer.

## Yang belum ada
- Multiplayer online 2–10 pemain.
- Login, room code, matchmaking, leaderboard server.
- Lima mode mini-game penuh.
- Audio, karakter final, model 3D berkualitas produksi.
- Build APK teruji.

## Batasan paket data
Build pertama mengunduh image build dan dependensi yang bisa cukup besar. Sebaiknya jalankan saat ada Wi-Fi atau paket data yang cukup. Artifact APK ditargetkan di bawah 300 MB; ukuran final belum diketahui sampai build sukses.
