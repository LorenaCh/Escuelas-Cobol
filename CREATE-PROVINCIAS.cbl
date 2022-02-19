      ******************************************************************
      * Author: Rocio
      * Date:  27/1/2022
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXAMEN-NIVELACION.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL PROVINCIAS-ARCHIVO
           ASSIGN TO "C:\Users\Rocio\Desktop\Cobol\provincias.dat"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD PROVINCIAS-ARCHIVO.
           01 PROVINCIAS-REGISTRO.
               05 PROVINCIAS-CODIGO PIC X.
               05 PROVINCIAS-NOMBRE PIC X(20).
       WORKING-STORAGE SECTION.
       01 IDENTIFICADOR PIC X(33)
           VALUE "Ingrese el codigo de la provincia".
       01 NOMBRE PIC X(33)
           VALUE "Ingrese el nombre de la provincia".

       01 SI-O-NO PIC X.
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
           OPEN EXTEND PROVINCIAS-ARCHIVO.

       PROCEDIMIENTO-CIERRE.
           CLOSE PROVINCIAS-ARCHIVO.

       AGREGAR-REGISTROS.
           PERFORM OBTENER-CAMPOS.
           PERFORM ESCRIBIR-REGISTRO.
           PERFORM REINICIAR.

       OBTENER-CAMPOS.
           MOVE SPACE TO PROVINCIAS-REGISTRO.
           DISPLAY IDENTIFICADOR.
           ACCEPT PROVINCIAS-CODIGO.
           DISPLAY NOMBRE.
           ACCEPT PROVINCIAS-NOMBRE.

       ESCRIBIR-REGISTRO.
           WRITE PROVINCIAS-REGISTRO.
           DISPLAY "Se agrego: " PROVINCIAS-REGISTRO.

       REINICIAR.
           DISPLAY "¿Desea almacenar otro registro en la base de datos?".
           ACCEPT SI-O-NO.
           IF SI-O-NO = "s"
               MOVE "S" TO SI-O-NO.
           IF SI-O-NO NOT = "S"
               MOVE "N" TO SI-O-NO.
       END PROGRAM EXAMEN-NIVELACION.
