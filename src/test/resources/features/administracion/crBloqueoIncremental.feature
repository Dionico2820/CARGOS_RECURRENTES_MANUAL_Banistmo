# language: es
# encoding: UTF-8
@BloqueoIncremental
Característica: Bloqueo Incremental
    Yo como usuario de cargos recurrentes
    Quiero validar el bloqueo incremental
    Para conocer esta caracteristica de seguridad de la aplicacion

    Antecedentes: Cargar credenciales
        Dado que valido el bloqueo incremental en Cargos Recurrentes

    @pruebaManual
    Escenario: Bloqueo incremental Contraseña de certificado fallido
        Cuando ingreso una contraseña de certificado incorrecta
        Entonces se debe observar el mensaje de bloqueo incremental
        Y se debe observar el tiempo del periodo en que expira el bloqueo

    @pruebaManual
    Escenario: Bloqueo incremental Contraseña del API fallido
        Cuando ingreso una contraseña de Api incorrecta
        Entonces se debe observar el mensaje de bloqueo incremental
        Y se debe observar el tiempo del periodo en que expira el bloqueo

    @pruebaManual
    Escenario: Bloqueo incremental validando credenciales en ambiente no valido
        Cuando ingreso las credenciales direccionadas a un ambiente no valido
        Entonces se debe observar el mensaje de bloqueo incremental
        Y se debe observar el tiempo del periodo en que expira el bloqueo

    @pruebaManual
    Escenario: Bloqueo incremental validando el aumento de tiempo de bloqueo
        Cuando ingreso credenciales incorrectas consecutivamente
        Entonces se debe observar el mensaje de bloqueo incremental
        Y se debe observar que el tiempo del periodo en que expira el bloqueo se duplica

    @pruebaManual
    Escenario: Bloqueo incremental con credenciales correctas
        Cuando ingreso las credenciales correctas
        Entonces se debe observar el proceso de la transacción
        Y se debe observar la respuesta de aprobaciones y rechazos
