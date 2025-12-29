# README
# Inter-Lima - Blog de equipo de E-Sports

![Ruby on Rails](https://img.shields.io/badge/Framework-Ruby%20on%20Rails%207-red)
![Ruby](https://img.shields.io/badge/Language-Ruby%203.x-red)
![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-blue)

## 🚀 Sobre el Proyecto

Inter-Lima es un sistema de gestión de contenidos (CMS) diseñado con un enfoque en **escalabilidad** y **seguridad**. Este proyecto demuestra la implementación de un CRUD completo siguiendo las mejores prácticas de Rails, incluyendo autenticación de administradores y manejo eficiente de recursos.

## 🛠️ Stack Técnico

* **Backend:** Ruby on Rails 7.
* **Base de Datos:** PostgreSQL.
* **Autenticación:** Devise (Admin Authentication).
* **Frontend:** Rails Views con diseño responsivo.

## ⚙️ Características Destacadas

* **Arquitectura DRY:** Uso de `before_action` para la gestión centralizada de recursos.
* **Optimización de Consultas:** Implementación de ordenamiento a nivel de base de datos (`order(created_at: :desc)`) para evitar carga excesiva en memoria.
* **Seguridad:** Parámetros fuertes (`Strong Parameters`) y restricciones de acceso para roles administrativos.
* **UX/UI:** Sistema de notificaciones mediante `flash messages` para feedback inmediato al usuario.

## 📦 Instalación y Configuración

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/brunophcodes/inter-lima.git](https://github.com/brunophcodes/inter-lima.git)
   cd inter-lima

2. **Instalar dependencias:**
   ```bash
   bundle install

3. **Configurar la base de datos:**
   ```bash
   rails db:create
   rails db:migrate
   
4. **Iniciar el servidor:**
   ```bash
   rails server
## 🛤️ Roadmap / Próximas Implementaciones
[X] GraphQL API: Implementación de nodos para consultas eficientes desde el frontend.
[ ] Paginación: Integración de la gema Pagy para manejo de grandes volúmenes de datos.
