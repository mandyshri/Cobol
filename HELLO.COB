      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WS-STUDENT-NAME PIC X(25).
           01 WS-DATE PIC X(10).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world"
           ACCEPT WS-STUDENT-NAME.
           ACCEPT WS-DATE FROM DATE.
           DISPLAY "Name :  " WS-STUDENT-NAME.
           DISPLAY "Date : " WS-DATE.
       STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
