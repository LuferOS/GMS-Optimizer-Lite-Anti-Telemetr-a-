#!/system/bin/sh
# uninstall.sh

# Reactivar componentes deshabilitados (si quieres que la desinstalación los restaure)
# Esto es opcional, ya que al quitar el módulo, service.sh no se ejecutará más.
pm enable com.google.android.gms/com.google.android.gms.analytics.service.AnalyticsService
# ... (añade todos los componentes que deshabilitaste en service.sh) ...
