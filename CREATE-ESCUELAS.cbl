      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREATE-ESCUELAS.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL ESCUELAS-ARCHIVO
           ASSIGN TO "C:\Users\Rocio\Desktop\Cobol\escuelas.dat"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD ESCUELAS-ARCHIVO.
           01 ESCUELAS-REGISTRO.
               05 ESCUELAS-CODIGO-PROVINCIA PIC X.
               05 ESCUELAS-DISTRICTO PIC 9(2).
               05 ESCUELAS-CODIGO PIC 99.
               05 ESCUELAS-VARONES PIC 999.
               05 ESCUELAS-MUJERES PIC 999.
               05 ESCUELAS-COMEDOR PIC 999.
       WORKING-STORAGE SECTION.
       01  IDENTIFICADOR-PROVINCIA PIC X(33)
           VALUE "Ingrese el codigo de la provincia".
       01  DISTRICTO PIC X(30) VALUE "Ingrese numero de districto".
       01  IDENTIFICADOR-ESCUELA PIC X(31)
           VALUE "Ingrese el codigo de la escuela".
       01  VARONES PIC X(30) VALUE "Ingrese cantidad de varones".
       01  MUJERES PIC X(30) VALUE "Ingrese cantidad de mujeres".
       01  COMEDOR PIC X(40)
           VALUE "Ingrese cantidad de ninios en el comedor".
       01  SI-O-NO PIC X.
       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.
           PERFORM PROCEDIMIENTO-APERTURA.
           MOVE "S" TO SI-O-NO.
           PERFORM AGREGAR-REGISTROS
           UNTIL SI-O-NO = "N".
           PERFORM PROCEDIMIENTO-CIERRE.

       PROGRAM-DONE.
           STOP RUN.

       PROCEDIMIENTO-APERTURA.
           OPEN EXTEND ESCUELAS-ARCHIVO.

       PROCEDIMIENTO-CIERRE.
           CLOSE ESCUELAS-ARCHIVO.

       AGREGAR-REGISTROS.
           PERFORM OBTENER-CAMPOS.
           PERFORM ESCRIBIR-REGISTRO.
           PERFORM REINICIAR.

       OBTENER-CAMPOS.
           MOVE SPACE TO ESCUELAS-REGISTRO.
           DISPLAY IDENTIFICADOR-PROVINCIA.
           ACCEPT ESCUELAS-CODIGO-PROVINCIA.
           DISPLAY DISTRICTO.
           ACCEPT ESCUELAS-DISTRICTO.
           DISPLAY IDENTIFICADOR-ESCUELA.
           ACCEPT ESCUELAS-CODIGO,
           DISPLAY VARONES,
           ACCEPT ESCUELAS-VARONES.
           DISPLAY MUJERES.
           ACCEPT ESCUELAS-MUJERES.
           DISPLAY COMEDOR.
           ACCEPT ESCUELAS-COMEDOR.

       ESCRIBIR-REGISTRO.
           WRITE ESCUELAS-REGISTRO.

       REINICIAR.
           DISPLAY "¿Desea almacenar otro registro en la base de datos?".
           ACCEPT SI-O-NO.
           IF SI-O-NO = "s"
               MOVE "S" TO SI-O-NO.
           IF SI-O-NO NOT = "S"
               MOVE "N" TO SI-O-NO.
       END PROGRAM CREATE-ESCUELAS.
