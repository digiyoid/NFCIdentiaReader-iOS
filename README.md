# NFCIdentiaReaderSDK

<p align="center">
  <img src="URL_DE_TU_IMAGEN_DINAMICA" width="300" alt="NFCIdentiaReaderSDK Hero Image">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg" alt="Version">
  <img src="https://img.shields.io/badge/platform-iOS%2015%2B-blue">
  <img src="https://img.shields.io/badge/Swift-5.5%2B-orange.svg">
  <a href="URL_A_TU_DOCUMENTACION_ONLINE"><img src="https://img.shields.io/badge/documentación-DocC-purple"></a>
  <img src="https://img.shields.io/badge/license-Proprietary-red">
</p>

Un SDK para iOS escrito en Swift que facilita la lectura de documentos de identidad electrónicos (e-ID) con chip NFC, como pasaportes y cédulas de identidad.

Este SDK se encarga de toda la comunicación de bajo nivel, la criptografía y la decodificación de datos, permitiéndote integrar una funcionalidad de verificación de identidad de primer nivel en tu app en cuestión de minutos.

---

## Tabla de Contenidos

- [Características Principales](#-características-principales)
- [Requisitos](#-requisitos)
- [Instalación](#-instalación)
- [Guía de Uso](#-guía-de-uso)
- [Documentación Completa](#-documentación-completa)
- [Soporte](#-soporte)
- [Autor](#-autor)
- [Agradecimientos](#-agradecimientos)
- [Licencia](#-licencia)

---

## Características Principales

-   📲 **API Moderna:** Interfaz simple y limpia con `async/await`.
-   🔐 **Seguridad Integrada:** Manejo de protocolos de seguridad como PACE para el establecimiento de un canal seguro con el chip.
-   🖼️ **Decodificación de Imagen JPEG 2000:** Extrae y decodifica automáticamente la foto facial de alta calidad.
-   📄 **Extracción de Datos:** Lee los grupos de datos (DG) más comunes del chip (nombre, fecha de nacimiento, nacionalidad, etc.).
-   ⚙️ **Manejo de Errores Específico:** Un sistema de errores claro para un control preciso de cada posible fallo en el proceso.

## Requisitos

-   iOS 15.0 o superior.
-   Xcode 14.0 o superior.
-   Un dispositivo iPhone 7 o más reciente (con capacidad de lectura NFC).

## Instalación

### CocoaPods

1.  Añade la siguiente línea a tu `Podfile`:
    ```ruby
    pod 'NFCIdentiaReaderSDK', '~> 1.0.0'
    ```
2.  Ejecuta `pod install` en tu terminal.

### Swift Package Manager (SPM)

1.  En Xcode, ve a `File > Add Package Dependencies...`.
2.  Pega la URL de este repositorio:
    ```
    [https://github.com/digiyoid/NFCIdentiaReader-iOS]
    ```
3.  Elige la regla de versión "Up to Next Major" desde `1.0.0` y añade el paquete.

## Guía de Uso

### 1. Configuración Inicial del Proyecto

Antes de escanear, tu app necesita **tres configuraciones esenciales** en Xcode:

* **Descripción de Uso de NFC (Info.plist):**
    * Añade la clave `Privacy - NFC Scan Usage Description` con un texto explicando por qué tu app necesita acceso a NFC.

* **Capacidad de NFC (Capability):**
    * En la pestaña "Signing & Capabilities" de tu target, añade la capacidad `Near Field Communication Tag Reading`.

* **Identificadores de Aplicación del Tag (Info.plist):**
    * Debes declarar el identificador de la aplicación de pasaportes ICAO. Abre tu `Info.plist` como "Source Code" y añade lo siguiente:
        ```xml
        <key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
        <array>
            <string>A0000002471001</string>
        </array>
        ```
    * O, usando el editor visual de Xcode:
        1.  Añade una nueva fila.
        2.  Para la clave (Key), selecciona `ISO7816-compatible Application Identifiers - Passports`.
        3.  Asegúrate de que el tipo (Type) sea `Array`.
        4.  Dentro del arreglo, añade un `Item 0` de tipo `String` con el valor `A0000002471001`.

### 2. Ejemplo de Código

```swift
import UIKit
import NFCDocReader // O el nombre correcto de tu módulo

@MainActor
func startScan() async {
    // Reemplaza con los valores de la MRZ de tu documento
    let documentNumber = "A12345678"
    let dateOfBirth = "800101" // Formato yyMMdd
    let expiryDate = "300101"  // Formato yyMMdd

    // Configura el lector con los datos del documento
    let config = NFCDocReaderConfig(documentNumber: documentNumber, dateOfBirth: dateOfBirth, expirationDate: expiryDate)
    let reader = NFCDocReader(config: config)
    
    // Inicia el escaneo y maneja los resultados
    do {
        let result = try await reader.readNFCTag()
        print("✅ Lectura exitosa: \(result.firstName ?? "") \(result.lastName ?? "")")
        if let photoData = result.photo, let image = UIImage(data: photoData) {
            // Muestra la imagen en tu UI
            // self.profileImageView.image = image
        }
    } catch {
        print("❌ Error al leer el documento: \(error.localizedDescription)")
    }
}
```



### 3. Soporte
    Para reportes de errores o soporte técnico, por favor abre un "Issue" en este repositorio o contacta al equipo de desarrollo.

### 4.Autor
    Este SDK es desarrollado y mantenido por Roshka.

### Desarrollador Principal: Aurelio Figueredo

Sitio Web: roshka.com

###Agradecimientos
    Este SDK se construye sobre el excelente trabajo de la comunidad de código abierto, incluyendo:
    NFCPassportReader
    OpenSSL
    OpenJPEG

## Licencia
    Este SDK es software propietario.

    Copyright © 2025 Roshka. Todos los derechos reservados.

    El uso de este software está sujeto a los términos y condiciones del acuerdo de licencia proporcionado con el software. Queda prohibida la reproducción o distribución no autorizada de este programa, o de cualquier parte del mismo.
