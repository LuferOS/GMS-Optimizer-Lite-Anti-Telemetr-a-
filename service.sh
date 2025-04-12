#!/system/bin/sh
# service.sh - Se ejecuta en el arranque tardío (late_start service)

# Espera un poco para que el sistema se estabilice
sleep 60

# --- Deshabilitación de Componentes de Telemetría/Innecesarios ---
# Usa 'pm disable <package>/<component>'
# ¡PRECAUCIÓN! Deshabilitar componentes incorrectos puede romper funcionalidades.
# Esta es una lista de EJEMPLO. Investiga y ajusta según tus necesidades.

# Servicios comunes de telemetría/análisis en GMS
# Deshabilita el servicio de análisis de Google. Recopila datos de uso de la aplicación.
pm disable com.google.android.gms/com.google.android.gms.analytics.service.AnalyticsService
# Deshabilita el servicio de trabajos de análisis de Google. Similar al anterior, pero para trabajos programados.
pm disable com.google.android.gms/com.google.android.gms.analytics.service.AnalyticsJobService
# Deshabilita el servicio de medición de Google. Recopila datos de uso y rendimiento de la aplicación.
pm disable com.google.android.gms/com.google.android.gms.measurement.service.MeasurementService
# Deshabilita el servicio de medición de paquetes de Google. Recopila datos sobre la instalación y desinstalación de paquetes.
pm disable com.google.android.gms/com.google.android.gms.measurement.PackageMeasurementService
# pm disable com.google.android.gms/.usagereporting.service.UsageReportingService # Puede afectar Buscar mi dispositivo.  ¡NO DESHABILITAR SI USAS "ENCONTRAR MI DISPOSITIVO"!
pm disable com.google.android.gms/com.google.android.gms.feedback.FeedbackService
pm disable com.google.android.gms/com.google.android.gms.feedback.SystemReportService

# Otros posibles componentes (investiga antes de descomentar/añadir)
# pm disable com.google.android.gsf/com.google.android.gsf.checkin.CheckinService
# pm disable com.google.android.gms/com.google.android.gms.autofill.service.AutofillService

# --- Optimización GMS Doze ---
# Habilita el modo Doze para GMS (generalmente ya está activo por defecto)
dumpsys deviceidle enable com.google.android.gms

# Opcional: Forzar GMS a modo IDLE (¡AGRESIVO! Puede romper notificaciones/sincronización)
# Descomenta la siguiente línea bajo tu propio riesgo si entiendes las implicaciones.
# dumpsys deviceidle force-idle com.google.android.gms

# --- Fin del Script ---