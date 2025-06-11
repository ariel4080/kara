# Kara 📅

Kara es una app móvil para agendar citas con negocios de forma rápida, intuitiva y moderna. Diseñada para emprendedores que quieren ofrecer a sus clientes una experiencia profesional y fluida.

---

## 🧑‍💻 Tecnologías

- Flutter  3.29.3
- Riverpod para manejo de estado
- GoRouter para navegación
- Firebase Auth (próximamente)
- Soporte multilenguaje con `flutter_localizations`

---

## 🚀 Instalación

git clone https://github.com/usuario/kara.git
cd kara
flutter pub get
flutter run

---


## Estructura
lib/
├── features/             # Módulos funcionales (login, citas, etc.)
    │   └── auth          # Auth, l10n, splash, etc.
    ├── navigation/       # GoRouter define navegacion del app
    ├── shared/           # Define archivos compartidos a nivel de root
    ├── main.dart         # Entry point con configuración del proyecto